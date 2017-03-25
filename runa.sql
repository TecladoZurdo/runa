-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.0-alpha1
-- PostgreSQL version: 9.6
-- Project Site: pgmodeler.com.br
-- Model Author: ---

-- object: bancoideas | type: ROLE --
-- DROP ROLE IF EXISTS bancoideas;
CREATE ROLE bancoideas WITH 
	INHERIT
	LOGIN
	ENCRYPTED PASSWORD '********';
-- ddl-end --


-- Database creation must be done outside an multicommand file.
-- These commands were put in this file only for convenience.
-- -- object: runa | type: DATABASE --
-- -- DROP DATABASE IF EXISTS runa;
-- CREATE DATABASE runa
-- 	ENCODING = 'UTF8'
-- 	LC_COLLATE = 'es_EC.utf8'
-- 	LC_CTYPE = 'es_EC.utf8'
-- 	TABLESPACE = pg_default
-- 	OWNER = postgres
-- ;
-- -- ddl-end --
-- 

-- object: public.cliente | type: TABLE --
-- DROP TABLE IF EXISTS public.cliente CASCADE;
CREATE TABLE public.cliente(
	id bigserial NOT NULL,
	"Nombre" "char",
	"Cargo" "char",
	revisado_por character varying,
	activo boolean DEFAULT true,
	CONSTRAINT "Cliente_pk" PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.cliente OWNER TO postgres;
-- ddl-end --

-- object: public.orden_trabajo | type: TABLE --
-- DROP TABLE IF EXISTS public.orden_trabajo CASCADE;
CREATE TABLE public.orden_trabajo(
	id bigserial NOT NULL,
	num_ticket bigint,
	num_ord_trab bigint,
	empresa_id bigint,
	ct_sistema bigint,
	ct_servicio bigint,
	descripcion character varying(500),
	"fecha_Inicio" timestamp,
	fecha_termino timestamp,
	"Hora_Termino" time with time zone,
	activo boolean DEFAULT true,
	fecha_creacion timestamp,
	cliente_id bigint,
	tecnico_id bigint,
	detalle_orden_trabajo_id bigint,
	CONSTRAINT orden_trabajo_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON COLUMN public.orden_trabajo.num_ord_trab IS 'numero de laorden de trabajo impreso';
-- ddl-end --
ALTER TABLE public.orden_trabajo OWNER TO postgres;
-- ddl-end --

-- object: public.tecnico | type: TABLE --
-- DROP TABLE IF EXISTS public.tecnico CASCADE;
CREATE TABLE public.tecnico(
	id bigserial NOT NULL,
	nombres character varying,
	apellidos character varying,
	celular character varying,
	CONSTRAINT "Tecnico_pk" PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.tecnico OWNER TO postgres;
-- ddl-end --

-- object: public.empresa | type: TABLE --
-- DROP TABLE IF EXISTS public.empresa CASCADE;
CREATE TABLE public.empresa(
	id bigserial NOT NULL,
	nombre character varying,
	direccion character varying(250),
	edificio character varying(100),
	ubicacion character varying,
	activo boolean DEFAULT true,
	CONSTRAINT empresa_pk PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.empresa OWNER TO postgres;
-- ddl-end --

-- object: public.catalogo | type: TABLE --
-- DROP TABLE IF EXISTS public.catalogo CASCADE;
CREATE TABLE public.catalogo(
	id bigserial NOT NULL,
	nombre character varying,
	catalogo_id bigint,
	orden smallint,
	valor integer,
	activo boolean,
	CONSTRAINT catalogo_pk PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.catalogo OWNER TO postgres;
-- ddl-end --

-- object: public.detalle_orden_trabajo | type: TABLE --
-- DROP TABLE IF EXISTS public.detalle_orden_trabajo CASCADE;
CREATE TABLE public.detalle_orden_trabajo(
	id bigserial NOT NULL,
	cantidad smallint,
	descripcion character varying(50),
	activo boolean DEFAULT true
);
-- ddl-end --
ALTER TABLE public.detalle_orden_trabajo OWNER TO postgres;
-- ddl-end --

-- object: fk_cliente_orden_trabajo | type: CONSTRAINT --
-- ALTER TABLE public.orden_trabajo DROP CONSTRAINT IF EXISTS fk_cliente_orden_trabajo CASCADE;
ALTER TABLE public.orden_trabajo ADD CONSTRAINT fk_cliente_orden_trabajo FOREIGN KEY (cliente_id)
REFERENCES public.cliente (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_empresa_orden_trabjo | type: CONSTRAINT --
-- ALTER TABLE public.orden_trabajo DROP CONSTRAINT IF EXISTS fk_empresa_orden_trabjo CASCADE;
ALTER TABLE public.orden_trabajo ADD CONSTRAINT fk_empresa_orden_trabjo FOREIGN KEY (empresa_id)
REFERENCES public.empresa (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: "fk_catalogoSistema_orden_trabajo" | type: CONSTRAINT --
-- ALTER TABLE public.orden_trabajo DROP CONSTRAINT IF EXISTS "fk_catalogoSistema_orden_trabajo" CASCADE;
ALTER TABLE public.orden_trabajo ADD CONSTRAINT "fk_catalogoSistema_orden_trabajo" FOREIGN KEY (ct_sistema)
REFERENCES public.catalogo (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_servicio | type: CONSTRAINT --
-- ALTER TABLE public.orden_trabajo DROP CONSTRAINT IF EXISTS fk_servicio CASCADE;
ALTER TABLE public.orden_trabajo ADD CONSTRAINT fk_servicio FOREIGN KEY (ct_servicio)
REFERENCES public.catalogo (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_tecnico_orden_trabajo | type: CONSTRAINT --
-- ALTER TABLE public.orden_trabajo DROP CONSTRAINT IF EXISTS fk_tecnico_orden_trabajo CASCADE;
ALTER TABLE public.orden_trabajo ADD CONSTRAINT fk_tecnico_orden_trabajo FOREIGN KEY (tecnico_id)
REFERENCES public.tecnico (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_detalle_orden_trabajo | type: CONSTRAINT --
-- ALTER TABLE public.orden_trabajo DROP CONSTRAINT IF EXISTS fk_detalle_orden_trabajo CASCADE;
ALTER TABLE public.orden_trabajo ADD CONSTRAINT fk_detalle_orden_trabajo FOREIGN KEY (detalle_orden_trabajo_id)
REFERENCES public.detalle_orden_trabajo (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_recusividad | type: CONSTRAINT --
-- ALTER TABLE public.catalogo DROP CONSTRAINT IF EXISTS fk_recusividad CASCADE;
ALTER TABLE public.catalogo ADD CONSTRAINT fk_recusividad FOREIGN KEY (catalogo_id)
REFERENCES public.catalogo (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


