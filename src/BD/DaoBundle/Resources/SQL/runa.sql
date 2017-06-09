--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.0
-- Dumped by pg_dump version 9.6.3

-- Started on 2017-06-08 23:10:32 -05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12394)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2243 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 65529)
-- Name: camaras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE camaras (
    id bigint NOT NULL,
    ct_tipo bigint,
    codigo character varying,
    modelo character varying,
    marca character varying,
    activo boolean DEFAULT true,
    estado character varying,
    ubicacion character varying
);


ALTER TABLE camaras OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 65536)
-- Name: camaras_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE camaras_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE camaras_id_seq OWNER TO postgres;

--
-- TOC entry 2244 (class 0 OID 0)
-- Dependencies: 186
-- Name: camaras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE camaras_id_seq OWNED BY camaras.id;


--
-- TOC entry 187 (class 1259 OID 65538)
-- Name: camaras_orden_trabajo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE camaras_orden_trabajo (
    id bigint NOT NULL,
    orden_trabajo_id bigint,
    camaras_id bigint,
    activo boolean DEFAULT true
);


ALTER TABLE camaras_orden_trabajo OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 65542)
-- Name: camaras_orden_trabajo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE camaras_orden_trabajo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE camaras_orden_trabajo_id_seq OWNER TO postgres;

--
-- TOC entry 2245 (class 0 OID 0)
-- Dependencies: 188
-- Name: camaras_orden_trabajo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE camaras_orden_trabajo_id_seq OWNED BY camaras_orden_trabajo.id;


--
-- TOC entry 189 (class 1259 OID 65544)
-- Name: catalogo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE catalogo (
    id bigint NOT NULL,
    nombre character varying,
    catalogo_id bigint,
    orden smallint,
    valor integer,
    activo boolean
);


ALTER TABLE catalogo OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 65550)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cliente (
    id bigint NOT NULL,
    nombre character varying,
    cargo character varying,
    revisado_por character varying,
    activo boolean DEFAULT true
);


ALTER TABLE cliente OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 65557)
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cliente_id_seq OWNER TO postgres;

--
-- TOC entry 2246 (class 0 OID 0)
-- Dependencies: 191
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cliente_id_seq OWNED BY cliente.id;


--
-- TOC entry 192 (class 1259 OID 65559)
-- Name: detalle_orden_trabajo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE detalle_orden_trabajo (
    id bigint NOT NULL,
    cantidad smallint,
    descripcion character varying(50),
    activo boolean DEFAULT true
);


ALTER TABLE detalle_orden_trabajo OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 65563)
-- Name: detalle_orden_trabajo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE detalle_orden_trabajo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE detalle_orden_trabajo_id_seq OWNER TO postgres;

--
-- TOC entry 2247 (class 0 OID 0)
-- Dependencies: 193
-- Name: detalle_orden_trabajo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE detalle_orden_trabajo_id_seq OWNED BY detalle_orden_trabajo.id;


--
-- TOC entry 194 (class 1259 OID 65565)
-- Name: empresa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE empresa (
    id bigint NOT NULL,
    nombre character varying,
    direccion character varying(250),
    edificio character varying(100),
    ubicacion character varying,
    activo boolean DEFAULT true
);


ALTER TABLE empresa OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 65572)
-- Name: empresa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE empresa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE empresa_id_seq OWNER TO postgres;

--
-- TOC entry 2248 (class 0 OID 0)
-- Dependencies: 195
-- Name: empresa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE empresa_id_seq OWNED BY empresa.id;


--
-- TOC entry 196 (class 1259 OID 65574)
-- Name: orden_trabajo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE orden_trabajo (
    id bigint NOT NULL,
    num_ticket bigint,
    num_ord_trab bigint,
    empresa_id bigint,
    ct_sistema bigint,
    ct_servicio bigint,
    descripcion character varying(500),
    fecha_inicio timestamp without time zone,
    fecha_termino timestamp without time zone,
    hora_termino time with time zone,
    activo boolean DEFAULT true,
    fecha_creacion timestamp without time zone,
    cliente_id bigint,
    tecnico_id bigint,
    detalle_orden_trabajo_id bigint,
    solucion character varying(1500),
    solucion_tecnica character varying(1500)
);


ALTER TABLE orden_trabajo OWNER TO postgres;

--
-- TOC entry 2249 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN orden_trabajo.num_ord_trab; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN orden_trabajo.num_ord_trab IS 'numero de laorden de trabajo impreso';


--
-- TOC entry 197 (class 1259 OID 65581)
-- Name: orden_trabajo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE orden_trabajo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE orden_trabajo_id_seq OWNER TO postgres;

--
-- TOC entry 2250 (class 0 OID 0)
-- Dependencies: 197
-- Name: orden_trabajo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE orden_trabajo_id_seq OWNED BY orden_trabajo.id;


--
-- TOC entry 198 (class 1259 OID 65583)
-- Name: puertas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE puertas (
    id bigint NOT NULL,
    codigo text,
    modelo text,
    ct_tipo bigint,
    marca character varying,
    activo boolean,
    estado character varying
);


ALTER TABLE puertas OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 65589)
-- Name: puertas_orden_trabajo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE puertas_orden_trabajo (
    id bigint NOT NULL,
    orden_trabajo_id bigint,
    puertas_id bigint,
    activo boolean
);


ALTER TABLE puertas_orden_trabajo OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 65592)
-- Name: puertas_orden_trabajo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE puertas_orden_trabajo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE puertas_orden_trabajo_id_seq OWNER TO postgres;

--
-- TOC entry 2251 (class 0 OID 0)
-- Dependencies: 200
-- Name: puertas_orden_trabajo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE puertas_orden_trabajo_id_seq OWNED BY puertas_orden_trabajo.id;


--
-- TOC entry 201 (class 1259 OID 65594)
-- Name: tecnico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tecnico (
    id bigint NOT NULL,
    nombres character varying,
    apellidos character varying,
    celular character varying,
    activo boolean DEFAULT true
);


ALTER TABLE tecnico OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 65601)
-- Name: tecnico_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tecnico_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tecnico_id_seq OWNER TO postgres;

--
-- TOC entry 2252 (class 0 OID 0)
-- Dependencies: 202
-- Name: tecnico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tecnico_id_seq OWNED BY tecnico.id;


--
-- TOC entry 2064 (class 2604 OID 65603)
-- Name: camaras id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY camaras ALTER COLUMN id SET DEFAULT nextval('camaras_id_seq'::regclass);


--
-- TOC entry 2066 (class 2604 OID 65604)
-- Name: camaras_orden_trabajo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY camaras_orden_trabajo ALTER COLUMN id SET DEFAULT nextval('camaras_orden_trabajo_id_seq'::regclass);


--
-- TOC entry 2068 (class 2604 OID 65605)
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente ALTER COLUMN id SET DEFAULT nextval('cliente_id_seq'::regclass);


--
-- TOC entry 2070 (class 2604 OID 65606)
-- Name: detalle_orden_trabajo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_trabajo ALTER COLUMN id SET DEFAULT nextval('detalle_orden_trabajo_id_seq'::regclass);


--
-- TOC entry 2072 (class 2604 OID 65607)
-- Name: empresa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empresa ALTER COLUMN id SET DEFAULT nextval('empresa_id_seq'::regclass);


--
-- TOC entry 2074 (class 2604 OID 65608)
-- Name: orden_trabajo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orden_trabajo ALTER COLUMN id SET DEFAULT nextval('orden_trabajo_id_seq'::regclass);


--
-- TOC entry 2075 (class 2604 OID 65609)
-- Name: puertas_orden_trabajo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puertas_orden_trabajo ALTER COLUMN id SET DEFAULT nextval('puertas_orden_trabajo_id_seq'::regclass);


--
-- TOC entry 2077 (class 2604 OID 65610)
-- Name: tecnico id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tecnico ALTER COLUMN id SET DEFAULT nextval('tecnico_id_seq'::regclass);


