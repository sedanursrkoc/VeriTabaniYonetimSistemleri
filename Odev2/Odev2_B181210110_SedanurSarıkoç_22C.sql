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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Cevap; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cevap" (
    "cevapNo" integer NOT NULL,
    "cevapIcerik" character varying(2044) NOT NULL,
    "cevaplamaTarihi" date NOT NULL,
    "duzenlemeTarihi" date NOT NULL,
    "kullaniciNo" integer NOT NULL,
    "soruNo" integer NOT NULL
);


ALTER TABLE public."Cevap" OWNER TO postgres;

--
-- Name: CevapDuzenleme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CevapDuzenleme" (
    "cevapDuzenlemeNo" integer NOT NULL,
    "kisiNo" integer NOT NULL,
    "cevapNo" integer NOT NULL
);


ALTER TABLE public."CevapDuzenleme" OWNER TO postgres;

--
-- Name: Editor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Editor" (
    "kisiNo" integer NOT NULL,
    ad character varying(2044) NOT NULL,
    sifre character varying(2044) NOT NULL
);


ALTER TABLE public."Editor" OWNER TO postgres;

--
-- Name: IletisimBilgileri; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."IletisimBilgileri" (
    "Email" character varying(2044) NOT NULL,
    "kullaniciNo" integer NOT NULL
);


ALTER TABLE public."IletisimBilgileri" OWNER TO postgres;

--
-- Name: Kullanici; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kullanici" (
    "kullaniciNo" integer NOT NULL,
    ad character varying(2044) NOT NULL,
    sifre character varying(2044) NOT NULL
);


ALTER TABLE public."Kullanici" OWNER TO postgres;

--
-- Name: KullaniciAktivite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."KullaniciAktivite" (
    "sonGirisTarihi" date NOT NULL,
    "kayitTarihi" date NOT NULL,
    "profilGoruntulenmeSayisi" integer NOT NULL,
    "kullaniciNo" integer NOT NULL
);


ALTER TABLE public."KullaniciAktivite" OWNER TO postgres;

--
-- Name: KullaniciRozet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."KullaniciRozet" (
    "kullaniciRozetSayisi" integer NOT NULL,
    "kullaniciNo" integer NOT NULL,
    "rozetTur" character varying(2044) NOT NULL
);


ALTER TABLE public."KullaniciRozet" OWNER TO postgres;

--
-- Name: Moderator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Moderator" (
    "kisiNo" integer NOT NULL,
    ad character varying(2044) NOT NULL,
    sifre character varying(2044) NOT NULL
);


ALTER TABLE public."Moderator" OWNER TO postgres;

--
-- Name: Oylama; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Oylama" (
    "oylamaNo" integer NOT NULL,
    deger integer NOT NULL,
    "soruNo" integer,
    "cevapNo" integer
);


ALTER TABLE public."Oylama" OWNER TO postgres;

--
-- Name: Rozet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rozet" (
    "rozetTur" character varying(2044) NOT NULL,
    "rozetRenk" character varying(2044) NOT NULL
);


ALTER TABLE public."Rozet" OWNER TO postgres;

--
-- Name: Soru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Soru" (
    "soruNo" integer NOT NULL,
    "sorulduguTarih" date NOT NULL,
    "duzenlenmeTarihi" date NOT NULL,
    "soruIcerik" character varying(2044) NOT NULL,
    "kullaniciNo" integer DEFAULT 0
);


ALTER TABLE public."Soru" OWNER TO postgres;

--
-- Name: SoruDuzenleme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SoruDuzenleme" (
    "soruDuzenlemeNo" integer NOT NULL,
    "kisiNo" integer NOT NULL,
    "soruNo" integer NOT NULL
);


ALTER TABLE public."SoruDuzenleme" OWNER TO postgres;

--
-- Name: SoruTag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SoruTag" (
    "soruNo" integer NOT NULL,
    "tagNo" integer NOT NULL
);


ALTER TABLE public."SoruTag" OWNER TO postgres;

--
-- Name: Tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tag" (
    "tagNo" integer NOT NULL,
    "tagAd" character varying(2044) NOT NULL
);


ALTER TABLE public."Tag" OWNER TO postgres;

--
-- Name: TagDuzenleme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TagDuzenleme" (
    "tagDuzenlemeNo" integer NOT NULL,
    "tagNo" integer NOT NULL,
    "kisiNo" integer NOT NULL
);


ALTER TABLE public."TagDuzenleme" OWNER TO postgres;

