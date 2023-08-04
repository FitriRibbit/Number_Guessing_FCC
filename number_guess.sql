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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 4);
INSERT INTO public.games VALUES (2, 1, 3);
INSERT INTO public.games VALUES (3, 3, 541);
INSERT INTO public.games VALUES (4, 3, 485);
INSERT INTO public.games VALUES (5, 4, 494);
INSERT INTO public.games VALUES (6, 4, 359);
INSERT INTO public.games VALUES (7, 3, 420);
INSERT INTO public.games VALUES (8, 3, 1);
INSERT INTO public.games VALUES (9, 3, 194);
INSERT INTO public.games VALUES (10, 5, 526);
INSERT INTO public.games VALUES (11, 5, 50);
INSERT INTO public.games VALUES (12, 6, 531);
INSERT INTO public.games VALUES (13, 6, 74);
INSERT INTO public.games VALUES (14, 5, 536);
INSERT INTO public.games VALUES (15, 5, 1);
INSERT INTO public.games VALUES (16, 5, 543);
INSERT INTO public.games VALUES (17, 7, 288);
INSERT INTO public.games VALUES (18, 7, 208);
INSERT INTO public.games VALUES (19, 8, 175);
INSERT INTO public.games VALUES (20, 8, 85);
INSERT INTO public.games VALUES (21, 7, 465);
INSERT INTO public.games VALUES (22, 7, 1);
INSERT INTO public.games VALUES (23, 7, 468);
INSERT INTO public.games VALUES (24, 9, 380);
INSERT INTO public.games VALUES (25, 9, 490);
INSERT INTO public.games VALUES (26, 10, 334);
INSERT INTO public.games VALUES (27, 10, 435);
INSERT INTO public.games VALUES (28, 9, 84);
INSERT INTO public.games VALUES (29, 9, 1);
INSERT INTO public.games VALUES (30, 9, 311);
INSERT INTO public.games VALUES (31, 11, 1);
INSERT INTO public.games VALUES (32, 11, 228);
INSERT INTO public.games VALUES (33, 12, 455);
INSERT INTO public.games VALUES (34, 12, 495);
INSERT INTO public.games VALUES (35, 11, 497);
INSERT INTO public.games VALUES (36, 11, 1);
INSERT INTO public.games VALUES (37, 11, 411);
INSERT INTO public.games VALUES (38, 2, 1);
INSERT INTO public.games VALUES (39, 13, 1);
INSERT INTO public.games VALUES (40, 14, 3);
INSERT INTO public.games VALUES (41, 14, 3);
INSERT INTO public.games VALUES (42, 15, 461);
INSERT INTO public.games VALUES (43, 15, 120);
INSERT INTO public.games VALUES (44, 16, 466);
INSERT INTO public.games VALUES (45, 16, 449);
INSERT INTO public.games VALUES (46, 15, 158);
INSERT INTO public.games VALUES (47, 15, 1);
INSERT INTO public.games VALUES (48, 15, 36);
INSERT INTO public.games VALUES (49, 17, 2);
INSERT INTO public.games VALUES (50, 17, 417);
INSERT INTO public.games VALUES (51, 18, 2);
INSERT INTO public.games VALUES (52, 18, 459);
INSERT INTO public.games VALUES (53, 17, 43);
INSERT INTO public.games VALUES (54, 17, 1);
INSERT INTO public.games VALUES (55, 17, 463);
INSERT INTO public.games VALUES (56, 19, 536);
INSERT INTO public.games VALUES (57, 19, 510);
INSERT INTO public.games VALUES (58, 20, 547);
INSERT INTO public.games VALUES (59, 20, 454);
INSERT INTO public.games VALUES (60, 19, 282);
INSERT INTO public.games VALUES (61, 19, 1);
INSERT INTO public.games VALUES (62, 19, 483);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Lita');
INSERT INTO public.users VALUES (2, 'Prita');
INSERT INTO public.users VALUES (3, 'user_1691080461553');
INSERT INTO public.users VALUES (4, 'user_1691080461552');
INSERT INTO public.users VALUES (5, 'user_1691080564003');
INSERT INTO public.users VALUES (6, 'user_1691080564002');
INSERT INTO public.users VALUES (7, 'user_1691080801289');
INSERT INTO public.users VALUES (8, 'user_1691080801288');
INSERT INTO public.users VALUES (9, 'user_1691081741459');
INSERT INTO public.users VALUES (10, 'user_1691081741458');
INSERT INTO public.users VALUES (11, 'user_1691081778280');
INSERT INTO public.users VALUES (12, 'user_1691081778279');
INSERT INTO public.users VALUES (13, 'Romi');
INSERT INTO public.users VALUES (14, 'Tia');
INSERT INTO public.users VALUES (15, 'user_1691082000573');
INSERT INTO public.users VALUES (16, 'user_1691082000572');
INSERT INTO public.users VALUES (17, 'user_1691082023337');
INSERT INTO public.users VALUES (18, 'user_1691082023336');
INSERT INTO public.users VALUES (19, 'user_1691082170726');
INSERT INTO public.users VALUES (20, 'user_1691082170725');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 62, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 20, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
