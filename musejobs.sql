--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO vagrant;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO vagrant;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO vagrant;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO vagrant;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO vagrant;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO vagrant;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO vagrant;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO vagrant;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO vagrant;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO vagrant;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO vagrant;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO vagrant;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO vagrant;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO vagrant;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO vagrant;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO vagrant;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO vagrant;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO vagrant;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO vagrant;

--
-- Name: jobs_company; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.jobs_company (
    id integer NOT NULL,
    company_name character varying(200) NOT NULL,
    company_logo character varying(100) NOT NULL,
    company_desc text NOT NULL,
    facebook character varying(100) NOT NULL,
    linkedin character varying(100) NOT NULL,
    twitter character varying(100) NOT NULL,
    youtube character varying(100) NOT NULL
);


ALTER TABLE public.jobs_company OWNER TO vagrant;

--
-- Name: jobs_companies_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.jobs_companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_companies_id_seq OWNER TO vagrant;

--
-- Name: jobs_companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.jobs_companies_id_seq OWNED BY public.jobs_company.id;


--
-- Name: jobs_job; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.jobs_job (
    id integer NOT NULL,
    job_title character varying(200) NOT NULL,
    job_description text NOT NULL,
    job_city character varying(100) NOT NULL,
    job_state character varying(2) NOT NULL,
    job_link character varying(500) NOT NULL,
    company_id integer NOT NULL
);


ALTER TABLE public.jobs_job OWNER TO vagrant;

--
-- Name: jobs_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.jobs_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_jobs_id_seq OWNER TO vagrant;

