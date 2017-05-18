--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.0
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-05-17 20:46:35 -05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2219 (class 0 OID 65281)
-- Dependencies: 185
-- Data for Name: camaras; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (3, NULL, 'C201', 'ptz', 'BDI', true, 'operativa', 'Hall Publico Salida N');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (5, NULL, 'C203', 'ptz', 'AXIS', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (7, NULL, 'C205', 'fija', 'BDI', true, 'operativa', 'Elevador 6');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (2, NULL, 'F-C101F', 'fija', 'BDI', true, 'operativa', 'Bodega General');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (4, NULL, 'C202', 'ptz', 'BDI', true, 'operativa', 'Hall Publico Salida S');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (8, NULL, 'C206', 'fija', 'BDI', true, 'operativa', 'Equipaje sobredimencionado N');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (9, NULL, 'C207', 'fija', 'BDI', true, 'operativa', 'Cuarto Chequeo Nacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (11, NULL, 'C209', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (14, NULL, 'C212', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (18, NULL, 'C216', 'fija', 'BDI', true, 'operativa', 'Hall Emigrantes');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (82, NULL, 'C283', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas A6/A7');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (84, NULL, 'C285', 'fija', 'BDI', true, 'operativa', 'Corredor de  Mangas A8');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (13, NULL, 'C211', 'ptz', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (10, NULL, 'C208', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (12, NULL, 'C210', 'ptz', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (17, NULL, 'C215', 'ptz', 'BDI', true, 'operativa', 'Inspección de Seguridad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (19, NULL, 'C217', 'ptz', 'BDI', true, 'operativa', 'Hall Emigración');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (15, NULL, 'C213', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (20, NULL, 'C218', 'fija', 'BDI', true, 'operativa', 'Hall Emigración');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (21, NULL, 'C219', 'fija', 'BDI', true, 'operativa', 'Elevador 5');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (22, NULL, 'C220', 'fija', 'BDI', true, 'operativa', 'Equipaje Sobredimencionado INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (23, NULL, 'C221', 'ptz', 'AXIS', true, 'operativa', 'Corredor Norte');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (24, NULL, 'C222', 'fija', 'BDI', true, 'operativa', 'Sala de Embraque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (26, NULL, 'C224', 'ptz', 'BDI', true, 'operativa', 'Sala Embarque A10-A11');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (27, NULL, 'C225', 'fija', 'BDI', true, 'operativa', 'Equipaje Sobredimencionado INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (28, NULL, 'C226', 'fija', 'BDI', true, 'operativa', 'Sala Transito Norte');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (29, NULL, 'C227', 'fija', 'BDI', true, 'operativa', 'Corredor Esteril N');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (30, NULL, 'C228', 'fija', 'BDI', true, 'operativa', 'Sala Embarque A9');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (31, NULL, 'C229', 'fija', 'BDI', true, 'operativa', 'Corredor de mangas A8');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (32, NULL, 'C230', 'fija', 'BDI', true, 'operativa', 'Sala Embarque A8');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (33, NULL, 'C231', 'fija', 'BDI', true, 'operativa', 'Corredor Esteril Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (34, NULL, 'C232', 'fija', 'BDI', true, 'operativa', 'Filtro Transito Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (36, NULL, 'C234', 'fija', 'BDI', true, 'operativa', 'Manga 11');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (37, NULL, 'C235', 'fija', 'BDI', true, 'operativa', 'Corredor Mangas A7');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (38, NULL, 'C236', 'ptz', 'BDI', true, 'operativa', 'Sala Embarque A7');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (39, NULL, 'C237', 'fija', 'BDI', true, 'operativa', 'Sala Embarque A6');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (40, NULL, 'C238', 'fija', 'BDI', true, 'operativa', 'Sala Embarque A5');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (41, NULL, 'C239', 'fija', 'BDI', true, 'operativa', 'Corredor Mangas A5/A6');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (42, NULL, 'C240', 'fija', 'BDI', true, 'operativa', 'Mangas Puente Móvil 10');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (43, NULL, 'C241', 'fija', 'BDI', true, 'operativa', 'Ingreso Mangas 10');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (44, NULL, 'C242', 'fija', 'BDI', true, 'operativa', 'Manga 12');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (47, NULL, 'C245', 'fija', 'BDI', true, 'operativa', 'Manga 14');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (48, NULL, 'C246', 'fija', 'BDI', true, 'operativa', 'Ingreso Manga 15');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (49, NULL, 'C247', 'fija', 'BDI', true, 'operativa', 'Puente Movil Manga 15');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (50, NULL, 'C248', 'fija', 'BDI', true, 'operativa', 'Exteriores Nacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (52, NULL, 'C250', 'fija', 'BDI', true, 'operativa', 'Hall Publica Salida Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (53, NULL, 'C252', 'ptz', 'AXIS', true, 'operativa', 'Cheque Nacional Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (55, NULL, 'C254', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (56, NULL, 'C255', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (60, NULL, 'C259', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional ');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (59, NULL, 'C258', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional ');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (58, NULL, 'C257', 'ptz', 'BDI', true, 'operativa', 'Cheque Nacional Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (61, NULL, 'C260', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional ');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (63, NULL, 'C263', 'fija', 'BDI', true, 'operativa', 'Chequeo Internacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (64, NULL, 'C264', 'fija', 'BDI', true, 'operativa', 'Chequeo Internacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (65, NULL, 'C265', 'fija', 'BDI', true, 'operativa', 'Chequeo Internacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (67, NULL, 'C267', 'ptz', 'BDI', true, 'operativa', 'Chequeo Internacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (69, NULL, 'C270', 'fija', 'BDI', true, 'operativa', 'Hall Publica Salida Norte');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (70, NULL, 'C271', 'ptz', 'AXIS', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (71, NULL, 'C272', 'fija', 'BDI', true, 'operativa', 'Counter en Transito');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (72, NULL, 'C273', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (74, NULL, 'C275', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (75, NULL, 'C276', 'fija', 'BDI', true, 'operativa', 'Filtro Tránsito INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (76, NULL, 'C277', 'fija', 'BDI', true, 'operativa', 'Escaleras Públicas 8');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (78, NULL, 'C279', 'fija', 'BDI', true, 'operativa', 'Escaleras Publicas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (80, NULL, 'C281', 'fija', 'BDI', true, 'operativa', 'Sala Embarque A7');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (81, NULL, 'C282', 'fija', 'BDI', true, 'operativa', 'Sala Embarque A10');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (85, NULL, 'C286', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas A8/A9');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (86, NULL, 'C287', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas A10/A11');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (87, NULL, 'C288', 'fija', 'BDI', true, 'operativa', 'Filtro de Seguridad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (88, NULL, 'C001', 'ptz', 'BDI', true, 'operativa', 'Puerta Ingreso Nivel 0');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (90, NULL, 'C003', 'fija', 'BDI', true, 'operativa', 'Corredor de Servicio');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (92, NULL, 'C005', 'fija', 'BDI', true, 'operativa', 'Corredor de Seguridad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (93, NULL, 'C006', 'fija', 'BDI', true, 'operativa', 'Corredor de Servicio');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (95, NULL, 'C008', 'fija', 'BDI', true, 'operativa', 'Corredor de Servicio');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (96, NULL, 'C101', 'fija', 'BDI', true, 'operativa', 'Hall Público Arribo Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (97, NULL, 'C102', 'ptz', 'BDI', true, 'operativa', 'Hall Público Arribo Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (98, NULL, 'C103', 'ptz', 'BDI', true, 'operativa', 'Hall Público Arribo Norte');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (99, NULL, 'C104', 'fija', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (101, NULL, 'C106', 'fija', 'BDI', true, 'operativa', 'Chequeo Aduanas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (103, NULL, 'C108', 'fija', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (105, NULL, 'C110', 'fija', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (106, NULL, 'C111', 'fija', 'BDI', true, 'operativa', 'Bodega de Objetos Perdidos');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (107, NULL, 'C112', 'fija', 'BDI', true, 'operativa', 'Arribo Nacional Bandas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (108, NULL, 'C113', 'fija', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (110, NULL, 'C115', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad Norte');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (111, NULL, 'C116', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad Norte');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (113, NULL, 'C118', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje Int');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (1, NULL, 'F-C100F', 'fija', 'BDI', true, 'operativa', 'Filtro de Seguridad Ingreso SSEI');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (152, NULL, 'C161', 'fija', 'BDI', true, 'operativa', 'Bandas Equipaje INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (163, NULL, 'C173', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B3');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (164, NULL, 'C174', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad Norte');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (207, NULL, 'S-C110', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apron G14');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (215, NULL, 'C101A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (228, NULL, 'C115A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (229, NULL, 'C116A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (230, NULL, 'C117A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (233, NULL, 'C120A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (234, NULL, 'C121A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (235, NULL, 'C122A', 'fija', 'BDI', true, 'operativa', 'Esalera Emergencia (Sector Bandas de Equipaje)');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (236, NULL, 'C123A', 'ptz', 'AXIS', true, 'operativa', 'Bandas de Equipaje');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (237, NULL, 'C124A', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (117, NULL, 'C122', 'fija', 'BDI', true, 'operativa', 'Counter Migración Arribo');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (118, NULL, 'C123', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje Int');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (119, NULL, 'C124', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje Nac');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (120, NULL, 'C125', 'fija', 'BDI', true, 'operativa', 'Vestibulo');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (122, NULL, 'C127', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B1');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (123, NULL, 'C128', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B2');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (124, NULL, 'C129', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B3');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (126, NULL, 'C131', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B5');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (127, NULL, 'C132', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B6');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (128, NULL, 'C133', 'ptz', 'BDI', true, 'operativa', 'Counter Migración Arribo');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (130, NULL, 'C135', 'fija', 'BDI', true, 'operativa', 'Corredor (Cuarto FAS)');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (132, NULL, 'C137', 'fija', 'BDI', true, 'operativa', 'Hall Público Arribo Nac');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (133, NULL, 'C138', 'fija', 'BDI', true, 'operativa', 'Hall Publico Arribo Nac');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (134, NULL, 'C139', 'fija', 'BDI', true, 'operativa', 'Oficina EPM');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (136, NULL, 'C141', 'fija', 'BDI', true, 'operativa', 'Bandas Arribo Nacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (137, NULL, 'C142', 'fija', 'BDI', true, 'operativa', 'Bandas Arribo Nacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (138, NULL, 'C143', 'fija', 'BDI', true, 'operativa', 'Bandas Arribo Nacional ');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (140, NULL, 'C145', 'fija', 'BDI', true, 'operativa', 'Hall Publico Arribo Norte');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (142, NULL, 'C147', 'fija', 'BDI', true, 'operativa', 'Exteriores Arribo Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (143, NULL, 'C148', 'fija', 'BDI', true, 'operativa', 'Exteriores Arribo Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (144, NULL, 'C149', 'fija', 'BDI', true, 'operativa', 'Exteriores Arribo Norte');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (146, NULL, 'C151', 'ptz', 'BDI', true, 'operativa', 'Make Up INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (147, NULL, 'C152', 'ptz', 'AXIS', true, 'operativa', 'Make Up INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (148, NULL, 'C153', 'fija', 'BDI', true, 'operativa', 'Make Up INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (149, NULL, 'C154', 'fija', 'BDI', true, 'operativa', 'Make Up INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (151, NULL, 'C160', 'ptz', 'AXIS', true, 'operativa', 'Bandas Equipaje/ Counter Migración');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (153, NULL, 'C162', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (154, NULL, 'C164', 'fija', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (156, NULL, 'C166', 'ptz', 'AXIS', true, 'operativa', 'Make Up Nal');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (158, NULL, 'C168', 'ptz', 'BDI', true, 'operativa', 'Bandas Equipaje Nal');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (159, NULL, 'C169', 'fija', 'BDI', true, 'operativa', 'Bandas Equipaje Nal');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (160, NULL, 'C170', 'fija', 'BDI', true, 'operativa', 'Salas Embarque B');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (162, NULL, 'C172', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B2');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (166, NULL, 'C176', 'ptz', 'BDI', true, 'operativa', 'Make Up INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (167, NULL, 'C177', 'ptz', 'BDI', true, 'operativa', 'Make Up INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (169, NULL, 'C179', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (170, NULL, 'C180', 'fija', 'BDI', true, 'operativa', 'Exterior B1');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (171, NULL, 'C181', 'fija', 'BDI', true, 'operativa', 'Exterior B3');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (172, NULL, 'C182', 'fija', 'BDI', true, 'operativa', 'Exterior B4');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (173, NULL, 'C183', 'fija', 'BDI', true, 'operativa', 'Exterior B6');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (174, NULL, 'C184', 'fija', 'BDI', true, 'operativa', 'Exterior Arribo ');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (176, NULL, 'C186', 'fija', 'BDI', true, 'operativa', 'Exterior Lado Aire');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (178, NULL, 'C188', 'ptz', 'BDI', true, 'operativa', 'Exterior Lado Aire');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (179, NULL, 'C189', 'fija', 'BDI', true, 'operativa', 'Oficina Antinarcoticos');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (181, NULL, 'C191', 'fija', 'BDI', true, 'operativa', 'Make Up Nal');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (182, NULL, 'C192', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B4');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (183, NULL, 'C193', 'fija', 'BDI', true, 'operativa', 'Bandas Equipaje INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (184, NULL, 'C194', 'fija', 'BDI', true, 'operativa', 'Bandas Equipajes INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (186, NULL, 'C302', 'fija', 'BDI', true, 'operativa', 'Elevador 3/4');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (187, NULL, 'C303', 'fija', 'BDI', true, 'operativa', 'Entrada Oficina ADC');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (188, NULL, 'C304', 'fija', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (189, NULL, 'C401', 'ptz', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (191, NULL, 'C403', 'ptz', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (193, NULL, 'C405', 'ptz', 'AXIS', true, 'operativa', 'Terraza');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (194, NULL, 'C406', 'ptz', 'AXIS', true, 'operativa', 'Terraza');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (196, NULL, 'T-C102A', 'ptz', 'BDI', true, 'operativa', 'West Building Wall');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (197, NULL, 'T-C500A', 'fija', 'BDI', true, 'operativa', 'PTB Apron');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (199, NULL, 'S-C020', 'ptz', 'PELCO', true, 'operativa', 'Helicopter Pad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (201, NULL, 'S-C040', 'ptz', 'PELCO', true, 'operativa', 'Runaway/Taxi');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (202, NULL, 'S-C050', 'ptz', 'PELCO', true, 'operativa', 'Hanger Builtding Apron');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (203, NULL, 'S-C060', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apro G10');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (205, NULL, 'S-C080', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apron G12');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (208, NULL, 'S-C120', 'ptz', 'PELCO', true, 'operativa', 'Cargo Facility Apron');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (209, NULL, 'S-C130', 'ptz', 'PELCO', true, 'operativa', 'Runaway/Taxi');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (210, NULL, 'S-C140', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apron');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (212, NULL, 'S-C160', 'ptz', 'AXIS', true, 'operativa', 'Runaway/Taxi');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (214, NULL, 'S-C180B', 'fija', 'BDI', true, 'operativa', 'End of Taxi Way');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (216, NULL, 'C102A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (217, NULL, 'C103A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (220, NULL, 'C106A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (221, NULL, 'C107A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (223, NULL, 'C109A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (224, NULL, 'C110A', 'fija', 'BDI', true, 'operativa', 'Anden');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (225, NULL, 'C111A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (227, NULL, 'C114A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (239, NULL, 'C126A', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (240, NULL, 'C127A', 'fija', 'BDI', true, 'operativa', 'Rampa de Arribos');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (241, NULL, 'C128A', 'fija', 'BDI', true, 'operativa', 'Circulación Vertical');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (283, NULL, 'C244A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (285, NULL, 'C246A', 'fija', 'BDI', true, 'operativa', 'Pasillo Puente de Embarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (244, NULL, 'C203A', 'fija', 'BDI', true, 'operativa', 'Corredor de Arribo Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (245, NULL, 'C204A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (246, NULL, 'C205A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (247, NULL, 'C206A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (248, NULL, 'C207A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (249, NULL, 'C208A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (250, NULL, 'C209A', 'fija', 'BDI', true, 'operativa', 'Corredor Arribos');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (251, NULL, 'C210A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (252, NULL, 'C211A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (253, NULL, 'C212A', 'fija', 'BDI', true, 'operativa', 'Tránsito Pax');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (255, NULL, 'C214A', 'fija', 'BDI', true, 'operativa', 'Tránsito Pax');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (256, NULL, 'C215A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (257, NULL, 'C216A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (258, NULL, 'C217A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (259, NULL, 'C218A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (260, NULL, 'C219A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (261, NULL, 'C220A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas ');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (263, NULL, 'C222A', 'fija', 'BDI', true, 'operativa', 'Corredor Arribos');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (264, NULL, 'C224A', 'fija', 'BDI', true, 'operativa', 'Corredor Arribos');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (265, NULL, 'C226A', 'fija', 'BDI', true, 'operativa', 'Rampa Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (266, NULL, 'C227A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (267, NULL, 'C228A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (268, NULL, 'C229A', 'fija', 'BDI', true, 'operativa', 'Rampa Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (269, NULL, 'C230A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (270, NULL, 'C231A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (271, NULL, 'C232A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (272, NULL, 'C233A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (273, NULL, 'C234A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (275, NULL, 'C236A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (276, NULL, 'C237A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (277, NULL, 'C238A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (278, NULL, 'C239A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (279, NULL, 'C240A', 'fija', 'BDI', true, 'operativa', 'Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (280, NULL, 'C241A', 'fija', 'BDI', true, 'operativa', 'Rampa Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (281, NULL, 'C242A', 'fija', 'BDI', true, 'operativa', 'Rampa Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (282, NULL, 'C243A', 'fija', 'BDI', true, 'operativa', 'Rampa Corredor Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (286, NULL, 'C247A', 'fija', 'BDI', true, 'operativa', 'Pasillo Puente de Embarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (287, NULL, 'C248A', 'fija', 'BDI', true, 'operativa', 'Manga Pit 9');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (288, NULL, 'C249A', 'fija', 'BDI', true, 'operativa', 'Pasillo Puente de Embarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (289, NULL, 'C250A', 'ptz', 'AXIS', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (290, NULL, 'C251A', 'ptz', 'AXIS', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (291, NULL, 'C252A', 'fija', 'BDI', true, 'operativa', 'Circulación Vertical');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (292, NULL, 'C301A', 'fija', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (293, NULL, 'C302A', 'fija', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (294, NULL, 'C303A', 'fija', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (296, NULL, 'C305A', 'fija', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (297, NULL, 'C253', 'ptz', 'AXIS', true, 'operativa', 'Corredor Interior');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (298, NULL, 'C131A', 'fija', 'BDI', true, 'operativa', 'Banda de Equipaje');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (300, NULL, 'C289', 'fija', 'BDI', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (303, NULL, 'C292', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (301, NULL, 'C290', 'fija', 'BDI', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (302, NULL, 'C291', 'fija', 'BDI', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (299, NULL, 'C251', 'fija', 'BDI', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (304, NULL, 'C293', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (305, NULL, 'C294', 'fija', 'AXIS', true, 'operativas', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (306, NULL, 'C155', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (307, NULL, 'C156', 'fija ', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (308, NULL, 'C195', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (309, NULL, 'C196', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (51, NULL, 'C249', 'fija', 'BDI', true, 'operativa', 'Exteriores Nacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (57, NULL, 'C256', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (62, NULL, 'C262', 'ptz', 'AXIS', true, 'operativa', 'Chequeo Counters B/C');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (68, NULL, 'C269', 'fija', 'BDI', true, 'operativa', 'Hall Publica Salida Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (73, NULL, 'C274', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (83, NULL, 'C284', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas A7/A8');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (89, NULL, 'C002', 'ptz', 'BDI', true, 'operativa', 'Corredor de Servicio');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (94, NULL, 'C007', 'fija', 'BDI', true, 'operativa', 'Corredor de Servicio');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (100, NULL, 'C105', 'fija', 'BDI', true, 'operativa', 'Corredor Aduanas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (104, NULL, 'C109', 'fija', 'BDI', true, 'operativa', 'Oficina EPM');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (109, NULL, 'C114', 'fija', 'BDI', true, 'operativa', 'Corredor Asensor 3/4');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (114, NULL, 'C119', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje Int');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (121, NULL, 'C126', 'fija', 'BDI', true, 'operativa', 'Sala Embarque B1');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (125, NULL, 'C130', 'fija', 'BDI', true, 'operativa', 'Tomógrafo Nacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (129, NULL, 'C134', 'fija', 'BDI', true, 'operativa', 'Arribo Internacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (135, NULL, 'C140', 'fija', 'BDI', true, 'operativa', 'Antinarcoticos');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (139, NULL, 'C144', 'fija', 'BDI', true, 'operativa', 'Puerta Salida Arribo INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (145, NULL, 'C150', 'fija', 'BDI', true, 'operativa', 'Corredor Norte');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (157, NULL, 'C167', 'fija', 'BDI', true, 'operativa', 'Tomografo Nacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (161, NULL, 'C171', 'ptz', 'BDI', true, 'operativa', 'Gradas Eléctricas Arribo Nal');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (168, NULL, 'C178', 'fija', 'BDI', true, 'operativa', 'Tomografo Internacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (175, NULL, 'C185', 'ptz', 'BDI', true, 'operativa', 'Make Up INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (180, NULL, 'C190', 'fija', 'AXIS', true, 'operativa', 'Make Up Nal');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (185, NULL, 'C301', 'ptz', 'BDI', true, 'operativa', 'Corredor');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (190, NULL, 'C402', 'ptz', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (200, NULL, 'S-C030', 'ptz', 'PELCO', true, 'operativa', 'Gen. Aviation Terminal');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (204, NULL, 'S-C070', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apron G11');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (211, NULL, 'S-C150', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apron');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (222, NULL, 'C108A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (226, NULL, 'C112A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (232, NULL, 'C119A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (238, NULL, 'C125A', 'fija', 'BDI', true, 'operativa', 'Bandas de Equipaje');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (242, NULL, 'C129A', 'fija', 'BDI', true, 'operativa', 'Circulación Vertical');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (310, NULL, 'C197', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (311, NULL, 'C198', 'fija', 'AXIS', true, 'operatvia', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (312, NULL, 'C199', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (313, NULL, 'C202', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (314, NULL, 'C305', 'fija', 'AXIS', true, 'operativa', NULL);
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (6, NULL, 'C204', 'fija', 'BDI', true, 'operativa', 'Escalera de Servicios 6');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (16, NULL, 'C214', 'fija', 'BDI', true, 'operativa', 'Cuarto Chequeo INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (25, NULL, 'C223', 'fija', 'BDI', true, 'operativa', 'Exterior Salida INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (35, NULL, 'C233', 'fija', 'BDI', true, 'operativa', 'Filtro Transito Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (45, NULL, 'C243', 'fija', 'BDI', true, 'operativa', 'Manga 13');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (46, NULL, 'C244', 'fija', 'BDI', true, 'operativa', 'Corredor Mangas A9');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (54, NULL, 'C253', 'fija', 'BDI', true, 'operativa', 'Cheque Nacional Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (66, NULL, 'C266', 'fija', 'BDI', true, 'operativa', 'Chequeo Internacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (77, NULL, 'C278', 'ptz', 'BDI', true, 'operativa', 'Corredor Central (Dutty)');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (79, NULL, 'C280', 'fija', 'BDI', true, 'operativa', 'Corredor Mangas A10/A11');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (91, NULL, 'C004', 'fija', 'BDI', true, 'operativa', 'Filtro Seguridad');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (102, NULL, 'C107', 'fija', 'BDI', true, 'operativa', 'Chequeo Aduanas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (112, NULL, 'C117', 'fija', 'BDI', true, 'operativa', 'Counter Migración Arribo');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (115, NULL, 'C120', 'fija', 'BDI', true, 'operativa', 'Counter Migración Arribo');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (116, NULL, 'C121', 'fija', 'BDI', true, 'operativa', 'Banda de Equipaje Int');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (131, NULL, 'C136', 'fija', 'BDI', true, 'operativa', 'Hall Público Arribo Nal');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (141, NULL, 'C146', 'fija', 'BDI', true, 'operativa', 'Hall Publico Arribo Norte');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (150, NULL, 'C159', 'fija', 'BDI', true, 'operativa', 'Bandas Equipaje INT');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (155, NULL, 'C165', 'ptz', 'AXIS', true, 'operativa', 'Make Up Nal');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (165, NULL, 'C175', 'fija', 'BDI', true, 'operativa', 'Tomografo Internacional');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (177, NULL, 'C187', 'fija', 'BDI', true, 'operativa', 'Exterior Lado Aire');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (192, NULL, 'C404', 'ptz', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (195, NULL, 'T-C101A', 'fija', 'BDI', true, 'operativa', 'Ingreso DGAC');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (198, NULL, 'S-C010', 'ptz', 'PELCO', true, 'operativa', 'Runaway/Taxi');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (206, NULL, 'S-C090', 'ptz', 'PELCO', true, 'operativa', 'Term. Building Apron G13');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (218, NULL, 'C104A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (219, NULL, 'C105A', 'fija', 'BDI', true, 'operativa', 'Sala Preenvarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (231, NULL, 'C118A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (243, NULL, 'C201A', 'fija', 'BDI', true, 'operativa', 'Corredor de Arribo Sur');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (254, NULL, 'C213A', 'fija', 'BDI', true, 'operativa', 'Corredor de Mangas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (262, NULL, 'C221A', 'fija', 'BDI', true, 'operativa', 'Corredor Espacio Comercial');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (274, NULL, 'C235A', 'fija', 'BDI', true, 'operativa', 'Sala Preembarque');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (284, NULL, 'C245A', 'fija', 'BDI', true, 'operativa', 'Corredor Mangas');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (295, NULL, 'C304A', 'fija', 'BDI', true, 'operativa', 'Terraza');
INSERT INTO camaras (id, ct_tipo, codigo, modelo, marca, activo, estado, ubicacion) VALUES (213, NULL, 'S-C170A', 'fija', 'BDI', true, 'operativa', 'End of Taxi Way');


--
-- TOC entry 2253 (class 0 OID 0)
-- Dependencies: 186
-- Name: camaras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('camaras_id_seq', 314, true);


--
-- TOC entry 2221 (class 0 OID 65290)
-- Dependencies: 187
-- Data for Name: camaras_orden_trabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO camaras_orden_trabajo (id, orden_trabajo_id, camaras_id, activo) VALUES (100, 2, 89, true);
INSERT INTO camaras_orden_trabajo (id, orden_trabajo_id, camaras_id, activo) VALUES (101, 2, 94, true);


--
-- TOC entry 2254 (class 0 OID 0)
-- Dependencies: 188
-- Name: camaras_orden_trabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('camaras_orden_trabajo_id_seq', 101, true);


--
-- TOC entry 2223 (class 0 OID 65296)
-- Dependencies: 189
-- Data for Name: catalogo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (1, 'Sistemas', NULL, 1, NULL, true);
INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (2, 'Servicio', NULL, 1, NULL, true);
INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (1000, 'Control de Accesos', 1, 1, NULL, true);
INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (1001, 'FAS', 1, 2, NULL, true);
INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (1002, 'CCTV', 1, 3, NULL, true);
INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (1003, 'PAS', 1, 4, NULL, true);
INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (1004, 'Instalación', 2, 1, NULL, true);
INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (1005, 'Inspección', 2, 2, NULL, true);
INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (1006, 'Programación', 2, 3, NULL, true);
INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (1007, 'Soporte', 2, 4, NULL, true);
INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (1008, 'Mantenimiento Preventivo', 2, 5, NULL, true);
INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (1009, 'Mantenimiento Correctivo', 2, 6, NULL, true);
INSERT INTO catalogo (id, nombre, catalogo_id, orden, valor, activo) VALUES (3, 'Mantenimiento', NULL, 5, NULL, true);


--
-- TOC entry 2224 (class 0 OID 65302)
-- Dependencies: 190
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cliente (id, nombre, cargo, revisado_por, activo) VALUES (1, 'cliente final', NULL, NULL, true);


--
-- TOC entry 2255 (class 0 OID 0)
-- Dependencies: 191
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cliente_id_seq', 1, true);


--
-- TOC entry 2226 (class 0 OID 65311)
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
-- TOC entry 2228 (class 0 OID 65317)
-- Dependencies: 194
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO empresa (id, nombre, direccion, edificio, ubicacion, activo) VALUES (1, 'Aeropuerto Mariscal Sucre', 'Tababela', 'Aeropuerto', 'Tababela', true);
INSERT INTO empresa (id, nombre, direccion, edificio, ubicacion, activo) VALUES (2, 'Edificio La Previsora', 'Av.NNUU y Rio Amazonas', NULL, 'Quito', true);
INSERT INTO empresa (id, nombre, direccion, edificio, ubicacion, activo) VALUES (3, 'Museo Numismatico', NULL, NULL, 'Quito', true);


--
-- TOC entry 2257 (class 0 OID 0)
-- Dependencies: 195
-- Name: empresa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empresa_id_seq', 3, true);


--
-- TOC entry 2230 (class 0 OID 65326)
-- Dependencies: 196
-- Data for Name: orden_trabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO orden_trabajo (id, num_ticket, num_ord_trab, empresa_id, ct_sistema, ct_servicio, descripcion, fecha_inicio, fecha_termino, hora_termino, activo, fecha_creacion, cliente_id, tecnico_id, detalle_orden_trabajo_id, solucion) VALUES (2, 5, 4, 3, 1002, 1007, 'requerimiento determinado', '2017-05-16 20:05:00', '2017-05-16 20:10:00', NULL, true, NULL, 1, 4, NULL, 'solucion al requerimiento');


--
-- TOC entry 2258 (class 0 OID 0)
-- Dependencies: 197
-- Name: orden_trabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('orden_trabajo_id_seq', 2, true);


--
-- TOC entry 2232 (class 0 OID 65335)
-- Dependencies: 198
-- Data for Name: puertas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (9, '0B024', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (8, '0A021', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (11, '1C060', 'F2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (12, '1C061B', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (13, '1C064', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (14, '1C081A', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (15, '3C002A', 'F1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (16, '3C008', 'F1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (17, '3D019', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (20, '4CST10', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (19, '3D029', 'F1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (21, '0A010', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (22, '1C060B', NULL, NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (23, '1E100A', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (24, '1E103', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (26, '1H128', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (27, '1H129', 'D2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (28, '1E100', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (29, '1D088', 'F4', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (30, '1D088A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (32, '1DST4A', 'F1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (33, '1DST5', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (34, '2E082', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (35, '2F090A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (36, '2F094', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (37, '2F097', 'G1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (39, '0A001', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (40, '0A001A', 'A5', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (41, '1C073A', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (42, '1C079', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (43, '3C001', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (44, '3C009', 'A3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (46, '3CST10', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (47, '3D022', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (48, '3D031', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (49, '1H129A', 'D2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (50, '1H129B', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (51, '1H129D', 'D2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (52, '1D086', 'D1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (53, '1D086B', 'A5', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (54, '2F095', 'A3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (55, '2F095A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (56, '2F095B', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (57, '2F098', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (58, '2E073', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (59, '2E073A', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (61, '2E074A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (62, '2E075', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (63, '2E075A', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (64, '2E075B', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (65, '2E076', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (66, '2E076A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (67, '2E076B', 'A3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (68, '2F099', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (69, '2F099A', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (70, '2F099B', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (71, '2G102', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (72, '2G104', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (73, '2G104A', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (74, '2G104B', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (75, '2G105', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (76, '2G106A', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (78, '2H110', 'A3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (79, '2H110A', 'A3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (80, '2H117', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (81, '2H117A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (82, '2H118', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (83, '2H118A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (84, '2H118B', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (85, '2H119', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (86, '2H119A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (87, '2H119B', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (88, '2H119C', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (89, '1A004', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (90, '1A002', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (91, '1A003', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (92, '1A028', 'G1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (93, '1A131', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (95, '1B037', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (96, '1B039', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (97, '1B046', 'H1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (98, '1B048AA', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (99, '1B055A', 'F4', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (100, '1B055AA', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (101, '1H129E', 'D2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (102, '2A003', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (103, '2B016', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (104, '2B019', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (105, '2C029', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (106, '2C035', 'D3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (107, '2C036AA', 'F1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (108, '2C037', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (109, '2C038', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (110, '2C046', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (112, '2D054', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (113, '2D057E', 'A5', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (114, '2D058', 'D2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (115, '2D058A', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (116, '2D059', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (117, '2D064', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (118, '2D066A', 'F1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (119, '2DST5', 'A5', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (120, '2B019A', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (121, '2B019AA', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (122, '2C035A', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (123, 'CR2A010', 'BHS', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (124, 'CR2A011', 'BHS', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (125, 'CR2B012', 'BHS', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (126, 'CR2B025', 'BHS', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (127, 'CR2B026', 'BHS', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (7, '0A020A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (142, '2CST10', NULL, NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (143, '1F108A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (144, '1CEL6', 'V1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (1, '0A008A', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (3, '0A008', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (154, '1A010', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (155, '1A010A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (156, '1A030A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (157, '2C043', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (158, '2C043B', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (197, '2E3013', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (196, '2E3012A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (195, '2E3012A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (130, '1B051', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (145, '1036A', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (146, '1033', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (147, '1034', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (148, '1036D', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (159, '2C043C', 'F3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (149, '1A011', 'H1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (150, '1009', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (151, '1015', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (152, '1017A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (153, '1041A', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (160, '2C043D', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (161, '1C061', 'C3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (162, '0A022', 'A3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (184, '2E2008', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (183, '2E2008', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (182, '2E2006', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (181, '2E2004', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (163, '1C060A', 'C1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (164, '2E073C', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (165, '1E1002', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (166, '1E1002', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (167, '1E1002', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (168, '1E1002', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (194, '2E3012', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (193, '2E3012', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (192, '2E3011', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (191, '2E3010', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (190, '2E3009A', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (180, '2E2004', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (179, '2E2001A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (178, '2E1001', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (177, '1E3013', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (176, '1E3006', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (175, '1E3006', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (174, '1E3001', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (173, '1E3001', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (172, '1E3001', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (171, '1E3001', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (170, '1E2002', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (169, '1E2EE1', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (25, '1H127', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (31, '1D098', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (38, '2H111', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (45, '3C010', 'A4', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (60, '2E074', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (77, '2H109A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (94, '1B033', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (111, '2CST10A', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (128, 'CR2B027', 'BHS', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (129, '1A030', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (131, '1F104', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (132, '1F104A', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (133, '1F108', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (203, 'P1E1002A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (4, '0A007', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (2, '0A007A', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (189, '2E3002', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (188, '2E3002', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (5, '0A019', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (6, '0A020', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (10, '0BST1', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (18, '3D021', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (202, '2E3015', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (201, '2E3015', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (200, '2E3014', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (199, '2E3014', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (198, '2E3014', 'E3', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (187, '2E3001A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (186, '2E3001A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (185, '2E2014', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (134, '1F108B', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (135, '1F113', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (136, '1F113A', 'B1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (137, '1G120', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (138, '1G120A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (139, '1G122', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (140, '1003', NULL, NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (141, '1A012', 'H1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (205, 'P1E1002C', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (206, 'P1E1002D', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (207, 'P1E2002', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (208, 'P1E2EE1', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (209, 'P1E3006A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (210, 'P1E3006B', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (211, 'P1E3001A', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (212, 'P1E3001D', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (213, 'P1E3001E', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (214, 'P13001C', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (215, 'P13001D', 'A1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (216, 'P1E3013', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (217, 'P2E0865W', 'G1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (218, 'P2E20105W', 'G1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (219, 'P2E1001A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (221, 'P2E2001AA', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (222, 'P2E3001C', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (223, 'P2E3001E', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (224, 'P2E3012A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (225, 'P2E3002A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (204, 'P1E1002B', 'B2', NULL, NULL, true, 'opeativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (220, 'P2E2006A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (226, 'P2E3012B', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (227, 'P2E3012AA', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (228, 'P2E3002B', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (229, 'P2E3012AB', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (230, 'P2E3013', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (231, 'P2E2002A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (232, 'P2E2008A', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (233, 'P2E2004E', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (234, 'P2E2008B', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (235, 'P2E2014', 'A2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (236, 'P2E3010', 'E1', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (237, 'P2E3009AB', 'E2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (238, 'P2E3014B', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (239, 'P2E3014A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (240, 'P2E3014C', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (241, 'P2E3015A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (242, 'P2E3015A', 'B2', NULL, NULL, true, 'operativa');
INSERT INTO puertas (id, codigo, modelo, ct_tipo, marca, activo, estado) VALUES (243, 'P2E3011', 'E1', NULL, NULL, true, 'inoperativa');


--
-- TOC entry 2233 (class 0 OID 65341)
-- Dependencies: 199
-- Data for Name: puertas_orden_trabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO puertas_orden_trabajo (id, orden_trabajo_id, puertas_id, activo) VALUES (9, 2, 4, true);


--
-- TOC entry 2259 (class 0 OID 0)
-- Dependencies: 200
-- Name: puertas_orden_trabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('puertas_orden_trabajo_id_seq', 9, true);


--
-- TOC entry 2235 (class 0 OID 65346)
-- Dependencies: 201
-- Data for Name: tecnico; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tecnico (id, nombres, apellidos, celular, activo) VALUES (2, 'Gonzalo', 'Chavarrea', '0998146157', true);
INSERT INTO tecnico (id, nombres, apellidos, celular, activo) VALUES (1, 'Pablo', 'Camacas', '0991394229', true);
INSERT INTO tecnico (id, nombres, apellidos, celular, activo) VALUES (3, 'Diego', 'Loachamin', '0958872811', true);
INSERT INTO tecnico (id, nombres, apellidos, celular, activo) VALUES (4, 'Diego', 'Jami', '0998991830', true);
INSERT INTO tecnico (id, nombres, apellidos, celular, activo) VALUES (5, 'Jonathan', 'Masias', '0997779326', true);
INSERT INTO tecnico (id, nombres, apellidos, celular, activo) VALUES (6, 'Oscar', 'Guaytarilla', '0982111276', true);


--
-- TOC entry 2260 (class 0 OID 0)
-- Dependencies: 202
-- Name: tecnico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tecnico_id_seq', 6, true);


-- Completed on 2017-05-17 20:46:36 -05

--
-- PostgreSQL database dump complete
--

