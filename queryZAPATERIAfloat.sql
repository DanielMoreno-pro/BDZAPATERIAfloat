/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     03/10/2020 9:07:22                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ABONO') and o.name = 'FK_ABONO_REALIZA_CLIENTE')
alter table ABONO
   drop constraint FK_ABONO_REALIZA_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ATIENDE') and o.name = 'FK_ATIENDE_ATIENDE_CLIENTE')
alter table ATIENDE
   drop constraint FK_ATIENDE_ATIENDE_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ATIENDE') and o.name = 'FK_ATIENDE_ATIENDE2_AGENTE')
alter table ATIENDE
   drop constraint FK_ATIENDE_ATIENDE2_AGENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DESCUENTO') and o.name = 'FK_DESCUENT_OBTIENE_CLIENTE')
alter table DESCUENTO
   drop constraint FK_DESCUENT_OBTIENE_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ENTREGA') and o.name = 'FK_ENTREGA_ENTREGA_AGENTE')
alter table ENTREGA
   drop constraint FK_ENTREGA_ENTREGA_AGENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ENTREGA') and o.name = 'FK_ENTREGA_ENTREGA2_PRODUCTO')
alter table ENTREGA
   drop constraint FK_ENTREGA_ENTREGA2_PRODUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ETIQUETA') and o.name = 'FK_ETIQUETA_TIENE_PRODUCTO')
alter table ETIQUETA
   drop constraint FK_ETIQUETA_TIENE_PRODUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('IMAGEN') and o.name = 'FK_IMAGEN_CONTIENE_PRODUCTO')
alter table IMAGEN
   drop constraint FK_IMAGEN_CONTIENE_PRODUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCTO') and o.name = 'FK_PRODUCTO_ADQUIERE_CLIENTE')
alter table PRODUCTO
   drop constraint FK_PRODUCTO_ADQUIERE_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TALLA') and o.name = 'FK_TALLA_ASIGNA_PRODUCTO')
alter table TALLA
   drop constraint FK_TALLA_ASIGNA_PRODUCTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ABONO')
            and   name  = 'REALIZA_FK'
            and   indid > 0
            and   indid < 255)
   drop index ABONO.REALIZA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ABONO')
            and   type = 'U')
   drop table ABONO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AGENTE')
            and   type = 'U')
   drop table AGENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ATIENDE')
            and   name  = 'ATIENDE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ATIENDE.ATIENDE2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ATIENDE')
            and   name  = 'ATIENDE_FK'
            and   indid > 0
            and   indid < 255)
   drop index ATIENDE.ATIENDE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ATIENDE')
            and   type = 'U')
   drop table ATIENDE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DESCUENTO')
            and   name  = 'OBTIENE_FK'
            and   indid > 0
            and   indid < 255)
   drop index DESCUENTO.OBTIENE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DESCUENTO')
            and   type = 'U')
   drop table DESCUENTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ENTREGA')
            and   name  = 'ENTREGA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ENTREGA.ENTREGA2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ENTREGA')
            and   name  = 'ENTREGA_FK'
            and   indid > 0
            and   indid < 255)
   drop index ENTREGA.ENTREGA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ENTREGA')
            and   type = 'U')
   drop table ENTREGA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ETIQUETA')
            and   name  = 'TIENE_FK'
            and   indid > 0
            and   indid < 255)
   drop index ETIQUETA.TIENE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ETIQUETA')
            and   type = 'U')
   drop table ETIQUETA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('IMAGEN')
            and   name  = 'CONTIENE_FK'
            and   indid > 0
            and   indid < 255)
   drop index IMAGEN.CONTIENE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('IMAGEN')
            and   type = 'U')
   drop table IMAGEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCTO')
            and   name  = 'ADQUIERE_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCTO.ADQUIERE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRODUCTO')
            and   type = 'U')
   drop table PRODUCTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TALLA')
            and   name  = 'ASIGNA_FK'
            and   indid > 0
            and   indid < 255)
   drop index TALLA.ASIGNA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TALLA')
            and   type = 'U')
   drop table TALLA
go

/*==============================================================*/
/* Table: ABONO                                                 */
/*==============================================================*/
create table ABONO (
   IDABONO              int                  not null,
   IDCLIENTE            int                  null,
   CANTIDAD_ABONO       float                null,
   FECHA_ABONO          datetime             null,
   SALDO_ABONO          float                null,
   constraint PK_ABONO primary key (IDABONO)
)
go

/*==============================================================*/
/* Index: REALIZA_FK                                            */
/*==============================================================*/




create nonclustered index REALIZA_FK on ABONO (IDCLIENTE ASC)
go

/*==============================================================*/
/* Table: AGENTE                                                */
/*==============================================================*/
create table AGENTE (
   IDAGENTE             char(10)             not null,
   NOMBRE_AGENTE        char(20)             null,
   APATERNO_AGENTE      char(20)             null,
   AMATERNO_AGENTE      char(20)             null,
   SALDO                float                null,
   constraint PK_AGENTE primary key (IDAGENTE)
)
go

/*==============================================================*/
/* Table: ATIENDE                                               */
/*==============================================================*/
create table ATIENDE (
   IDCLIENTE            int                  not null,
   IDAGENTE             char(10)             not null,
   constraint PK_ATIENDE primary key (IDCLIENTE, IDAGENTE)
)
go

/*==============================================================*/
/* Index: ATIENDE_FK                                            */
/*==============================================================*/




create nonclustered index ATIENDE_FK on ATIENDE (IDCLIENTE ASC)
go

/*==============================================================*/
/* Index: ATIENDE2_FK                                           */
/*==============================================================*/




