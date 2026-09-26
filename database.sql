--
-- PostgreSQL database dump
--

\restrict 8AziGvvTmJnHVUZdufXt6pSsBLNP9fwieJTacPsRK8FJKaKLoBk7eisjabuWkKQ

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-09-26 14:47:39

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 224 (class 1259 OID 16421)
-- Name: class; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.class (
    id integer NOT NULL,
    name character varying(100),
    duration integer,
    max_capacity integer,
    sheduledtime time without time zone
);


ALTER TABLE public.class OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16420)
-- Name: class_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.class_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.class_id_seq OWNER TO postgres;

--
-- TOC entry 5006 (class 0 OID 0)
-- Dependencies: 223
-- Name: class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.class_id_seq OWNED BY public.class.id;


--
-- TOC entry 228 (class 1259 OID 16437)
-- Name: locker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locker (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE public.locker OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16436)
-- Name: locker_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.locker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.locker_id_seq OWNER TO postgres;

--
-- TOC entry 5007 (class 0 OID 0)
-- Dependencies: 227
-- Name: locker_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.locker_id_seq OWNED BY public.locker.id;


--
-- TOC entry 220 (class 1259 OID 16405)
-- Name: member; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.member (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    start_date timestamp without time zone,
    phone character varying(150)
);


ALTER TABLE public.member OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16404)
-- Name: member_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.member_id_seq OWNER TO postgres;

--
-- TOC entry 5008 (class 0 OID 0)
-- Dependencies: 219
-- Name: member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.member_id_seq OWNED BY public.member.id;


--
-- TOC entry 226 (class 1259 OID 16429)
-- Name: membership_plans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.membership_plans (
    id integer NOT NULL,
    name character varying(100),
    type character varying(150)
);


ALTER TABLE public.membership_plans OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16428)
-- Name: membership_plans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.membership_plans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.membership_plans_id_seq OWNER TO postgres;

--
-- TOC entry 5009 (class 0 OID 0)
-- Dependencies: 225
-- Name: membership_plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.membership_plans_id_seq OWNED BY public.membership_plans.id;


--
-- TOC entry 222 (class 1259 OID 16413)
-- Name: trainers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trainers (
    id integer NOT NULL,
    name character varying(100),
    specialty character varying(100),
    years_of_experience integer
);


ALTER TABLE public.trainers OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16412)
-- Name: trainers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trainers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trainers_id_seq OWNER TO postgres;

--
-- TOC entry 5010 (class 0 OID 0)
-- Dependencies: 221
-- Name: trainers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trainers_id_seq OWNED BY public.trainers.id;


--
-- TOC entry 4831 (class 2604 OID 16424)
-- Name: class id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class ALTER COLUMN id SET DEFAULT nextval('public.class_id_seq'::regclass);


--
-- TOC entry 4833 (class 2604 OID 16440)
-- Name: locker id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locker ALTER COLUMN id SET DEFAULT nextval('public.locker_id_seq'::regclass);


--
-- TOC entry 4829 (class 2604 OID 16408)
-- Name: member id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member ALTER COLUMN id SET DEFAULT nextval('public.member_id_seq'::regclass);


--
-- TOC entry 4832 (class 2604 OID 16432)
-- Name: membership_plans id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membership_plans ALTER COLUMN id SET DEFAULT nextval('public.membership_plans_id_seq'::regclass);


--
-- TOC entry 4830 (class 2604 OID 16416)
-- Name: trainers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trainers ALTER COLUMN id SET DEFAULT nextval('public.trainers_id_seq'::regclass);


--
-- TOC entry 4996 (class 0 OID 16421)
-- Dependencies: 224
-- Data for Name: class; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.class (id, name, duration, max_capacity, sheduledtime) FROM stdin;
1	CrossFit	60	20	07:00:00
2	Yoga	45	15	08:00:00
3	Bodybuilding	90	25	09:30:00
4	Zumba	60	30	17:00:00
5	Boxing	60	12	18:00:00
6	Pilates	50	15	10:00:00
7	CrossFit	60	20	16:00:00
8	Yoga	45	15	19:00:00
9	Zumba	60	30	11:00:00
10	Bodybuilding	90	25	15:00:00
\.