--
-- Name: jobs_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.jobs_jobs_id_seq OWNED BY public.jobs_job.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.jobs_company ALTER COLUMN id SET DEFAULT nextval('public.jobs_companies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.jobs_job ALTER COLUMN id SET DEFAULT nextval('public.jobs_jobs_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add companies	7	add_companies
26	Can change companies	7	change_companies
27	Can delete companies	7	delete_companies
28	Can view companies	7	view_companies
29	Can add jobs	8	add_jobs
30	Can change jobs	8	change_jobs
31	Can delete jobs	8	delete_jobs
32	Can view jobs	8	view_jobs
33	Can add company	7	add_company
34	Can change company	7	change_company
35	Can delete company	7	delete_company
36	Can view company	7	view_company
37	Can add job	8	add_job
38	Can change job	8	change_job
39	Can delete job	8	delete_job
40	Can view job	8	view_job
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$itcMr9o1wfOm$QEtlmGs8Gr90d/Kgl93dL6wSw2nqHBivU9fqc9Sollk=	2019-03-12 02:51:49.378864+00	t	vagrant			jennifer@jmeara.com	t	t	2019-03-12 02:51:06.086513+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-03-12 03:50:02.434104+00	1	Hackbright Academy	1	[{"added": {}}]	7	1
2	2019-03-12 03:51:52.793342+00	1	Python Instructor	1	[{"added": {}}]	8	1
3	2019-03-12 03:53:41.464301+00	1	Hackbright Academy	2	[{"changed": {"fields": ["company_logo"]}}]	7	1
4	2019-03-12 03:55:21.94985+00	1	Hackbright Academy	2	[{"changed": {"fields": ["company_logo"]}}]	7	1
5	2019-03-12 04:00:12.447002+00	1	Hackbright Academy	2	[{"changed": {"fields": ["company_logo"]}}]	7	1
6	2019-03-12 18:53:19.944253+00	2	Nike	1	[{"added": {}}]	7	1
7	2019-03-12 18:54:34.084851+00	2	Senior Director, Product Marketing, SNKRS	1	[{"added": {}}]	8	1
8	2019-03-12 18:56:07.12376+00	3	Wayfair	1	[{"added": {}}]	7	1
9	2019-03-12 18:57:07.965367+00	4	Outdoor Voices	1	[{"added": {}}]	7	1
10	2019-03-12 18:59:47.651664+00	5	The Wall Street Journal	1	[{"added": {}}]	7	1
11	2019-03-12 19:00:45.164543+00	3	iOS Software Engineer	1	[{"added": {}}]	8	1
12	2019-03-12 19:01:24.424623+00	4	Front End Engineer	1	[{"added": {}}]	8	1
13	2019-03-12 19:02:16.111879+00	5	Payroll Specialist	1	[{"added": {}}]	8	1
14	2019-03-12 19:03:12.95421+00	6	Product Manager, Mobile Apps	1	[{"added": {}}]	8	1
15	2019-03-12 19:18:02.863227+00	2	Nike	2	[]	7	1
16	2019-03-12 19:18:20.919099+00	5	The Wall Street Journal	2	[{"changed": {"fields": ["company_desc"]}}]	7	1
17	2019-03-12 19:18:56.683728+00	5	The Wall Street Journal	2	[{"changed": {"fields": ["company_desc"]}}]	7	1
18	2019-03-12 19:26:25.120944+00	5	The Wall Street Journal	2	[{"changed": {"fields": ["company_desc"]}}]	7	1
19	2019-03-12 19:53:36.960287+00	5	The Wall Street Journal	3		7	1
20	2019-03-12 19:53:36.963431+00	4	Outdoor Voices	3		7	1
21	2019-03-12 19:53:36.966619+00	3	Wayfair	3		7	1
22	2019-03-13 04:22:51.305777+00	6	Wayfair	1	[{"added": {}}]	7	1
23	2019-03-13 04:23:39.9707+00	7	Product Manager, Mobile Apps	1	[{"added": {}}]	8	1
24	2019-03-13 04:25:14.210939+00	6	Wayfair	2	[{"changed": {"fields": ["company_logo"]}}]	7	1
25	2019-03-13 04:36:10.143213+00	7	Outdoor Voices	1	[{"added": {}}]	7	1
26	2019-03-13 04:36:57.501901+00	8	Payroll Specialist	1	[{"added": {}}]	8	1
27	2019-03-13 04:39:01.660557+00	9	Front End Engineer	1	[{"added": {}}]	8	1
28	2019-03-13 04:41:18.054363+00	8	The Wall Street Journal	1	[{"added": {}}]	7	1
29	2019-03-13 04:42:24.860675+00	10	iOS Software Engineer	1	[{"added": {}}]	8	1
30	2019-03-13 06:59:47.498997+00	2	Senior Director, Product Marketing, SNKRS	2	[{"changed": {"fields": ["job_description"]}}]	8	1
31	2019-03-13 07:00:10.234151+00	2	Senior Director, Product Marketing, SNKRS	2	[{"changed": {"fields": ["job_description"]}}]	8	1
32	2019-03-13 07:01:54.473897+00	2	Senior Director, Product Marketing, SNKRS	2	[{"changed": {"fields": ["job_description"]}}]	8	1
33	2019-03-13 07:05:17.162177+00	10	iOS Software Engineer	2	[{"changed": {"fields": ["job_description"]}}]	8	1
34	2019-03-13 07:05:31.781709+00	9	Front End Engineer	2	[{"changed": {"fields": ["job_description"]}}]	8	1
35	2019-03-13 07:05:50.698121+00	8	Payroll Specialist	2	[{"changed": {"fields": ["job_description"]}}]	8	1
36	2019-03-13 07:05:58.987866+00	7	Product Manager, Mobile Apps	2	[]	8	1
37	2019-03-13 07:06:03.477421+00	2	Senior Director, Product Marketing, SNKRS	2	[]	8	1
38	2019-03-13 07:44:51.5981+00	1	Hackbright Academy	2	[{"changed": {"fields": ["company_desc"]}}]	7	1
39	2019-03-13 07:47:06.077285+00	2	Nike	2	[{"changed": {"fields": ["company_desc"]}}]	7	1
40	2019-03-13 18:40:29.728797+00	2	Nike	2	[{"changed": {"fields": ["linkedin", "facebook", "twitter", "youtube"]}}]	7	1
41	2019-03-13 19:26:29.82281+00	8	The Wall Street Journal	2	[{"changed": {"fields": ["linkedin", "facebook", "twitter", "youtube"]}}]	7	1
42	2019-03-13 19:27:58.498471+00	7	Outdoor Voices	2	[{"changed": {"fields": ["linkedin", "facebook", "twitter", "youtube"]}}]	7	1
43	2019-03-13 19:28:16.35687+00	8	The Wall Street Journal	2	[{"changed": {"fields": ["youtube"]}}]	7	1
44	2019-03-13 19:29:27.241296+00	2	Nike	2	[{"changed": {"fields": ["youtube"]}}]	7	1
45	2019-03-13 19:30:30.231627+00	6	Wayfair	2	[{"changed": {"fields": ["linkedin", "facebook", "twitter", "youtube"]}}]	7	1
46	2019-03-13 19:31:15.293177+00	8	The Wall Street Journal	2	[{"changed": {"fields": ["linkedin"]}}]	7	1
47	2019-03-13 19:31:19.948676+00	7	Outdoor Voices	2	[{"changed": {"fields": ["linkedin"]}}]	7	1
48	2019-03-13 19:31:24.263427+00	6	Wayfair	2	[{"changed": {"fields": ["linkedin"]}}]	7	1
49	2019-03-13 19:31:28.73561+00	2	Nike	2	[{"changed": {"fields": ["linkedin"]}}]	7	1
50	2019-03-13 19:32:17.684768+00	1	Hackbright Academy	2	[{"changed": {"fields": ["linkedin", "facebook", "twitter", "youtube"]}}]	7	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 50, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	jobs	company
8	jobs	job
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-03-12 00:07:07.41131+00
2	auth	0001_initial	2019-03-12 00:07:07.476751+00
3	admin	0001_initial	2019-03-12 00:07:07.5035+00
4	admin	0002_logentry_remove_auto_add	2019-03-12 00:07:07.523571+00
5	admin	0003_logentry_add_action_flag_choices	2019-03-12 00:07:07.531934+00
6	contenttypes	0002_remove_content_type_name	2019-03-12 00:07:07.547387+00
7	auth	0002_alter_permission_name_max_length	2019-03-12 00:07:07.552956+00
8	auth	0003_alter_user_email_max_length	2019-03-12 00:07:07.563565+00
9	auth	0004_alter_user_username_opts	2019-03-12 00:07:07.571915+00
10	auth	0005_alter_user_last_login_null	2019-03-12 00:07:07.585344+00
11	auth	0006_require_contenttypes_0002	2019-03-12 00:07:07.587185+00
12	auth	0007_alter_validators_add_error_messages	2019-03-12 00:07:07.594379+00
13	auth	0008_alter_user_username_max_length	2019-03-12 00:07:07.605563+00
14	auth	0009_alter_user_last_name_max_length	2019-03-12 00:07:07.614829+00
15	sessions	0001_initial	2019-03-12 00:07:07.624885+00
16	jobs	0001_initial	2019-03-12 02:46:19.589863+00
17	jobs	0002_auto_20190311_1958	2019-03-12 02:58:43.182906+00
18	jobs	0003_auto_20190312_1214	2019-03-12 19:15:19.645244+00
19	jobs	0004_auto_20190313_1130	2019-03-13 18:30:26.707391+00
20	jobs	0005_auto_20190313_1139	2019-03-13 18:39:47.056274+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
iwzb6citof4cb2sgcb3023huiafrkgc9	MWY4NThlZTYzODA5MTMyM2YwMGJhNzc5ZGVlMTkzOTZkOTg2NTA3ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDk2NzZlMjFlM2E5Nzk2MjRkYzQ3Yjg4NmEyZmY3ZGZkNmZlNmJmIn0=	2019-03-26 02:51:49.381067+00
\.


--
-- Name: jobs_companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.jobs_companies_id_seq', 8, true);


--
-- Data for Name: jobs_company; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.jobs_company (id, company_name, company_logo, company_desc, facebook, linkedin, twitter, youtube) FROM stdin;
6	Wayfair	/jobs/img/wayfair_small_logo.png	Over the past several years, Wayfair has been heavily investing to build the best e-commerce shopping app across devices to help consumers create a home they love, wherever they may be. These efforts have resulted in a highly-rated (4.8 stars on the App Store, 4.5 stars on Google Play), awarded (won the 2018 Webby for shopping), and featured (Apple App of the Day) experience. But our job is far from finished, with substantial opportunities to deliver against a bold app vision, grow user adoption, improve innovative features like View in Room 3D and Search with Photo, and invent the next wave of revolutionary experiences.	wayfair	company/wayfair	Wayfair	channel/UCygNJ1TutAAtYlmu0gUMLBA
2	Nike	/jobs/img/nike_small_logo.png	Nike is a company based on Innovation. It is in our nature to innovate. Think something nobody else thinks, build something nobody else builds, or improve something that already exists. Curiosity is life. Assumption is death.\r\n\r\nBaseball ipsum dolor sit amet tag designated hitter series season line drive tag. Double switch astroturf blue rake skipper, dodgers rotation. Foul line center fielder southpaw off-speed sport all-star doubleheader hot dog tapper. No decision gold glove rookie cheese basehit first base rubber pennant knuckleball. Airmail hitter slider grand slam gold glove hey batter rubber game. Strikeout bandbox pinch hitter pinch runner field rainout sabremetrics diamond appeal.\r\n\r\nScrewball left fielder world series mound baltimore chop series 1-2-3 diamond world series. Reds ground ball balk field shortstop tigers ejection line drive. Choke up shutout shortstop suicide squeeze umpire sacrifice bunt grass shutout unearned run. Tigers pitchout shutout outfield stretch petey inning. Cardinals error skipper run ball ground ball cookie. Hitter off-speed ground ball relief pitcher appeal, red sox no-hitter.\r\n\r\nDefensive indifference reds flyout shortstop knuckle tossed hit by pitch bleeder slide. Rip on deck rip batter's box stance forkball hey batter golden sombrero second base. Scorecard outfield center fielder line drive bat mendoza line hey batter. Sacrifice bunt pennant foul pole fenway mendoza line bandbox gap breaking ball gold glove. Rally triple-A interleague sacrifice grass, rake alley arm. In the hole bases loaded check swing first base extra innings fielder's choice baseline.	nike	company/nike	Nike	user/nike
7	Outdoor Voices	/jobs/img/outdoor_voices_small_logo.png	We believe in Doing Things — moving your body and having fun with friends. From dog jogs to dodgeball, we make clothes for sweating without the added pressure. Our team is made up of casual Recreationalists who approach activity with ease, humor, and delight. Since launching in 2014, Outdoor Voices has been featured in The New York Times, Vogue, Wall Street Journal, GQ, Forbes and Fast Co.	OutdoorVoices	company/outdoor-voices	OutdoorVoices	channel/UCJl-5SFvDsL8aAy5bJ09R7Q
8	The Wall Street Journal	/jobs/img/the_wall_street_journal_small_logo.png	The Wall Street Journal is a global news organization that provides leading news, information, commentary and analysis. It is America's largest newspaper by total average circulation with more than 2.3 million digital and print subscribers and 36 million global digital visitors per month. Building on its heritage as the preeminent source of global business and financial news, the Journal includes coverage of U.S. & world news, politics, arts, culture, lifestyle, sports, and health. It holds 36 Pulitzer Prizes for outstanding journalism. The Wall Street Journal is published by Dow Jones, a division of News Corp. The Wall Street Journal iOS app has millions of users, and has been repeatedly featured by Apple.\r\n\r\nDow Jones , Making Careers Newsworthy\r\n\r\nAll qualified applicants will receive consideration for employment without regard to race, color, religion, sex, national origin, protected veteran status, or disability status. EEO/AA/M/F/Disabled/Vets .\r\n\r\nDow Jones is committed to providing reasonable accommodation for qualified individuals with disabilities, in our job application and/or interview process. If you need assistance or accommodation in completing your application, due to a disability, please reach out to us at TalentResourceTeam@dowjones.com . Please put "Reasonable Accommodation" in the subject line.\r\n\r\nAbout Us\r\n\r\nDow Jones is a global provider of news and business information, delivering content to consumers and organizations around the world across multiple formats, including print, digital, mobile and live events. Dow Jones has produced unrivaled quality content for more than 125 years and today has one of the world's largest news gathering operations globally. It produces leading publications and products including the flagship Wall Street Journal, America's largest newspaper by paid circulation; Factiva, Barron's, MarketWatch, Financial News, DJX, Dow Jones Risk & Compliance, Dow Jones Newswires, and Dow Jones VentureSource.Dow Jones is a division of News Corp (NASDAQ: NWS, NWSA; ASX: NWS, NWSLV).	wsj	company/the-wall-street-journal	WSJ	user/WSJDigitalNetwork
1	Hackbright Academy	/jobs/img/HB_new_logo-2@2x.png	We’re proudly the leading engineering school for women in the Bay Area with 700+ graduates at tech companies that include Google, Dropbox, and Airbnb. We were founded with the mission to provide women with a personalized path to a software engineering career.\r\n\r\nWebtwo ipsum tumblr waze. Edmodo zlio foodzie, blyve. Bitly grockit udemy lala, dropio. Napster spotify yammer jaiku wikia napster doostang udemy, oovoo insala joyent kno twones. appjet qeyno. oooooc nuvvo. Joost unigo kiko ning cloudera plugg cotweet, convore blippy joyent jabber. Zinch zoodles eskobo, chumby. Dopplr appjet zooomr jaiku, blekko kosmix. jajah bubbli blippy. Ideeli blippy zoodles bitly kippt etsy unigo cotweet, kosmix zoosk jiglu octopart reddit. Appjet reddit oooooc zynga odeo kaboodle grockit, joukuu ebay appjet jabber wesabe. Skype weebly nuvvo kazaa, spock eduvant.\r\n\r\nEmpressr vimeo sifteo nuvvo fleck blekko hipmunk, rovio empressr shopify imeem. Octopart skype movity udemy fleck jibjab, wufoo plugg joyent. Yammer divvyshot hipmunk joyent, plickers stypi prezi bitly, spock oooj. scribd voki. napster. Joost jumo dogster imeem voki dopplr, ideeli imeem jajah sclipo lanyrd, klout woopra blekko hulu. Joukuu empressr orkut heroku mobly, skype heekya. Foodzie twitter chegg disqus foodzie, zapier sifteo chegg, koofers balihoo mozy. Rovio qeyno spock zoho whrrl lanyrd rovio, mobly ifttt klout jajah. kippt. Mzinga yuntaa stypi loopt diigo edmodo zanga, handango weebly divvyshot balihoo. Plugg sifteo gsnap, zynga.\r\n\r\nZimbra udemy airbnb zoodles grockit yuntaa, lala dopplr odeo glogster. trulia wikia. Blekko octopart zynga yammer, koofers dopplr. Heekya meevee bitly jaiku, chartly. Empressr eduvant oooj meebo zappos joukuu, klout heroku voki kosmix. Orkut zlio geni omgpop, yuntaa. Kaboodle voki dropio oooooc appjet mzinga, ideeli handango doostang shopify. Dogster rovio geni cuil oovoo bebo, oooj fleck vimeo cloudera. Stypi skype edmodo plugg divvyshot, odeo kno zillow octopart bubbli, babblely zappos ning. Loopt palantir woopra bebo shopify blyve groupon, rovio wakoopa airbnb plickers joost. Handango disqus octopart wesabe nuvvo, klout odeo. Appjet lanyrd klout mog, empressr quora.	HackbrightAcademy	school/hackbright-academy	Hackbright	user/HackbrightAcademy
\.


--
-- Data for Name: jobs_job; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.jobs_job (id, job_title, job_description, job_city, job_state, job_link, company_id) FROM stdin;
1	Python Instructor	Teach Python to students	San Francisco	CA	https://hackbrightacademy.com/careers/	1
2	Senior Director, Product Marketing, SNKRS	s23NYC, the Nike studio based in New York responsible for the SNKRS app and Nike's sneakerhead community, is looking for a Senior Director of Product Marketing to imagine and build the future of digital community with us.\r\n\r\nAs the Senior Director of Product Marketing, you will 1) help build and execute campaigns or trials that authentically showcase our product features to the SNKRS community and 2) help position the SNKRS product to our customer segments in a manner that deepens community engagement and increases consumer happiness.\r\n\r\nYOUR ROLE:\r\n• Drive the SNKRS product positioning in partnership with a cross-functional studio team (Product Overseeing, Design, Engineering)\r\n• Create and manage campaigns that showcase SNKRS product features\r\n• Deepen partnership with quantitative and qualitative insights teams to leverage data insights to improve consumer happiness; build tactics to enhance product "fairness" for consumers\r\n• Drive new pilot programs with global and geo partnership; leverage deep understanding of consumer segmentation to target new products or services (digital or physical) to under-served segments\r\n• Provide input to seasonal pitchbacks for global and geo campaigns across all categories\r\n• Coordinate and scale cross-functional digital marketing efforts around the world\r\n• Manage day-to-day workload and priorities of the product marketing team, ensuring everyone brings their A game.\r\n• Communicate campaign best practices, "playbook", timelines, benefits and results with the larger Nike Digital Marketing org\r\n• Partner with influencer marketing teams to manage community and product influencer outreach\r\n• As one of the studio team leads, shape the culture and values of our studio to reflect the sneaker community we serve.\r\n\r\nQualifications\r\n• 12+ years of Digital/Social Marketing experience with multiple campaign launches that you're proud of. Background in mobile apps highly preferred\r\n• 2-3 years working on viral/social experiences; seeking someone who knows how to hack organic growth by creating emotional, shareable experiences that earn the right to go viral.\r\n• Deep understanding of social/viral KPIs that deepen engagement; deep understanding of A/B testing and cohort analysis to spot key trends in consumer behavior\r\n• Ability to manage and develop high performing marketing managers\r\n• Skilled at marketing cases with data to senior leadership, armed with an insatiable curiosity about sneaker culture and empathy for our users\r\n• Focused on outcomes over process in a collaborative, fast-paced startup style environment\r\n• Effective communicator, comfortable speaking in front of diverse, senior audiences\r\n• Inspired collaborator; expert in working with cross-functional global and geo teams; can further the team agenda with sugar, not salt.\r\n\r\nEXTRA CREDIT:\r\n• Startup experience\r\n• Focus on diverse, urban communities\r\n• Street culture enthusiast	New York City	NY	https://jobs.nike.com/job/-/-/824/10621511?src=JB-12260	2
8	Payroll Specialist	OV is hiring a Payroll Specialist to join the People team at our Austin, TX headquarters. As our Payroll Specialist, you’ll support Team OV in all things payroll as you own the integrity of the payroll process and ensure all employees are paid correctly and in a timely manner. If you’re and HRIS whiz who is looking for the opportunity to impact and refine the payroll process, we want to hear from you!\r\n\r\nResponsibilities\r\n\r\nProcess bi-weekly and semi-monthly payrolls using Namely Payroll to ensure compliance, accuracy, and efficiency.\r\nProcess new hires, employee changes, terminations and benefit administration on the Namely HRIS side.\r\nCompile payroll data such as garnishments, vacation time, insurance and 401(k) deductions.\r\nPoll electronic time clocks (Deputy) and review the downloaded information for completeness and accuracy partnering with various department and location  supervisors for any missed times.\r\nCompile internal management reports from payroll system software.\r\nEnsure compliance and adhere to company policies relating to processing of wages and paid time off.\r\nProvide service to all employees regarding concerns with payroll and benefits, research and troubleshoot inquires.\r\nComplete any payroll and benefit related mailings, e.g. child support. \r\nCoordinate resolution with Namely Payroll/Benefit representatives/Insurance carriers to address any inquiries/requests on an on-going basis. \r\nMaintain processes and audit trails for all payroll transactions, I-9, garnishments, etc. \r\nProcess and maintain 401(k) transactions and records. \r\n\r\nQualification\r\n\r\nAssociate’s degree or bachelor's degree.\r\nAt least 2 years of  multi-state payroll experience (NY and CA preferred).\r\nHigh level proficiency with Microsoft Excel.\r\nExperience with Google Apps (Gmail, Calendar, Drive). \r\nExperience with Namely HRIS and Payroll is a plus.\r\nHigh level of ownership and organization.\r\nAttention to detail and the ability to enter data with consistent accuracy.\r\nStrong, professional communication skills in listening, speaking, and writing necessary for communication with staff, service providers and coworkers over the phone, in person, and via email.\r\nHappy to work as a part of a team or independently, willing to communicate needs in a constructive manner as well as provide support to coworkers when needed.\r\nSound judgement and the ability to make reasonable decisions in the absence of direction.\r\nReceptive to coaching from management, responds positively with willingness to make changes when desired.\r\n\r\nCompensation\r\n\r\nCompetitive compensation.\r\nOV Benefits include flexible vacation, 75% of health care premiums, dental and vision.\r\nThe latest OV gear and—of course—Recreation.\r\nWe believe in Doing Things — moving your body and having fun with friends. From dog jogs to dodgeball, we make clothes for sweating without the added pressure. Our Recreational team is made up of joggers, dog walkers, and dribble-dribblers who approach activity with ease, humor, and delight. Since launching in 2014, Outdoor Voices and has been featured in The New York Times, Vogue, Wall Street Journal, GQ, Forbes, and Fast Co.\r\n\r\nCompensation & Benefits:\r\n\r\nCompetitive compensation package\r\nOV Benefits include flexible vacation, 75% of health care premiums, dental and vision\r\nThe latest OV gear and—of course—Recreation	Austin	TX	https://jobs.lever.co/outdoorvoices/bfbc8bde-f29a-4420-abec-aaf34b2e8f9d/apply?lever-source=themuse	7
7	Product Manager, Mobile Apps	We are looking for an experienced Product Manager to help us take the App to the next level of great. Your role will be to ensure that the App provides the most loyal Wayfair customers with the most delightful and immersive experience possible on their devices and unlocks a platform to acquire the next generation of Wayfair users. This role will join a growing App team that owns the product experience across all of Wayfair’s brands in all of our targeted geographies (US, Canada, UK, Germany). This role will be instrumental in growing a platform that already delivers more than $1B in annual run rate revenue.\r\n\r\nThis role offers the opportunity to transform the way millions of consumers around the world create homes they love, have a major impact at a rapidly growing $10B public company, partner with executives across the company on a high-profile initiative, and grow our existing cross-functional teams of experienced product managers, software engineers, data scientists, product designers and analysts.\r\n\r\nResponsibilities:\r\n\r\nOwn the product roadmap for your team, spanning iOS/Android platforms, all our retail brands and all of our international locations.  This will include a combination of building and owning some features directly (e.g., View in Room product, App onboarding experience), and enabling a large number of other teams to build new features/tools on top of our platforms.\r\nMeasure performance, keep your pulse on the customer, anticipate bottlenecks, make trade-offs and take acceptable risks to maximize the benefit for our customer and business.\r\nWrite detailed user stories and requirements for product initiatives, and assist a cross-functional team of designers, manual testers, and engineers to bring them to life.\r\nUtilize data to understand customer needs and behaviors, and transform that knowledge into platform enhancements and new features.\r\nLead project planning and provide updates to stakeholders for cross-group & cross-departmental projects.\r\nWork closely with engineering and product leadership to understand larger, department & company wide initiatives.\r\nHelp translate department initiatives into manageable, actionable components.\r\n\r\n\r\nQualifications:\r\n\r\n3+ years experience in e-commerce or B2C product management\r\nTrack record of building high-impact consumer products\r\nAbility to think and perform both tactically and strategically\r\nExcellent analytical skills with demonstrated experience turning data into actionable insights\r\nDeep understanding of business strategy and metrics\r\nPassionate about building functional and engaging user experiences\r\nCross functional leadership experience\r\nEntrepreneurial mindset, with a bias for customer focused innovation\r\nAbility to multi-task and work well within a dynamic, fast-paced organization\r\nPositive, people-oriented, and energetic attitude\r\nExperience managing a team is a plus\r\nFamiliarity with Excel, SQL, and multivariate testing practices a plus\r\nBA with strong academic record (strong preference for quantitative, scientific, or technical backgrounds)	Boston	MA	http://app.jobvite.com/CompanyJobs/Job.aspx?c=qI69VfwC&j=oPv28fwe&s=TheMuse	6
10	iOS Software Engineer	About Our Team\r\n\r\nWe are looking for a iOS engineer to help us build and improve the Wall Street Journal app for iPhone and iPad. As a mobile engineer, you'll join our team of developers working together to bring innovative news and storytelling techniques to our mobile platform. Our team consists of iOS, Android, and backend developers working closely with product, design, and the newsroom.\r\n\r\nAbout Our Work\r\n\r\nWe write all new code in Swift\r\nWe prioritize new iOS features\r\nUse use Git for source control\r\nWe use Git Flow for building features\r\nWe code review all pull requests\r\nWe use continuous integration, with automatically deployed builds, internally and submitted to Apple\r\nWe write tests for new code\r\nWe work closely with product, design, and the newsroom\r\nWe are continually adapting and refining our process\r\n\r\nRequirements\r\n\r\nAt least one year of iOS development experience\r\nExperience with Swift or Objective-C (preferably both)\r\nA Bachelor of Computer Science (or equivalent experience)\r\nFluency with object-oriented programming and model-view-controller architecture\r\nExperience with Xcode and performance profiling with Instruments\r\nFamiliarity with Apple's Human Interface Guidelines\r\n\r\nNice to Have\r\n\r\nExperience accessing an API, e.g., JSON or XML and displaying the downloaded content natively in an iOS app\r\nFluency with Scripting Languages, such as Bash, Ruby, and JavaScript\r\nFamiliarity with HTML & CSS\r\nNode.js or other non-native app development experience\r\nExperience with templating languages and grid-based layouts\r\nExperience with the software development life-cycle, especially Agile and Scrum\r\nAn online technical presence, e.g., GitHub or technical writing\r\n\r\nBusiness Area: NEWS/WSJ\r\n\r\nJob Category: IT Development Group\r\n\r\nReq ID: 15461	New York City	NY	https://wsj.jobs/new-york-ny/ios-software-engineer/C15EB39318EA4B31B026809DD6521907/job/?utm_medium=.JOBS%20Universe&utm_campaign=.JOBS%20XML%20Feed&utm_source=.JOBS%20XML%20Feed-DE&vs=23	8
9	Front End Engineer	We are looking for a Front End Engineer to join our technology team and make our digital experiences best-in-class as we build out the next great activewear brand together. The right candidate is a versatile engineer, able to jump into a team environment, and make an immediate impact while also being able to autonomously lead initiatives and drive them to completion. S/he has the ability to work across desktop and mobile, and have the attention to detail to create incredible digital user experiences.\r\n\r\nResponsibilities\r\n\r\nShip beautiful and functional products for our customers\r\nFocus primarily on our eCommerce website\r\nIndependently own feature delivery through completion\r\nWork directly with a design/creative team to build out experiences that differentiate OV from competitors in our space.\r\nImprove code quality and engineering best practices\r\nWork cross-functionally across business to deliver best in class experiences\r\nWork within an existing codebase, identify areas for improvement, and implement those improvements.\r\nLead initiatives and report out status   \r\n\r\nQualifications\r\n\r\nBachelor's degree in CS or a related technical field\r\n4+ years of software development experience\r\nExperience with React/React Native and Javascript\r\nUnderstanding of software development life cycles to lead by example in planning and estimating out tasks for projects\r\nExcited about Progressive Web Apps\r\nKnowledge of automation/deployment best practices, and capable of building out a continuous deployment workflow\r\nAgile and excited to work in a start-up environment\r\nAbility to break down and estimate complex problems\r\nAbility to deliver high quality projects end to end, getting completed projects across the finish line\r\nFamiliar with building, launching, and supporting products that are used globally\r\nA testing mindset and familiarity with testing strategies\r\nPython &/or Django experience a plus\r\n\r\n\r\nCompensation & Benefits:\r\n\r\nCompetitive compensation package\r\nOV Benefits include flexible vacation, 75% of health care premiums, dental and vision\r\nThe latest OV gear and—of course—Recreation	Austin	TX	https://jobs.lever.co/outdoorvoices/6d5de52a-3901-4eba-b987-6d1eefa331b2/apply?lever-source=themuse	7
\.


--
-- Name: jobs_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.jobs_jobs_id_seq', 10, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: jobs_companies_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.jobs_company
    ADD CONSTRAINT jobs_companies_pkey PRIMARY KEY (id);


--
-- Name: jobs_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.jobs_job
    ADD CONSTRAINT jobs_jobs_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: jobs_jobs_company_id_b25449fc; Type: INDEX; Schema: public; Owner: vagrant
--

CREATE INDEX jobs_jobs_company_id_b25449fc ON public.jobs_job USING btree (company_id);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: jobs_jobs_company_id_b25449fc_fk_jobs_company_id; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.jobs_job
    ADD CONSTRAINT jobs_jobs_company_id_b25449fc_fk_jobs_company_id FOREIGN KEY (company_id) REFERENCES public.jobs_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

