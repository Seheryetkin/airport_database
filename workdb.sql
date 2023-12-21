--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- Name: alir; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alir (
    bid integer,
    yid character varying
);


ALTER TABLE public.alir OWNER TO postgres;

--
-- Name: bagajtakip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bagajtakip (
    id character varying(50) NOT NULL,
    ad character(20) NOT NULL,
    soyad character varying(20) NOT NULL,
    gidecegiyer character varying(50) NOT NULL
);


ALTER TABLE public.bagajtakip OWNER TO postgres;

--
-- Name: bavul; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bavul (
    id character varying(50) NOT NULL,
    ad character(20) NOT NULL,
    soyad character varying(20) NOT NULL,
    bavulyolcu character varying(50) NOT NULL,
    bavulbagaj character varying(50) NOT NULL
);


ALTER TABLE public.bavul OWNER TO postgres;

--
-- Name: bilet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bilet (
    id integer NOT NULL,
    islemtarihi date NOT NULL,
    satismiktari integer NOT NULL,
    biletyolcu character varying NOT NULL
);


ALTER TABLE public.bilet OWNER TO postgres;

--
-- Name: havalani; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.havalani (
    id character varying(50) NOT NULL,
    adi character varying(50) NOT NULL,
    sehir character(50) NOT NULL,
    ulke character(50) NOT NULL
);


ALTER TABLE public.havalani OWNER TO postgres;

--
-- Name: hediyekart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hediyekart (
    id character varying(50) NOT NULL,
    ad character(20) NOT NULL,
    soyad character varying(20) NOT NULL,
    yer character varying(100) NOT NULL,
    tarih date NOT NULL,
    notu character varying(300) NOT NULL,
    hediyekartyolcu character varying(50)
);


ALTER TABLE public.hediyekart OWNER TO postgres;

--
-- Name: personel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personel (
    id character varying(50) NOT NULL,
    ad character(20) NOT NULL,
    soyad character varying(20) NOT NULL,
    adres character varying(100) NOT NULL,
    personelhalani character varying(50) NOT NULL
);


ALTER TABLE public.personel OWNER TO postgres;

--
-- Name: rezervasyon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rezervasyon (
    id character varying(50) NOT NULL,
    ad character(20) NOT NULL,
    soyad character varying(20) NOT NULL,
    yer character varying(100) NOT NULL,
    tarih date NOT NULL,
    rezervasyonyolcu character varying(50)
);


ALTER TABLE public.rezervasyon OWNER TO postgres;

--
-- Name: sefer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sefer (
    id integer NOT NULL,
    sefer_sayisi integer NOT NULL,
    sefertarihi date NOT NULL,
    seferu character varying NOT NULL
);


ALTER TABLE public.sefer OWNER TO postgres;

--
-- Name: ucak; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ucak (
    id character varying(50) NOT NULL,
    kapasite integer NOT NULL,
    turkodu character varying(50),
    ucakhalani character varying(50)
);


ALTER TABLE public.ucak OWNER TO postgres;

--
-- Name: yolcu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.yolcu (
    id character varying(50) NOT NULL,
    ad character(20) NOT NULL,
    soyad character varying(20) NOT NULL,
    tcno character varying(11) NOT NULL,
    telno character varying(50) NOT NULL,
    adres character varying(100) NOT NULL,
    yolcucak character varying(50) NOT NULL,
    yolcubavul character varying(50) NOT NULL
);


ALTER TABLE public.yolcu OWNER TO postgres;

--
-- Name: bagajtakip bagajtakip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bagajtakip
    ADD CONSTRAINT bagajtakip_pkey PRIMARY KEY (id);


--
-- Name: bavul bavul_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bavul
    ADD CONSTRAINT bavul_pkey PRIMARY KEY (id);


--
-- Name: bilet bilet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bilet
    ADD CONSTRAINT bilet_pkey PRIMARY KEY (id);


--
-- Name: havalani havalani_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.havalani
    ADD CONSTRAINT havalani_pkey PRIMARY KEY (id);


--
-- Name: hediyekart hediyekart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hediyekart
    ADD CONSTRAINT hediyekart_pkey PRIMARY KEY (id);


--
-- Name: personel personel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_pkey PRIMARY KEY (id);


--
-- Name: rezervasyon rezervasyon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT rezervasyon_pkey PRIMARY KEY (id);


--
-- Name: sefer sefer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sefer
    ADD CONSTRAINT sefer_pkey PRIMARY KEY (id);


--
-- Name: ucak ucak_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ucak
    ADD CONSTRAINT ucak_pkey PRIMARY KEY (id);


--
-- Name: yolcu yolcu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yolcu
    ADD CONSTRAINT yolcu_pkey PRIMARY KEY (id);


--
-- Name: fki_bavulbagaj_foreign; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_bavulbagaj_foreign ON public.bavul USING btree (bavulbagaj);


--
-- Name: fki_bavulyolcu_foreign; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_bavulyolcu_foreign ON public.bavul USING btree (bavulyolcu);


--
-- Name: fki_hediyekartyolcu_foreign; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_hediyekartyolcu_foreign ON public.hediyekart USING btree (hediyekartyolcu);


--
-- Name: fki_personelhalani_foreign; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_personelhalani_foreign ON public.personel USING btree (personelhalani);


--
-- Name: fki_rezevasyonyolcu_foreign; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_rezevasyonyolcu_foreign ON public.rezervasyon USING btree (rezervasyonyolcu);


--
-- Name: fki_seferucak_foreign; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_seferucak_foreign ON public.sefer USING btree (seferu);


--
-- Name: fki_ucakhalani_foreign; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_ucakhalani_foreign ON public.ucak USING btree (ucakhalani);


--
-- Name: fki_yolcucak_foreign; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_yolcucak_foreign ON public.yolcu USING btree (yolcucak);


--
-- Name: alir alir_bid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alir
    ADD CONSTRAINT alir_bid_fkey FOREIGN KEY (bid) REFERENCES public.bilet(id);


--
-- Name: alir alir_yid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alir
    ADD CONSTRAINT alir_yid_fkey FOREIGN KEY (yid) REFERENCES public.yolcu(id);


--
-- PostgreSQL database dump complete
--

