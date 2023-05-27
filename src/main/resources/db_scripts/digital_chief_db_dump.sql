--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2023-05-20 18:59:15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 24721)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    id integer NOT NULL,
    department_name character varying(255) NOT NULL,
    location character varying(255),
    budget numeric(10,2),
    phone character(11)
);


ALTER TABLE public.departments OWNER TO digital_chief_user;

--
-- TOC entry 209 (class 1259 OID 24720)
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departments_id_seq OWNER TO digital_chief_user;

--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 209
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;


--
-- TOC entry 212 (class 1259 OID 24761)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255),
    salary numeric(10,2),
    department_id integer
);


ALTER TABLE public.employees OWNER TO digital_chief_user;

--
-- TOC entry 211 (class 1259 OID 24760)
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO digital_chief_user;

--
-- TOC entry 3330 (class 0 OID 0)
-- Dependencies: 211
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- TOC entry 3169 (class 2604 OID 24724)
-- Name: departments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);


--
-- TOC entry 3170 (class 2604 OID 24764)
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- TOC entry 3318 (class 0 OID 24721)
-- Dependencies: 210
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (id, department_name, location, budget, phone) FROM stdin;
1	IT	New York	50000000.00	89251111111
2	Marketing	Los Angeles	75000000.00	89252222222
3	Finance	Chicago	10000000.00	89253333333
\.


--
-- TOC entry 3320 (class 0 OID 24761)
-- Dependencies: 212
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, first_name, last_name, email, salary, department_id) FROM stdin;
1	John	Doe	johndoe@example.com	50000.00	1
2	Jane	Smith	janesmith@example.com	60000.00	2
3	Bob	Johnson	bobjohnson@example.com	55000.00	2
4	Sarah	Williams	sarahwilliams@example.com	65000.00	3
9	Sergey	Petrov	sergeypetrov@example.com	100000.00	3
\.


--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 209
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_id_seq', 7, true);


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 211
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_id_seq', 10, true);


--
-- TOC entry 3172 (class 2606 OID 24728)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- TOC entry 3174 (class 2606 OID 24770)
-- Name: employees employees_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_email_key UNIQUE (email);


--
-- TOC entry 3176 (class 2606 OID 24768)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- TOC entry 3177 (class 2606 OID 24771)
-- Name: employees employees_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(id);


--
-- TOC entry 3326 (class 0 OID 0)
-- Dependencies: 210
-- Name: TABLE departments; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.departments TO digital_chief_user;


--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 209
-- Name: SEQUENCE departments_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.departments_id_seq TO digital_chief_user;


--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 212
-- Name: TABLE employees; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.employees TO digital_chief_user;


--
-- TOC entry 3331 (class 0 OID 0)
-- Dependencies: 211
-- Name: SEQUENCE employees_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.employees_id_seq TO digital_chief_user;


-- Completed on 2023-05-20 18:59:15

--
-- PostgreSQL database dump complete
--