--
-- Name: Yonetici; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Yonetici" (
    "kisiNo" integer NOT NULL,
    ad character varying(2044) NOT NULL,
    sifre character varying(2044) NOT NULL
);


ALTER TABLE public."Yonetici" OWNER TO postgres;

--
-- Name: Yorum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Yorum" (
    "yorumNo" integer NOT NULL,
    "yorumIcerik" character varying(2044) NOT NULL,
    tarih date NOT NULL,
    "duzenlenmeSayisi" integer NOT NULL,
    "kullaniciNo" integer NOT NULL,
    "cevapNo" integer NOT NULL
);


ALTER TABLE public."Yorum" OWNER TO postgres;

--
-- Name: YorumDuzenleme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."YorumDuzenleme" (
    "yorumDuzenlemeNo" integer NOT NULL,
    "kisiNo" integer NOT NULL,
    "yorumNo" integer NOT NULL
);


ALTER TABLE public."YorumDuzenleme" OWNER TO postgres;

--
-- Data for Name: Cevap; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Cevap" VALUES (1, 'Cevap1', '2019-10-02', '2019-10-29', 1, 1);
INSERT INTO public."Cevap" VALUES (2, 'Cevap2', '2019-10-08', '2019-10-17', 2, 2);
INSERT INTO public."Cevap" VALUES (3, 'Cevap3', '2019-09-07', '2019-10-13', 3, 3);


--
-- Data for Name: CevapDuzenleme; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."CevapDuzenleme" VALUES (856, 1, 1);
INSERT INTO public."CevapDuzenleme" VALUES (861, 2, 2);
INSERT INTO public."CevapDuzenleme" VALUES (912, 3, 3);


--
-- Data for Name: Editor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Editor" VALUES (1, 'Sevgi', 'abc');
INSERT INTO public."Editor" VALUES (2, 'Devrim', 'abcd');
INSERT INTO public."Editor" VALUES (3, 'Deniz', 'abcde');


--
-- Data for Name: IletisimBilgileri; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."IletisimBilgileri" VALUES ('ayse@gmail.com', 1);
INSERT INTO public."IletisimBilgileri" VALUES ('ali@gmail.com', 2);
INSERT INTO public."IletisimBilgileri" VALUES ('ahmet@gmail.com', 3);


--
-- Data for Name: Kullanici; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Kullanici" VALUES (1, 'Ayse', '123');
INSERT INTO public."Kullanici" VALUES (2, 'Ali', '1234');
INSERT INTO public."Kullanici" VALUES (3, 'Ahmet', '12345');


--
-- Data for Name: KullaniciAktivite; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."KullaniciAktivite" VALUES ('2019-11-06', '2014-08-11', 327, 1);
INSERT INTO public."KullaniciAktivite" VALUES ('2018-12-26', '2015-04-07', 2496, 2);
INSERT INTO public."KullaniciAktivite" VALUES ('2019-10-14', '2017-11-09', 28, 3);


--
-- Data for Name: KullaniciRozet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."KullaniciRozet" VALUES (20, 1, 'altin');
INSERT INTO public."KullaniciRozet" VALUES (37, 2, 'gumus');
INSERT INTO public."KullaniciRozet" VALUES (62, 3, 'bronz');


--
-- Data for Name: Moderator; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Moderator" VALUES (1, 'Sevgi', 'abc');
INSERT INTO public."Moderator" VALUES (2, 'Devrim', 'abcd');
INSERT INTO public."Moderator" VALUES (3, 'Deniz', 'abcde');


--
-- Data for Name: Oylama; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Oylama" VALUES (1, 1, 1, 1);
INSERT INTO public."Oylama" VALUES (2, 1, 2, 2);
INSERT INTO public."Oylama" VALUES (3, 1, 3, 3);


--
-- Data for Name: Rozet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Rozet" VALUES ('altin', 'sari');
INSERT INTO public."Rozet" VALUES ('gumus', 'gri');
INSERT INTO public."Rozet" VALUES ('bronz', 'turuncu');


--
-- Data for Name: Soru; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Soru" VALUES (1, '2019-11-16', '2019-12-01', 'AskUbuntu', 1);
INSERT INTO public."Soru" VALUES (2, '2019-11-23', '2019-12-05', 'AskUbuntu2', 2);
INSERT INTO public."Soru" VALUES (3, '2019-11-14', '2019-12-09', 'AskUbuntu3', 3);


--
-- Data for Name: SoruDuzenleme; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SoruDuzenleme" VALUES (1, 1, 1);
INSERT INTO public."SoruDuzenleme" VALUES (2, 2, 2);
INSERT INTO public."SoruDuzenleme" VALUES (3, 3, 3);


