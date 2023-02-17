--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: commet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.commet (
    commet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_millions numeric,
    first_seen integer,
    next_visit integer,
    galaxy_id integer
);


ALTER TABLE public.commet OWNER TO freecodecamp;

--
-- Name: commet_commet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.commet_commet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commet_commet_id_seq OWNER TO freecodecamp;

--
-- Name: commet_commet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.commet_commet_id_seq OWNED BY public.commet.commet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth numeric,
    description text,
    age_in_millions numeric,
    number_of_stars integer,
    number_of_planets integer,
    has_black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth numeric,
    description text,
    age_in_millions numeric,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth numeric,
    description text,
    age_in_millions numeric,
    has_life boolean,
    has_moons boolean,
    number_of_moons integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth numeric,
    description text,
    age_in_millions numeric,
    number_of_planets integer,
    heat numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: commet commet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet ALTER COLUMN commet_id SET DEFAULT nextval('public.commet_commet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: commet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.commet VALUES (1, 'hallo', 'halli1', 1, 1800, 2100, 1);
INSERT INTO public.commet VALUES (2, 'hallo1', 'halli1', 1, 1800, 2100, 1);
INSERT INTO public.commet VALUES (3, 'hallo4', 'halli1', 1, 1800, 2100, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 1000, 'idk what to say', 30, 5000, 20000, false);
INSERT INTO public.galaxy VALUES (2, 'nebula', 5000, 'idk what to say also', 50, 50000, 200000, true);
INSERT INTO public.galaxy VALUES (3, 'halo', 15000, 'idk what to say also 2', 55, 550000, 2200000, false);
INSERT INTO public.galaxy VALUES (4, 'g4', 15000, 'idk what to say also 2', 55, 550000, 2200000, false);
INSERT INTO public.galaxy VALUES (5, 'g5', 15000, 'idk what to say also 2', 55, 550000, 2200000, false);
INSERT INTO public.galaxy VALUES (6, 'g6', 15000, 'idk what to say also 2', 55, 550000, 2200000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (2, 'moon1', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (3, 'moon2', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (4, 'moon3', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (5, 'moon4', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (6, 'moon5', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (7, 'moon6', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (8, 'moon7', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (9, 'moon8', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (10, 'moon9', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (11, 'moon10', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (12, 'moon11', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (13, 'moon12', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (14, 'moon13', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (15, 'moon14', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (16, 'moon15', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (17, 'moon16', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (18, 'moon17', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (19, 'moon18', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (20, 'moon19', 12, 'our moon', 10, false, 1);
INSERT INTO public.moon VALUES (21, 'moon20', 12, 'yes, i did it again, not sorry', 10, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 0, 'its earth', 10, true, true, 1, 1);
INSERT INTO public.planet VALUES (2, 'earth2', 0, 'its earth', 10, true, true, 1, 1);
INSERT INTO public.planet VALUES (3, 'earth3', 0, 'its earth', 10, true, true, 1, 1);
INSERT INTO public.planet VALUES (4, 'earth4', 0, 'its earth', 10, true, true, 1, 1);
INSERT INTO public.planet VALUES (5, 'earth5', 0, 'its earth', 10, false, false, 0, 2);
INSERT INTO public.planet VALUES (6, 'earth6', 0, 'its earth', 10, false, true, 10, 2);
INSERT INTO public.planet VALUES (7, 'earth7', 0, 'its earth', 10, false, true, 10, 3);
INSERT INTO public.planet VALUES (8, 'earth8', 0, 'its earth', 10, false, true, 10, 3);
INSERT INTO public.planet VALUES (9, 'earth9', 0, 'its earth', 10, false, true, 10, 3);
INSERT INTO public.planet VALUES (10, 'ear10h9', 0, 'its earth', 10, false, true, 10, 3);
INSERT INTO public.planet VALUES (11, 'ear11', 0, 'its earth', 10, false, true, 10, 3);
INSERT INTO public.planet VALUES (12, 'ear12', 0, '12 earths, I know, Im bored dont judge me', 10, false, true, 10, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 100, 'idk what to say but in sun', 19, 13, 2200000, 1);
INSERT INTO public.star VALUES (2, 'sun2', 100, 'idk what to say but in sun2', 9, 10, 3200000, 1);
INSERT INTO public.star VALUES (3, 'sun3', 100, 'idk what to say but in sun2', 9, 10, 3200000, 1);
INSERT INTO public.star VALUES (4, 'suuu3', 100, 'idk what to say but in sun2', 9, 10, 3200000, 2);
INSERT INTO public.star VALUES (5, 'suuu5', 100, 'idk what to say but in sun5', 9, 10, 3200000, 3);
INSERT INTO public.star VALUES (6, 'sun6', 100, 'idk what to say but in sun6 finally', 9, 10, 3200000, 3);


--
-- Name: commet_commet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.commet_commet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: commet commet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT commet_name_key UNIQUE (name);


--
-- Name: commet commet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT commet_pkey PRIMARY KEY (commet_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: commet commet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT commet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