create nonclustered index ATIENDE2_FK on ATIENDE (IDAGENTE ASC)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   IDCLIENTE            int                  not null,
   NOMBRE_CLIENTE       char(20)             null,
   APATERNO_CLIENTE     char(20)             null,
   AMATERNO_CLIENTE     char(20)             null,
   DIRECCION            char(30)             null,
   COLONIA              char(20)             null,
   CIUDAD               char(20)             null,
   TELEFONO             char(20)             null,
   FECHAALTA            datetime             null,
   DIAPAGO              char(10)             null,
   TIPOCLIENTE          char(1)              null,
   ESTATUS              char(1)              null,
   OBSERVACIONES        char(100)            null,
   constraint PK_CLIENTE primary key (IDCLIENTE)
)
go

/*==============================================================*/
/* Table: DESCUENTO                                             */
/*==============================================================*/
create table DESCUENTO (
   IDDESCUENTO          int                  not null,
   IDCLIENTE            int                  null,
   CANTIDAD_DESCUENTO   float                null,
   FECHA_DESCUENTO      datetime             null,
   MOTIVO_DESCUENTO     char(30)             null,
   constraint PK_DESCUENTO primary key (IDDESCUENTO)
)
go

/*==============================================================*/
/* Index: OBTIENE_FK                                            */
/*==============================================================*/




create nonclustered index OBTIENE_FK on DESCUENTO (IDCLIENTE ASC)
go

/*==============================================================*/
/* Table: ENTREGA                                               */
/*==============================================================*/
create table ENTREGA (
   IDAGENTE             char(10)             not null,
   IDPRODUCTO           int                  not null,
   constraint PK_ENTREGA primary key (IDAGENTE, IDPRODUCTO)
)
go

/*==============================================================*/
/* Index: ENTREGA_FK                                            */
/*==============================================================*/




create nonclustered index ENTREGA_FK on ENTREGA (IDAGENTE ASC)
go

/*==============================================================*/
/* Index: ENTREGA2_FK                                           */
/*==============================================================*/




create nonclustered index ENTREGA2_FK on ENTREGA (IDPRODUCTO ASC)
go

/*==============================================================*/
/* Table: ETIQUETA                                              */
/*==============================================================*/
create table ETIQUETA (
   IDETIQUETA           int                  not null,
   IDPRODUCTO           int                  null,
   DESCRIPCION          char(50)             null,
   constraint PK_ETIQUETA primary key (IDETIQUETA)
)
go

/*==============================================================*/
/* Index: TIENE_FK                                              */
/*==============================================================*/




create nonclustered index TIENE_FK on ETIQUETA (IDPRODUCTO ASC)
go

/*==============================================================*/
/* Table: IMAGEN                                                */
/*==============================================================*/
create table IMAGEN (
   IDIMAGEN             int                  not null,
   IDPRODUCTO           int                  null,
   RUTA                 char(256)            null,
   constraint PK_IMAGEN primary key (IDIMAGEN)
)
go

/*==============================================================*/
/* Index: CONTIENE_FK                                           */
/*==============================================================*/




create nonclustered index CONTIENE_FK on IMAGEN (IDPRODUCTO ASC)
go

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   IDPRODUCTO           int                  not null,
   IDCLIENTE            int                  null,
   MODELO               char(50)             null,
   PRECIO               float                null,
   COLOR                char(20)             null,
   ESTILO               char(20)             null,
   CANTIDAD             int                  null,
   constraint PK_PRODUCTO primary key (IDPRODUCTO)
)
go

/*==============================================================*/
/* Index: ADQUIERE_FK                                           */
/*==============================================================*/




create nonclustered index ADQUIERE_FK on PRODUCTO (IDCLIENTE ASC)
go

/*==============================================================*/
/* Table: TALLA                                                 */
/*==============================================================*/
create table TALLA (
   IDTALLA              int                  not null,
   IDPRODUCTO           int                  null,
   GENERO               char(1)              null,
   MEDIDA               float                null,
   constraint PK_TALLA primary key (IDTALLA)
)
go

/*==============================================================*/
/* Index: ASIGNA_FK                                             */
/*==============================================================*/




create nonclustered index ASIGNA_FK on TALLA (IDPRODUCTO ASC)
go

alter table ABONO
   add constraint FK_ABONO_REALIZA_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
go

alter table ATIENDE
   add constraint FK_ATIENDE_ATIENDE_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
go

alter table ATIENDE
   add constraint FK_ATIENDE_ATIENDE2_AGENTE foreign key (IDAGENTE)
      references AGENTE (IDAGENTE)
go

alter table DESCUENTO
   add constraint FK_DESCUENT_OBTIENE_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
go

alter table ENTREGA
   add constraint FK_ENTREGA_ENTREGA_AGENTE foreign key (IDAGENTE)
      references AGENTE (IDAGENTE)
go

alter table ENTREGA
   add constraint FK_ENTREGA_ENTREGA2_PRODUCTO foreign key (IDPRODUCTO)
      references PRODUCTO (IDPRODUCTO)
go

alter table ETIQUETA
   add constraint FK_ETIQUETA_TIENE_PRODUCTO foreign key (IDPRODUCTO)
      references PRODUCTO (IDPRODUCTO)
go

alter table IMAGEN
   add constraint FK_IMAGEN_CONTIENE_PRODUCTO foreign key (IDPRODUCTO)
      references PRODUCTO (IDPRODUCTO)
go

alter table PRODUCTO
   add constraint FK_PRODUCTO_ADQUIERE_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
go

alter table TALLA
   add constraint FK_TALLA_ASIGNA_PRODUCTO foreign key (IDPRODUCTO)
      references PRODUCTO (IDPRODUCTO)
go

