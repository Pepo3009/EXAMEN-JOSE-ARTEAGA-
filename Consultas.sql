--Cantidad de veces que cada cliente ha visitado el centro
select 
	cliente.nombre_cliente as cliente,
	count(visita.id_mascota) as visitas
from cliente
	inner join mascota on cliente.id_cliente = mascota.id_cliente
	inner join visita on mascota.id_mascota = visita.id_mascota
	inner join veterinaria on veterinaria.id_veterinaria = visita.id_veterinaria
group by cliente.id_cliente;

--Cantidad de vacuna que una mascota ha tenido
select
	mascota.alias_mascota as mascota, 
	count(medicamento_mascota.id_mascota) as vacunas
from mascota
	inner join medicamento_mascota on mascota.id_mascota = medicamento_mascota.id_mascota
	inner join medicamento on medicamento.id_medicamento = medicamento_mascota.id_medicamento
where medicamento.id_medicamento NOT IN ('0003', '0007')
group by mascota.alias_mascota;

--Cantidad de vacunas que cada veterinario ha puesto
select
	personal.nombre_empleado as veterinario,
	count(medicamento_mascota.id_empleado) as vacunas_aplicada
from personal
	inner join medicamento_mascota on personal.id_empleado = medicamento_mascota.id_empleado
	inner join medicamento on medicamento.id_medicamento = medicamento_mascota.id_medicamento
WHERE medicamento.id_medicamento NOT IN ('0003', '0007')
group by personal.id_empleado;

--Mostrar historico de vacunaciones que se haya dado en el centro a cada tipo de animal. 
--En una columna debe aparecer el año, en otra el tipo de animal, en otra el total de vacunas dadas a todos ese tipo de animal
select
	to_char(medicamento_mascota.fecha_aplicacion, 'YYYY') as anio,
	mascota.especie_mascota as tipo_mascota,
	count(medicamento_mascota.id_mascota) as total_vacunas
from mascota
	inner join medicamento_mascota on mascota.id_mascota = medicamento_mascota.id_mascota
	inner join medicamento on medicamento.id_medicamento = medicamento_mascota.id_medicamento
where medicamento.id_medicamento NOT IN ('0003', '0007')
group by to_char(medicamento_mascota.fecha_aplicacion, 'YYYY'), mascota.especie_mascota;

--Trigger que actualice el número de mascotas que un cliente ha llevado 
--TRIGGER
create or replace function actualizar_cantidad_mascotas()
returns trigger as $$
declare
	total_mascotas integer:= 0;
	registros record;
begin
	for registros in select * from cliente loop
		--Hacer el conteo de las mascotas por cliente
		select count(mascota.id_mascota) into total_mascotas from cliente
		inner join mascota on cliente.id_cliente = mascota.id_cliente
		where cliente.id_cliente = registros.id_cliente group by cliente.id_cliente;
		--Actualizar en la tabla cliente la cantidad
		if (total_mascotas is null) then
			total_mascotas := 0;
		end if;
		update cliente set cantidad_mascotas = total_mascotas
		where cliente.id_cliente = registros.id_cliente;
	end loop;
return new;
end $$
language plpgsql;

create trigger tr_actualizador
after insert or update on mascota
for each row
execute procedure actualizar_cantidad_mascotas()

--Consulta para probar los datos antes de disparar el trigger--
select
	cliente.nombre_cliente, cliente.id_cliente, count(mascota.id_mascota)
from cliente
	inner join mascota on cliente.id_cliente = mascota.id_cliente
group by cliente.id_cliente
order by cliente.id_cliente;
----------------------------------------------------------------

--Cursor que muestre los veterinarios con todas las mascotas y fechas en las que fueron atendidas
--CURSOR
do $$
declare
	registros record;
	historico cursor for select * from personal
		inner join tipo on personal.id_tipo = tipo.id_tipo
		inner join sala on personal.id_empleado = sala.id_empleado
		inner join sala_mascota on sala.id_sala = sala_mascota.id_sala
		inner join mascota on mascota.id_mascota = sala_mascota.id_mascota
		where tipo.id_tipo = '0001' order by personal.id_empleado;
begin
	for registros in historico
	loop
		raise notice 
		'
		Veterinario: %
		Mascota = [Alias: %,  Especie: %, Raza: %]
		Fecha de atención: %',
		concat_ws(' ', registros.nombre_empleado, registros.apellido_empleado),
		registros.alias_mascota, registros.especie_mascota, registros.raza_mascota,
		registros.fecha_ingreso;
	end loop;
end $$
language 'plpgsql';

--Consulta para probar los datos del CURSOR--
select
	concat_ws(' ', personal.nombre_empleado, personal.apellido_empleado),
	mascota.raza_mascota, mascota.especie_mascota,
	sala_mascota.fecha_ingreso
from personal
	inner join tipo on personal.id_tipo = tipo.id_tipo
	inner join sala on personal.id_empleado = sala.id_empleado
	inner join sala_mascota on sala.id_sala = sala_mascota.id_sala
	inner join mascota on mascota.id_mascota = sala_mascota.id_mascota
where tipo.id_tipo = '0001'
order by personal.id_empleado
---------------------------------------------

--Prodedimiento almacenado que retorne las fechas programadas de citas futuras de las mascotas--
create or replace function ver_citas_futuras() returns integer
as $$
declare
	registros record;
	total_citas integer := 0;
	citas_programadas cursor for select * from cita
		inner join mascota on mascota.id_mascota = cita.id_mascota
		inner join cliente on cliente.id_cliente = cita.id_cliente
		inner join personal on personal.id_empleado = cita.id_empleado_vet
		where cita.estado_cita like '%Pendiente%';
begin
	for registros in citas_programadas
	loop
		total_citas = total_citas + count(registros.id_cita);
		raise notice 
		'
		Cita = [Id: %, Fecha: %, Hora: %]
		Mascota = [Alias: %,  Especie: %, Raza: %, Dueño: %]
		Veterinario: %',
		registros.id_cita, registros.fecha_cita, registros.hora_cita, 
		registros.alias_mascota, registros.especie_mascota, registros.raza_mascota,
		concat_ws(' ', registros.nombre_cliente, registros.apellido_cliente),
		concat_ws(' ', registros.nombre_empleado, registros.apellido_empleado);
	end loop;
return total_citas;
end $$
language plpgsql;

--Llamada al procidimiento almacenado
select ver_citas_futuras();

--Consulta para probar los datos del procedimiento almacenado--
select
	cita.id_cita, cita.fecha_cita, cita.hora_cita, 
	mascota.alias_mascota, mascota.especie_mascota, mascota.raza_mascota,
	concat_ws(' ', cliente.nombre_cliente, cliente.apellido_cliente),
	concat_ws(' ', personal.nombre_empleado, personal.apellido_empleado)
from cita
	inner join mascota on mascota.id_mascota = cita.id_mascota
	inner join cliente on cliente.id_cliente = cita.id_cliente
	inner join personal on personal.id_empleado = cita.id_empleado_vet
where cita.estado_cita like '%Pendiente%';

--Reporte que muestre en un gráfico de torta los diferentes tipos de animales que se han atendido
select
	cast((mascota.especie_mascota) as varchar) as tipo_mascota,
	cast((count(mascota.especie_mascota)) as numeric) as total_atendido,
	(
		select count(mascota.especie_mascota) as total_mascotas
		from mascota inner join cita on mascota.id_mascota = cita.id_mascota
		where cita.estado_cita not in ('Pendiente')
	)
from mascota
	inner join cita on mascota.id_mascota = cita.id_mascota
where cita.estado_cita not in ('Pendiente')
group by mascota.especie_mascota;