--
-- Data for Name: SoruTag; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SoruTag" VALUES (1, 1);
INSERT INTO public."SoruTag" VALUES (2, 2);
INSERT INTO public."SoruTag" VALUES (3, 3);


--
-- Data for Name: Tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Tag" VALUES (1, 'boot');
INSERT INTO public."Tag" VALUES (2, 'server');
INSERT INTO public."Tag" VALUES (3, 'unity');


--
-- Data for Name: TagDuzenleme; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."TagDuzenleme" VALUES (1, 1, 1);
INSERT INTO public."TagDuzenleme" VALUES (2, 2, 2);
INSERT INTO public."TagDuzenleme" VALUES (3, 3, 3);


--
-- Data for Name: Yonetici; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Yonetici" VALUES (1, 'Sevgi', 'abc');
INSERT INTO public."Yonetici" VALUES (2, 'Devrim', 'abcd');
INSERT INTO public."Yonetici" VALUES (3, 'Deniz', 'abcde');


--
-- Data for Name: Yorum; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Yorum" VALUES (1, 'Yorum1', '2018-07-14', 3, 1, 1);
INSERT INTO public."Yorum" VALUES (2, 'Yorum2', '2017-09-26', 2, 2, 2);
INSERT INTO public."Yorum" VALUES (3, 'Yorum3', '2018-04-07', 1, 3, 3);


--
-- Data for Name: YorumDuzenleme; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."YorumDuzenleme" VALUES (1, 1, 1);
INSERT INTO public."YorumDuzenleme" VALUES (2, 2, 2);
INSERT INTO public."YorumDuzenleme" VALUES (3, 3, 3);


--
-- Name: CevapDuzenleme CevapDuzenleme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CevapDuzenleme"
    ADD CONSTRAINT "CevapDuzenleme_pkey" PRIMARY KEY ("cevapDuzenlemeNo");


--
-- Name: Cevap Cevap_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevap"
    ADD CONSTRAINT "Cevap_pkey" PRIMARY KEY ("cevapNo", "cevapIcerik", "cevaplamaTarihi", "duzenlemeTarihi");


--
-- Name: Editor Editor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Editor"
    ADD CONSTRAINT "Editor_pkey" PRIMARY KEY ("kisiNo");


--
-- Name: IletisimBilgileri IletisimBilgileri_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IletisimBilgileri"
    ADD CONSTRAINT "IletisimBilgileri_pkey" PRIMARY KEY ("Email");


--
-- Name: KullaniciAktivite KullaniciAktivite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciAktivite"
    ADD CONSTRAINT "KullaniciAktivite_pkey" PRIMARY KEY ("sonGirisTarihi", "kayitTarihi", "profilGoruntulenmeSayisi");


--
-- Name: KullaniciRozet KullaniciRozet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozet"
    ADD CONSTRAINT "KullaniciRozet_pkey" PRIMARY KEY ("kullaniciRozetSayisi");


--
-- Name: Kullanici Kullanici_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanici"
    ADD CONSTRAINT "Kullanici_pkey" PRIMARY KEY ("kullaniciNo", ad, sifre);


--
-- Name: Moderator Moderator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Moderator"
    ADD CONSTRAINT "Moderator_pkey" PRIMARY KEY ("kisiNo");


--
-- Name: Oylama Oylama_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Oylama"
    ADD CONSTRAINT "Oylama_pkey" PRIMARY KEY ("oylamaNo", deger);


--
-- Name: Rozet Rozet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rozet"
    ADD CONSTRAINT "Rozet_pkey" PRIMARY KEY ("rozetTur", "rozetRenk");


--
-- Name: SoruDuzenleme SoruDuzenleme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruDuzenleme"
    ADD CONSTRAINT "SoruDuzenleme_pkey" PRIMARY KEY ("soruDuzenlemeNo");


--
-- Name: Soru Soru_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Soru"
    ADD CONSTRAINT "Soru_pkey" PRIMARY KEY ("soruNo", "sorulduguTarih", "duzenlenmeTarihi", "soruIcerik");


--
-- Name: TagDuzenleme TagDuzenleme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TagDuzenleme"
    ADD CONSTRAINT "TagDuzenleme_pkey" PRIMARY KEY ("tagDuzenlemeNo");


--
-- Name: Tag Tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_pkey" PRIMARY KEY ("tagNo", "tagAd");


--
-- Name: Yonetici Yonetici_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yonetici"
    ADD CONSTRAINT "Yonetici_pkey" PRIMARY KEY ("kisiNo", ad, sifre);


