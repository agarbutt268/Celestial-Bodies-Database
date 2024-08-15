--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30),
    light_years_away numeric,
    num_stars integer,
    description text NOT NULL
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
-- Name: misc; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.misc (
    name character varying(30),
    age integer NOT NULL,
    misc_id integer NOT NULL
);


ALTER TABLE public.misc OWNER TO freecodecamp;

--
-- Name: misc_key_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.misc_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_key_seq OWNER TO freecodecamp;

--
-- Name: misc_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.misc_key_seq OWNED BY public.misc.misc_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    revolution_in_days double precision,
    description text NOT NULL,
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
    name character varying(30),
    num_of_moons integer,
    description text NOT NULL,
    star_id integer,
    has_life boolean
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
    name character varying(30),
    mass integer,
    description text NOT NULL,
    galaxy_id integer,
    has_planets boolean
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
-- Name: misc misc_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc ALTER COLUMN misc_id SET DEFAULT nextval('public.misc_key_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 3, 1, 'The Andromeda Galaxy is the closest spiral galaxy to the Milky Way and is on a collision course with it, predicted to merge in about 4.5 billion years. It is the largest galaxy in the Local Group, which also includes the Milky Way, the Triangulum Galaxy, and about 54 other smaller galaxies.');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, 250, 'The Milky Way is a barred spiral galaxy containing our Solar System. It has a diameter of about 100,000 light-years and is part of the Local Group of galaxies. The Milky Way''s central region contains a supermassive black hole known as Sagittarius A*. The galaxy is characterized by its spiral arms, which are regions of active star formation.');
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 53.5, 1, 'Messier 87 is a giant elliptical galaxy located in the Virgo Cluster. It is known for its supermassive black hole, which was imaged by the Event Horizon Telescope in 2019. It has a jet of energetic plasma extending from its core.');
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 13, 100, 'Centaurus A is a peculiar galaxy with characteristics of both an elliptical and a spiral galaxy. It is one of the closest active galaxies to Earth and is notable for its strong radio emissions and dust lane.');
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 2.73, 40, 'The Triangulum Galaxy is a member of the Local Group and is the third-largest galaxy in the group. It is a spiral galaxy, slightly smaller than the Milky Way and the Andromeda Galaxy.');
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 29.3, 800, 'The Sombrero Galaxy is a spiral galaxy known for its bright nucleus, large central bulge, and a prominent dust lane in its inclined disk, giving it the appearance of a sombrero hat.');