--
-- TOC entry 5000 (class 0 OID 16437)
-- Dependencies: 228
-- Data for Name: locker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locker (id, name) FROM stdin;
1	L-001
2	L-002
3	L-003
4	L-004
5	L-005
6	L-006
7	L-007
8	L-008
9	L-009
10	L-010
\.


--
-- TOC entry 4992 (class 0 OID 16405)
-- Dependencies: 220
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.member (id, name, email, start_date, phone) FROM stdin;
1	Ahmed Samy	ahmed.samy@gmail.com	2026-01-15 09:30:00	01012345678
2	Mariam Adel	mariam.adel@gmail.com	2025-11-02 14:15:00	01123456789
3	Karim Fathy	karim.fathy@gmail.com	2026-03-10 11:00:00	01234567890
4	Nour Elhoda	nour.elhoda@gmail.com	2026-02-20 16:45:00	01098765432
5	Youssef Abdallah	youssef.abdallah@gmail.com	2025-12-05 08:20:00	01187654321
6	Heba Eltaher	heba.eltaher@gmail.com	2026-04-01 13:10:00	01276543210
7	Omar Ibrahim	omar.ibrahim@gmail.com	2026-05-18 17:00:00	01065432109
8	Salma Waleed	salma.waleed@gmail.com	2026-01-30 10:05:00	01154321098
9	Mahmoud Tarek	mahmoud.tarek@gmail.com	2025-10-22 12:40:00	01243210987
10	Yasmin Hamdy	yasmin.hamdy@gmail.com	2026-06-09 15:25:00	01032109876
\.


--
-- TOC entry 4998 (class 0 OID 16429)
-- Dependencies: 226
-- Data for Name: membership_plans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.membership_plans (id, name, type) FROM stdin;
1	Monthly Plan	Basic
2	Quarterly Plan	Basic
3	Yearly Plan	Basic
4	Monthly Plan	Premium
5	Quarterly Plan	Premium
6	Yearly Plan	Premium
7	Monthly Plan	VIP
8	Quarterly Plan	VIP
9	Yearly Plan	VIP
10	Student Plan	Basic
\.


--
-- TOC entry 4994 (class 0 OID 16413)
-- Dependencies: 222
-- Data for Name: trainers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trainers (id, name, specialty, years_of_experience) FROM stdin;
1	Mohamed Reda	CrossFit	5
2	Sara Hassan	Yoga	7
3	Omar Khaled	Bodybuilding	4
4	Laila Mourad	Pilates	6
5	Khaled Mostafa	Boxing	8
6	Nadia Fouad	Zumba	3
7	Tarek Youssef	Bodybuilding	10
8	Dina Samir	Yoga	5
9	Hassan Ali	CrossFit	6
10	Mona Adel	Pilates	4
\.


--
-- TOC entry 5011 (class 0 OID 0)
-- Dependencies: 223
-- Name: class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.class_id_seq', 1, false);


--
-- TOC entry 5012 (class 0 OID 0)
-- Dependencies: 227
-- Name: locker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.locker_id_seq', 1, false);


--
-- TOC entry 5013 (class 0 OID 0)
-- Dependencies: 219
-- Name: member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.member_id_seq', 1, false);


--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 225
-- Name: membership_plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.membership_plans_id_seq', 1, false);


--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 221
-- Name: trainers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trainers_id_seq', 1, false);


--
-- TOC entry 4839 (class 2606 OID 16427)
-- Name: class class_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class
    ADD CONSTRAINT class_pkey PRIMARY KEY (id);


--
-- TOC entry 4843 (class 2606 OID 16443)
-- Name: locker locker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locker
    ADD CONSTRAINT locker_pkey PRIMARY KEY (id);


--
-- TOC entry 4835 (class 2606 OID 16411)
-- Name: member member_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (id);


--
-- TOC entry 4841 (class 2606 OID 16435)
-- Name: membership_plans membership_plans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membership_plans
    ADD CONSTRAINT membership_plans_pkey PRIMARY KEY (id);


--
-- TOC entry 4837 (class 2606 OID 16419)
-- Name: trainers trainers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trainers
    ADD CONSTRAINT trainers_pkey PRIMARY KEY (id);


-- Completed on 2026-09-26 14:47:40

--
-- PostgreSQL database dump complete
--

\unrestrict 8AziGvvTmJnHVUZdufXt6pSsBLNP9fwieJTacPsRK8FJKaKLoBk7eisjabuWkKQ

