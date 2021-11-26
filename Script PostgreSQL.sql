/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     25/11/2021 22:14:23                          */
/*==============================================================*/

--drop table CITA;
--drop table CLIENTE;
--drop table ESPECIALIDAD;
--drop table MASCOTA;
--drop table MEDICAMENTO;
--drop table MEDICAMENTO_MASCOTA;
--drop table PERSONAL;
--drop table SALA;
--drop table SALA_MASCOTA;
--drop table TIPO;
--drop table TRATAMIENTO;
--drop table TRATAMIENTO_MASCOTA;
--drop table VETERINARIA;
--drop table VISITA;

/*==============================================================*/
/* Table: CITA                                                  */
/*==============================================================*/
create table CITA (
   ID_CITA              VARCHAR(10)          not null,
   ID_EMPLEADO_SEC      VARCHAR(10)          not null,
   ID_CLIENTE           VARCHAR(10)          not null,
   ID_EMPLEADO_VET      VARCHAR(10)          not null,
   ID_MASCOTA           VARCHAR(10)          not null,
   FECHA_INICIO_CITA    DATE                 not null,
   FECHA_CITA           DATE                 not null,
   HORA_CITA            TIME                 not null,
   ESTADO_CITA          VARCHAR(10)          not null,
   constraint PK_CITA primary key (ID_CITA)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           VARCHAR(10)          not null,
   CEDULA_CLIENTE       VARCHAR(10)          not null,
   NOMBRE_CLIENTE       VARCHAR(25)          not null,
   APELLIDO_CLIENTE     VARCHAR(25)          not null,
   TELEFONO_CLIENTE     VARCHAR(10)          not null,
   DIRECCION_CLIENTE    VARCHAR(150)         not null,
   CORREO_CLIENTE       VARCHAR(100)         not null,
   CANTIDAD_MASCOTAS    NUMERIC              not null,
   constraint PK_CLIENTE primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Table: ESPECIALIDAD                                          */
/*==============================================================*/
create table ESPECIALIDAD (
   ID_ESPECIALIDAD      VARCHAR(10)          not null,
   NOMBRE_ESPECIALIDAD  CHAR(256)            not null,
   constraint PK_ESPECIALIDAD primary key (ID_ESPECIALIDAD)
);

/*==============================================================*/
/* Table: MASCOTA                                               */
/*==============================================================*/
create table MASCOTA (
   ID_MASCOTA           VARCHAR(10)          not null,
   ID_CLIENTE           VARCHAR(10)          not null,
   ALIAS_MASCOTA        VARCHAR(25)          not null,
   ESPECIE_MASCOTA      VARCHAR(25)          not null,
   RAZA_MASCOTA         VARCHAR(25)          not null,
   COLOR_MASCOTA        VARCHAR(25)          not null,
   PESO_MASCOTA         VARCHAR(25)          not null,
   FECHA_NACIMIENTO_MASCOTA DATE                 not null,
   constraint PK_MASCOTA primary key (ID_MASCOTA)
);

/*==============================================================*/
/* Table: MEDICAMENTO                                           */
/*==============================================================*/
create table MEDICAMENTO (
   ID_MEDICAMENTO       VARCHAR(10)          not null,
   NOMBRE_MEDICAMENTO   VARCHAR(75)          not null,
   DETALLE_MEDICAMENTO  VARCHAR(100)         not null,
   PRECIO_MEDICAMENTO   MONEY                not null,
   constraint PK_MEDICAMENTO primary key (ID_MEDICAMENTO)
);

/*==============================================================*/
/* Table: MEDICAMENTO_MASCOTA                                   */
/*==============================================================*/
create table MEDICAMENTO_MASCOTA (
   ID_MEDICAMENTO       VARCHAR(10)          not null,
   ID_MASCOTA           VARCHAR(10)          not null,
   ID_EMPLEADO          VARCHAR(10)          not null,
   FECHA_APLICACION     DATE                 not null,
   constraint PK_MEDICAMENTO_MASCOTA primary key (ID_MEDICAMENTO, ID_MASCOTA)
);

/*==============================================================*/
/* Table: PERSONAL                                              */
/*==============================================================*/
create table PERSONAL (
   ID_EMPLEADO          VARCHAR(10)          not null,
   ID_ESPECIALIDAD      VARCHAR(10)          null,
   ID_TIPO              VARCHAR(10)          not null,
   ID_VETERINARIA       VARCHAR(10)          not null,
   CEDULA_EMPLEADO      VARCHAR(10)          not null,
   NOMBRE_EMPLEADO      VARCHAR(25)          not null,
   APELLIDO_EMPLEADO    VARCHAR(25)          not null,
   TELEFONO_EMPLEADO    VARCHAR(10)          not null,
   CELULAR_EMPLEADO     VARCHAR(10)          not null,
   DIRECCION_EMPLEADO   VARCHAR(150)         not null,
   CORREO_EMPLEADO      VARCHAR(100)         not null,
   constraint PK_PERSONAL primary key (ID_EMPLEADO)
);

/*==============================================================*/
/* Table: SALA                                                  */
/*==============================================================*/
create table SALA (
   ID_SALA              VARCHAR(10)          not null,
   ID_VETERINARIA       VARCHAR(10)          not null,
   ID_EMPLEADO          VARCHAR(10)          not null,
   NOMBRE_SALA          VARCHAR(50)          not null,
   constraint PK_SALA primary key (ID_SALA)
);

/*==============================================================*/
/* Table: SALA_MASCOTA                                          */
/*==============================================================*/
create table SALA_MASCOTA (
   ID_SALA              VARCHAR(10)          not null,
   ID_MASCOTA           VARCHAR(10)          not null,
   FECHA_INGRESO        DATE                 not null,
   OBSERVACIONES        VARCHAR(200)         null,
   constraint PK_SALA_MASCOTA primary key (ID_SALA, ID_MASCOTA)
);

/*==============================================================*/
/* Table: TIPO                                                  */
/*==============================================================*/
create table TIPO (
   ID_TIPO              VARCHAR(10)          not null,
   NOMBRE_TIPO          VARCHAR(25)          not null,
   constraint PK_TIPO primary key (ID_TIPO)
);

/*==============================================================*/
/* Table: TRATAMIENTO                                           */
/*==============================================================*/
create table TRATAMIENTO (
   ID_TRATAMIENTO       VARCHAR(10)          not null,
   NOMBRE_TRATAMIENTO   VARCHAR(75)          not null,
   PRECIO_TRATAMIENTO   MONEY                not null,
   constraint PK_TRATAMIENTO primary key (ID_TRATAMIENTO)
);

/*==============================================================*/
/* Table: TRATAMIENTO_MASCOTA                                   */
/*==============================================================*/
create table TRATAMIENTO_MASCOTA (
   ID_TRATAMIENTO       VARCHAR(10)          not null,
   ID_MASCOTA           VARCHAR(10)          not null,
   FECHA_INICIO_TRATAMIENTO DATE                 not null,
   constraint PK_TRATAMIENTO_MASCOTA primary key (ID_TRATAMIENTO, ID_MASCOTA)
);

/*==============================================================*/
/* Table: VETERINARIA                                           */
/*==============================================================*/
create table VETERINARIA (
   ID_VETERINARIA       VARCHAR(10)          not null,
   NOMBRE_VETERINARIA   VARCHAR(50)          not null,
   TELEFONO_VETERINARIA VARCHAR(10)          not null,
   DIRECCION_VETERINARIA VARCHAR(150)         not null,
   constraint PK_VETERINARIA primary key (ID_VETERINARIA)
);

/*==============================================================*/
/* Table: VISITA                                                */
/*==============================================================*/
create table VISITA (
   ID_MASCOTA           VARCHAR(10)          not null,
   ID_VETERINARIA       VARCHAR(10)          not null,
   FECHA_VISITA         DATE                 not null,
   TIEMPO_VISITA        TIME                 not null,
   constraint PK_VISITA primary key (ID_MASCOTA, ID_VETERINARIA)
);

alter table CITA
   add constraint FK_CITA_AGENDA_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table CITA
   add constraint FK_CITA_ASISTE_MASCOTA foreign key (ID_MASCOTA)
      references MASCOTA (ID_MASCOTA)
      on delete restrict on update restrict;

alter table CITA
   add constraint FK_CITA_SECRETARI_PERSONAL foreign key (ID_EMPLEADO_SEC)
      references PERSONAL (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table CITA
   add constraint FK_CITA_VETERINAR_PERSONAL foreign key (ID_EMPLEADO_VET)
      references PERSONAL (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table MASCOTA
   add constraint FK_MASCOTA_MANTIENE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table MEDICAMENTO_MASCOTA
   add constraint FK_MEDICAME_APLICA_MEDICAME foreign key (ID_MEDICAMENTO)
      references MEDICAMENTO (ID_MEDICAMENTO)
      on delete restrict on update restrict;

alter table MEDICAMENTO_MASCOTA
   add constraint FK_MEDICAME_APLICA2_MASCOTA foreign key (ID_MASCOTA)
      references MASCOTA (ID_MASCOTA)
      on delete restrict on update restrict;

alter table MEDICAMENTO_MASCOTA
   add constraint FK_MEDICAME_COLOCA_PERSONAL foreign key (ID_EMPLEADO)
      references PERSONAL (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table PERSONAL
   add constraint FK_PERSONAL_CONTRATA_VETERINA foreign key (ID_VETERINARIA)
      references VETERINARIA (ID_VETERINARIA)
      on delete restrict on update restrict;

alter table PERSONAL
   add constraint FK_PERSONAL_PERTENECE_TIPO foreign key (ID_TIPO)
      references TIPO (ID_TIPO)
      on delete restrict on update restrict;

alter table PERSONAL
   add constraint FK_PERSONAL_TIENE_ESPECIAL foreign key (ID_ESPECIALIDAD)
      references ESPECIALIDAD (ID_ESPECIALIDAD)
      on delete restrict on update restrict;

alter table SALA
   add constraint FK_SALA_ADMITE_PERSONAL foreign key (ID_EMPLEADO)
      references PERSONAL (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table SALA
   add constraint FK_SALA_POSEE_VETERINA foreign key (ID_VETERINARIA)
      references VETERINARIA (ID_VETERINARIA)
      on delete restrict on update restrict;

alter table SALA_MASCOTA
   add constraint FK_SALA_MAS_ACUDE_SALA foreign key (ID_SALA)
      references SALA (ID_SALA)
      on delete restrict on update restrict;

alter table SALA_MASCOTA
   add constraint FK_SALA_MAS_ACUDE2_MASCOTA foreign key (ID_MASCOTA)
      references MASCOTA (ID_MASCOTA)
      on delete restrict on update restrict;

alter table TRATAMIENTO_MASCOTA
   add constraint FK_TRATAMIE_RECIBE_TRATAMIE foreign key (ID_TRATAMIENTO)
      references TRATAMIENTO (ID_TRATAMIENTO)
      on delete restrict on update restrict;

alter table TRATAMIENTO_MASCOTA
   add constraint FK_TRATAMIE_RECIBE2_MASCOTA foreign key (ID_MASCOTA)
      references MASCOTA (ID_MASCOTA)
      on delete restrict on update restrict;

alter table VISITA
   add constraint FK_VISITA_VISITA_MASCOTA foreign key (ID_MASCOTA)
      references MASCOTA (ID_MASCOTA)
      on delete restrict on update restrict;

alter table VISITA
   add constraint FK_VISITA_VISITA2_VETERINA foreign key (ID_VETERINARIA)
      references VETERINARIA (ID_VETERINARIA)
      on delete restrict on update restrict;