--
-- Name: Yorum Yorum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yorum"
    ADD CONSTRAINT "Yorum_pkey" PRIMARY KEY ("yorumNo", "yorumIcerik", tarih, "duzenlenmeSayisi");


--
-- Name: Cevap unique_Cevap_cevapIcerik; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevap"
    ADD CONSTRAINT "unique_Cevap_cevapIcerik" UNIQUE ("cevapIcerik");


--
-- Name: Cevap unique_Cevap_cevapNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevap"
    ADD CONSTRAINT "unique_Cevap_cevapNo" UNIQUE ("cevapNo");


--
-- Name: Cevap unique_Cevap_cevaplamaTarihi; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevap"
    ADD CONSTRAINT "unique_Cevap_cevaplamaTarihi" UNIQUE ("cevaplamaTarihi");


--
-- Name: Cevap unique_Cevap_duzenlemeTarihi; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevap"
    ADD CONSTRAINT "unique_Cevap_duzenlemeTarihi" UNIQUE ("duzenlemeTarihi");


--
-- Name: KullaniciAktivite unique_KullaniciAktivite_kullaniciNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciAktivite"
    ADD CONSTRAINT "unique_KullaniciAktivite_kullaniciNo" UNIQUE ("kullaniciNo");


--
-- Name: Kullanici unique_Kullanici_kullaniciNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanici"
    ADD CONSTRAINT "unique_Kullanici_kullaniciNo" UNIQUE ("kullaniciNo");


--
-- Name: Moderator unique_Moderator_ad; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Moderator"
    ADD CONSTRAINT "unique_Moderator_ad" UNIQUE (ad);


--
-- Name: Moderator unique_Moderator_sifre; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Moderator"
    ADD CONSTRAINT "unique_Moderator_sifre" UNIQUE (sifre);


--
-- Name: Rozet unique_Rozet_rozetRenk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rozet"
    ADD CONSTRAINT "unique_Rozet_rozetRenk" UNIQUE ("rozetRenk");


--
-- Name: Rozet unique_Rozet_rozetTur; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rozet"
    ADD CONSTRAINT "unique_Rozet_rozetTur" UNIQUE ("rozetTur");


--
-- Name: Soru unique_Soru_soruNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Soru"
    ADD CONSTRAINT "unique_Soru_soruNo" UNIQUE ("soruNo");


--
-- Name: Tag unique_Tag_tagNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "unique_Tag_tagNo" UNIQUE ("tagNo");


--
-- Name: Yonetici unique_Yonetici_kisiNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yonetici"
    ADD CONSTRAINT "unique_Yonetici_kisiNo" UNIQUE ("kisiNo");


--
-- Name: YorumDuzenleme unique_YorumDuzenleme_yorumDuzenlemeNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."YorumDuzenleme"
    ADD CONSTRAINT "unique_YorumDuzenleme_yorumDuzenlemeNo" PRIMARY KEY ("yorumDuzenlemeNo");


--
-- Name: Yorum unique_Yorum_yorumNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yorum"
    ADD CONSTRAINT "unique_Yorum_yorumNo" UNIQUE ("yorumNo");


--
-- Name: index_kisiNo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_kisiNo" ON public."Moderator" USING btree ("kisiNo");


--
-- Name: index_rozetTur; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_rozetTur" ON public."Rozet" USING btree ("rozetTur");


