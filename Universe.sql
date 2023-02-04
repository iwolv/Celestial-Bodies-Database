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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    type character varying(255) NOT NULL,
    is_spiral boolean NOT NULL,
    level integer,
    level_type text
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
    name character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    is_habitable boolean NOT NULL,
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
    name character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    type character varying(255) NOT NULL,
    is_habitable boolean NOT NULL,
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
-- Name: satelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelite (
    satelite_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    is_functioning boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.satelite OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelite_satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelite_satelite_id_seq OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelite_satelite_id_seq OWNED BY public.satelite.satelite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    type character varying(255) NOT NULL,
    is_habitable boolean NOT NULL,
    galaxy_id integer,
    level integer,
    level_type text
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
-- Name: satelite satelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite ALTER COLUMN satelite_id SET DEFAULT nextval('public.satelite_satelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000.00, 'Barred Spiral', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 75000.00, 'Elliptical', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 25000.00, 'Spiral', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 60000.00, 'Lenticular', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 35000.00, 'Spiral', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 45000.00, 'Spiral', true, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon', 0.27, true, 3);
INSERT INTO public.moon VALUES (3, 'Phobos', 0.07, true, 4);
INSERT INTO public.moon VALUES (4, 'Deimos', 0.02, true, 4);
INSERT INTO public.moon VALUES (5, 'Io', 0.28, true, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 0.24, true, 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', 0.41, true, 5);
INSERT INTO public.moon VALUES (8, 'Callisto', 0.38, true, 5);
INSERT INTO public.moon VALUES (9, 'Mimas', 0.13, true, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 0.14, true, 6);
INSERT INTO public.moon VALUES (11, 'Tethys', 0.11, true, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 0.12, true, 6);
INSERT INTO public.moon VALUES (13, 'Rhea', 0.16, true, 6);
INSERT INTO public.moon VALUES (14, 'Titan', 0.45, true, 6);
INSERT INTO public.moon VALUES (15, 'Hyperion', 0.05, true, 6);
INSERT INTO public.moon VALUES (16, 'Iapetus', 0.15, true, 6);
INSERT INTO public.moon VALUES (17, 'Miranda', 0.06, true, 7);
INSERT INTO public.moon VALUES (18, 'Ariel', 0.11, true, 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', 0.10, true, 7);
INSERT INTO public.moon VALUES (20, 'Titania', 0.18, true, 7);
INSERT INTO public.moon VALUES (21, 'Oberon', 0.18, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.40, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0.90, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1.00, 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 0.50, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 11.20, 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 9.50, 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4.00, 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 3.90, 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 0.20, 'Dwarf Planet', false, 1);
INSERT INTO public.planet VALUES (10, 'Haumea', 0.30, 'Dwarf Planet', false, 2);
INSERT INTO public.planet VALUES (11, 'Makemake', 0.30, 'Dwarf Planet', false, 2);
INSERT INTO public.planet VALUES (12, 'Eris', 0.30, 'Dwarf Planet', false, 2);


--
-- Data for Name: satelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelite VALUES (1, 'GPS I', 'Navigation', true, 3);
INSERT INTO public.satelite VALUES (2, 'Hubble Space Telescope', 'Observatory', true, 3);
INSERT INTO public.satelite VALUES (3, 'Chandrayaan-2', 'Exploration', true, 5);
INSERT INTO public.satelite VALUES (4, 'InSight', 'Geophysical', true, 6);
INSERT INTO public.satelite VALUES (5, 'Mars Reconnaissance Orbiter', 'Exploration', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1.00, 'G-Type', false, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 0.90, 'G-Type', false, 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 0.80, 'K-Type', false, 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 0.10, 'M-Type', false, 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Vega', 1.20, 'A-Type', false, 2, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 20.00, 'M-Type', false, 2, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Pollux', 1.90, 'K-Type', false, 3, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Aldebaran', 30.00, 'K-Type', false, 4, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Antares', 15.00, 'M-Type', false, 4, NULL, NULL);
INSERT INTO public.star VALUES (10, 'Deneb', 3.00, 'A-Type', false, 5, NULL, NULL);
INSERT INTO public.star VALUES (11, 'Rigel', 10.00, 'B-Type', false, 5, NULL, NULL);
INSERT INTO public.star VALUES (12, 'Sirius', 2.00, 'A-Type', false, 6, NULL, NULL);


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
-- Name: satelite_satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelite_satelite_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


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
-- Name: satelite satelite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_name_key UNIQUE (name);


--
-- Name: satelite satelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_pkey PRIMARY KEY (satelite_id);


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
-- Name: satelite satelite_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