--
-- Data for Name: misc; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.misc VALUES ('aden', 19, 1);
INSERT INTO public.misc VALUES ('ur mom', 69, 2);
INSERT INTO public.misc VALUES ('Bryce', 27, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 27.3, 'The Moon is Earth''s only natural satellite and the fifth-largest moon in the Solar System. It has a synchronous rotation with Earth, showing the same face to the planet.', 13);
INSERT INTO public.moon VALUES (2, 'Io', 1.77, 'Io is the innermost of Jupiter''s four Galilean moons. It is the most geologically active body in the Solar System, with over 400 active volcanoes.', 14);
INSERT INTO public.moon VALUES (3, 'Europa', 3.55, 'Europa is one of Jupiter''s Galilean moons and is known for its smooth, icy surface. It is believed to have a subsurface ocean that may harbor life.', 14);
INSERT INTO public.moon VALUES (4, 'Ganymede', 7.15, 'Ganymede is the largest moon in the Solar System, even larger than the planet Mercury. It has a magnetic field and a mix of rocky and icy terrain.', 14);
INSERT INTO public.moon VALUES (5, 'Callisto', 16.69, 'Callisto is the second-largest of Jupiter''s moons and the most heavily cratered object in the Solar System. It is considered a dead world with no geological activity.', 14);
INSERT INTO public.moon VALUES (6, 'Amalthea', 0.5, 'Amalthea is one of Jupiter''s smaller moons and has an irregular shape. It is located closer to Jupiter than the Galilean moons.', 14);
INSERT INTO public.moon VALUES (7, 'Himalia', 250.56, 'Himalia is the largest of Jupiter''s irregular moons. It has a diameter of about 170 kilometers and is part of the Himalia group.', 14);
INSERT INTO public.moon VALUES (8, 'Thebe', 0.68, 'Thebe is one of Jupiter''s smaller moons and is located close to the planet. It has a highly irregular shape and a surface covered with large craters.', 14);
INSERT INTO public.moon VALUES (9, 'Elara', 259.65, 'Elara is one of Jupiter''s irregular moons. It is part of the Himalia group and has a diameter of about 80 kilometers.', 14);
INSERT INTO public.moon VALUES (10, 'Pasiphae', 735, 'Pasiphae is one of Jupiter''s retrograde moons, meaning it orbits in the opposite direction of the planet''s rotation. It has a highly inclined and eccentric orbit.', 14);
INSERT INTO public.moon VALUES (11, 'Metis', 0.29, 'Metis is the closest moon to Jupiter. It orbits within Jupiter''s main ring and helps maintain the ring through its gravitational influence.', 14);
INSERT INTO public.moon VALUES (12, 'Adrastea', 0.3, 'Adrastea is a small moon that orbits just outside Jupiter''s main ring. It is believed to contribute material to the ring.', 14);
INSERT INTO public.moon VALUES (13, 'Leda', 240.92, 'Leda is one of Jupiter''s smaller moons and is part of the Himalia group. It has a diameter of about 20 kilometers.', 14);
INSERT INTO public.moon VALUES (14, 'Sinope', 738, 'Sinope is a retrograde irregular moon with a distant, highly inclined orbit. It has a diameter of about 38 kilometers.', 14);
INSERT INTO public.moon VALUES (15, 'Lysithea', 259.22, 'Lysithea is one of Jupiter''s irregular moons and is part of the Himalia group. It has a diameter of about 36 kilometers.', 14);
INSERT INTO public.moon VALUES (16, 'Carme', 702, 'Carme is a retrograde irregular moon with a highly inclined and eccentric orbit. It has a diameter of about 46 kilometers.', 14);
INSERT INTO public.moon VALUES (17, 'Ananke', 629, 'Ananke is a retrograde irregular moon and the largest member of the Ananke group. It has a diameter of about 28 kilometers.', 14);
INSERT INTO public.moon VALUES (18, 'Themisto', 129.9, 'Themisto has a unique orbit among Jupiter''s moons, lying between the Galilean moons and the outer moons. It has a diameter of about 9 kilometers.', 14);
INSERT INTO public.moon VALUES (19, 'Callirrhoe', 758.8, 'Callirrhoe is a small retrograde moon with a highly inclined orbit. It was discovered in 1999 and has a diameter of about 8 kilometers.', 14);
INSERT INTO public.moon VALUES (20, 'Kalyke', 758.1, 'Kalyke is a retrograde moon with a highly inclined and eccentric orbit. It is part of the Carme group and has a diameter of about 5 kilometers.', 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (11, 'HD 9446b', 0, 'A gas giant exoplanet with a mass around 0.7 times that of Jupiter.', 6, NULL);
INSERT INTO public.planet VALUES (12, 'HD 9446c', 0, ' A gas giant with a mass about 1.8 times that of Jupiter.', 6, NULL);
INSERT INTO public.planet VALUES (13, 'Earth', 1, 'Earth is the third planet from the Sun and the only one known to support life. It has a moderate climate, liquid water, and a protective atmosphere. Its single moon, the Moon, is the fifth-largest in the Solar System.', 8, NULL);
INSERT INTO public.planet VALUES (14, 'Jupiter', 92, 'Jupiter is the largest planet in the Solar System and is known for its Great Red Spot, a giant storm. It has a thick atmosphere primarily composed of hydrogen and helium. Notable moons include Ganymede, Io, Europa, and Callisto.', 8, NULL);
INSERT INTO public.planet VALUES (1, 'Kepler-186f', 0, 'Kepler-186f is an Earth-sized planet located in the habitable zone of its star, meaning it could potentially have liquid water on its surface. It orbits a red dwarf star.', 2, NULL);
INSERT INTO public.planet VALUES (2, 'Proxima Centauri b', 0, 'Proxima Centauri b is an exoplanet orbiting the closest star to the Sun, Proxima Centauri. It is located in the habitable zone and has a mass slightly larger than Earth''s, making it a candidate for potential habitability.', 2, NULL);
INSERT INTO public.planet VALUES (3, 'TRAPPIST-1e', 0, 'TRAPPIST-1e is one of the seven Earth-sized planets orbiting the ultra-cool dwarf star TRAPPIST-1. It is located in the habitable zone and has conditions that could support liquid water.', 2, NULL);
INSERT INTO public.planet VALUES (4, 'Kepler-452b', 0, 'Kepler-452b is a super-Earth exoplanet orbiting in the habitable zone of its star. It has a radius about 1.5 times that of Earth and is often referred to as Earth''s "cousin."', 2, NULL);
INSERT INTO public.planet VALUES (5, '51 Pegasi b (Dimidium)', 0, '51 Pegasi b was the first exoplanet discovered orbiting a Sun-like star. It is a gas giant with a mass about half that of Jupiter and orbits very close to its star.', 2, NULL);
INSERT INTO public.planet VALUES (6, 'HD 209458 b (Osiris)', 0, 'HD 209458 b, also known as Osiris, was the first exoplanet observed to transit its star. It has a mass slightly less than Jupiter''s and is known for its evaporating atmosphere.', 2, NULL);
INSERT INTO public.planet VALUES (7, 'Gliese 581g', 0, 'Gliese 581g is an unconfirmed exoplanet that, if it exists, lies in the habitable zone of its star. It has a mass of about 3.1 times that of Earth.', 2, NULL);
INSERT INTO public.planet VALUES (8, 'HD 189733 b', 0, 'HD 189733 b is a well-studied hot Jupiter known for its deep blue color, which is caused by silicate particles in its atmosphere. It is one of the most extensively observed exoplanets.', 2, NULL);
INSERT INTO public.planet VALUES (9, 'WASP-12b', 0, 'WASP-12b is a hot Jupiter with an extremely close orbit to its star, leading to intense heat and tidal forces that are causing the planet to be slowly ripped apart.', 2, NULL);
INSERT INTO public.planet VALUES (10, 'LHS 1140 b', 0, 'LHS 1140 b is a rocky super-Earth located in the habitable zone of its star. It has a mass about 6.6 times that of Earth and is considered one of the best candidates for atmospheric studies.', 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 11, 'Betelgeuse is a red supergiant star located in the Orion constellation. It is one of the largest and most luminous stars visible to the naked eye and is nearing the end of its life, expected to explode as a supernova.', 2, NULL);
INSERT INTO public.star VALUES (2, 'Sirius A', 2, 'Sirius A, also known as the Dog Star, is the brightest star in the night sky. It is part of a binary star system, with Sirius B being a white dwarf.', 2, NULL);
INSERT INTO public.star VALUES (3, 'Rigel', 18, 'Rigel is a blue supergiant star located in the constellation Orion. It is one of the brightest stars in the night sky and a significant source of ultraviolet radiation.', 2, NULL);
INSERT INTO public.star VALUES (4, 'Alpheratz', 4, 'Alpheratz is the brightest star in the Andromeda constellation, though it is technically part of the Milky Way. It''s a binary star system with a primary component that is a blue subgiant.', 1, NULL);
INSERT INTO public.star VALUES (5, 'Upsilon Trianguli', 1, 'Upsilon Trianguli is a binary star system within the Triangulum constellation. It''s a relatively bright star visible to the naked eye.', 5, NULL);
INSERT INTO public.star VALUES (6, 'HD 9446', 1, 'HD 9446 is a star within the Triangulum Galaxy that has been identified as having an exoplanet, showcasing the potential for planetary systems in other galaxies.', 5, NULL);
INSERT INTO public.star VALUES (8, 'The Sun', 1, 'Our home', 2, NULL);
INSERT INTO public.star VALUES (7, 'SN 2011dh Progenitor Star', 20, 'The progenitor star of supernova SN 2011dh in the Whirlpool Galaxy was a yellow supergiant. Its explosion provided valuable insights into the life cycles of massivestars.', 2, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: misc_key_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.misc_key_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: misc misc_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc
    ADD CONSTRAINT misc_name_key UNIQUE (name);


--
-- Name: misc misc_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc
    ADD CONSTRAINT misc_pkey PRIMARY KEY (misc_id);


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

