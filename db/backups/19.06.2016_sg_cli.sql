--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.5.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: counters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE counters (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: counters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE counters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: counters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE counters_id_seq OWNED BY counters.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE customers (
    id integer NOT NULL,
    razao character varying,
    iss character varying,
    cnpj character varying,
    cei character varying,
    cgf character varying,
    cod character varying,
    logradouro character varying,
    numero character varying,
    bairro character varying,
    complemento character varying,
    municipio character varying,
    estado character varying,
    telefone character varying,
    telefone2 character varying,
    telefone3 character varying,
    celular character varying,
    celular2 character varying,
    email character varying,
    email2 character varying,
    contato character varying,
    contato2 character varying,
    endereco_coleta character varying,
    honorarios double precision,
    desde timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    active boolean DEFAULT true,
    group_id integer,
    id_emp character varying,
    cep character varying,
    cpf character varying
);


--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- Name: groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE groups (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE groups_id_seq OWNED BY groups.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE settings (
    id integer NOT NULL,
    parametro character varying,
    descricao character varying,
    valor character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE settings_id_seq OWNED BY settings.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    admin boolean
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY counters ALTER COLUMN id SET DEFAULT nextval('counters_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY groups ALTER COLUMN id SET DEFAULT nextval('groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY settings ALTER COLUMN id SET DEFAULT nextval('settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: counters; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO counters (id, created_at, updated_at) VALUES (1, '2016-05-16 05:03:59.725221', '2016-05-16 05:03:59.725221');
INSERT INTO counters (id, created_at, updated_at) VALUES (2, '2016-05-16 05:03:59.764304', '2016-05-16 05:03:59.764304');
INSERT INTO counters (id, created_at, updated_at) VALUES (3, '2016-05-16 05:03:59.797729', '2016-05-16 05:03:59.797729');
INSERT INTO counters (id, created_at, updated_at) VALUES (4, '2016-05-16 05:03:59.833481', '2016-05-16 05:03:59.833481');
INSERT INTO counters (id, created_at, updated_at) VALUES (5, '2016-05-16 05:03:59.862452', '2016-05-16 05:03:59.862452');
INSERT INTO counters (id, created_at, updated_at) VALUES (6, '2016-05-31 03:28:52.932145', '2016-05-31 03:28:52.932145');
INSERT INTO counters (id, created_at, updated_at) VALUES (7, '2016-05-31 03:28:53.03118', '2016-05-31 03:28:53.03118');
INSERT INTO counters (id, created_at, updated_at) VALUES (8, '2016-05-31 03:28:53.057615', '2016-05-31 03:28:53.057615');
INSERT INTO counters (id, created_at, updated_at) VALUES (9, '2016-05-31 03:28:53.083132', '2016-05-31 03:28:53.083132');
INSERT INTO counters (id, created_at, updated_at) VALUES (10, '2016-05-31 03:28:53.108179', '2016-05-31 03:28:53.108179');
INSERT INTO counters (id, created_at, updated_at) VALUES (11, '2016-05-31 03:29:28.045837', '2016-05-31 03:29:28.045837');
INSERT INTO counters (id, created_at, updated_at) VALUES (12, '2016-05-31 03:30:08.392383', '2016-05-31 03:30:08.392383');
INSERT INTO counters (id, created_at, updated_at) VALUES (13, '2016-05-31 03:37:29.896181', '2016-05-31 03:37:29.896181');
INSERT INTO counters (id, created_at, updated_at) VALUES (14, '2016-05-31 03:38:30.203209', '2016-05-31 03:38:30.203209');
INSERT INTO counters (id, created_at, updated_at) VALUES (15, '2016-05-31 03:38:50.186681', '2016-05-31 03:38:50.186681');
INSERT INTO counters (id, created_at, updated_at) VALUES (16, '2016-05-31 03:39:07.019121', '2016-05-31 03:39:07.019121');
INSERT INTO counters (id, created_at, updated_at) VALUES (17, '2016-05-31 03:39:49.255705', '2016-05-31 03:39:49.255705');
INSERT INTO counters (id, created_at, updated_at) VALUES (18, '2016-05-31 03:40:19.213708', '2016-05-31 03:40:19.213708');
INSERT INTO counters (id, created_at, updated_at) VALUES (19, '2016-05-31 03:41:18.918666', '2016-05-31 03:41:18.918666');
INSERT INTO counters (id, created_at, updated_at) VALUES (20, '2016-05-31 03:41:53.709486', '2016-05-31 03:41:53.709486');
INSERT INTO counters (id, created_at, updated_at) VALUES (21, '2016-05-31 03:42:10.100331', '2016-05-31 03:42:10.100331');
INSERT INTO counters (id, created_at, updated_at) VALUES (22, '2016-05-31 03:42:19.814441', '2016-05-31 03:42:19.814441');
INSERT INTO counters (id, created_at, updated_at) VALUES (23, '2016-05-31 03:42:35.823545', '2016-05-31 03:42:35.823545');
INSERT INTO counters (id, created_at, updated_at) VALUES (24, '2016-05-31 03:42:46.267597', '2016-05-31 03:42:46.267597');
INSERT INTO counters (id, created_at, updated_at) VALUES (25, '2016-05-31 03:42:55.101491', '2016-05-31 03:42:55.101491');
INSERT INTO counters (id, created_at, updated_at) VALUES (26, '2016-05-31 03:43:07.473126', '2016-05-31 03:43:07.473126');
INSERT INTO counters (id, created_at, updated_at) VALUES (27, '2016-05-31 03:43:35.561753', '2016-05-31 03:43:35.561753');
INSERT INTO counters (id, created_at, updated_at) VALUES (28, '2016-06-12 09:36:09.693715', '2016-06-12 09:36:09.693715');
INSERT INTO counters (id, created_at, updated_at) VALUES (29, '2016-06-12 09:36:09.776595', '2016-06-12 09:36:09.776595');
INSERT INTO counters (id, created_at, updated_at) VALUES (30, '2016-06-12 09:36:09.806047', '2016-06-12 09:36:09.806047');
INSERT INTO counters (id, created_at, updated_at) VALUES (31, '2016-06-12 09:36:09.82894', '2016-06-12 09:36:09.82894');
INSERT INTO counters (id, created_at, updated_at) VALUES (32, '2016-06-12 09:36:09.87184', '2016-06-12 09:36:09.87184');
INSERT INTO counters (id, created_at, updated_at) VALUES (33, '2016-06-15 01:55:10.719545', '2016-06-15 01:55:10.719545');
INSERT INTO counters (id, created_at, updated_at) VALUES (34, '2016-06-15 01:55:10.839628', '2016-06-15 01:55:10.839628');
INSERT INTO counters (id, created_at, updated_at) VALUES (35, '2016-06-15 01:55:10.869668', '2016-06-15 01:55:10.869668');
INSERT INTO counters (id, created_at, updated_at) VALUES (36, '2016-06-15 01:55:10.899218', '2016-06-15 01:55:10.899218');
INSERT INTO counters (id, created_at, updated_at) VALUES (37, '2016-06-15 01:55:10.924256', '2016-06-15 01:55:10.924256');
INSERT INTO counters (id, created_at, updated_at) VALUES (38, '2016-06-15 02:12:30.314012', '2016-06-15 02:12:30.314012');
INSERT INTO counters (id, created_at, updated_at) VALUES (39, '2016-06-15 02:12:30.348021', '2016-06-15 02:12:30.348021');
INSERT INTO counters (id, created_at, updated_at) VALUES (40, '2016-06-15 02:12:30.370238', '2016-06-15 02:12:30.370238');
INSERT INTO counters (id, created_at, updated_at) VALUES (41, '2016-06-15 02:12:30.398425', '2016-06-15 02:12:30.398425');
INSERT INTO counters (id, created_at, updated_at) VALUES (42, '2016-06-15 02:12:30.416759', '2016-06-15 02:12:30.416759');
INSERT INTO counters (id, created_at, updated_at) VALUES (43, '2016-06-15 02:23:02.580854', '2016-06-15 02:23:02.580854');
INSERT INTO counters (id, created_at, updated_at) VALUES (44, '2016-06-15 02:23:02.618795', '2016-06-15 02:23:02.618795');
INSERT INTO counters (id, created_at, updated_at) VALUES (45, '2016-06-15 02:23:02.648404', '2016-06-15 02:23:02.648404');
INSERT INTO counters (id, created_at, updated_at) VALUES (46, '2016-06-15 02:23:02.67052', '2016-06-15 02:23:02.67052');
INSERT INTO counters (id, created_at, updated_at) VALUES (47, '2016-06-15 02:23:02.697334', '2016-06-15 02:23:02.697334');
INSERT INTO counters (id, created_at, updated_at) VALUES (48, '2016-06-15 02:23:02.721724', '2016-06-15 02:23:02.721724');
INSERT INTO counters (id, created_at, updated_at) VALUES (49, '2016-06-15 02:23:02.757506', '2016-06-15 02:23:02.757506');
INSERT INTO counters (id, created_at, updated_at) VALUES (50, '2016-06-15 02:23:02.777836', '2016-06-15 02:23:02.777836');
INSERT INTO counters (id, created_at, updated_at) VALUES (51, '2016-06-15 02:23:02.803199', '2016-06-15 02:23:02.803199');
INSERT INTO counters (id, created_at, updated_at) VALUES (52, '2016-06-15 02:23:02.828592', '2016-06-15 02:23:02.828592');
INSERT INTO counters (id, created_at, updated_at) VALUES (53, '2016-06-15 02:23:02.852076', '2016-06-15 02:23:02.852076');
INSERT INTO counters (id, created_at, updated_at) VALUES (54, '2016-06-15 02:23:02.882621', '2016-06-15 02:23:02.882621');
INSERT INTO counters (id, created_at, updated_at) VALUES (55, '2016-06-15 02:23:02.913364', '2016-06-15 02:23:02.913364');
INSERT INTO counters (id, created_at, updated_at) VALUES (56, '2016-06-15 02:23:02.938659', '2016-06-15 02:23:02.938659');
INSERT INTO counters (id, created_at, updated_at) VALUES (57, '2016-06-15 02:23:02.968741', '2016-06-15 02:23:02.968741');
INSERT INTO counters (id, created_at, updated_at) VALUES (58, '2016-06-15 02:23:02.995442', '2016-06-15 02:23:02.995442');
INSERT INTO counters (id, created_at, updated_at) VALUES (59, '2016-06-15 02:23:03.020752', '2016-06-15 02:23:03.020752');
INSERT INTO counters (id, created_at, updated_at) VALUES (60, '2016-06-15 02:23:03.044357', '2016-06-15 02:23:03.044357');
INSERT INTO counters (id, created_at, updated_at) VALUES (61, '2016-06-15 02:23:03.069302', '2016-06-15 02:23:03.069302');
INSERT INTO counters (id, created_at, updated_at) VALUES (62, '2016-06-15 02:23:03.097941', '2016-06-15 02:23:03.097941');
INSERT INTO counters (id, created_at, updated_at) VALUES (63, '2016-06-15 02:23:03.119683', '2016-06-15 02:23:03.119683');
INSERT INTO counters (id, created_at, updated_at) VALUES (64, '2016-06-15 02:23:03.141219', '2016-06-15 02:23:03.141219');
INSERT INTO counters (id, created_at, updated_at) VALUES (65, '2016-06-15 02:23:03.16651', '2016-06-15 02:23:03.16651');
INSERT INTO counters (id, created_at, updated_at) VALUES (66, '2016-06-15 02:23:03.191335', '2016-06-15 02:23:03.191335');
INSERT INTO counters (id, created_at, updated_at) VALUES (67, '2016-06-15 02:23:03.218242', '2016-06-15 02:23:03.218242');
INSERT INTO counters (id, created_at, updated_at) VALUES (68, '2016-06-15 02:23:03.246211', '2016-06-15 02:23:03.246211');
INSERT INTO counters (id, created_at, updated_at) VALUES (69, '2016-06-15 02:23:03.268432', '2016-06-15 02:23:03.268432');
INSERT INTO counters (id, created_at, updated_at) VALUES (70, '2016-06-15 02:23:03.293381', '2016-06-15 02:23:03.293381');
INSERT INTO counters (id, created_at, updated_at) VALUES (71, '2016-06-15 02:23:03.321639', '2016-06-15 02:23:03.321639');
INSERT INTO counters (id, created_at, updated_at) VALUES (72, '2016-06-15 02:23:03.34003', '2016-06-15 02:23:03.34003');
INSERT INTO counters (id, created_at, updated_at) VALUES (73, '2016-06-15 02:23:03.367521', '2016-06-15 02:23:03.367521');
INSERT INTO counters (id, created_at, updated_at) VALUES (74, '2016-06-15 02:23:03.394907', '2016-06-15 02:23:03.394907');
INSERT INTO counters (id, created_at, updated_at) VALUES (75, '2016-06-15 02:23:03.417067', '2016-06-15 02:23:03.417067');
INSERT INTO counters (id, created_at, updated_at) VALUES (76, '2016-06-15 02:23:03.441087', '2016-06-15 02:23:03.441087');
INSERT INTO counters (id, created_at, updated_at) VALUES (77, '2016-06-15 02:23:03.467405', '2016-06-15 02:23:03.467405');
INSERT INTO counters (id, created_at, updated_at) VALUES (78, '2016-06-15 02:23:03.493683', '2016-06-15 02:23:03.493683');
INSERT INTO counters (id, created_at, updated_at) VALUES (79, '2016-06-15 02:23:03.521267', '2016-06-15 02:23:03.521267');
INSERT INTO counters (id, created_at, updated_at) VALUES (80, '2016-06-15 02:23:03.544627', '2016-06-15 02:23:03.544627');
INSERT INTO counters (id, created_at, updated_at) VALUES (81, '2016-06-15 02:23:03.569383', '2016-06-15 02:23:03.569383');
INSERT INTO counters (id, created_at, updated_at) VALUES (82, '2016-06-15 02:23:03.589957', '2016-06-15 02:23:03.589957');
INSERT INTO counters (id, created_at, updated_at) VALUES (83, '2016-06-15 02:23:03.617353', '2016-06-15 02:23:03.617353');
INSERT INTO counters (id, created_at, updated_at) VALUES (84, '2016-06-15 02:23:03.642391', '2016-06-15 02:23:03.642391');
INSERT INTO counters (id, created_at, updated_at) VALUES (85, '2016-06-15 02:23:03.668782', '2016-06-15 02:23:03.668782');
INSERT INTO counters (id, created_at, updated_at) VALUES (86, '2016-06-15 02:23:03.6929', '2016-06-15 02:23:03.6929');
INSERT INTO counters (id, created_at, updated_at) VALUES (87, '2016-06-15 02:23:03.720309', '2016-06-15 02:23:03.720309');
INSERT INTO counters (id, created_at, updated_at) VALUES (88, '2016-06-15 02:23:03.751698', '2016-06-15 02:23:03.751698');
INSERT INTO counters (id, created_at, updated_at) VALUES (89, '2016-06-15 02:23:03.77603', '2016-06-15 02:23:03.77603');
INSERT INTO counters (id, created_at, updated_at) VALUES (90, '2016-06-15 02:23:03.80257', '2016-06-15 02:23:03.80257');
INSERT INTO counters (id, created_at, updated_at) VALUES (91, '2016-06-15 02:37:00.325382', '2016-06-15 02:37:00.325382');
INSERT INTO counters (id, created_at, updated_at) VALUES (92, '2016-06-15 02:37:12.957398', '2016-06-15 02:37:12.957398');
INSERT INTO counters (id, created_at, updated_at) VALUES (93, '2016-06-15 02:37:31.466215', '2016-06-15 02:37:31.466215');
INSERT INTO counters (id, created_at, updated_at) VALUES (94, '2016-06-15 02:46:00.994507', '2016-06-15 02:46:00.994507');
INSERT INTO counters (id, created_at, updated_at) VALUES (95, '2016-06-15 02:46:01.026289', '2016-06-15 02:46:01.026289');
INSERT INTO counters (id, created_at, updated_at) VALUES (96, '2016-06-15 02:46:01.048306', '2016-06-15 02:46:01.048306');
INSERT INTO counters (id, created_at, updated_at) VALUES (97, '2016-06-15 02:46:01.071645', '2016-06-15 02:46:01.071645');
INSERT INTO counters (id, created_at, updated_at) VALUES (98, '2016-06-15 02:46:01.100911', '2016-06-15 02:46:01.100911');
INSERT INTO counters (id, created_at, updated_at) VALUES (99, '2016-06-15 02:46:01.124073', '2016-06-15 02:46:01.124073');
INSERT INTO counters (id, created_at, updated_at) VALUES (100, '2016-06-15 02:46:01.145774', '2016-06-15 02:46:01.145774');
INSERT INTO counters (id, created_at, updated_at) VALUES (101, '2016-06-15 02:46:01.169112', '2016-06-15 02:46:01.169112');
INSERT INTO counters (id, created_at, updated_at) VALUES (102, '2016-06-15 02:46:01.186337', '2016-06-15 02:46:01.186337');
INSERT INTO counters (id, created_at, updated_at) VALUES (103, '2016-06-15 02:46:01.211865', '2016-06-15 02:46:01.211865');
INSERT INTO counters (id, created_at, updated_at) VALUES (104, '2016-06-15 02:46:01.238099', '2016-06-15 02:46:01.238099');
INSERT INTO counters (id, created_at, updated_at) VALUES (105, '2016-06-15 02:46:01.265709', '2016-06-15 02:46:01.265709');
INSERT INTO counters (id, created_at, updated_at) VALUES (106, '2016-06-15 02:46:01.28898', '2016-06-15 02:46:01.28898');
INSERT INTO counters (id, created_at, updated_at) VALUES (107, '2016-06-15 02:46:01.313962', '2016-06-15 02:46:01.313962');
INSERT INTO counters (id, created_at, updated_at) VALUES (108, '2016-06-15 02:46:01.339107', '2016-06-15 02:46:01.339107');
INSERT INTO counters (id, created_at, updated_at) VALUES (109, '2016-06-15 02:46:01.363396', '2016-06-15 02:46:01.363396');
INSERT INTO counters (id, created_at, updated_at) VALUES (110, '2016-06-15 02:46:01.383679', '2016-06-15 02:46:01.383679');
INSERT INTO counters (id, created_at, updated_at) VALUES (111, '2016-06-15 02:46:01.401523', '2016-06-15 02:46:01.401523');
INSERT INTO counters (id, created_at, updated_at) VALUES (112, '2016-06-15 02:46:01.417075', '2016-06-15 02:46:01.417075');
INSERT INTO counters (id, created_at, updated_at) VALUES (113, '2016-06-15 02:46:01.436072', '2016-06-15 02:46:01.436072');
INSERT INTO counters (id, created_at, updated_at) VALUES (114, '2016-06-15 02:46:01.461609', '2016-06-15 02:46:01.461609');
INSERT INTO counters (id, created_at, updated_at) VALUES (115, '2016-06-15 02:46:01.483576', '2016-06-15 02:46:01.483576');
INSERT INTO counters (id, created_at, updated_at) VALUES (116, '2016-06-15 02:46:01.502294', '2016-06-15 02:46:01.502294');
INSERT INTO counters (id, created_at, updated_at) VALUES (117, '2016-06-15 02:46:01.527983', '2016-06-15 02:46:01.527983');
INSERT INTO counters (id, created_at, updated_at) VALUES (118, '2016-06-15 02:46:01.554117', '2016-06-15 02:46:01.554117');
INSERT INTO counters (id, created_at, updated_at) VALUES (119, '2016-06-15 02:46:01.580462', '2016-06-15 02:46:01.580462');
INSERT INTO counters (id, created_at, updated_at) VALUES (120, '2016-06-15 02:46:01.603364', '2016-06-15 02:46:01.603364');
INSERT INTO counters (id, created_at, updated_at) VALUES (121, '2016-06-15 02:46:01.624851', '2016-06-15 02:46:01.624851');
INSERT INTO counters (id, created_at, updated_at) VALUES (122, '2016-06-15 02:46:01.642835', '2016-06-15 02:46:01.642835');
INSERT INTO counters (id, created_at, updated_at) VALUES (123, '2016-06-15 02:46:01.665624', '2016-06-15 02:46:01.665624');
INSERT INTO counters (id, created_at, updated_at) VALUES (124, '2016-06-15 02:46:01.68284', '2016-06-15 02:46:01.68284');
INSERT INTO counters (id, created_at, updated_at) VALUES (125, '2016-06-15 02:46:01.698261', '2016-06-15 02:46:01.698261');
INSERT INTO counters (id, created_at, updated_at) VALUES (126, '2016-06-15 02:46:01.715811', '2016-06-15 02:46:01.715811');
INSERT INTO counters (id, created_at, updated_at) VALUES (127, '2016-06-15 02:46:01.732044', '2016-06-15 02:46:01.732044');
INSERT INTO counters (id, created_at, updated_at) VALUES (128, '2016-06-15 02:46:01.75081', '2016-06-15 02:46:01.75081');
INSERT INTO counters (id, created_at, updated_at) VALUES (129, '2016-06-15 02:46:01.775905', '2016-06-15 02:46:01.775905');
INSERT INTO counters (id, created_at, updated_at) VALUES (130, '2016-06-15 02:46:01.798073', '2016-06-15 02:46:01.798073');
INSERT INTO counters (id, created_at, updated_at) VALUES (131, '2016-06-15 02:46:01.815816', '2016-06-15 02:46:01.815816');
INSERT INTO counters (id, created_at, updated_at) VALUES (132, '2016-06-15 02:46:01.832685', '2016-06-15 02:46:01.832685');
INSERT INTO counters (id, created_at, updated_at) VALUES (133, '2016-06-15 02:46:01.849297', '2016-06-15 02:46:01.849297');
INSERT INTO counters (id, created_at, updated_at) VALUES (134, '2016-06-15 02:46:01.864633', '2016-06-15 02:46:01.864633');
INSERT INTO counters (id, created_at, updated_at) VALUES (135, '2016-06-15 02:46:01.882348', '2016-06-15 02:46:01.882348');
INSERT INTO counters (id, created_at, updated_at) VALUES (136, '2016-06-15 02:46:01.897916', '2016-06-15 02:46:01.897916');
INSERT INTO counters (id, created_at, updated_at) VALUES (137, '2016-06-15 02:46:01.916745', '2016-06-15 02:46:01.916745');
INSERT INTO counters (id, created_at, updated_at) VALUES (138, '2016-06-15 02:46:01.958417', '2016-06-15 02:46:01.958417');
INSERT INTO counters (id, created_at, updated_at) VALUES (139, '2016-06-15 02:46:01.985108', '2016-06-15 02:46:01.985108');
INSERT INTO counters (id, created_at, updated_at) VALUES (140, '2016-06-15 02:46:02.011103', '2016-06-15 02:46:02.011103');
INSERT INTO counters (id, created_at, updated_at) VALUES (141, '2016-06-15 02:46:02.034473', '2016-06-15 02:46:02.034473');
INSERT INTO counters (id, created_at, updated_at) VALUES (142, '2016-06-15 02:46:57.197117', '2016-06-15 02:46:57.197117');
INSERT INTO counters (id, created_at, updated_at) VALUES (143, '2016-06-17 02:37:06.742011', '2016-06-17 02:37:06.742011');
INSERT INTO counters (id, created_at, updated_at) VALUES (144, '2016-06-17 02:46:45.332521', '2016-06-17 02:46:45.332521');
INSERT INTO counters (id, created_at, updated_at) VALUES (145, '2016-06-17 02:46:52.343091', '2016-06-17 02:46:52.343091');
INSERT INTO counters (id, created_at, updated_at) VALUES (146, '2016-06-17 02:47:00.839399', '2016-06-17 02:47:00.839399');
INSERT INTO counters (id, created_at, updated_at) VALUES (147, '2016-06-17 02:47:59.94599', '2016-06-17 02:47:59.94599');
INSERT INTO counters (id, created_at, updated_at) VALUES (148, '2016-06-17 02:47:59.989713', '2016-06-17 02:47:59.989713');
INSERT INTO counters (id, created_at, updated_at) VALUES (149, '2016-06-17 02:48:00.022042', '2016-06-17 02:48:00.022042');
INSERT INTO counters (id, created_at, updated_at) VALUES (150, '2016-06-17 02:48:00.047733', '2016-06-17 02:48:00.047733');
INSERT INTO counters (id, created_at, updated_at) VALUES (151, '2016-06-17 02:48:00.07695', '2016-06-17 02:48:00.07695');
INSERT INTO counters (id, created_at, updated_at) VALUES (152, '2016-06-17 02:48:00.108475', '2016-06-17 02:48:00.108475');
INSERT INTO counters (id, created_at, updated_at) VALUES (153, '2016-06-17 02:48:00.130598', '2016-06-17 02:48:00.130598');
INSERT INTO counters (id, created_at, updated_at) VALUES (154, '2016-06-17 02:48:00.170859', '2016-06-17 02:48:00.170859');
INSERT INTO counters (id, created_at, updated_at) VALUES (155, '2016-06-17 02:48:00.200131', '2016-06-17 02:48:00.200131');
INSERT INTO counters (id, created_at, updated_at) VALUES (156, '2016-06-17 02:48:00.226525', '2016-06-17 02:48:00.226525');
INSERT INTO counters (id, created_at, updated_at) VALUES (157, '2016-06-17 02:48:00.250165', '2016-06-17 02:48:00.250165');
INSERT INTO counters (id, created_at, updated_at) VALUES (158, '2016-06-17 02:48:00.2761', '2016-06-17 02:48:00.2761');
INSERT INTO counters (id, created_at, updated_at) VALUES (159, '2016-06-17 02:48:00.310169', '2016-06-17 02:48:00.310169');
INSERT INTO counters (id, created_at, updated_at) VALUES (160, '2016-06-17 02:48:00.342597', '2016-06-17 02:48:00.342597');
INSERT INTO counters (id, created_at, updated_at) VALUES (161, '2016-06-17 02:48:00.381171', '2016-06-17 02:48:00.381171');
INSERT INTO counters (id, created_at, updated_at) VALUES (162, '2016-06-17 02:48:00.410278', '2016-06-17 02:48:00.410278');
INSERT INTO counters (id, created_at, updated_at) VALUES (163, '2016-06-17 02:48:00.443333', '2016-06-17 02:48:00.443333');
INSERT INTO counters (id, created_at, updated_at) VALUES (164, '2016-06-17 02:48:00.485079', '2016-06-17 02:48:00.485079');
INSERT INTO counters (id, created_at, updated_at) VALUES (165, '2016-06-17 02:48:00.512836', '2016-06-17 02:48:00.512836');
INSERT INTO counters (id, created_at, updated_at) VALUES (166, '2016-06-17 02:48:00.542077', '2016-06-17 02:48:00.542077');
INSERT INTO counters (id, created_at, updated_at) VALUES (167, '2016-06-17 02:48:00.575378', '2016-06-17 02:48:00.575378');
INSERT INTO counters (id, created_at, updated_at) VALUES (168, '2016-06-17 02:48:00.612384', '2016-06-17 02:48:00.612384');
INSERT INTO counters (id, created_at, updated_at) VALUES (169, '2016-06-17 02:48:00.656363', '2016-06-17 02:48:00.656363');
INSERT INTO counters (id, created_at, updated_at) VALUES (170, '2016-06-17 02:48:00.684479', '2016-06-17 02:48:00.684479');
INSERT INTO counters (id, created_at, updated_at) VALUES (171, '2016-06-17 02:48:00.718835', '2016-06-17 02:48:00.718835');
INSERT INTO counters (id, created_at, updated_at) VALUES (172, '2016-06-17 02:48:00.746689', '2016-06-17 02:48:00.746689');
INSERT INTO counters (id, created_at, updated_at) VALUES (173, '2016-06-17 02:48:00.771529', '2016-06-17 02:48:00.771529');
INSERT INTO counters (id, created_at, updated_at) VALUES (174, '2016-06-17 02:48:00.794096', '2016-06-17 02:48:00.794096');
INSERT INTO counters (id, created_at, updated_at) VALUES (175, '2016-06-17 02:48:00.821271', '2016-06-17 02:48:00.821271');
INSERT INTO counters (id, created_at, updated_at) VALUES (176, '2016-06-17 02:48:00.843793', '2016-06-17 02:48:00.843793');
INSERT INTO counters (id, created_at, updated_at) VALUES (177, '2016-06-17 02:48:00.870262', '2016-06-17 02:48:00.870262');
INSERT INTO counters (id, created_at, updated_at) VALUES (178, '2016-06-17 02:48:00.896112', '2016-06-17 02:48:00.896112');
INSERT INTO counters (id, created_at, updated_at) VALUES (179, '2016-06-17 02:48:00.92579', '2016-06-17 02:48:00.92579');
INSERT INTO counters (id, created_at, updated_at) VALUES (180, '2016-06-17 02:48:00.942296', '2016-06-17 02:48:00.942296');
INSERT INTO counters (id, created_at, updated_at) VALUES (181, '2016-06-17 02:48:00.963408', '2016-06-17 02:48:00.963408');
INSERT INTO counters (id, created_at, updated_at) VALUES (182, '2016-06-17 02:48:00.987974', '2016-06-17 02:48:00.987974');
INSERT INTO counters (id, created_at, updated_at) VALUES (183, '2016-06-17 02:48:01.012231', '2016-06-17 02:48:01.012231');
INSERT INTO counters (id, created_at, updated_at) VALUES (184, '2016-06-17 02:48:01.034529', '2016-06-17 02:48:01.034529');
INSERT INTO counters (id, created_at, updated_at) VALUES (185, '2016-06-17 02:48:01.066383', '2016-06-17 02:48:01.066383');
INSERT INTO counters (id, created_at, updated_at) VALUES (186, '2016-06-17 02:48:01.087084', '2016-06-17 02:48:01.087084');
INSERT INTO counters (id, created_at, updated_at) VALUES (187, '2016-06-17 02:48:01.111542', '2016-06-17 02:48:01.111542');
INSERT INTO counters (id, created_at, updated_at) VALUES (188, '2016-06-17 02:48:01.1342', '2016-06-17 02:48:01.1342');
INSERT INTO counters (id, created_at, updated_at) VALUES (189, '2016-06-17 02:48:01.160753', '2016-06-17 02:48:01.160753');
INSERT INTO counters (id, created_at, updated_at) VALUES (190, '2016-06-17 02:48:01.185225', '2016-06-17 02:48:01.185225');
INSERT INTO counters (id, created_at, updated_at) VALUES (191, '2016-06-17 02:48:01.209656', '2016-06-17 02:48:01.209656');
INSERT INTO counters (id, created_at, updated_at) VALUES (192, '2016-06-17 02:48:01.23369', '2016-06-17 02:48:01.23369');
INSERT INTO counters (id, created_at, updated_at) VALUES (193, '2016-06-17 02:48:01.265723', '2016-06-17 02:48:01.265723');
INSERT INTO counters (id, created_at, updated_at) VALUES (194, '2016-06-17 02:48:01.285484', '2016-06-17 02:48:01.285484');
INSERT INTO counters (id, created_at, updated_at) VALUES (195, '2016-06-17 02:48:11.632647', '2016-06-17 02:48:11.632647');
INSERT INTO counters (id, created_at, updated_at) VALUES (196, '2016-06-17 02:48:11.672239', '2016-06-17 02:48:11.672239');
INSERT INTO counters (id, created_at, updated_at) VALUES (197, '2016-06-17 02:48:11.699054', '2016-06-17 02:48:11.699054');
INSERT INTO counters (id, created_at, updated_at) VALUES (198, '2016-06-17 02:48:11.71875', '2016-06-17 02:48:11.71875');
INSERT INTO counters (id, created_at, updated_at) VALUES (199, '2016-06-17 02:48:11.747216', '2016-06-17 02:48:11.747216');
INSERT INTO counters (id, created_at, updated_at) VALUES (200, '2016-06-17 02:48:11.770969', '2016-06-17 02:48:11.770969');
INSERT INTO counters (id, created_at, updated_at) VALUES (201, '2016-06-17 02:48:11.799343', '2016-06-17 02:48:11.799343');
INSERT INTO counters (id, created_at, updated_at) VALUES (202, '2016-06-17 02:48:11.821068', '2016-06-17 02:48:11.821068');
INSERT INTO counters (id, created_at, updated_at) VALUES (203, '2016-06-17 02:48:11.848461', '2016-06-17 02:48:11.848461');
INSERT INTO counters (id, created_at, updated_at) VALUES (204, '2016-06-17 02:48:11.868252', '2016-06-17 02:48:11.868252');
INSERT INTO counters (id, created_at, updated_at) VALUES (205, '2016-06-17 02:48:11.894661', '2016-06-17 02:48:11.894661');
INSERT INTO counters (id, created_at, updated_at) VALUES (206, '2016-06-17 02:48:11.920922', '2016-06-17 02:48:11.920922');
INSERT INTO counters (id, created_at, updated_at) VALUES (207, '2016-06-17 02:48:11.942074', '2016-06-17 02:48:11.942074');
INSERT INTO counters (id, created_at, updated_at) VALUES (208, '2016-06-17 02:48:11.967543', '2016-06-17 02:48:11.967543');
INSERT INTO counters (id, created_at, updated_at) VALUES (209, '2016-06-17 02:48:11.99343', '2016-06-17 02:48:11.99343');
INSERT INTO counters (id, created_at, updated_at) VALUES (210, '2016-06-17 02:48:12.027894', '2016-06-17 02:48:12.027894');
INSERT INTO counters (id, created_at, updated_at) VALUES (211, '2016-06-17 02:48:12.058258', '2016-06-17 02:48:12.058258');
INSERT INTO counters (id, created_at, updated_at) VALUES (212, '2016-06-17 02:48:12.085344', '2016-06-17 02:48:12.085344');
INSERT INTO counters (id, created_at, updated_at) VALUES (213, '2016-06-17 02:48:12.108202', '2016-06-17 02:48:12.108202');
INSERT INTO counters (id, created_at, updated_at) VALUES (214, '2016-06-17 02:48:12.137538', '2016-06-17 02:48:12.137538');
INSERT INTO counters (id, created_at, updated_at) VALUES (215, '2016-06-17 02:48:12.159685', '2016-06-17 02:48:12.159685');
INSERT INTO counters (id, created_at, updated_at) VALUES (216, '2016-06-17 02:48:12.183571', '2016-06-17 02:48:12.183571');
INSERT INTO counters (id, created_at, updated_at) VALUES (217, '2016-06-17 02:48:12.224336', '2016-06-17 02:48:12.224336');
INSERT INTO counters (id, created_at, updated_at) VALUES (218, '2016-06-17 02:48:12.250045', '2016-06-17 02:48:12.250045');
INSERT INTO counters (id, created_at, updated_at) VALUES (219, '2016-06-17 02:48:12.275743', '2016-06-17 02:48:12.275743');
INSERT INTO counters (id, created_at, updated_at) VALUES (220, '2016-06-17 02:48:12.302884', '2016-06-17 02:48:12.302884');
INSERT INTO counters (id, created_at, updated_at) VALUES (221, '2016-06-17 02:48:12.325201', '2016-06-17 02:48:12.325201');
INSERT INTO counters (id, created_at, updated_at) VALUES (222, '2016-06-17 02:48:12.349015', '2016-06-17 02:48:12.349015');
INSERT INTO counters (id, created_at, updated_at) VALUES (223, '2016-06-17 02:48:12.375098', '2016-06-17 02:48:12.375098');
INSERT INTO counters (id, created_at, updated_at) VALUES (224, '2016-06-17 02:48:12.40112', '2016-06-17 02:48:12.40112');
INSERT INTO counters (id, created_at, updated_at) VALUES (225, '2016-06-17 02:48:12.423522', '2016-06-17 02:48:12.423522');
INSERT INTO counters (id, created_at, updated_at) VALUES (226, '2016-06-17 02:48:12.449472', '2016-06-17 02:48:12.449472');
INSERT INTO counters (id, created_at, updated_at) VALUES (227, '2016-06-17 02:48:12.472844', '2016-06-17 02:48:12.472844');
INSERT INTO counters (id, created_at, updated_at) VALUES (228, '2016-06-17 02:48:12.499643', '2016-06-17 02:48:12.499643');
INSERT INTO counters (id, created_at, updated_at) VALUES (229, '2016-06-17 02:48:12.524677', '2016-06-17 02:48:12.524677');
INSERT INTO counters (id, created_at, updated_at) VALUES (230, '2016-06-17 02:48:12.549853', '2016-06-17 02:48:12.549853');
INSERT INTO counters (id, created_at, updated_at) VALUES (231, '2016-06-17 02:48:12.573351', '2016-06-17 02:48:12.573351');
INSERT INTO counters (id, created_at, updated_at) VALUES (232, '2016-06-17 02:48:12.600397', '2016-06-17 02:48:12.600397');
INSERT INTO counters (id, created_at, updated_at) VALUES (233, '2016-06-17 02:48:12.625517', '2016-06-17 02:48:12.625517');
INSERT INTO counters (id, created_at, updated_at) VALUES (234, '2016-06-17 02:48:12.649215', '2016-06-17 02:48:12.649215');
INSERT INTO counters (id, created_at, updated_at) VALUES (235, '2016-06-17 02:48:12.673574', '2016-06-17 02:48:12.673574');
INSERT INTO counters (id, created_at, updated_at) VALUES (236, '2016-06-17 02:48:12.701624', '2016-06-17 02:48:12.701624');
INSERT INTO counters (id, created_at, updated_at) VALUES (237, '2016-06-17 02:48:12.720372', '2016-06-17 02:48:12.720372');
INSERT INTO counters (id, created_at, updated_at) VALUES (238, '2016-06-17 02:48:12.74939', '2016-06-17 02:48:12.74939');
INSERT INTO counters (id, created_at, updated_at) VALUES (239, '2016-06-17 02:48:12.772901', '2016-06-17 02:48:12.772901');
INSERT INTO counters (id, created_at, updated_at) VALUES (240, '2016-06-17 02:48:12.798377', '2016-06-17 02:48:12.798377');
INSERT INTO counters (id, created_at, updated_at) VALUES (241, '2016-06-17 02:48:12.822998', '2016-06-17 02:48:12.822998');
INSERT INTO counters (id, created_at, updated_at) VALUES (242, '2016-06-17 02:48:12.845315', '2016-06-17 02:48:12.845315');
INSERT INTO counters (id, created_at, updated_at) VALUES (243, '2016-06-17 02:48:43.55812', '2016-06-17 02:48:43.55812');
INSERT INTO counters (id, created_at, updated_at) VALUES (244, '2016-06-17 02:49:04.019403', '2016-06-17 02:49:04.019403');
INSERT INTO counters (id, created_at, updated_at) VALUES (245, '2016-06-17 02:49:11.156832', '2016-06-17 02:49:11.156832');


--
-- Name: counters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('counters_id_seq', 245, true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (3, 'C', '12345678901231', '72345678901234', '122456789012', '32345678901234', '123222456', 'Rua a', '120', 'z', NULL, 'Y', 'CE', '988998899', NULL, NULL, '988999988', NULL, 'teste@gmail.com', NULL, 'Fulano', NULL, NULL, 11.1099999999999994, NULL, '2016-05-16 05:03:34.597143', '2016-05-16 05:03:34.597143', true, 2, '3', NULL, NULL);
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (1, 'Valdemir', '12345678901233', '92345678901234', '123456789012', '12345678901234', '123451231236', 'Rua c', '100', 'z', '', 'Y', 'CE', '988998899', '', '', '988999988', '', 'teste@gmail.com', '', 'Fulano', '', '', 10, '2016-05-30 03:00:00', '2016-05-16 05:03:34.546302', '2016-05-31 04:10:08.926977', true, 1, '1', '', '');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (5, 'E', '12345678901235', '52345678901234', '125456789012', '15345678901234', '1234221231231356', 'Rua z', '1', 'z', '', 'Y', 'CE', '988998899', '', '', '988999988', '', 'teste@gmail.com', '', 'Fulano', '', '', 5.34999999999999964, '2016-06-14 03:00:00', '2016-05-16 05:03:34.642225', '2016-06-15 01:02:18.716953', true, 3, '5', '', '12315654165');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (4, 'D', '12345678901230', '62345678901234', '124456789012', '42345678901234', '1232456', 'Rua y', '12', 'z', '', 'Y', 'CE', '988998899', '', '', '988999988', '', 'teste@gmail.com', '', 'Fulano', '', '', 30, '1993-01-01 02:00:00', '2016-05-16 05:03:34.626481', '2016-06-15 01:45:47.683314', true, 1, '4', '', '44444444444');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (2, 'Berg', '12345678901232', '82345678901234', '121456789012', '21345678901234', '123412312356', 'Rua b', '115', 'z', '', 'Y', 'CE', '988998899', '', '', '988999988', '', 'teste@gmail.com', 'bergsonsud@hotmail.com', 'Fulano', '', '', 15.25, '1991-07-30 03:00:00', '2016-05-16 05:03:34.567315', '2016-06-15 02:03:20.144773', true, 1, '2', '', '12345678901');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (7, 'FCO JOSÉ TELES COSTA', '90292', '23741002000137', '001231231232', '064314766', '081743732732', 'RUA 17 ', '51', 'CJ NOVO ORIENTE', '', 'MARACANAÚ', 'CE', '34679952', '34677074', '34671640', '988930581', '988276622', 'franzeteles@gmail.com', 'franzetelescontabilidade@gmail.com', 'FRANZÉ', 'CONCEIÇÃO', '', NULL, '1989-09-15 03:00:00', '2016-05-26 18:16:06.381968', '2016-05-31 04:14:57.274566', true, 9, '00', '61921180', '23462647334');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (26, 'MARIA IVONEIDE LIMA FERNANDES ME ', '', '17039749000145', '', '066225795', '072294169248', 'RUA 110 ', '181', 'ACARACUZINHO', 'A', 'MARACANAU', 'CE', '34678722', '', '', '986538248', '', 'NÃO TEM', '', 'IVONEIDE', '', '', 20, '2012-10-04 03:00:00', '2016-06-03 12:39:05.43241', '2016-06-03 12:54:29.172527', true, 9, '17', '61920360', '61416444300');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (14, 'LIVIA FRANÇA FARIAS ', '00000000000000', '00000000000000', '512260439863', '00000000000000', '000000000000000000000000000000', 'RUA D', '0', 'ALTO ALEGRE ', '', 'EUSEBIO ', 'CE', '32971209', '30442424', '', '987356916', '', 'NÃO TEM', '', 'RODOLFO', '', '', 20.3399999999999999, '2014-05-07 03:00:00', '2016-05-30 12:27:40.69789', '2016-05-30 12:27:40.69789', true, 1, '03', '61760000', '00036806307');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (13, 'ANTONIO ALVES DE LIMA CEREAIS ', '741607', '02898646000163', '000000000000', '062749560', '502874687697', 'RUA 06 BOX 07', '0', 'NOVO ORIENTE ', '', 'MARACANAU ', 'CE', '34671106', '34679170', '', '000000000', '', 'NÃO TEM', '', 'LIMA', '', '', 30, '1998-12-01 02:00:00', '2016-05-30 12:16:43.831763', '2016-05-31 21:39:22.786537', true, 9, '02', '61921070', '16139739349');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (15, 'SHEILA MARIA SARAIVA MENDES ME', '', '09537134000110', '', '063618427', '168951606552', 'RUA SENADOR ALENCAR', '631', 'CENTRO', 'LOJA 645', 'FORTALEZA', 'CE', '32123832', '', '', '987888931', '996133078', 'mileniobags@oi.com.br', '', 'EDILSON', 'SHEILA', 'mesmo do cliente 11', 50, '2008-05-06 03:00:00', '2016-06-03 10:29:17.261109', '2016-06-03 10:29:17.261109', true, 2, '04', '60030050', '99051400691');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (16, 'PANIFICADORA FLORENCIO LTDA', '', '08769295000177', '', '062093932', '614961413004', 'RUA FLORENCIO ALENCAR ', '63', 'JD IRACEMA', '', 'FORTALEZA', 'CE', '32820184', '', '', '991786322', '985864561', 'AILA991786322@GMAIL.COM', '', 'AILA', '', '', 30, '2007-03-27 03:00:00', '2016-06-03 10:54:39.3169', '2016-06-03 10:54:39.3169', true, 9, '05', '60330055', '79460860320');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (27, 'F M MOTA CONSTRUCOES E SERVICOS ME', '4322109', '21017922000181', '', '063957019', '397390138889', 'RUA VALDO UCHOA', '00024', 'CROATA', '', 'SAO GONCALO DO AMARANTE', 'CE', '000000000', '', '', '997260415', '', 'francielmamm@gmail.com', '', 'FRANCIELMA', '', '', 101.269999999999996, '2014-11-20 02:00:00', '2016-06-03 12:47:53.726799', '2016-06-03 12:54:47.945549', true, 9, '18', '62670000', '01418057304');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (25, 'R N DE BRITO CONSTRUÇÕES', '262901', '04741298000141', '', ' 063751151', '', 'RUA 106 A ', '112', 'ACARACUZINHO', '', 'MARACANAU', 'CE', '34679015', '', '', '000000000', '', 'rndebritoconstrucoes@hotmail.com', 'financeiro.rndebrito@gmail.com', 'ANDERSON', 'JONATAN', '', 200, '2001-10-16 02:00:00', '2016-06-03 12:31:02.306726', '2016-06-03 12:55:07.008024', true, 4, '16', '61920240', '18818781391');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (19, 'LUCIANO OSÓRIO VIEIRA ME ', '102787', '21582335000135', '', '064310043', '058009577954', 'AVENIDA LATERAL NORTE ', '769', 'NOVO ORIENTE', '', 'MARACANAU', 'CE', '34679384', '', '', '000000000', '', 'lucianobambu2011@hotmail.com', '', 'LUCIANO', '', '', 30, '2014-12-17 02:00:00', '2016-06-03 11:28:19.604013', '2016-06-03 11:28:19.604013', true, 9, '10', '61921010', '73642517315');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (17, 'TARCOVEL COMERCIO DE SERVIÇOS DE CRONOTACOGRAFOS LTDA', '520411', '11596544000184', '', '064121860', '524454413882', 'RUA BENIGNO PEREIRA', '09', 'ALTO ALEGRE', '', 'MARACANAU', 'CE', '34678631', '', '', '987881355', '', 'tarcovelmaracanau@yahoo.com.br', '', 'FRANCISCO', '', '', 50, '2010-02-08 02:00:00', '2016-06-03 11:03:38.482101', '2016-06-03 11:28:41.514459', true, 9, '06', '61921345', '06058477387');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (23, 'TECPLAST MECANICA E INJEÇÃO DE PLASTICOS LTDA ME', '87792', '63392054000160', '', '068793456', '792752104440', 'RUA DIREITA ', '829', 'PL CIDADE NOVA', '', 'MARACANAU ', 'CE', '34630543', '', '', '991198013', '', 'romulolimaverde@gmail.com', '', 'ROMULO', '', '', 50, '1991-04-19 03:00:00', '2016-06-03 12:03:16.109076', '2016-06-03 12:55:58.886162', true, 9, '14', '61930160', '50566199815');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (18, 'FRANCISCO PEREIRA CAVALCANTE MERCADINHO ME ', '724407', '04955647000109', '', '066634601', '000339932317', 'AV LATERAL SUL', '1120', 'ACARACUZINHO', '', 'MARACANAU ', 'CE', '34678809', '', '', '996227630', '', 'NÃO TEM', '', 'FRANCISCO PEREIRA', '', '', 20, '2002-04-01 03:00:00', '2016-06-03 11:10:12.02142', '2016-06-03 11:29:08.135985', true, 9, '07', '61920710', '16696905391');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (20, 'EDILSON MENDES PEREIRA ME', '724907', '02829875000126', '', '062732854', '076754670582', 'AV SETE ', '377', 'JEREISSATE', '', 'MARACANAU ', 'CE', '33820375', '', '', '996133078', '987888931', 'milenioartefatos@hotmail.com', '', 'EDILSON', '', 'mesmo do cliente 4', 50, '1998-11-01 02:00:00', '2016-06-03 11:36:43.044773', '2016-06-03 11:38:07.270043', true, 2, '11', '61900540', '47852992315');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (21, 'REGIVALDO DE SOUSA LIMA ME', '1159011', '10437112000168', '', '063845423', '', 'RUA PAULO AFONSO', '1620', 'ALTO ALEGRE', '', 'MARACANAU', 'CE', '34678018', '', '', '986125749', '', 'rv.construcoes@hotmail.com', '', 'REGIVALDO', '', '', 50, '2008-07-17 03:00:00', '2016-06-03 11:46:37.714079', '2016-06-03 11:46:37.714079', true, 3, '12', '61921510', '02440250376');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (22, 'LATICINIO CASA GRANDE EIRELI ME', '', '16585977000158', '', '066135435', '', 'RUA MARIA GOMES DE SA ', '00840', 'PLANALTO AYRTON SENA', '', 'FORTALEZA', 'CE', '000000000', '', '', '996044356', '996044851', 'sibellyaraujo@hotmail.com', '', 'SIBELLY', 'SILENE', 'CEASA-BOX LATICINIOS JAGUARIBE', 372.879999999999995, '2012-08-28 03:00:00', '2016-06-03 11:57:29.784973', '2016-06-03 11:57:29.784973', true, 9, '13', '60766235', '02724481330');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (28, 'JAIME FEITOSA MOTA ME ', '724707', '03256572000124', '', '062834681', '995347250425', 'RUA 106', '161', 'ACARACUZINHO', 'A', 'MARACANAU', 'CE', '34677199', '', '', '999850598', '', 'NÃO TEM ', '', 'JAIME', '', '', 20, '1999-07-01 03:00:00', '2016-06-03 13:00:53.73279', '2016-06-03 13:02:01.414207', true, 9, '19', '61920230', '35928557353');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (29, 'MARIA LUCIMAR DA CONCEICAO VIEIRA ME', '', '74031691000127', '', '069108544', '890747387495', 'AV FLORENCIO DE ALENCAR', '29', 'BARRA DO CEARA ', 'A', 'FORTALEZA', 'CE', '32286519', '', '', '988620163', '', 'NÃO TEM ', '', 'LUCIMAR', '', '', 30, '1994-01-15 02:00:00', '2016-06-03 13:06:35.416261', '2016-06-03 13:06:52.98856', true, 9, '21', '60330070', '38392968387');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (30, ' COMERCIAL HORTIFRUTIGRANJEIROS IRMAOS QUEIROZ LTDA', '762274', '41437583000108', '', '069253749', '', 'DR. MENDEL STEINBRUCH', '00', 'DISTRITO INDUSTRIAL', ' CEASA GP 02 BOX 29', 'MARACANAU', 'CE', '32991767', '', '', '000000000', '', 'abacateirmaosqueiroz@gmail.com', '', 'BARROS', '', '', 379.75, '1994-03-09 03:00:00', '2016-06-03 13:16:05.686159', '2016-06-03 13:16:05.686159', true, 5, '23', '61939210', '84586990368');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (31, 'CARLOS EDUARDO DE SOUSA GOMES ME ', '', '11167322000146', '', '063851407', '527756582186', 'RUA NOSSA SENHORA APARECIDA', '430', 'JARDIM BANDEIRANTES', 'A', 'MARACANAU', 'CE', '000000000', '', '', '987039823', '', 'cadugomes02@hotmail.com', '', 'CARLOS EDUARDO', '', '', 30, '2009-09-16 03:00:00', '2016-06-03 13:24:08.4477', '2016-06-03 13:24:19.171241', true, 9, '24', '61934200', '65912071391');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (32, 'LOURIVAL FELIPE GOMES ME ', '724607', '00602899000112', '', '069540101', '580901158669', 'RUA 37', '414', 'JEREISSATE ', 'A', 'MARACANAU', 'CE', '33822398', '', '', '000000000', '', 'NÃO TEM ', '', 'LOURIVAL', 'EDUARDO', '', 30, '1995-05-01 03:00:00', '2016-06-03 13:28:12.78823', '2016-06-03 13:28:12.78823', true, 9, '25', '61900000', '15616037320');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (33, 'R N DE BRITO CONSTRUÇÕES ME FILIAL', '105382', '04741298000222', '', '', '', 'RUA 106', '164', 'ACARACUZINHO', '', 'MARACANAU', 'CE', '34679015', '', '', '000000000', '', 'rndebritoconstrucoes@hotmail.com', 'financeiro.rndebrito@gmail.com', 'ANDERSON', 'JONATAN', '', 82.4899999999999949, '2015-08-19 03:00:00', '2016-06-03 13:35:30.342432', '2016-06-03 13:35:30.342432', true, 4, '26', '61920230', '18818781391');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (24, 'BONFIM & SANTOS COMERCIAL DE HORTIFRUTIGRANJEIROS LTDA', '', '07029860000288', '', '064359921', '', 'RUA NS. DA CONCEIÇÃO', '00130', 'CIDADE NOVA', '', 'MARACANAU ', 'CE', '32931456', '', '', '000000000', '', 'casadafruta@ibest.com.br', 'casadafrutanfe@hotmail.com', 'MILTON', '', '', NULL, '2015-02-02 02:00:00', '2016-06-03 12:12:45.129475', '2016-06-03 15:11:00.83969', true, 8, '15', '61930090', '00000000000');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (34, 'LIVIA FRANÇA DE FARIAS ME', '506910', '12166726000188', '', '064039110', '814332575573', 'AV DR MENDEL STEIMBRUCH ', '3615', 'PAJUSSARA', 'D', 'MARACANAU', 'CE', '32971209', '', '', '987356916', '987356916', 'NÃO TEM ', '', 'DR RODOLFO', '', '', 40, '2010-07-01 03:00:00', '2016-06-07 16:20:09.142328', '2016-06-07 16:20:09.142328', true, 1, '27', '61939210', '00036806307');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (35, 'WILSON MONTEIRO DA SILVA CAVALCANTE ME - ALFA VERDE', '', '10548613000111', '', '063723301', '', 'RUA 16', '441', 'CJ NOVO MARACANAU', '', 'MARACANAU', 'CE', '985012313', '989692313', '986596626', '999376119', '988499231', 'alfaverde12@gmail.com', '', 'WILSON', '', '', 50, '2008-12-11 02:00:00', '2016-06-07 16:25:22.517543', '2016-06-07 16:25:22.517543', true, 9, '28', '61905590', '26635542353');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (36, 'RUTE CAMPOS FERNANDES', '', '13268540000100', '', ' 064255840', '012659617526', 'AV CONTORNO NORTE', '00815', 'CONJUNTO INDUSTRIAL', '', 'MARACANAU', 'CE', '34632845', '', '', '000000000', '', 'NÃO TEM ', '', 'RUTE', '', '', 88.6099999999999994, '2011-02-24 03:00:00', '2016-06-07 16:33:04.828104', '2016-06-07 16:33:04.828104', true, 9, '29', '61925315', '70085293334');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (37, 'UILSON SARAIVA E ARAUJO ME ', '741807', '63457709000130', '', '069392897', '050537010313', 'AV CENTRAL ', '806', 'ACARACUZINHO', '', 'MARACANAU', 'CE', '34679200', '33451001', '34677064', '000000000', '', 'oticafenix@hotmail.com', '', 'UILSON', '', '', 34.8100000000000023, '1991-04-23 03:00:00', '2016-06-07 16:39:00.456861', '2016-06-07 16:39:00.456861', true, 7, '30', '61920690', '26055740320');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (38, 'FRANCISCO TIAGO CAMURÇA DA SILVA ME ', '', '13660976000132', '', '065641078', '221290639645', 'RUA FCO GLICÉRIO', '487', 'MARAPONGA', '', 'FORTALEZA', 'CE', '32985097', '', '', '000000000', '', 'NÃO TEM ', '', 'FCO TIAGO', '', '', 50, '2011-01-05 02:00:00', '2016-06-07 16:44:02.047232', '2016-06-07 16:45:51.1862', true, 9, '31', '60711055', '83372202368');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (39, 'M A MARTINS DE DEUS ME', '', '41646019000197', '', '069080810', '876577919291', 'AV GAL. OSORIO DE PAIVA', '01290', 'PARANGABA', '', 'FORTALEZA', 'CE', '34843826', '', '', '000000000', '', 'rica.som@hotmail.com', '', 'RICARDO', '', '', 40, '1993-03-31 03:00:00', '2016-06-07 16:52:29.794392', '2016-06-07 16:52:29.794392', true, 9, '32', '60720000', '16897510378');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (40, 'BONFIM & SANTOS EXPORTAÇÃO - FILIAL', '', ' 1444968600298', '', '  064788814', ' ', 'ROD DR. MENDEL STEINBRUCH', '0000', 'PAJUCARA', '', 'MARACANAU', 'CE', '000000000', '', '', '000000000', '', 'miltonsantosjunior@ig.com.br', '', 'MILTON', '', '', NULL, '2015-12-17 02:00:00', '2016-06-07 17:02:19.227988', '2016-06-07 17:02:19.227988', true, 8, '33', '61932005', '43732828387');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (41, 'EDMIZA BRAGA SILVA ME', '', '41451410000136', '', '  064811344', '', 'RUA 103', '095', 'ACARACUZINHO', '', 'MARACANAU', 'CE', '000000000', '', '', '000000000', '', 'NÃO TEM ', '', 'EDMIZA', '', '', 20, '2016-01-12 02:00:00', '2016-06-07 17:09:04.15966', '2016-06-07 17:09:04.15966', true, 9, '34', '61920080', '32581521368');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (42, 'UILSON SARAIVA E ARAUJO ME (FILIAL)', '', '63457709000211', '', '069459908', '458023265732', 'RUA JOÃO CONRADO', '09', 'PAJUSSARA', 'LOJA 02', 'MARACANAU', 'CE', '34679200', '32971178', '', '000000000', '', 'NÃO TEM ', '', 'UILSON', '', '', 50, '1995-02-01 02:00:00', '2016-06-07 17:13:56.381245', '2016-06-07 17:13:56.381245', true, 7, '35', '61900000', '26055740320');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (43, 'RAIMUNDO NONATO GOMES SOBRINHO ME ', '525111', '13738351000146', '', '065633318', '965472175084', 'RUA 17', '28', 'NOVO ORIENTE ', 'A', 'MARACANAU', 'CE', '34678885', '', '', '000000000', '', 'NÃO TEM ', '', 'RAIMUNDO', '', '', 0, '2011-02-25 03:00:00', '2016-06-07 17:20:50.175161', '2016-06-07 17:20:50.175161', true, 9, '36', '61921180', '26055740320');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (44, 'R ALVES NUNES ME ', '725407', '06847849000181', '', '066942373', '828424317262', 'AV CENTRAL', '359', 'ACARACUZINHO', 'A', 'MARACANAU', 'CE', '34677308', '', '', '988579711', '', 'NÃO TEM ', '', 'CARLOS', '', '', 0, '2004-07-22 03:00:00', '2016-06-07 17:25:57.883809', '2016-06-07 17:25:57.883809', true, 9, '39', '61920700', '37017047320');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (45, 'P & A COM. RED. PRODS. SERVIÇOS DE INFORMATICA LTDA', '482210', '41405580000184', '', '066875943', '', 'RUA 17', '51', 'NOVO ORIENTE ', 'SALA 02 ALTOS', 'MARACANAU', 'CE', '32653069', '', '', '988072011', '991110304', 'pauloandreff@hotmail.com', '', 'PAULO ANDRE', '', '', 80, '2016-06-07 03:00:00', '2016-06-07 17:35:28.571556', '2016-06-07 17:35:28.571556', true, 9, '43 ', '61921180', '41394631391');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (46, 'INJEKIT IND. COM E SERV LTDA ME', '247901', '04166007000139', '', '063115450', '', 'RUA 17', '51', 'NOVO ORIENTE ', 'A', 'MARACANAU', 'CE', '32627068', '', '', '987477068', '', 'NÃO TEM ', '', 'FERNANDO', '', '', 76.8400000000000034, '2000-12-01 02:00:00', '2016-06-07 17:40:15.14023', '2016-06-07 17:40:15.14023', true, 9, '46', '61921180', '11834529372');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (47, 'JOSE MILTON PEREIRA DOS SANTOS', '04545630359', '04171910000198', '', ' 066240000', '', 'ALAMEDA DE AMARALINA', '63', 'ITAPERI', '', 'FORTALEZA', 'CE', '32256175', '32323266', '', '999876198', '', 'servmilton@ig.com.br', '', 'MILTON', 'LUCIMAR', '', 37.9799999999999969, '2000-11-30 02:00:00', '2016-06-07 17:46:03.568516', '2016-06-07 17:46:03.568516', true, 9, '47', '60740471', '04545630359');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (48, 'CAMELO & FERREIRA LANCHONETE LTDA', '1308513', '09497981000107', '', '063623463', '614961592891', 'RUA 108 A', '15', 'ACARACUZINHO', '', 'MARACANAU', 'CE', '34679564', '', '', '986137195', '', 'NÃO TEM ', '', 'ANTONIO', '', '', 60, '2008-04-09 03:00:00', '2016-06-07 17:50:24.339784', '2016-06-07 17:50:24.339784', true, 9, '54', '61920270', '00650454758');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (49, 'BONFIM E SANTOS COML DE HORTIFRUTIGRANJEIROS LTDA', '13008513', '07029860000105', '', '066972868', '', 'AV MENDEL STEIMBRUH ', '000', 'PAJUSSARA', 'GP 04 BOX 56 E 56 C', 'MARACANAU', 'CE', '32931456', '', '', '999888216', '999441941', 'casadafruta@ibest.com.br', '', 'MILTON', 'CESAR', '', 253.169999999999987, '2004-10-01 03:00:00', '2016-06-07 17:55:34.669744', '2016-06-07 17:56:45.683146', true, 8, '55', '61939210', '43732828387');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (50, 'A KELIANE ALMEIDA BORGES ME ', '106547', '13073841000170', '', '064229874', '568499664702', 'RUA CONEGO DE CASTRO', '9826', 'ALTO ALEGRE I', '', 'MARACANAU', 'CE', '30657121', '', '', '000000000', '', 'NÃO TEM ', '', 'KELIANE', '', '', 50, '2011-01-06 02:00:00', '2016-06-07 18:00:49.605426', '2016-06-07 18:00:49.605426', true, 9, '56', '61921525', '02384789392');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (51, 'WILSON SARAIVA DE ARAUJO JUNIOR ', '100195', '15089074000113', '', '066024137', '392398214687', 'RUA 40', '106', 'JEREISSATE', '', 'MARACANAU', 'CE', '000000000', '', '', '988021989', '', 'wilsonsajr@gmail.com', '', 'WILSON JUNIOR', '', '', 30, '2012-02-02 02:00:00', '2016-06-07 18:05:10.054802', '2016-06-07 18:05:32.866284', true, 9, '60', '61901000', '04195796300');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (52, 'FRANCISCO DAS CHAGAS CAMELO NASCIMENTO ME', '741707', '05004595000177', '', '066643899', '605861784186', 'AV CENTRAL ', '866', 'ACARACUZINHO', 'B', 'MARACANAU', 'CE', '34678825', '', '', '000000000', '', 'NÃO TEM ', '', 'CHAGAS', '', '', 40, '2002-05-01 03:00:00', '2016-06-07 18:11:19.802483', '2016-06-07 18:11:19.802483', true, 9, '62', '61920690', '91955416753');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (53, 'JUCELINO COELHO COSTA ME ', '725107', '02223137000130', '', '069956014', '612465328868', 'RUA MARINHEIRO ', '721', 'PL CIDADE NOVA', '', 'MARACANAU', 'CE', '34631199', '32903705', '', '986442146', '', 'artmetal.jucelino@gmail.com', '', 'JUCELINO', '', '', 45.2000000000000028, '1997-11-01 02:00:00', '2016-06-07 18:15:49.580396', '2016-06-07 18:15:49.580396', true, 9, '64', '61930300', '13681532320');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (54, 'ROBERTA MAXIMO FREIRE ME ', '102789', '21582318000106', '', '  064325393', '', 'ROD DR. MENDEL STEINBRUCH', '00S/N', 'DISTRITO INDUSTRIAL', '', 'MARACANAU', 'CE', '000000000', '', '', '000000000', '', 'roberta.maximo@hotmail.com', '', 'ROBERTA', '', '', 50.6400000000000006, '2015-01-13 02:00:00', '2016-06-07 18:21:33.584371', '2016-06-07 18:21:33.584371', true, 9, '65', '61939210', '72324104334');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (56, 'LATICINIOS CASA GRANDE - FILIAL', '', '16585977000239', '', '064636852', '', ' FAZENDA CASA GRANDE', '00', 'ZONA RURAL', '', 'JAGUARIBE', 'CE', '000000000', '', '', '996044356', '', 'sibellyaraujo@hotmail.com', '', 'SIBELLY', '', '', 0, '2015-08-18 03:00:00', '2016-06-07 18:32:49.820778', '2016-06-07 18:33:29.794971', true, 9, '67', '63475000', '02724481330');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (57, 'FRANCISCO PAULO MARTINS DE QUEIROZ ME ', '', '13179653000121', '', '065539680', '071215143251', 'ROD MENDEL STEIMBRUCH', '00', 'PAJUCARA', '', 'MARACANAU', 'CE', '32991767', '', '', '000000000', '', 'NÃO TEM ', '', 'FRANCISCO PAULO', '', '', 30, '2011-01-26 02:00:00', '2016-06-07 18:37:58.666394', '2016-06-07 18:37:58.666394', true, 9, '68', '61939000', '73406198368');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (58, 'RV CONSTRUÇÕES E SERVIÇOS - EIRELI ME ', '1270713', '17833614000157', '', '065068785', '', 'RUA PAULO AFONSO', '1620', 'ALTO ALEGRE I', '', 'MARACANAU', 'CE', '34678018', '', '', '000000000', '', 'rv.construcoes@hotmail.com', '', 'REGIVALDO', '', '', 152.280000000000001, '2013-03-14 03:00:00', '2016-06-07 18:41:25.61972', '2016-06-07 18:41:25.61972', true, 9, '69', '61922165', '02440250376');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (59, 'JANE ORGANIZAÇÃO E GESTÃO FINANCEIRA EIRELI - ME ', '47789514334', '18791373000193', '', '2882108', '899041165414', 'RUA SUIÇA', '250', 'MARAPONGA', 'APT 302 BL 10 QD A', 'FORTALEZA', 'CE', '000000000', '', '', '985159224', '', 'NÃO TEM ', '', 'JANE', '', '', 50, '2014-01-01 02:00:00', '2016-06-07 18:48:39.623596', '2016-06-07 18:48:39.623596', true, 9, '70', '60711902', '47789514334');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (60, 'MARIA DO SOCORRO UCHOA ME ', '', '02338058000175', '', '069987718', '323471110610', 'RUA PRESIDENTE GETULIO VARGAS ', '78', 'CENTRO', '', 'PACATUBA', 'CE', '34679200', '33451001', '', '987782190', '', 'NÃO TEM ', '', 'SOCORRO', '', '', 40, '1998-02-01 02:00:00', '2016-06-07 18:52:42.598271', '2016-06-07 18:52:42.598271', true, 9, '71', '61800000', '32184581372');
INSERT INTO customers (id, razao, iss, cnpj, cei, cgf, cod, logradouro, numero, bairro, complemento, municipio, estado, telefone, telefone2, telefone3, celular, celular2, email, email2, contato, contato2, endereco_coleta, honorarios, desde, created_at, updated_at, active, group_id, id_emp, cep, cpf) VALUES (55, 'BONFIM E SANTOS COM IMPORT EXPORT HORTIFRUTIGRANJEIROS LTDA', '761740', '14449686000107', '', '065891627', '', 'ROD MENDEL STEIMBRUCH', '00', 'PAJUCARA', 'CEASA GP 05 BOX 68', 'MARACANAU', 'CE', '32153392', '', '', '999888216', '999441941', 'casadafruta@ibest.com.br', '', 'MILTON', 'CESAR', '', 67.3499999999999943, '2011-10-04 03:00:00', '2016-06-07 18:26:26.095471', '2016-06-10 11:19:53.294812', true, 8, '66', '61939210', '43732828387');


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('customers_id_seq', 5, true);


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO groups (id, name, created_at, updated_at) VALUES (1, 'LIVIA', '2016-05-16 05:07:39.664409', '2016-05-24 09:56:41.023544');
INSERT INTO groups (id, name, created_at, updated_at) VALUES (2, 'EDILSON MENDES', '2016-05-16 05:07:39.694976', '2016-05-24 09:57:08.314035');
INSERT INTO groups (id, name, created_at, updated_at) VALUES (3, 'REGIVALDO', '2016-05-16 05:07:39.711041', '2016-05-24 09:57:42.3623');
INSERT INTO groups (id, name, created_at, updated_at) VALUES (4, 'RN BRITO', '2016-05-18 21:23:54.209477', '2016-05-24 09:57:56.857444');
INSERT INTO groups (id, name, created_at, updated_at) VALUES (5, 'IRMÃOS QUEIROZ', '2016-05-24 09:58:25.788777', '2016-05-24 09:58:25.788777');
INSERT INTO groups (id, name, created_at, updated_at) VALUES (6, 'CARLOS EDUARDO', '2016-05-24 09:58:46.986782', '2016-05-24 09:58:46.986782');
INSERT INTO groups (id, name, created_at, updated_at) VALUES (7, 'UILSON SARAIVA', '2016-05-24 09:59:06.091447', '2016-05-24 09:59:06.091447');
INSERT INTO groups (id, name, created_at, updated_at) VALUES (8, 'BONFIM & SANTOS', '2016-05-24 09:59:31.962739', '2016-05-24 09:59:31.962739');
INSERT INTO groups (id, name, created_at, updated_at) VALUES (9, 'SEM GRUPO', '2016-05-24 11:21:54.147473', '2016-05-24 11:21:54.147473');


--
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('groups_id_seq', 3, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO schema_migrations (version) VALUES ('20160330035919');
INSERT INTO schema_migrations (version) VALUES ('20160420033946');
INSERT INTO schema_migrations (version) VALUES ('20160423151307');
INSERT INTO schema_migrations (version) VALUES ('20160507171637');
INSERT INTO schema_migrations (version) VALUES ('20160509164419');
INSERT INTO schema_migrations (version) VALUES ('20160514233107');
INSERT INTO schema_migrations (version) VALUES ('20160514234607');
INSERT INTO schema_migrations (version) VALUES ('20160514235934');
INSERT INTO schema_migrations (version) VALUES ('20160515201327');
INSERT INTO schema_migrations (version) VALUES ('20160516012221');
INSERT INTO schema_migrations (version) VALUES ('20160525022028');


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO settings (id, parametro, descricao, valor, created_at, updated_at) VALUES (1, 'SGEMPNAM', 'Nome da empresa', 'Berg', '2016-05-16 05:03:34.418181', '2016-05-31 03:26:38.215373');
INSERT INTO settings (id, parametro, descricao, valor, created_at, updated_at) VALUES (2, 'SGVRELHO', 'Valor utilizado no relatório de honorários', '900.00', '2016-05-16 05:03:34.432713', '2016-05-31 03:26:45.773212');


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('settings_id_seq', 2, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO users (id, name, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, admin) VALUES (1, 'admin', 'admin@gmail.com', '$2a$10$UN3bQf8Kmy8wBQdKwKcace3iUBbBVxttIcD7yUDEIwLeJlnJCM73a', NULL, NULL, NULL, 1, '2016-06-15 02:40:34.130173', '2016-06-15 02:40:34.130173', '192.168.25.4', '192.168.25.4', '2016-05-16 05:03:34.783485', '2016-06-15 02:40:34.132161', true);
INSERT INTO users (id, name, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, admin) VALUES (2, 'bergson', 'bergsonsud@gmail.com', '$2a$10$uakATNZItE.ma0MfnLqslOY/b3PmEXzIufC2ZwwBrmap48.Zv/c86', NULL, NULL, NULL, 6, '2016-06-17 02:36:11.024418', '2016-06-15 00:40:32.759224', '127.0.0.1', '127.0.0.1', '2016-05-16 05:03:34.898656', '2016-06-17 02:36:11.025772', true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- Name: counters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY counters
    ADD CONSTRAINT counters_pkey PRIMARY KEY (id);


--
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