--
-- Name: CevapDuzenleme lnk_Cevap_CevapDuzenleme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CevapDuzenleme"
    ADD CONSTRAINT "lnk_Cevap_CevapDuzenleme" FOREIGN KEY ("cevapNo") REFERENCES public."Cevap"("cevapNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Oylama lnk_Cevap_Oylama; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Oylama"
    ADD CONSTRAINT "lnk_Cevap_Oylama" FOREIGN KEY ("cevapNo") REFERENCES public."Cevap"("cevapNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Yorum lnk_Cevap_Yorum; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yorum"
    ADD CONSTRAINT "lnk_Cevap_Yorum" FOREIGN KEY ("cevapNo") REFERENCES public."Cevap"("cevapNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Cevap lnk_Kullanici_Cevap; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevap"
    ADD CONSTRAINT "lnk_Kullanici_Cevap" FOREIGN KEY ("kullaniciNo") REFERENCES public."Kullanici"("kullaniciNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: IletisimBilgileri lnk_Kullanici_IletisimBilgileri; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IletisimBilgileri"
    ADD CONSTRAINT "lnk_Kullanici_IletisimBilgileri" FOREIGN KEY ("kullaniciNo") REFERENCES public."Kullanici"("kullaniciNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KullaniciAktivite lnk_Kullanici_KullaniciAktivite; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciAktivite"
    ADD CONSTRAINT "lnk_Kullanici_KullaniciAktivite" FOREIGN KEY ("kullaniciNo") REFERENCES public."Kullanici"("kullaniciNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KullaniciRozet lnk_Kullanici_KullaniciRozet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozet"
    ADD CONSTRAINT "lnk_Kullanici_KullaniciRozet" FOREIGN KEY ("kullaniciNo") REFERENCES public."Kullanici"("kullaniciNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Soru lnk_Kullanici_Soru; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Soru"
    ADD CONSTRAINT "lnk_Kullanici_Soru" FOREIGN KEY ("kullaniciNo") REFERENCES public."Kullanici"("kullaniciNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Yorum lnk_Kullanici_Yorum; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yorum"
    ADD CONSTRAINT "lnk_Kullanici_Yorum" FOREIGN KEY ("kullaniciNo") REFERENCES public."Kullanici"("kullaniciNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TagDuzenleme lnk_Moderator_TagDuzenleme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TagDuzenleme"
    ADD CONSTRAINT "lnk_Moderator_TagDuzenleme" FOREIGN KEY ("kisiNo") REFERENCES public."Moderator"("kisiNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KullaniciRozet lnk_Rozet_KullaniciRozet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozet"
    ADD CONSTRAINT "lnk_Rozet_KullaniciRozet" FOREIGN KEY ("rozetTur") REFERENCES public."Rozet"("rozetTur") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Cevap lnk_Soru_Cevap; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevap"
    ADD CONSTRAINT "lnk_Soru_Cevap" FOREIGN KEY ("soruNo") REFERENCES public."Soru"("soruNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Oylama lnk_Soru_Oylama; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Oylama"
    ADD CONSTRAINT "lnk_Soru_Oylama" FOREIGN KEY ("soruNo") REFERENCES public."Soru"("soruNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SoruDuzenleme lnk_Soru_SoruDuzenleme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruDuzenleme"
    ADD CONSTRAINT "lnk_Soru_SoruDuzenleme" FOREIGN KEY ("soruNo") REFERENCES public."Soru"("soruNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SoruTag lnk_Soru_SoruTag; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruTag"
    ADD CONSTRAINT "lnk_Soru_SoruTag" FOREIGN KEY ("soruNo") REFERENCES public."Soru"("soruNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SoruTag lnk_Tag_SoruTag; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruTag"
    ADD CONSTRAINT "lnk_Tag_SoruTag" FOREIGN KEY ("tagNo") REFERENCES public."Tag"("tagNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TagDuzenleme lnk_Tag_TagDuzenleme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TagDuzenleme"
    ADD CONSTRAINT "lnk_Tag_TagDuzenleme" FOREIGN KEY ("tagNo") REFERENCES public."Tag"("tagNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: CevapDuzenleme lnk_Yonetici_CevapDuzenleme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CevapDuzenleme"
    ADD CONSTRAINT "lnk_Yonetici_CevapDuzenleme" FOREIGN KEY ("kisiNo") REFERENCES public."Yonetici"("kisiNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Editor lnk_Yonetici_Editor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Editor"
    ADD CONSTRAINT "lnk_Yonetici_Editor" FOREIGN KEY ("kisiNo") REFERENCES public."Yonetici"("kisiNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Moderator lnk_Yonetici_Moderator; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Moderator"
    ADD CONSTRAINT "lnk_Yonetici_Moderator" FOREIGN KEY ("kisiNo", ad, sifre) REFERENCES public."Yonetici"("kisiNo", ad, sifre) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SoruDuzenleme lnk_Yonetici_SoruDuzenleme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruDuzenleme"
    ADD CONSTRAINT "lnk_Yonetici_SoruDuzenleme" FOREIGN KEY ("kisiNo") REFERENCES public."Yonetici"("kisiNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: YorumDuzenleme lnk_Yonetici_YorumDuzenleme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."YorumDuzenleme"
    ADD CONSTRAINT "lnk_Yonetici_YorumDuzenleme" FOREIGN KEY ("kisiNo") REFERENCES public."Yonetici"("kisiNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: YorumDuzenleme lnk_Yorum_YorumDuzenleme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."YorumDuzenleme"
    ADD CONSTRAINT "lnk_Yorum_YorumDuzenleme" FOREIGN KEY ("yorumNo") REFERENCES public."Yorum"("yorumNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

