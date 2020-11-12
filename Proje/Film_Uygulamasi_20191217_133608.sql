--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12rc1

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

--
-- Name: film_ara(character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.film_ara(_filmad character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
    if(SELECT count(*) from "film" where "filmAd"=_filmAd)> 0 THEN
        return 1; 
    else
        return 0;
    end if;
end
$$;


ALTER FUNCTION public.film_ara(_filmad character varying) OWNER TO postgres;

--
-- Name: film_ekle(character varying, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.film_ekle(_filmad character varying, _filmid integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO film(filmAd, filmID)
    VALUES(@FilmAd, @FilmID);
    if found then
        return 1; 
    else
        return 0;
    end if;
end
$$;


ALTER FUNCTION public.film_ekle(_filmad character varying, _filmid integer) OWNER TO postgres;

--
-- Name: film_ekle(character varying, integer, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.film_ekle(_filmad character varying, _filmid integer, _filmkonu character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO film(filmAd, filmID, filmKonu)
    VALUES(@FilmAd, @FilmID,  @FilmKonu);
    if found then
        return 1; 
    else
        return 0;
    end if;
end
$$;


ALTER FUNCTION public.film_ekle(_filmad character varying, _filmid integer, _filmkonu character varying) OWNER TO postgres;

--
-- Name: film_ekle(integer, character varying, character varying, date); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.film_ekle(_filmid integer, _filmad character varying, _filmkonu character varying, _vizyontarihi date) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO film(filmID, filmAd, filmKonu, vizyonTarihi)
    VALUES(_filmID, _filmAd, _filmKonu, _vizyonTarihi);
    if found then
        return 1; 
    else
        return 0;
    end if;
end
$$;


ALTER FUNCTION public.film_ekle(_filmid integer, _filmad character varying, _filmkonu character varying, _vizyontarihi date) OWNER TO postgres;

--
-- Name: film_ekle(character varying, integer, character varying, date); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.film_ekle(_filmad character varying, _filmid integer, _filmkonu character varying, _vizyontarihi date) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO film(filmAd, filmID, filmKonu, vizyonTarihi)
    VALUES(_filmAd, _filmID,  _filmKonu, _vizyonTarihi);
    if found then
        return 1; 
    else
        return 0;
    end if;
end
$$;


ALTER FUNCTION public.film_ekle(_filmad character varying, _filmid integer, _filmkonu character varying, _vizyontarihi date) OWNER TO postgres;

--
-- Name: kisi_sil(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.kisi_sil(_kisiid integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "kisi" WHERE "kisiID" = _kisiID;
    if found THEN
        return 1; 
    else
        return 0;
    end if;
end
$$;


ALTER FUNCTION public.kisi_sil(_kisiid integer) OWNER TO postgres;

--
-- Name: kisi_sil(character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.kisi_sil(_kisiad character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM "kisi" WHERE "kisiAd" = _kisiAd;
    if found THEN
        return 1; 
    else
        return 0;
    end if;
end
$$;


ALTER FUNCTION public.kisi_sil(_kisiad character varying) OWNER TO postgres;

--
-- Name: oylama_hesapla(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.oylama_hesapla(_filmid integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    miktar INTEGER;
BEGIN
    miktar := (SELECT SUM(oylamaDeger) FROM "oylama" WHERE "filmID" = _filmID);
    DELETE FROM kisi WHERE "kisiID" = _kisiID;
    if found THEN
        return miktar; 
    else
        return 0;
    end if;
end
$$;


ALTER FUNCTION public.oylama_hesapla(_filmid integer) OWNER TO postgres;

--
-- Name: u_giris(character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.u_giris(_username character varying, _password character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
    if(SELECT count(*) from "kisi" where "ad"=_username and "sifre" =_password)> 0 THEN
        return 1; 
    else
        return 0;
    end if;
end
$$;


ALTER FUNCTION public.u_giris(_username character varying, _password character varying) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: favori; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favori (
    "favoriID" integer NOT NULL,
    "filmID" integer NOT NULL,
    "kullaniciID" integer NOT NULL
);


ALTER TABLE public.favori OWNER TO postgres;

--
-- Name: film; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film (
    "filmID" integer NOT NULL,
    "filmKonu" character varying(2044),
    "filmAd" character varying(2044) NOT NULL,
    "vizyonTarihi" date
);


ALTER TABLE public.film OWNER TO postgres;

--
-- Name: filmArama; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."filmArama" (
    "filmAramaID" integer NOT NULL,
    "filmID" integer NOT NULL,
    "kullaniciID" integer NOT NULL
);


ALTER TABLE public."filmArama" OWNER TO postgres;

--
-- Name: filmDurum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."filmDurum" (
    "filmDurumAd" character varying(2044) NOT NULL,
    "filmID" integer NOT NULL
);


ALTER TABLE public."filmDurum" OWNER TO postgres;

--
-- Name: filmTur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."filmTur" (
    "filmTurID" integer NOT NULL,
    "filmID" integer NOT NULL,
    "turID" integer NOT NULL
);


ALTER TABLE public."filmTur" OWNER TO postgres;

--
-- Name: kisi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kisi (
    "kisiID" integer NOT NULL,
    ad character varying(2044) NOT NULL,
    sifre character varying(2044) NOT NULL
);


ALTER TABLE public.kisi OWNER TO postgres;

--
-- Name: kullanici; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kullanici (
    "kullaniciID" integer NOT NULL,
    "kayitTarihi" date NOT NULL,
    "sonGirisTarihi" date NOT NULL
);


ALTER TABLE public.kullanici OWNER TO postgres;

--
-- Name: kullaniciSil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."kullaniciSil" (
    "kullaniciSilNo" integer NOT NULL,
    "yoneticiID" integer NOT NULL,
    "kullaniciID" integer NOT NULL
);


ALTER TABLE public."kullaniciSil" OWNER TO postgres;

--
-- Name: oylama; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oylama (
    "oylamaID" integer NOT NULL,
    "oylamaDeger" integer NOT NULL,
    "filmID" integer NOT NULL,
    "kullaniciID" integer NOT NULL
);


ALTER TABLE public.oylama OWNER TO postgres;

--
-- Name: tur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tur (
    "turID" integer NOT NULL,
    "turAd" character varying(2044) NOT NULL
);


ALTER TABLE public.tur OWNER TO postgres;

--
-- Name: yonetici; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.yonetici (
    "yoneticiNo" integer NOT NULL,
    "silinenKullanıcıSayisi" integer NOT NULL
);


ALTER TABLE public.yonetici OWNER TO postgres;

--
-- Name: yorum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.yorum (
    "yorumID" integer NOT NULL,
    "yorumIcerik" character varying(2044) NOT NULL,
    "filmID" integer NOT NULL,
    "kullaniciID" integer NOT NULL
);


ALTER TABLE public.yorum OWNER TO postgres;

--
-- Data for Name: favori; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: film; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.film VALUES (1, 'Sevginin Gücü, konuşamayan küçük bir kız ile yolları kesişen bir adamın hikayesini anlatıyor. ', 'Sevginin Gücü', '2018-08-17');


--
-- Data for Name: filmArama; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: filmDurum; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: filmTur; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: kisi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kisi VALUES (1, 'Devrim', '1234');
INSERT INTO public.kisi VALUES (2, 'Deniz', '12345');


--
-- Data for Name: kullanici; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: kullaniciSil; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: oylama; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: tur; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: yonetici; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: yorum; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: favori favori_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favori
    ADD CONSTRAINT favori_pkey PRIMARY KEY ("favoriID");


--
-- Name: filmArama filmArama_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."filmArama"
    ADD CONSTRAINT "filmArama_pkey" PRIMARY KEY ("filmAramaID");


--
-- Name: filmDurum filmDurum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."filmDurum"
    ADD CONSTRAINT "filmDurum_pkey" PRIMARY KEY ("filmDurumAd");


--
-- Name: filmTur filmTur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."filmTur"
    ADD CONSTRAINT "filmTur_pkey" PRIMARY KEY ("filmTurID");


--
-- Name: film film_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film
    ADD CONSTRAINT film_pkey PRIMARY KEY ("filmID");


--
-- Name: kisi kisi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kisi
    ADD CONSTRAINT kisi_pkey PRIMARY KEY ("kisiID");


--
-- Name: kullaniciSil kullaniciSil_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."kullaniciSil"
    ADD CONSTRAINT "kullaniciSil_pkey" PRIMARY KEY ("kullaniciSilNo");


--
-- Name: kullanici kullanici_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kullanici
    ADD CONSTRAINT kullanici_pkey PRIMARY KEY ("kullaniciID");


--
-- Name: oylama oylama_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oylama
    ADD CONSTRAINT oylama_pkey PRIMARY KEY ("oylamaID");


--
-- Name: tur tur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tur
    ADD CONSTRAINT tur_pkey PRIMARY KEY ("turID");


--
-- Name: yonetici yonetici_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yonetici
    ADD CONSTRAINT yonetici_pkey PRIMARY KEY ("yoneticiNo");


--
-- Name: yorum yorum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yorum
    ADD CONSTRAINT yorum_pkey PRIMARY KEY ("yorumID");


--
-- Name: favori lnk_film_favori; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favori
    ADD CONSTRAINT lnk_film_favori FOREIGN KEY ("filmID") REFERENCES public.film("filmID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: filmArama lnk_film_filmArama; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."filmArama"
    ADD CONSTRAINT "lnk_film_filmArama" FOREIGN KEY ("filmID") REFERENCES public.film("filmID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: filmDurum lnk_film_filmDurum; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."filmDurum"
    ADD CONSTRAINT "lnk_film_filmDurum" FOREIGN KEY ("filmID") REFERENCES public.film("filmID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: filmTur lnk_film_filmTur; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."filmTur"
    ADD CONSTRAINT "lnk_film_filmTur" FOREIGN KEY ("filmID") REFERENCES public.film("filmID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: oylama lnk_film_oylama; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oylama
    ADD CONSTRAINT lnk_film_oylama FOREIGN KEY ("filmID") REFERENCES public.film("filmID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: yorum lnk_film_yorum; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yorum
    ADD CONSTRAINT lnk_film_yorum FOREIGN KEY ("filmID") REFERENCES public.film("filmID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: kullanici lnk_kisi_kullanici; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kullanici
    ADD CONSTRAINT lnk_kisi_kullanici FOREIGN KEY ("kullaniciID") REFERENCES public.kisi("kisiID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: yonetici lnk_kisi_yonetici; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yonetici
    ADD CONSTRAINT lnk_kisi_yonetici FOREIGN KEY ("yoneticiNo") REFERENCES public.kisi("kisiID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: favori lnk_kullanici_favori; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favori
    ADD CONSTRAINT lnk_kullanici_favori FOREIGN KEY ("kullaniciID") REFERENCES public.kullanici("kullaniciID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: filmArama lnk_kullanici_filmArama; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."filmArama"
    ADD CONSTRAINT "lnk_kullanici_filmArama" FOREIGN KEY ("kullaniciID") REFERENCES public.kullanici("kullaniciID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: kullaniciSil lnk_kullanici_kullaniciSil; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."kullaniciSil"
    ADD CONSTRAINT "lnk_kullanici_kullaniciSil" FOREIGN KEY ("kullaniciSilNo") REFERENCES public.kullanici("kullaniciID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: oylama lnk_kullanici_oylama; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oylama
    ADD CONSTRAINT lnk_kullanici_oylama FOREIGN KEY ("kullaniciID") REFERENCES public.kullanici("kullaniciID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: yorum lnk_kullanici_yorum; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yorum
    ADD CONSTRAINT lnk_kullanici_yorum FOREIGN KEY ("kullaniciID") REFERENCES public.kullanici("kullaniciID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: filmTur lnk_tur_filmTur; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."filmTur"
    ADD CONSTRAINT "lnk_tur_filmTur" FOREIGN KEY ("turID") REFERENCES public.tur("turID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: kullaniciSil lnk_yonetici_kullaniciSil; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."kullaniciSil"
    ADD CONSTRAINT "lnk_yonetici_kullaniciSil" FOREIGN KEY ("yoneticiID") REFERENCES public.yonetici("yoneticiNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