--
-- TOC entry 2219 (class 0 OID 65529)
-- Dependencies: 185
-- Data for Name: camaras; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO camaras VALUES (3, NULL, 'C201', 'ptz', 'BDI', true, 'operativa', 'Hall Publico Salida N');
INSERT INTO camaras VALUES (5, NULL, 'C203', 'ptz', 'AXIS', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras VALUES (7, NULL, 'C205', 'fija', 'BDI', true, 'operativa', 'Elevador 6');
INSERT INTO camaras VALUES (2, NULL, 'F-C101F', 'fija', 'BDI', true, 'operativa', 'Bodega General');
INSERT INTO camaras VALUES (4, NULL, 'C202', 'ptz', 'BDI', true, 'operativa', 'Hall Publico Salida S');
INSERT INTO camaras VALUES (8, NULL, 'C206', 'fija', 'BDI', true, 'operativa', 'Equipaje sobredimencionado N');
INSERT INTO camaras VALUES (9, NULL, 'C207', 'fija', 'BDI', true, 'operativa', 'Cuarto Chequeo Nacional');
INSERT INTO camaras VALUES (11, NULL, 'C209', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras VALUES (14, NULL, 'C212', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras VALUES (18, NULL, 'C216', 'fija', 'BDI', true, 'operativa', 'Hall Emigrantes');
INSERT INTO camaras VALUES (82, NULL, 'C283', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas A6/A7');
INSERT INTO camaras VALUES (84, NULL, 'C285', 'fija', 'BDI', true, 'operativa', 'Corredor de  Mangas A8');
INSERT INTO camaras VALUES (13, NULL, 'C211', 'ptz', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras VALUES (10, NULL, 'C208', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras VALUES (12, NULL, 'C210', 'ptz', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras VALUES (17, NULL, 'C215', 'ptz', 'BDI', true, 'operativa', 'Inspección de Seguridad');
INSERT INTO camaras VALUES (19, NULL, 'C217', 'ptz', 'BDI', true, 'operativa', 'Hall Emigración');
INSERT INTO camaras VALUES (15, NULL, 'C213', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras VALUES (20, NULL, 'C218', 'fija', 'BDI', true, 'operativa', 'Hall Emigración');
INSERT INTO camaras VALUES (21, NULL, 'C219', 'fija', 'BDI', true, 'operativa', 'Elevador 5');
INSERT INTO camaras VALUES (22, NULL, 'C220', 'fija', 'BDI', true, 'operativa', 'Equipaje Sobredimencionado INT');
INSERT INTO camaras VALUES (23, NULL, 'C221', 'ptz', 'AXIS', true, 'operativa', 'Corredor Norte');
INSERT INTO camaras VALUES (24, NULL, 'C222', 'fija', 'BDI', true, 'operativa', 'Sala de Embraque');
INSERT INTO camaras VALUES (26, NULL, 'C224', 'ptz', 'BDI', true, 'operativa', 'Sala Embarque A10-A11');
INSERT INTO camaras VALUES (27, NULL, 'C225', 'fija', 'BDI', true, 'operativa', 'Equipaje Sobredimencionado INT');
INSERT INTO camaras VALUES (28, NULL, 'C226', 'fija', 'BDI', true, 'operativa', 'Sala Transito Norte');
INSERT INTO camaras VALUES (29, NULL, 'C227', 'fija', 'BDI', true, 'operativa', 'Corredor Esteril N');
INSERT INTO camaras VALUES (30, NULL, 'C228', 'fija', 'BDI', true, 'operativa', 'Sala Embarque A9');
INSERT INTO camaras VALUES (31, NULL, 'C229', 'fija', 'BDI', true, 'operativa', 'Corredor de mangas A8');
INSERT INTO camaras VALUES (32, NULL, 'C230', 'fija', 'BDI', true, 'operativa', 'Sala Embarque A8');
INSERT INTO camaras VALUES (33, NULL, 'C231', 'fija', 'BDI', true, 'operativa', 'Corredor Esteril Sur');
INSERT INTO camaras VALUES (34, NULL, 'C232', 'fija', 'BDI', true, 'operativa', 'Filtro Transito Sur');
INSERT INTO camaras VALUES (36, NULL, 'C234', 'fija', 'BDI', true, 'operativa', 'Manga 11');
INSERT INTO camaras VALUES (37, NULL, 'C235', 'fija', 'BDI', true, 'operativa', 'Corredor Mangas A7');
INSERT INTO camaras VALUES (38, NULL, 'C236', 'ptz', 'BDI', true, 'operativa', 'Sala Embarque A7');
INSERT INTO camaras VALUES (39, NULL, 'C237', 'fija', 'BDI', true, 'operativa', 'Sala Embarque A6');
INSERT INTO camaras VALUES (40, NULL, 'C238', 'fija', 'BDI', true, 'operativa', 'Sala Embarque A5');
INSERT INTO camaras VALUES (41, NULL, 'C239', 'fija', 'BDI', true, 'operativa', 'Corredor Mangas A5/A6');
INSERT INTO camaras VALUES (42, NULL, 'C240', 'fija', 'BDI', true, 'operativa', 'Mangas Puente Móvil 10');
INSERT INTO camaras VALUES (43, NULL, 'C241', 'fija', 'BDI', true, 'operativa', 'Ingreso Mangas 10');
INSERT INTO camaras VALUES (44, NULL, 'C242', 'fija', 'BDI', true, 'operativa', 'Manga 12');
INSERT INTO camaras VALUES (47, NULL, 'C245', 'fija', 'BDI', true, 'operativa', 'Manga 14');
INSERT INTO camaras VALUES (48, NULL, 'C246', 'fija', 'BDI', true, 'operativa', 'Ingreso Manga 15');
INSERT INTO camaras VALUES (49, NULL, 'C247', 'fija', 'BDI', true, 'operativa', 'Puente Movil Manga 15');
INSERT INTO camaras VALUES (50, NULL, 'C248', 'fija', 'BDI', true, 'operativa', 'Exteriores Nacional');
INSERT INTO camaras VALUES (52, NULL, 'C250', 'fija', 'BDI', true, 'operativa', 'Hall Publica Salida Sur');
INSERT INTO camaras VALUES (53, NULL, 'C252', 'ptz', 'AXIS', true, 'operativa', 'Cheque Nacional Sur');
INSERT INTO camaras VALUES (55, NULL, 'C254', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional Sur');
INSERT INTO camaras VALUES (56, NULL, 'C255', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional Sur');
INSERT INTO camaras VALUES (60, NULL, 'C259', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional ');
INSERT INTO camaras VALUES (59, NULL, 'C258', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional ');
INSERT INTO camaras VALUES (58, NULL, 'C257', 'ptz', 'BDI', true, 'operativa', 'Cheque Nacional Sur');
INSERT INTO camaras VALUES (61, NULL, 'C260', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional ');
INSERT INTO camaras VALUES (63, NULL, 'C263', 'fija', 'BDI', true, 'operativa', 'Chequeo Internacional');
INSERT INTO camaras VALUES (64, NULL, 'C264', 'fija', 'BDI', true, 'operativa', 'Chequeo Internacional');
INSERT INTO camaras VALUES (65, NULL, 'C265', 'fija', 'BDI', true, 'operativa', 'Chequeo Internacional');
INSERT INTO camaras VALUES (67, NULL, 'C267', 'ptz', 'BDI', true, 'operativa', 'Chequeo Internacional');
INSERT INTO camaras VALUES (69, NULL, 'C270', 'fija', 'BDI', true, 'operativa', 'Hall Publica Salida Norte');
INSERT INTO camaras VALUES (70, NULL, 'C271', 'ptz', 'AXIS', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras VALUES (71, NULL, 'C272', 'fija', 'BDI', true, 'operativa', 'Counter en Transito');
INSERT INTO camaras VALUES (72, NULL, 'C273', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras VALUES (74, NULL, 'C275', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras VALUES (75, NULL, 'C276', 'fija', 'BDI', true, 'operativa', 'Filtro Tránsito INT');
INSERT INTO camaras VALUES (76, NULL, 'C277', 'fija', 'BDI', true, 'operativa', 'Escaleras Públicas 8');
INSERT INTO camaras VALUES (78, NULL, 'C279', 'fija', 'BDI', true, 'operativa', 'Escaleras Publicas');
INSERT INTO camaras VALUES (80, NULL, 'C281', 'fija', 'BDI', true, 'operativa', 'Sala Embarque A7');
INSERT INTO camaras VALUES (81, NULL, 'C282', 'fija', 'BDI', true, 'operativa', 'Sala Embarque A10');
INSERT INTO camaras VALUES (85, NULL, 'C286', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas A8/A9');
INSERT INTO camaras VALUES (86, NULL, 'C287', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas A10/A11');
INSERT INTO camaras VALUES (87, NULL, 'C288', 'fija', 'BDI', true, 'operativa', 'Filtro de Seguridad');
INSERT INTO camaras VALUES (88, NULL, 'C001', 'ptz', 'BDI', true, 'operativa', 'Puerta Ingreso Nivel 0');
INSERT INTO camaras VALUES (90, NULL, 'C003', 'fija', 'BDI', true, 'operativa', 'Corredor de Servicio');
INSERT INTO camaras VALUES (92, NULL, 'C005', 'fija', 'BDI', true, 'operativa', 'Corredor de Seguridad');
INSERT INTO camaras VALUES (93, NULL, 'C006', 'fija', 'BDI', true, 'operativa', 'Corredor de Servicio');
INSERT INTO camaras VALUES (95, NULL, 'C008', 'fija', 'BDI', true, 'operativa', 'Corredor de Servicio');
INSERT INTO camaras VALUES (96, NULL, 'C101', 'fija', 'BDI', true, 'operativa', 'Hall Público Arribo Sur');
INSERT INTO camaras VALUES (97, NULL, 'C102', 'ptz', 'BDI', true, 'operativa', 'Hall Público Arribo Sur');
INSERT INTO camaras VALUES (98, NULL, 'C103', 'ptz', 'BDI', true, 'operativa', 'Hall Público Arribo Norte');
INSERT INTO camaras VALUES (99, NULL, 'C104', 'fija', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras VALUES (101, NULL, 'C106', 'fija', 'BDI', true, 'operativa', 'Chequeo Aduanas');
INSERT INTO camaras VALUES (103, NULL, 'C108', 'fija', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras VALUES (105, NULL, 'C110', 'fija', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras VALUES (106, NULL, 'C111', 'fija', 'BDI', true, 'operativa', 'Bodega de Objetos Perdidos');
INSERT INTO camaras VALUES (107, NULL, 'C112', 'fija', 'BDI', true, 'operativa', 'Arribo Nacional Bandas');
INSERT INTO camaras VALUES (108, NULL, 'C113', 'fija', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras VALUES (110, NULL, 'C115', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad Norte');
INSERT INTO camaras VALUES (111, NULL, 'C116', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad Norte');
INSERT INTO camaras VALUES (113, NULL, 'C118', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje Int');
INSERT INTO camaras VALUES (1, NULL, 'F-C100F', 'fija', 'BDI', true, 'operativa', 'Filtro de Seguridad Ingreso SSEI');
INSERT INTO camaras VALUES (152, NULL, 'C161', 'fija', 'BDI', true, 'operativa', 'Bandas Equipaje INT');
INSERT INTO camaras VALUES (163, NULL, 'C173', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B3');
INSERT INTO camaras VALUES (164, NULL, 'C174', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad Norte');
INSERT INTO camaras VALUES (207, NULL, 'S-C110', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apron G14');
INSERT INTO camaras VALUES (215, NULL, 'C101A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras VALUES (228, NULL, 'C115A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (229, NULL, 'C116A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras VALUES (230, NULL, 'C117A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras VALUES (233, NULL, 'C120A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras VALUES (234, NULL, 'C121A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras VALUES (235, NULL, 'C122A', 'fija', 'BDI', true, 'operativa', 'Esalera Emergencia (Sector Bandas de Equipaje)');
INSERT INTO camaras VALUES (236, NULL, 'C123A', 'ptz', 'AXIS', true, 'operativa', 'Bandas de Equipaje');
INSERT INTO camaras VALUES (237, NULL, 'C124A', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje');
INSERT INTO camaras VALUES (117, NULL, 'C122', 'fija', 'BDI', true, 'operativa', 'Counter Migración Arribo');
INSERT INTO camaras VALUES (118, NULL, 'C123', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje Int');
INSERT INTO camaras VALUES (119, NULL, 'C124', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje Nac');
INSERT INTO camaras VALUES (120, NULL, 'C125', 'fija', 'BDI', true, 'operativa', 'Vestibulo');
INSERT INTO camaras VALUES (122, NULL, 'C127', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B1');
INSERT INTO camaras VALUES (123, NULL, 'C128', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B2');
INSERT INTO camaras VALUES (124, NULL, 'C129', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B3');
INSERT INTO camaras VALUES (126, NULL, 'C131', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B5');
INSERT INTO camaras VALUES (127, NULL, 'C132', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B6');
INSERT INTO camaras VALUES (128, NULL, 'C133', 'ptz', 'BDI', true, 'operativa', 'Counter Migración Arribo');
INSERT INTO camaras VALUES (130, NULL, 'C135', 'fija', 'BDI', true, 'operativa', 'Corredor (Cuarto FAS)');
INSERT INTO camaras VALUES (132, NULL, 'C137', 'fija', 'BDI', true, 'operativa', 'Hall Público Arribo Nac');
INSERT INTO camaras VALUES (133, NULL, 'C138', 'fija', 'BDI', true, 'operativa', 'Hall Publico Arribo Nac');
INSERT INTO camaras VALUES (134, NULL, 'C139', 'fija', 'BDI', true, 'operativa', 'Oficina EPM');
INSERT INTO camaras VALUES (136, NULL, 'C141', 'fija', 'BDI', true, 'operativa', 'Bandas Arribo Nacional');
INSERT INTO camaras VALUES (137, NULL, 'C142', 'fija', 'BDI', true, 'operativa', 'Bandas Arribo Nacional');
INSERT INTO camaras VALUES (138, NULL, 'C143', 'fija', 'BDI', true, 'operativa', 'Bandas Arribo Nacional ');
INSERT INTO camaras VALUES (140, NULL, 'C145', 'fija', 'BDI', true, 'operativa', 'Hall Publico Arribo Norte');
INSERT INTO camaras VALUES (142, NULL, 'C147', 'fija', 'BDI', true, 'operativa', 'Exteriores Arribo Sur');
INSERT INTO camaras VALUES (143, NULL, 'C148', 'fija', 'BDI', true, 'operativa', 'Exteriores Arribo Sur');
INSERT INTO camaras VALUES (144, NULL, 'C149', 'fija', 'BDI', true, 'operativa', 'Exteriores Arribo Norte');
INSERT INTO camaras VALUES (146, NULL, 'C151', 'ptz', 'BDI', true, 'operativa', 'Make Up INT');
INSERT INTO camaras VALUES (147, NULL, 'C152', 'ptz', 'AXIS', true, 'operativa', 'Make Up INT');
INSERT INTO camaras VALUES (148, NULL, 'C153', 'fija', 'BDI', true, 'operativa', 'Make Up INT');
INSERT INTO camaras VALUES (149, NULL, 'C154', 'fija', 'BDI', true, 'operativa', 'Make Up INT');
INSERT INTO camaras VALUES (151, NULL, 'C160', 'ptz', 'AXIS', true, 'operativa', 'Bandas Equipaje/ Counter Migración');
INSERT INTO camaras VALUES (153, NULL, 'C162', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje INT');
INSERT INTO camaras VALUES (154, NULL, 'C164', 'fija', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras VALUES (156, NULL, 'C166', 'ptz', 'AXIS', true, 'operativa', 'Make Up Nal');
INSERT INTO camaras VALUES (158, NULL, 'C168', 'ptz', 'BDI', true, 'operativa', 'Bandas Equipaje Nal');
INSERT INTO camaras VALUES (159, NULL, 'C169', 'fija', 'BDI', true, 'operativa', 'Bandas Equipaje Nal');
INSERT INTO camaras VALUES (160, NULL, 'C170', 'fija', 'BDI', true, 'operativa', 'Salas Embarque B');
INSERT INTO camaras VALUES (162, NULL, 'C172', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B2');
INSERT INTO camaras VALUES (166, NULL, 'C176', 'ptz', 'BDI', true, 'operativa', 'Make Up INT');
INSERT INTO camaras VALUES (167, NULL, 'C177', 'ptz', 'BDI', true, 'operativa', 'Make Up INT');
INSERT INTO camaras VALUES (169, NULL, 'C179', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad Sur');
INSERT INTO camaras VALUES (170, NULL, 'C180', 'fija', 'BDI', true, 'operativa', 'Exterior B1');
INSERT INTO camaras VALUES (171, NULL, 'C181', 'fija', 'BDI', true, 'operativa', 'Exterior B3');
INSERT INTO camaras VALUES (172, NULL, 'C182', 'fija', 'BDI', true, 'operativa', 'Exterior B4');
INSERT INTO camaras VALUES (173, NULL, 'C183', 'fija', 'BDI', true, 'operativa', 'Exterior B6');
INSERT INTO camaras VALUES (174, NULL, 'C184', 'fija', 'BDI', true, 'operativa', 'Exterior Arribo ');
INSERT INTO camaras VALUES (176, NULL, 'C186', 'fija', 'BDI', true, 'operativa', 'Exterior Lado Aire');
INSERT INTO camaras VALUES (178, NULL, 'C188', 'ptz', 'BDI', true, 'operativa', 'Exterior Lado Aire');
INSERT INTO camaras VALUES (179, NULL, 'C189', 'fija', 'BDI', true, 'operativa', 'Oficina Antinarcoticos');
INSERT INTO camaras VALUES (181, NULL, 'C191', 'fija', 'BDI', true, 'operativa', 'Make Up Nal');
INSERT INTO camaras VALUES (182, NULL, 'C192', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B4');
INSERT INTO camaras VALUES (183, NULL, 'C193', 'fija', 'BDI', true, 'operativa', 'Bandas Equipaje INT');
INSERT INTO camaras VALUES (184, NULL, 'C194', 'fija', 'BDI', true, 'operativa', 'Bandas Equipajes INT');
INSERT INTO camaras VALUES (186, NULL, 'C302', 'fija', 'BDI', true, 'operativa', 'Elevador 3/4');
INSERT INTO camaras VALUES (187, NULL, 'C303', 'fija', 'BDI', true, 'operativa', 'Entrada Oficina ADC');
INSERT INTO camaras VALUES (188, NULL, 'C304', 'fija', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras VALUES (189, NULL, 'C401', 'ptz', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras VALUES (191, NULL, 'C403', 'ptz', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras VALUES (193, NULL, 'C405', 'ptz', 'AXIS', true, 'operativa', 'Terraza');
INSERT INTO camaras VALUES (194, NULL, 'C406', 'ptz', 'AXIS', true, 'operativa', 'Terraza');
INSERT INTO camaras VALUES (196, NULL, 'T-C102A', 'ptz', 'BDI', true, 'operativa', 'West Building Wall');
INSERT INTO camaras VALUES (197, NULL, 'T-C500A', 'fija', 'BDI', true, 'operativa', 'PTB Apron');
INSERT INTO camaras VALUES (199, NULL, 'S-C020', 'ptz', 'PELCO', true, 'operativa', 'Helicopter Pad');
INSERT INTO camaras VALUES (201, NULL, 'S-C040', 'ptz', 'PELCO', true, 'operativa', 'Runaway/Taxi');
INSERT INTO camaras VALUES (202, NULL, 'S-C050', 'ptz', 'PELCO', true, 'operativa', 'Hanger Builtding Apron');
INSERT INTO camaras VALUES (203, NULL, 'S-C060', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apro G10');
INSERT INTO camaras VALUES (205, NULL, 'S-C080', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apron G12');
INSERT INTO camaras VALUES (208, NULL, 'S-C120', 'ptz', 'PELCO', true, 'operativa', 'Cargo Facility Apron');
INSERT INTO camaras VALUES (209, NULL, 'S-C130', 'ptz', 'PELCO', true, 'operativa', 'Runaway/Taxi');
INSERT INTO camaras VALUES (210, NULL, 'S-C140', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apron');
INSERT INTO camaras VALUES (212, NULL, 'S-C160', 'ptz', 'AXIS', true, 'operativa', 'Runaway/Taxi');
INSERT INTO camaras VALUES (214, NULL, 'S-C180B', 'fija', 'BDI', true, 'operativa', 'End of Taxi Way');
INSERT INTO camaras VALUES (216, NULL, 'C102A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (217, NULL, 'C103A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras VALUES (220, NULL, 'C106A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (221, NULL, 'C107A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras VALUES (223, NULL, 'C109A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (224, NULL, 'C110A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras VALUES (225, NULL, 'C111A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (227, NULL, 'C114A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (239, NULL, 'C126A', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje');
INSERT INTO camaras VALUES (240, NULL, 'C127A', 'fija', 'BDI', true, 'operativa', 'Rampa de Arribos');
INSERT INTO camaras VALUES (241, NULL, 'C128A', 'fija', 'BDI', true, 'operativa', 'Circulación Vertical');
INSERT INTO camaras VALUES (283, NULL, 'C244A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras VALUES (285, NULL, 'C246A', 'fija', 'BDI', true, 'operativa', 'Pasillo Puente de Embarque');
INSERT INTO camaras VALUES (244, NULL, 'C203A', 'fija', 'BDI', true, 'operativa', 'Corredor de Arribo Sur');
INSERT INTO camaras VALUES (245, NULL, 'C204A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (246, NULL, 'C205A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras VALUES (247, NULL, 'C206A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (248, NULL, 'C207A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (249, NULL, 'C208A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras VALUES (250, NULL, 'C209A', 'fija', 'BDI', true, 'operativa', 'Corredor Arribos');
INSERT INTO camaras VALUES (251, NULL, 'C210A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (252, NULL, 'C211A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (253, NULL, 'C212A', 'fija', 'BDI', true, 'operativa', 'Tránsito Pax');
INSERT INTO camaras VALUES (255, NULL, 'C214A', 'fija', 'BDI', true, 'operativa', 'Tránsito Pax');
INSERT INTO camaras VALUES (256, NULL, 'C215A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (257, NULL, 'C216A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras VALUES (258, NULL, 'C217A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras VALUES (259, NULL, 'C218A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras VALUES (260, NULL, 'C219A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras VALUES (261, NULL, 'C220A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas ');
INSERT INTO camaras VALUES (263, NULL, 'C222A', 'fija', 'BDI', true, 'operativa', 'Corredor Arribos');
INSERT INTO camaras VALUES (264, NULL, 'C224A', 'fija', 'BDI', true, 'operativa', 'Corredor Arribos');
INSERT INTO camaras VALUES (265, NULL, 'C226A', 'fija', 'BDI', true, 'operativa', 'Rampa Corredor Sur');
INSERT INTO camaras VALUES (266, NULL, 'C227A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (267, NULL, 'C228A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (268, NULL, 'C229A', 'fija', 'BDI', true, 'operativa', 'Rampa Corredor Sur');
INSERT INTO camaras VALUES (269, NULL, 'C230A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (270, NULL, 'C231A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras VALUES (271, NULL, 'C232A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras VALUES (272, NULL, 'C233A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (273, NULL, 'C234A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras VALUES (275, NULL, 'C236A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras VALUES (276, NULL, 'C237A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (277, NULL, 'C238A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (278, NULL, 'C239A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras VALUES (279, NULL, 'C240A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras VALUES (280, NULL, 'C241A', 'fija', 'BDI', true, 'operativa', 'Rampa Corredor Sur');
INSERT INTO camaras VALUES (281, NULL, 'C242A', 'fija', 'BDI', true, 'operativa', 'Rampa Corredor Sur');
INSERT INTO camaras VALUES (282, NULL, 'C243A', 'fija', 'BDI', true, 'operativa', 'Rampa Corredor Sur');
INSERT INTO camaras VALUES (286, NULL, 'C247A', 'fija', 'BDI', true, 'operativa', 'Pasillo Puente de Embarque');
INSERT INTO camaras VALUES (287, NULL, 'C248A', 'fija', 'BDI', true, 'operativa', 'Manga Pit 9');
INSERT INTO camaras VALUES (288, NULL, 'C249A', 'fija', 'BDI', true, 'operativa', 'Pasillo Puente de Embarque');
INSERT INTO camaras VALUES (289, NULL, 'C250A', 'ptz', 'AXIS', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (290, NULL, 'C251A', 'ptz', 'AXIS', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (291, NULL, 'C252A', 'fija', 'BDI', true, 'operativa', 'Circulación Vertical');
INSERT INTO camaras VALUES (292, NULL, 'C301A', 'fija', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras VALUES (293, NULL, 'C302A', 'fija', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras VALUES (294, NULL, 'C303A', 'fija', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras VALUES (296, NULL, 'C305A', 'fija', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras VALUES (298, NULL, 'C131A', 'fija', 'BDI', true, 'operativa', 'Banda de Equipaje');
INSERT INTO camaras VALUES (300, NULL, 'C289', 'fija', 'BDI', true, 'operativa', NULL);
INSERT INTO camaras VALUES (303, NULL, 'C292', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras VALUES (301, NULL, 'C290', 'fija', 'BDI', true, 'operativa', NULL);
INSERT INTO camaras VALUES (302, NULL, 'C291', 'fija', 'BDI', true, 'operativa', NULL);
INSERT INTO camaras VALUES (299, NULL, 'C251', 'fija', 'BDI', true, 'operativa', NULL);
INSERT INTO camaras VALUES (304, NULL, 'C293', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras VALUES (305, NULL, 'C294', 'fija', 'AXIS', true, 'operativas', NULL);
INSERT INTO camaras VALUES (306, NULL, 'C155', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras VALUES (307, NULL, 'C156', 'fija ', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras VALUES (308, NULL, 'C195', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras VALUES (309, NULL, 'C196', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras VALUES (51, NULL, 'C249', 'fija', 'BDI', true, 'operativa', 'Exteriores Nacional');
INSERT INTO camaras VALUES (57, NULL, 'C256', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional Sur');
INSERT INTO camaras VALUES (62, NULL, 'C262', 'ptz', 'AXIS', true, 'operativa', 'Chequeo Counters B/C');
INSERT INTO camaras VALUES (68, NULL, 'C269', 'fija', 'BDI', true, 'operativa', 'Hall Publica Salida Sur');
INSERT INTO camaras VALUES (73, NULL, 'C274', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras VALUES (83, NULL, 'C284', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas A7/A8');
INSERT INTO camaras VALUES (89, NULL, 'C002', 'ptz', 'BDI', true, 'operativa', 'Corredor de Servicio');
INSERT INTO camaras VALUES (94, NULL, 'C007', 'fija', 'BDI', true, 'operativa', 'Corredor de Servicio');
INSERT INTO camaras VALUES (100, NULL, 'C105', 'fija', 'BDI', true, 'operativa', 'Corredor Aduanas');
INSERT INTO camaras VALUES (104, NULL, 'C109', 'fija', 'BDI', true, 'operativa', 'Oficina EPM');
INSERT INTO camaras VALUES (109, NULL, 'C114', 'fija', 'BDI', true, 'operativa', 'Corredor Asensor 3/4');
INSERT INTO camaras VALUES (114, NULL, 'C119', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje Int');
INSERT INTO camaras VALUES (121, NULL, 'C126', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B1');
INSERT INTO camaras VALUES (125, NULL, 'C130', 'fija', 'BDI', true, 'operativa', 'Tomógrafo Nacional');
INSERT INTO camaras VALUES (129, NULL, 'C134', 'fija', 'BDI', true, 'operativa', 'Arribo Internacional');
INSERT INTO camaras VALUES (135, NULL, 'C140', 'fija', 'BDI', true, 'operativa', 'Antinarcoticos');
INSERT INTO camaras VALUES (139, NULL, 'C144', 'fija', 'BDI', true, 'operativa', 'Puerta Salida Arribo INT');
INSERT INTO camaras VALUES (145, NULL, 'C150', 'fija', 'BDI', true, 'operativa', 'Corredor Norte');
INSERT INTO camaras VALUES (157, NULL, 'C167', 'fija', 'BDI', true, 'operativa', 'Tomografo Nacional');
INSERT INTO camaras VALUES (161, NULL, 'C171', 'ptz', 'BDI', true, 'operativa', 'Gradas Eléctricas Arribo Nal');
INSERT INTO camaras VALUES (168, NULL, 'C178', 'fija', 'BDI', true, 'operativa', 'Tomografo Internacional');
INSERT INTO camaras VALUES (175, NULL, 'C185', 'ptz', 'BDI', true, 'operativa', 'Make Up INT');
INSERT INTO camaras VALUES (180, NULL, 'C190', 'fija', 'AXIS', true, 'operativa', 'Make Up Nal');
INSERT INTO camaras VALUES (185, NULL, 'C301', 'ptz', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras VALUES (190, NULL, 'C402', 'ptz', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras VALUES (200, NULL, 'S-C030', 'ptz', 'PELCO', true, 'operativa', 'Gen. Aviation Terminal');
INSERT INTO camaras VALUES (204, NULL, 'S-C070', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apron G11');
INSERT INTO camaras VALUES (211, NULL, 'S-C150', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apron');
INSERT INTO camaras VALUES (222, NULL, 'C108A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (226, NULL, 'C112A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (232, NULL, 'C119A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (238, NULL, 'C125A', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje');
INSERT INTO camaras VALUES (242, NULL, 'C129A', 'fija', 'BDI', true, 'operativa', 'Circulación Vertical');
INSERT INTO camaras VALUES (310, NULL, 'C197', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras VALUES (311, NULL, 'C198', 'fija', 'AXIS', true, 'operatvia', NULL);
INSERT INTO camaras VALUES (312, NULL, 'C199', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras VALUES (313, NULL, 'C202', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras VALUES (314, NULL, 'C305', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras VALUES (6, NULL, 'C204', 'fija', 'BDI', true, 'operativa', 'Escalera de Servicios 6');
INSERT INTO camaras VALUES (16, NULL, 'C214', 'fija', 'BDI', true, 'operativa', 'Cuarto Chequeo INT');
INSERT INTO camaras VALUES (25, NULL, 'C223', 'fija', 'BDI', true, 'operativa', 'Exterior Salida INT');
INSERT INTO camaras VALUES (35, NULL, 'C233', 'fija', 'BDI', true, 'operativa', 'Filtro Transito Sur');
INSERT INTO camaras VALUES (45, NULL, 'C243', 'fija', 'BDI', true, 'operativa', 'Manga 13');
INSERT INTO camaras VALUES (46, NULL, 'C244', 'fija', 'BDI', true, 'operativa', 'Corredor Mangas A9');
INSERT INTO camaras VALUES (54, NULL, 'C253', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional Sur');
INSERT INTO camaras VALUES (66, NULL, 'C266', 'fija', 'BDI', true, 'operativa', 'Chequeo Internacional');
INSERT INTO camaras VALUES (77, NULL, 'C278', 'ptz', 'BDI', true, 'operativa', 'Corredor Central (Dutty)');
INSERT INTO camaras VALUES (79, NULL, 'C280', 'fija', 'BDI', true, 'operativa', 'Corredor Mangas A10/A11');
INSERT INTO camaras VALUES (91, NULL, 'C004', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras VALUES (102, NULL, 'C107', 'fija', 'BDI', true, 'operativa', 'Chequeo Aduanas');
INSERT INTO camaras VALUES (112, NULL, 'C117', 'fija', 'BDI', true, 'operativa', 'Counter Migración Arribo');
INSERT INTO camaras VALUES (115, NULL, 'C120', 'fija', 'BDI', true, 'operativa', 'Counter Migración Arribo');
INSERT INTO camaras VALUES (116, NULL, 'C121', 'fija', 'BDI', true, 'operativa', 'Banda de Equipaje Int');
INSERT INTO camaras VALUES (131, NULL, 'C136', 'fija', 'BDI', true, 'operativa', 'Hall Público Arribo Nal');
INSERT INTO camaras VALUES (141, NULL, 'C146', 'fija', 'BDI', true, 'operativa', 'Hall Publico Arribo Norte');
INSERT INTO camaras VALUES (150, NULL, 'C159', 'fija', 'BDI', true, 'operativa', 'Bandas Equipaje INT');
INSERT INTO camaras VALUES (155, NULL, 'C165', 'ptz', 'AXIS', true, 'operativa', 'Make Up Nal');
INSERT INTO camaras VALUES (165, NULL, 'C175', 'fija', 'BDI', true, 'operativa', 'Tomografo Internacional');
INSERT INTO camaras VALUES (177, NULL, 'C187', 'fija', 'BDI', true, 'operativa', 'Exterior Lado Aire');
INSERT INTO camaras VALUES (192, NULL, 'C404', 'ptz', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras VALUES (195, NULL, 'T-C101A', 'fija', 'BDI', true, 'operativa', 'Ingreso DGAC');
INSERT INTO camaras VALUES (198, NULL, 'S-C010', 'ptz', 'PELCO', true, 'operativa', 'Runaway/Taxi');
INSERT INTO camaras VALUES (206, NULL, 'S-C090', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apron G13');
INSERT INTO camaras VALUES (218, NULL, 'C104A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (219, NULL, 'C105A', 'fija', 'BDI', true, 'operativa', 'Sala Preenvarque');
INSERT INTO camaras VALUES (231, NULL, 'C118A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (243, NULL, 'C201A', 'fija', 'BDI', true, 'operativa', 'Corredor de Arribo Sur');
INSERT INTO camaras VALUES (254, NULL, 'C213A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras VALUES (262, NULL, 'C221A', 'fija', 'BDI', true, 'operativa', 'Corredor Espacio Comercial');
INSERT INTO camaras VALUES (274, NULL, 'C235A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras VALUES (284, NULL, 'C245A', 'fija', 'BDI', true, 'operativa', 'Corredor Mangas');
INSERT INTO camaras VALUES (295, NULL, 'C304A', 'fija', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras VALUES (213, NULL, 'S-C170A', 'fija', 'BDI', true, 'operativa', 'End of Taxi Way');
INSERT INTO camaras VALUES (297, NULL, 'C253A', 'ptz', 'AXIS', true, 'operativa', 'Corredor Interior');


--
-- TOC entry 2253 (class 0 OID 0)
-- Dependencies: 186
-- Name: camaras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('camaras_id_seq', 314, true);


--
-- TOC entry 2221 (class 0 OID 65538)
-- Dependencies: 187
-- Data for Name: camaras_orden_trabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO camaras_orden_trabajo VALUES (103, 6, 128, true);
INSERT INTO camaras_orden_trabajo VALUES (104, 8, 166, true);
INSERT INTO camaras_orden_trabajo VALUES (105, 9, 88, true);
INSERT INTO camaras_orden_trabajo VALUES (106, 11, 45, true);
INSERT INTO camaras_orden_trabajo VALUES (107, 11, 47, true);
INSERT INTO camaras_orden_trabajo VALUES (108, 12, 45, true);
INSERT INTO camaras_orden_trabajo VALUES (109, 15, 206, true);
INSERT INTO camaras_orden_trabajo VALUES (110, 16, 272, true);
INSERT INTO camaras_orden_trabajo VALUES (111, 18, 199, true);
INSERT INTO camaras_orden_trabajo VALUES (112, 21, 128, true);
INSERT INTO camaras_orden_trabajo VALUES (113, 21, 146, true);
INSERT INTO camaras_orden_trabajo VALUES (114, 21, 155, true);
INSERT INTO camaras_orden_trabajo VALUES (115, 21, 156, true);
INSERT INTO camaras_orden_trabajo VALUES (116, 21, 166, true);
INSERT INTO camaras_orden_trabajo VALUES (117, 21, 167, true);
INSERT INTO camaras_orden_trabajo VALUES (118, 21, 3, true);
INSERT INTO camaras_orden_trabajo VALUES (119, 21, 19, true);
INSERT INTO camaras_orden_trabajo VALUES (120, 21, 297, true);
INSERT INTO camaras_orden_trabajo VALUES (121, 21, 67, true);
INSERT INTO camaras_orden_trabajo VALUES (122, 22, 175, true);
INSERT INTO camaras_orden_trabajo VALUES (123, 23, 297, true);
INSERT INTO camaras_orden_trabajo VALUES (124, 26, 48, true);
INSERT INTO camaras_orden_trabajo VALUES (125, 27, 45, true);
INSERT INTO camaras_orden_trabajo VALUES (126, 28, 47, true);
INSERT INTO camaras_orden_trabajo VALUES (127, 30, 89, true);
INSERT INTO camaras_orden_trabajo VALUES (128, 30, 3, true);
INSERT INTO camaras_orden_trabajo VALUES (129, 30, 67, true);
INSERT INTO camaras_orden_trabajo VALUES (130, 31, 89, true);
INSERT INTO camaras_orden_trabajo VALUES (131, 31, 91, true);


--
-- TOC entry 2254 (class 0 OID 0)
-- Dependencies: 188
-- Name: camaras_orden_trabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('camaras_orden_trabajo_id_seq', 131, true);


--
-- TOC entry 2223 (class 0 OID 65544)
-- Dependencies: 189
-- Data for Name: catalogo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO catalogo VALUES (1, 'Sistemas', NULL, 1, NULL, true);
INSERT INTO catalogo VALUES (2, 'Servicio', NULL, 1, NULL, true);
INSERT INTO catalogo VALUES (1000, 'Control de Accesos', 1, 1, NULL, true);
INSERT INTO catalogo VALUES (1001, 'FAS', 1, 2, NULL, true);
INSERT INTO catalogo VALUES (1002, 'CCTV', 1, 3, NULL, true);
INSERT INTO catalogo VALUES (1003, 'PAS', 1, 4, NULL, true);
INSERT INTO catalogo VALUES (1004, 'Instalación', 2, 1, NULL, true);
INSERT INTO catalogo VALUES (1005, 'Inspección', 2, 2, NULL, true);
INSERT INTO catalogo VALUES (1006, 'Programación', 2, 3, NULL, true);
INSERT INTO catalogo VALUES (1007, 'Soporte', 2, 4, NULL, true);
INSERT INTO catalogo VALUES (1008, 'Mantenimiento Preventivo', 2, 5, NULL, true);
INSERT INTO catalogo VALUES (1009, 'Mantenimiento Correctivo', 2, 6, NULL, true);
INSERT INTO catalogo VALUES (3, 'Mantenimiento', NULL, 5, NULL, true);


--
-- TOC entry 2224 (class 0 OID 65550)
-- Dependencies: 190
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cliente VALUES (1, 'Marco Arboleda', 'Análista CCTV', NULL, true);
INSERT INTO cliente VALUES (3, 'Carlos Rivera', 'Operador CCTV', NULL, true);
INSERT INTO cliente VALUES (2, 'Pablo Sanchez', 'Supervisor CCTV', NULL, true);
INSERT INTO cliente VALUES (6, 'Wendy Vaca', 'Centro de Control CCTV', NULL, true);
INSERT INTO cliente VALUES (7, 'Luis Haro', 'Supervisor CCTV', NULL, true);
INSERT INTO cliente VALUES (8, 'William Ñaurapi', 'Centro de Control CCTV', NULL, true);
INSERT INTO cliente VALUES (9, 'David Andrade', 'ADC&HAS', NULL, true);
INSERT INTO cliente VALUES (5, 'Christian Viñachi', 'ADC&HAS', NULL, true);
INSERT INTO cliente VALUES (4, 'Aida Gomez', 'ADC&HAS', NULL, true);
INSERT INTO cliente VALUES (10, 'Belén Rivera', NULL, NULL, true);
INSERT INTO cliente VALUES (11, 'Lisbeth Negrete', 'Departamento de Operaciones ADC&HAS', NULL, true);
INSERT INTO cliente VALUES (12, 'Pedro Montalvo', 'Centro de Control CCTV', NULL, true);


--
-- TOC entry 2255 (class 0 OID 0)
-- Dependencies: 191
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cliente_id_seq', 12, true);


--
-- TOC entry 2226 (class 0 OID 65559)
-- Dependencies: 192
-- Data for Name: detalle_orden_trabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2256 (class 0 OID 0)
-- Dependencies: 193
-- Name: detalle_orden_trabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('detalle_orden_trabajo_id_seq', 1, false);


--
-- TOC entry 2228 (class 0 OID 65565)
-- Dependencies: 194
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO empresa VALUES (1, 'Aeropuerto Mariscal Sucre', 'Tababela', 'Aeropuerto', 'Tababela', true);
INSERT INTO empresa VALUES (2, 'Edificio La Previsora', 'Av.NNUU y Rio Amazonas', NULL, 'Quito', true);
INSERT INTO empresa VALUES (3, 'Museo Numismatico', NULL, NULL, 'Quito', true);


--
-- TOC entry 2257 (class 0 OID 0)
-- Dependencies: 195
-- Name: empresa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empresa_id_seq', 3, true);


--
-- TOC entry 2230 (class 0 OID 65574)
-- Dependencies: 196
-- Data for Name: orden_trabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO orden_trabajo VALUES (5, 23525, 0, 1, 1000, 1005, 'PUERTA P2E3009AB SEGURO MECANICO DESHABILITADO', '2017-05-12 08:11:00', '2017-05-12 08:52:00', NULL, true, NULL, 2, 3, NULL, 'Se  realizó una  inspección  física   a la puerta  P2E3009AB,  detectando  que está trabada la cerradura mecánica. Reportar  al personal de ADC & HAS mantenimiento. Revisión por personal de EPMSA:', NULL);
INSERT INTO orden_trabajo VALUES (6, 23512, 0, 1, 1002, 1007, 'Cámara C133 presenta intermitencia de video', '2017-05-10 14:22:00', '2017-05-11 08:18:00', NULL, true, NULL, 1, 1, NULL, 'Se realizan pruebas de funcionamiento a la cámara C133, reiniciándole desde el sistema y revisándola físicamente, pero  la cámara presenta un daño interno en el lente lo que distorciona la imagen. Se recomienda su cambio.  Revisión por personal de EPMSA', NULL);
INSERT INTO orden_trabajo VALUES (7, 23494, 0, 1, 1000, 1005, 'Puerta 2E075 del pit 11, permanece desarmada', '2017-05-08 12:31:00', '2017-05-09 15:48:00', NULL, true, NULL, 3, 3, NULL, 'Se  realizó una  inspección  física   a la puerta 2E075 del pit 11,  detectando  que presenta un  descuadre   en una de sus  hojas, por lo que no se puede armar y se activan las alarmas.  Reportar  al personal de ADC & HAS mantenimiento. .  Revisión por personal de EPMSA', NULL);
INSERT INTO orden_trabajo VALUES (8, 23473, 0, 1, 1002, 1005, 'Cámara "C176" se reinicia automáticamente en varios lapsos de tiempo.', '2017-05-08 11:35:00', '2017-05-08 12:00:00', NULL, true, NULL, 3, 1, NULL, 'La cámara C176 debe ser reemplazada, como se reportó en el ticket No. 23203   y estamos a la espera que ADC & HAS nos entregue la nueva cámara.', NULL);
INSERT INTO orden_trabajo VALUES (9, 23471, 0, 1, 1002, 1007, 'CAMARA C001 QUE SE ENCUENTRA CON PERDIDA DE VIDEO Y GRABACION', '2017-05-08 11:35:00', '2017-05-08 12:11:00', NULL, true, NULL, 2, 3, NULL, 'Se realizan pruebas de funcionamiento a la cámara C001, se reinicia desde el sistema y se revisa físicamente, pero  la cámara no responde, tiene daño interno en la tarjeta principal. Se recomienda su cambio.', NULL);
INSERT INTO orden_trabajo VALUES (10, 23467, 0, 1, 1000, 1007, 'Revisión puerta 1G122', '2017-05-05 15:26:00', '2017-05-08 12:33:00', NULL, true, NULL, 1, 1, NULL, 'Se  realizaron  pruebas   físicas  a la  puerta   1G122,  detectando   que  los   dos  contactos magnéticos  se encuentran   dañados. Se realiza una conexion directa, provisional,  hasta  reemplazar los contactos.  Favor proporcionar 2 contactos  para    puertas  tipo A1.', NULL);
INSERT INTO orden_trabajo VALUES (11, 23450, 4037, 1, 1002, 1007, 'Camaras C245 y C243 se presentan en blanco y negro', '2017-05-04 08:54:00', '2017-05-04 09:40:00', NULL, true, NULL, 1, 1, NULL, 'Se  procede a reiniciar  las cámaras C245 - C243 desde el sistema, dejándolas en normal funcionamiento..  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (12, 23450, 4037, 1, 1002, 1007, 'Camaras C245 y C243 se presentan en blanco y negro', '2017-05-04 08:54:00', '2017-05-04 09:40:00', NULL, true, NULL, 1, 1, NULL, 'Se  procede a reiniciar  las cámaras C245 - C243 desde el sistema, dejándolas en normal funcionamiento..  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (13, 23412, 0, 1, 1000, 1007, 'Puerta 1A030 Nivel 1 Arribo internacional no se la puede bloquear desde el sistema ni Fisicamente', '2017-05-02 09:48:00', '2017-05-02 16:16:00', NULL, true, NULL, 6, 1, NULL, 'Se revisó la puerta 1A030 Nivel 1 de arribo internacional, se realizaron pruebas de funcionamiento y no se detecta ningún daño. La puerta   se encuentra operando correctamente ya que se programó desde su instalación para que funcionara de la siguiente manera: Del   lado seguro la puerta se abre   con el sensor de movimiento, no es necesario pasar   la tarjeta TCA. Del   lado   público es necesario pasar la tarjeta TCA para    que    se abra la puerta, el   Key switch   es para realizar mantenimiento, la puerta queda abierta. Este    tipo de puerta no se la puede bloquear desde el sistema, ni físicamente, a menos que se apague el motor de la puerta. Las puertas de arribo internacional y de arribo nacional tienen el mismo funcionamiento.', NULL);
INSERT INTO orden_trabajo VALUES (14, 23418, 4077, 1, 1000, 1006, 'la puerta 2E083 de la Sala A8 no se puede bloquear desde el sistema ni fisicamente', '2017-05-02 09:46:00', '2017-05-02 08:55:00', NULL, true, NULL, 10, 3, NULL, 'Se realiza un inspección física a la puerta 2E083, encontrándola   desconfigurada y sin alimentación eléctrica en las cerraduras magnéticas, debido a que fueron desconectadas por personal eléctrico de ADC-HAS, ya que la puerta estaba alarmada, por descuadre en la hoja derecha y el brazo mecánico flojo en su base. La puerta quedó en normal funcionamiento, sin embargo debe reportarse a ADC-HAS mantenimiento ya que la alarma se va a volver a presentar por este problema mecánico..  Revisión por personal de EPMSA: Belén Rivera"', NULL);
INSERT INTO orden_trabajo VALUES (15, 23407, 0, 1, 1002, 1007, 'Para informales la cámara del pit 13 S-C090 se encuentra defectuosa no se puede mover; si nos pueden ayudar gracias.', '2017-04-28 08:49:00', '2017-04-28 10:48:00', NULL, true, NULL, 7, 1, NULL, 'SOLUCION:  Se realizan pruebas de funcionamiento a la cámara S-C090, reiniciándole desde el sistema y revisándola físicamente, pero  la cámara presenta un daño interno en el lente y motores del PTZ. Se recomienda su cambio.  Revisión por personal de EPMSA: email', NULL);
INSERT INTO orden_trabajo VALUES (16, 23362, 4029, 1, 1002, 1007, 'CAMARA C233A EN BLANCO Y NEGRO', '2017-05-25 09:06:00', '2017-05-25 12:30:00', NULL, true, NULL, 1, 1, NULL, 'Se reinicia  la cámara C233A desde el sistema, al momento la cámara queda en normal funcionamiento..  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (17, 23343, 0, 1, 1000, 1005, 'puerta 2F095A se encuentra ligeramente descuadrada', '2017-05-24 09:02:00', '2017-05-24 14:27:00', NULL, true, NULL, 11, 1, NULL, 'Se  realizó una  inspección  física   a la puerta 2F095A,  detectando  que presenta un  descuadre   de  las  hojas,  los dispositivos de control de accesos se encuentran en normal funcionamiento. Reportar  al personal de ADC & HAS mantenimiento. .  Revisión por personal de EPMSA: email', NULL);
INSERT INTO orden_trabajo VALUES (18, 23324, 4030, 1, 1002, 1007, 'CÀMARA S-C020 FUERA DE SERVICIO', '2017-05-24 09:02:00', '2017-05-26 09:40:00', NULL, true, NULL, 5, 1, NULL, 'Se  procede a reiniciar  la cámara S-C020  desde el sistema, al momento se encuentra en normal funcionamiento. .  Revisión por personal de EPMSA: Christian Viñachi', NULL);
INSERT INTO orden_trabajo VALUES (19, 23319, 4028, 1, 1000, 1007, 'Puerta 3D022 ya que al momento de armar la puerta no se puede desactivar la alarma de DELAY EGRESS', '2017-05-24 09:01:00', '2017-05-24 16:00:00', NULL, true, NULL, 1, 1, NULL, 'Se realiza una descarga a la tarjeta ACU desde el sistema y se ajusta el maglock, al momento la pueta 3D022 queda en  normal funcioinamiento..  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (20, 23318, 4027, 1, 1000, 1007, 'Por favor si nos pueden ayudar con la revision de la puerta 3D021 ya que genera una señal de apertura de tamper activo, por su atencion gracias.', '2017-05-24 09:01:00', '2017-05-24 15:20:00', NULL, true, NULL, 1, 1, NULL, 'Se realiza un inspección física a la puerta 3D021, detectando que la cerradura de la puerta se encontraba bloqueada con un cartón, por lo que generan alarmas. Se procede a retirar el cartón  y al momento la puerta queda en  normal funcionamiento.  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (21, 23313, 4073, 1, 1002, 1007, 'CAMARAS CON SALTOS DE TIEMPO', '2017-05-21 16:25:00', '2017-05-24 15:20:00', NULL, true, NULL, 1, 3, NULL, 'Se realizó la inspección y se verifica que los saltos de tiempo de las cámaras: C217, C201, C267, C253A, C133, C151, C165, C166, C176, C177, C185.  se debe a la pérdida de energía,  ya que  no tienen o no responde el ups. Al momento están en normal funcionamiento. Se adjunta cuadro con el detalle..  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (22, 23313, 4073, 1, 1002, 1007, 'CAMARAS CON SALTOS DE TIEMPO', '2017-04-21 16:25:00', '2017-04-24 15:20:00', NULL, true, NULL, 1, 3, NULL, 'Se realizó la inspección y se verifica que los saltos de tiempo de las cámaras: C217, C201, C267, C253A, C133, C151, C165, C166, C176, C177, C185.  se debe a la pérdida de energía,  ya que  no tienen o no responde el ups. Al momento están en normal funcionamiento. Se adjunta cuadro con el detalle..  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (23, 23314, 4071, 1, 1002, 1007, 'CAMARA C253A SIN PATRON DE MOVIMIENTO', '2017-05-21 16:24:00', '2017-05-24 11:00:00', NULL, true, NULL, 1, 3, NULL, 'La cámara C253A se quedó sin patron de movimiento, debido a un corte de energía eléctrica. Se realiza un reset y se la deja en normal funcionamiento..  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (24, 23305, 0, 1, 1000, 1005, 'LA PUERTA P1E1002A. NO CIERRA', '2017-04-21 08:35:00', '2017-04-21 14:36:00', NULL, true, NULL, 12, 1, NULL, 'Se  realizó una  inspección  física   a la puerta P1E1002A,  detectando  que los dispositivos de control de accesos se encuentran  operativos, pero  los motores  de la puerta  no  encienden. Reportar  al personal de ADC & HAS mantenimiento.', NULL);
INSERT INTO orden_trabajo VALUES (25, 23290, 4065, 1, 1000, 1005, 'La puerta 2F095B presenta problemas en la apertura de unas de sus hojas.', '2017-04-20 08:23:00', '2017-04-20 09:30:00', NULL, true, NULL, 1, 3, NULL, 'La puerta 2F095B presenta problemas de apertura, ya que la hoja de la puerta está descuadrada. Reportar al personal de ADC&HAS mantenimiento. .  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (26, 23291, 4062, 1, 1002, 1007, 'La cámara 246 se encuentra en blanco y negro.', '2017-05-20 08:22:00', '2017-05-20 09:40:00', NULL, true, NULL, 1, 3, NULL, 'Se realiza un reset  a la cámara C246, dejándola en normal funcionamiento..  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (27, 23292, 4063, 1, 1002, 1007, 'La cámara C243 se encuentra en blanco y negro.', '2017-04-20 08:22:00', '2017-04-20 09:30:00', NULL, true, NULL, 1, 3, NULL, 'Se realiza un reset  a la cámara C243, dejándola en normal funcionamiento..  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (28, 23293, 4064, 1, 1002, 1007, 'La cámara C245 se encuentra en blanco y negro.', '2017-04-20 08:21:00', '2017-04-20 09:30:00', NULL, true, NULL, 1, 3, NULL, 'Se realiza un reset  a la cámara C245, dejándola en normal funcionamiento..  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (29, 23295, 4070, 1, 1000, 1007, 'PUERTA 2G106A GENERA MUCHAS ALARMAS', '2017-04-20 08:20:00', '2017-04-21 15:30:00', NULL, true, NULL, 1, 3, NULL, 'Se realizó la inspección a la puerta 2G106A y se observa que no tiene el brazo mecánico para que la hoja de la puerta retorne a su estado normal, lo que genera alarma de puerta apoyada. Reportar a ADC & HAS mantenimiento.', NULL);
INSERT INTO orden_trabajo VALUES (30, 23278, 4060, 1, 1002, 1007, 'CAMARAS FUERA DE LINEA C002 NIVEL CERO, C201 HALL PUBLICO SEGUNDO NIVEL, C267 ACCESO DELTA', '2017-04-19 08:45:00', '2017-04-19 14:00:00', NULL, true, NULL, 1, 3, NULL, 'Se encontraron fuera de línea las cámaras C002, C201 y C267, debido al corte de energía eléctrica que hubo en el Aeropuerto, una vez que se restableció la energía eléctrica se verificó su normal funcionamiento..  Revisión por personal de EPMSA: Marco Arboleda', NULL);
INSERT INTO orden_trabajo VALUES (31, 4530, 30303, 1, 1002, 1005, 'Es una prueba del sistema', '2017-06-08 22:54:00', '2017-06-08 23:00:00', NULL, true, NULL, 11, 3, NULL, 'Es una prueba del sistema solucion', 'Es una prueba del sistema solucion tecnica');


--
-- TOC entry 2258 (class 0 OID 0)
-- Dependencies: 197
-- Name: orden_trabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('orden_trabajo_id_seq', 31, true);


--
-- TOC entry 2232 (class 0 OID 65583)
-- Dependencies: 198
-- Data for Name: puertas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO puertas VALUES (9, '0B024', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (8, '0A021', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (11, '1C060', 'F2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (12, '1C061B', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (13, '1C064', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (14, '1C081A', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (15, '3C002A', 'F1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (16, '3C008', 'F1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (17, '3D019', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (20, '4CST10', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (19, '3D029', 'F1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (21, '0A010', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (22, '1C060B', NULL, NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (23, '1E100A', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (24, '1E103', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (26, '1H128', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (27, '1H129', 'D2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (28, '1E100', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (29, '1D088', 'F4', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (30, '1D088A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (32, '1DST4A', 'F1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (33, '1DST5', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (34, '2E082', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (35, '2F090A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (36, '2F094', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (37, '2F097', 'G1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (39, '0A001', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (40, '0A001A', 'A5', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (41, '1C073A', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (42, '1C079', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (43, '3C001', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (44, '3C009', 'A3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (46, '3CST10', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (47, '3D022', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (48, '3D031', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (49, '1H129A', 'D2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (50, '1H129B', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (51, '1H129D', 'D2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (52, '1D086', 'D1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (53, '1D086B', 'A5', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (54, '2F095', 'A3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (55, '2F095A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (56, '2F095B', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (57, '2F098', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (58, '2E073', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (59, '2E073A', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (61, '2E074A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (62, '2E075', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (63, '2E075A', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (64, '2E075B', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (65, '2E076', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (66, '2E076A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (67, '2E076B', 'A3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (68, '2F099', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (69, '2F099A', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (70, '2F099B', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (71, '2G102', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (72, '2G104', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (73, '2G104A', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (74, '2G104B', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (75, '2G105', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (76, '2G106A', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (78, '2H110', 'A3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (79, '2H110A', 'A3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (80, '2H117', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (81, '2H117A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (82, '2H118', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (83, '2H118A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (84, '2H118B', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (85, '2H119', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (86, '2H119A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (87, '2H119B', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (88, '2H119C', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (89, '1A004', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (90, '1A002', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (91, '1A003', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (92, '1A028', 'G1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (93, '1A131', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (95, '1B037', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (96, '1B039', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (97, '1B046', 'H1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (98, '1B048AA', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (99, '1B055A', 'F4', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (100, '1B055AA', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (101, '1H129E', 'D2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (102, '2A003', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (103, '2B016', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (104, '2B019', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (105, '2C029', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (106, '2C035', 'D3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (107, '2C036AA', 'F1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (108, '2C037', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (109, '2C038', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (110, '2C046', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (112, '2D054', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (113, '2D057E', 'A5', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (114, '2D058', 'D2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (115, '2D058A', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (116, '2D059', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (117, '2D064', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (118, '2D066A', 'F1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (119, '2DST5', 'A5', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (120, '2B019A', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (121, '2B019AA', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (122, '2C035A', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (123, 'CR2A010', 'BHS', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (124, 'CR2A011', 'BHS', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (125, 'CR2B012', 'BHS', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (126, 'CR2B025', 'BHS', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (127, 'CR2B026', 'BHS', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (7, '0A020A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (142, '2CST10', NULL, NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (143, '1F108A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (144, '1CEL6', 'V1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (1, '0A008A', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (3, '0A008', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (154, '1A010', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (155, '1A010A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (156, '1A030A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (157, '2C043', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (158, '2C043B', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (197, '2E3013', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (196, '2E3012A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (195, '2E3012A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (130, '1B051', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (145, '1036A', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (146, '1033', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (147, '1034', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (148, '1036D', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (159, '2C043C', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (149, '1A011', 'H1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (150, '1009', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (151, '1015', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (152, '1017A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (153, '1041A', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (160, '2C043D', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (161, '1C061', 'C3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (162, '0A022', 'A3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (184, '2E2008', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (183, '2E2008', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (182, '2E2006', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (181, '2E2004', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (163, '1C060A', 'C1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (164, '2E073C', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (165, '1E1002', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (166, '1E1002', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (167, '1E1002', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (168, '1E1002', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (194, '2E3012', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (193, '2E3012', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (192, '2E3011', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (191, '2E3010', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (190, '2E3009A', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (180, '2E2004', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (179, '2E2001A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (178, '2E1001', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (177, '1E3013', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (176, '1E3006', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (175, '1E3006', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (174, '1E3001', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (173, '1E3001', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (172, '1E3001', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (171, '1E3001', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (170, '1E2002', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (169, '1E2EE1', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (25, '1H127', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (31, '1D098', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (38, '2H111', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (45, '3C010', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (60, '2E074', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (77, '2H109A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (94, '1B033', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (111, '2CST10A', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (128, 'CR2B027', 'BHS', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (129, '1A030', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (131, '1F104', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (132, '1F104A', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (133, '1F108', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (203, 'P1E1002A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (4, '0A007', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (2, '0A007A', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (189, '2E3002', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (188, '2E3002', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (5, '0A019', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (6, '0A020', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (10, '0BST1', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (18, '3D021', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (202, '2E3015', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (201, '2E3015', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (200, '2E3014', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (199, '2E3014', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (198, '2E3014', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (187, '2E3001A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (186, '2E3001A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (185, '2E2014', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (134, '1F108B', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (135, '1F113', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (136, '1F113A', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (137, '1G120', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (138, '1G120A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (139, '1G122', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (140, '1003', NULL, NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (141, '1A012', 'H1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (205, 'P1E1002C', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (206, 'P1E1002D', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (207, 'P1E2002', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (208, 'P1E2EE1', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (209, 'P1E3006A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (210, 'P1E3006B', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (211, 'P1E3001A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (212, 'P1E3001D', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (213, 'P1E3001E', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (214, 'P13001C', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (215, 'P13001D', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (216, 'P1E3013', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (217, 'P2E0865W', 'G1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (218, 'P2E20105W', 'G1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (219, 'P2E1001A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (221, 'P2E2001AA', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (222, 'P2E3001C', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (223, 'P2E3001E', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (224, 'P2E3012A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (225, 'P2E3002A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (204, 'P1E1002B', 'B2', NULL, NULL, true, 'opeativa');
INSERT INTO puertas VALUES (220, 'P2E2006A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (226, 'P2E3012B', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (227, 'P2E3012AA', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (228, 'P2E3002B', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (229, 'P2E3012AB', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (230, 'P2E3013', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (231, 'P2E2002A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (232, 'P2E2008A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (233, 'P2E2004E', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (234, 'P2E2008B', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (235, 'P2E2014', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (236, 'P2E3010', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (237, 'P2E3009AB', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (238, 'P2E3014B', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (239, 'P2E3014A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (240, 'P2E3014C', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (241, 'P2E3015A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (242, 'P2E3015A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas VALUES (243, 'P2E3011', 'E1', NULL, NULL, true, 'inoperativa');
INSERT INTO puertas VALUES (244, '2E083', NULL, NULL, NULL, true, 'operativa');


--
-- TOC entry 2233 (class 0 OID 65589)
-- Dependencies: 199
-- Data for Name: puertas_orden_trabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO puertas_orden_trabajo VALUES (11, 5, 237, true);
INSERT INTO puertas_orden_trabajo VALUES (12, 7, 62, true);
INSERT INTO puertas_orden_trabajo VALUES (13, 10, 139, true);
INSERT INTO puertas_orden_trabajo VALUES (14, 13, 129, true);
INSERT INTO puertas_orden_trabajo VALUES (15, 14, 244, true);
INSERT INTO puertas_orden_trabajo VALUES (16, 17, 55, true);
INSERT INTO puertas_orden_trabajo VALUES (17, 19, 47, true);
INSERT INTO puertas_orden_trabajo VALUES (18, 20, 18, true);
INSERT INTO puertas_orden_trabajo VALUES (19, 24, 203, true);
INSERT INTO puertas_orden_trabajo VALUES (20, 25, 56, true);
INSERT INTO puertas_orden_trabajo VALUES (21, 29, 76, true);
INSERT INTO puertas_orden_trabajo VALUES (22, 31, 39, true);
INSERT INTO puertas_orden_trabajo VALUES (23, 31, 4, true);


--
-- TOC entry 2259 (class 0 OID 0)
-- Dependencies: 200
-- Name: puertas_orden_trabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('puertas_orden_trabajo_id_seq', 23, true);


--
-- TOC entry 2235 (class 0 OID 65594)
-- Dependencies: 201
-- Data for Name: tecnico; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tecnico VALUES (1, 'Pablo Camacas', 'Camacas', '0991394229', true);
INSERT INTO tecnico VALUES (2, 'Gonzalo Chavarrea', 'Chavarrea', '0998146157', true);
INSERT INTO tecnico VALUES (3, 'Diego Loachamin', 'Loachamin', '0958872811', true);
INSERT INTO tecnico VALUES (4, 'Diego Jami', 'Jami', '0998991830', true);
INSERT INTO tecnico VALUES (5, 'Jonathan Masias', 'Masias', '0997779326', true);
INSERT INTO tecnico VALUES (6, 'Oscar Guaytarilla', 'Guaytarilla', '0982111276', true);
INSERT INTO tecnico VALUES (7, 'Daniel Vinueza', 'Vinueza', NULL, true);


--
-- TOC entry 2260 (class 0 OID 0)
-- Dependencies: 202
-- Name: tecnico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tecnico_id_seq', 7, true);


--
-- TOC entry 2085 (class 2606 OID 65612)
-- Name: cliente Cliente_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT "Cliente_pk" PRIMARY KEY (id);


--
-- TOC entry 2097 (class 2606 OID 65614)
-- Name: tecnico Tecnico_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tecnico
    ADD CONSTRAINT "Tecnico_pk" PRIMARY KEY (id);


--
-- TOC entry 2081 (class 2606 OID 65616)
-- Name: camaras_orden_trabajo camaras_orden_trabajo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY camaras_orden_trabajo
    ADD CONSTRAINT camaras_orden_trabajo_pk PRIMARY KEY (id);


--
-- TOC entry 2079 (class 2606 OID 65618)
-- Name: camaras camaras_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY camaras
    ADD CONSTRAINT camaras_pk PRIMARY KEY (id);


--
-- TOC entry 2083 (class 2606 OID 65620)
-- Name: catalogo catalogo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalogo
    ADD CONSTRAINT catalogo_pk PRIMARY KEY (id);


--
-- TOC entry 2087 (class 2606 OID 65622)
-- Name: detalle_orden_trabajo detalle_orden_trabajo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_orden_trabajo
    ADD CONSTRAINT detalle_orden_trabajo_pk PRIMARY KEY (id);


--
-- TOC entry 2089 (class 2606 OID 65624)
-- Name: empresa empresa_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empresa
    ADD CONSTRAINT empresa_pk PRIMARY KEY (id);


--
-- TOC entry 2091 (class 2606 OID 65626)
-- Name: orden_trabajo orden_trabajo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orden_trabajo
    ADD CONSTRAINT orden_trabajo_pk PRIMARY KEY (id);


--
-- TOC entry 2095 (class 2606 OID 65628)
-- Name: puertas_orden_trabajo puertas_orden_trabajo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puertas_orden_trabajo
    ADD CONSTRAINT puertas_orden_trabajo_pk PRIMARY KEY (id);


--
-- TOC entry 2093 (class 2606 OID 65630)
-- Name: puertas puertas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puertas
    ADD CONSTRAINT puertas_pk PRIMARY KEY (id);


--
-- TOC entry 2098 (class 2606 OID 65631)
-- Name: camaras_orden_trabajo fk_camaras; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY camaras_orden_trabajo
    ADD CONSTRAINT fk_camaras FOREIGN KEY (camaras_id) REFERENCES camaras(id) MATCH FULL;


--
-- TOC entry 2099 (class 2606 OID 65636)
-- Name: camaras_orden_trabajo fk_orden_trabajo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY camaras_orden_trabajo
    ADD CONSTRAINT fk_orden_trabajo FOREIGN KEY (orden_trabajo_id) REFERENCES orden_trabajo(id) MATCH FULL;


--
-- TOC entry 2100 (class 2606 OID 65641)
-- Name: puertas_orden_trabajo fk_orden_trabajo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puertas_orden_trabajo
    ADD CONSTRAINT fk_orden_trabajo FOREIGN KEY (orden_trabajo_id) REFERENCES orden_trabajo(id) MATCH FULL;


--
-- TOC entry 2101 (class 2606 OID 65646)
-- Name: puertas_orden_trabajo fk_puertas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puertas_orden_trabajo
    ADD CONSTRAINT fk_puertas FOREIGN KEY (puertas_id) REFERENCES puertas(id) MATCH FULL;


-- Completed on 2017-06-08 23:10:32 -05

--
-- PostgreSQL database dump complete
--

