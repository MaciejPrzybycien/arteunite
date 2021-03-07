--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 13.1

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO beret;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO beret;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO beret;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO beret;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO beret;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO beret;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO beret;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO beret;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO beret;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO beret;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO beret;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO beret;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: contact_contactpage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.contact_contactpage (
    page_ptr_id integer NOT NULL
);


ALTER TABLE public.contact_contactpage OWNER TO beret;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: beret
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


ALTER TABLE public.django_admin_log OWNER TO beret;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO beret;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO beret;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO beret;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO beret;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO beret;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO beret;

--
-- Name: dolacz_dolaczpage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.dolacz_dolaczpage (
    page_ptr_id integer NOT NULL,
    opis text NOT NULL,
    link_text text NOT NULL,
    link character varying(255) NOT NULL,
    pokaz_email boolean NOT NULL,
    pokaz_imie boolean NOT NULL,
    pokaz_jak_sie_dowiedziales boolean NOT NULL,
    pokaz_napisz_do_nas boolean NOT NULL,
    pokaz_newsletter boolean NOT NULL
);


ALTER TABLE public.dolacz_dolaczpage OWNER TO beret;

--
-- Name: dorzuc_dorzucpage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.dorzuc_dorzucpage (
    page_ptr_id integer NOT NULL,
    opis text NOT NULL,
    link_text text NOT NULL,
    link character varying(255) NOT NULL
);


ALTER TABLE public.dorzuc_dorzucpage OWNER TO beret;

--
-- Name: home_homepage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.home_homepage (
    page_ptr_id integer NOT NULL,
    earth text NOT NULL,
    earth_head text NOT NULL,
    flame text NOT NULL,
    flame_head text NOT NULL,
    long_name text NOT NULL,
    quote text NOT NULL,
    star text NOT NULL,
    star_head text NOT NULL,
    quote_author text NOT NULL,
    stodola text NOT NULL,
    wolna_ziemia text NOT NULL,
    workshop text NOT NULL,
    filozofia text NOT NULL,
    spis text NOT NULL,
    spis_link text NOT NULL,
    spis_title text NOT NULL
);


ALTER TABLE public.home_homepage OWNER TO beret;

--
-- Name: miejsca_miejscapage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.miejsca_miejscapage (
    page_ptr_id integer NOT NULL,
    opis text NOT NULL,
    objasnienie text NOT NULL,
    komentarz text NOT NULL,
    zaproszenie text NOT NULL
);


ALTER TABLE public.miejsca_miejscapage OWNER TO beret;

--
-- Name: misja_misjapage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.misja_misjapage (
    page_ptr_id integer NOT NULL,
    opis text NOT NULL,
    objasnienie text NOT NULL,
    komentarz_1 text NOT NULL,
    komentarz_2 text NOT NULL,
    komentarz_3 text NOT NULL,
    podsumowanie text NOT NULL
);


ALTER TABLE public.misja_misjapage OWNER TO beret;

--
-- Name: rwz_rwzpage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.rwz_rwzpage (
    page_ptr_id integer NOT NULL,
    opis text NOT NULL,
    objasnienie text NOT NULL,
    komentarz text NOT NULL
);


ALTER TABLE public.rwz_rwzpage OWNER TO beret;

--
-- Name: statut_statutpage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.statut_statutpage (
    page_ptr_id integer NOT NULL,
    statut text NOT NULL,
    link character varying(255) NOT NULL,
    link_text text NOT NULL
);


ALTER TABLE public.statut_statutpage OWNER TO beret;

--
-- Name: strona_stronapage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.strona_stronapage (
    page_ptr_id integer NOT NULL,
    opis text NOT NULL,
    link_text text NOT NULL,
    link character varying(255) NOT NULL
);


ALTER TABLE public.strona_stronapage OWNER TO beret;

--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO beret;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO beret;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO beret;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO beret;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: wagtailadmin_admin; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailadmin_admin (
    id integer NOT NULL
);


ALTER TABLE public.wagtailadmin_admin OWNER TO beret;

--
-- Name: wagtailadmin_admin_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailadmin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailadmin_admin_id_seq OWNER TO beret;

--
-- Name: wagtailadmin_admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailadmin_admin_id_seq OWNED BY public.wagtailadmin_admin.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) NOT NULL COLLATE pg_catalog."C",
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.wagtailcore_collection OWNER TO beret;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collection_id_seq OWNER TO beret;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_collection_id_seq OWNED BY public.wagtailcore_collection.id;


--
-- Name: wagtailcore_collectionviewrestriction; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_collectionviewrestriction (
    id integer NOT NULL,
    restriction_type character varying(20) NOT NULL,
    password character varying(255) NOT NULL,
    collection_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_collectionviewrestriction OWNER TO beret;

--
-- Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_collectionviewrestriction_groups (
    id integer NOT NULL,
    collectionviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups OWNER TO beret;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNER TO beret;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNED BY public.wagtailcore_collectionviewrestriction_groups.id;


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collectionviewrestriction_id_seq OWNER TO beret;

--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq OWNED BY public.wagtailcore_collectionviewrestriction.id;


--
-- Name: wagtailcore_groupapprovaltask; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_groupapprovaltask (
    task_ptr_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_groupapprovaltask OWNER TO beret;

--
-- Name: wagtailcore_groupapprovaltask_groups; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_groupapprovaltask_groups (
    id integer NOT NULL,
    groupapprovaltask_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_groupapprovaltask_groups OWNER TO beret;

--
-- Name: wagtailcore_groupapprovaltask_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_groupapprovaltask_groups_id_seq OWNER TO beret;

--
-- Name: wagtailcore_groupapprovaltask_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq OWNED BY public.wagtailcore_groupapprovaltask_groups.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_groupcollectionpermission OWNER TO beret;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_groupcollectionpermission_id_seq OWNER TO beret;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq OWNED BY public.wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_grouppagepermission OWNER TO beret;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_grouppagepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_grouppagepermission_id_seq OWNER TO beret;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_grouppagepermission_id_seq OWNED BY public.wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_locale; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_locale (
    id integer NOT NULL,
    language_code character varying(100) NOT NULL
);


ALTER TABLE public.wagtailcore_locale OWNER TO beret;

--
-- Name: wagtailcore_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_locale_id_seq OWNER TO beret;

--
-- Name: wagtailcore_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_locale_id_seq OWNED BY public.wagtailcore_locale.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) NOT NULL COLLATE pg_catalog."C",
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    live_revision_id integer,
    last_published_at timestamp with time zone,
    draft_title character varying(255) NOT NULL,
    locked_at timestamp with time zone,
    locked_by_id integer,
    translation_key uuid NOT NULL,
    locale_id integer NOT NULL,
    alias_of_id integer,
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.wagtailcore_page OWNER TO beret;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_page_id_seq OWNER TO beret;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_page_id_seq OWNED BY public.wagtailcore_page.id;


--
-- Name: wagtailcore_pagelogentry; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_pagelogentry (
    id integer NOT NULL,
    label text NOT NULL,
    action character varying(255) NOT NULL,
    data_json text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    content_changed boolean NOT NULL,
    deleted boolean NOT NULL,
    content_type_id integer,
    page_id integer NOT NULL,
    revision_id integer,
    user_id integer
);


ALTER TABLE public.wagtailcore_pagelogentry OWNER TO beret;

--
-- Name: wagtailcore_pagelogentry_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_pagelogentry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pagelogentry_id_seq OWNER TO beret;

--
-- Name: wagtailcore_pagelogentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_pagelogentry_id_seq OWNED BY public.wagtailcore_pagelogentry.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.wagtailcore_pagerevision OWNER TO beret;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_pagerevision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pagerevision_id_seq OWNER TO beret;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_pagerevision_id_seq OWNED BY public.wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL,
    restriction_type character varying(20) NOT NULL
);


ALTER TABLE public.wagtailcore_pageviewrestriction OWNER TO beret;

--
-- Name: wagtailcore_pageviewrestriction_groups; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_pageviewrestriction_groups (
    id integer NOT NULL,
    pageviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_pageviewrestriction_groups OWNER TO beret;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_groups_id_seq OWNER TO beret;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq OWNED BY public.wagtailcore_pageviewrestriction_groups.id;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_pageviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_id_seq OWNER TO beret;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_pageviewrestriction_id_seq OWNED BY public.wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255) NOT NULL
);


ALTER TABLE public.wagtailcore_site OWNER TO beret;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_site_id_seq OWNER TO beret;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_site_id_seq OWNED BY public.wagtailcore_site.id;


--
-- Name: wagtailcore_task; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_task (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    active boolean NOT NULL,
    content_type_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_task OWNER TO beret;

--
-- Name: wagtailcore_task_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_task_id_seq OWNER TO beret;

--
-- Name: wagtailcore_task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_task_id_seq OWNED BY public.wagtailcore_task.id;


--
-- Name: wagtailcore_taskstate; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_taskstate (
    id integer NOT NULL,
    status character varying(50) NOT NULL,
    started_at timestamp with time zone NOT NULL,
    finished_at timestamp with time zone,
    content_type_id integer NOT NULL,
    page_revision_id integer NOT NULL,
    task_id integer NOT NULL,
    workflow_state_id integer NOT NULL,
    finished_by_id integer,
    comment text NOT NULL
);


ALTER TABLE public.wagtailcore_taskstate OWNER TO beret;

--
-- Name: wagtailcore_taskstate_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_taskstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_taskstate_id_seq OWNER TO beret;

--
-- Name: wagtailcore_taskstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_taskstate_id_seq OWNED BY public.wagtailcore_taskstate.id;


--
-- Name: wagtailcore_workflow; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_workflow (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public.wagtailcore_workflow OWNER TO beret;

--
-- Name: wagtailcore_workflow_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_workflow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_workflow_id_seq OWNER TO beret;

--
-- Name: wagtailcore_workflow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_workflow_id_seq OWNED BY public.wagtailcore_workflow.id;


--
-- Name: wagtailcore_workflowpage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_workflowpage (
    page_id integer NOT NULL,
    workflow_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_workflowpage OWNER TO beret;

--
-- Name: wagtailcore_workflowstate; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_workflowstate (
    id integer NOT NULL,
    status character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    current_task_state_id integer,
    page_id integer NOT NULL,
    requested_by_id integer,
    workflow_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_workflowstate OWNER TO beret;

--
-- Name: wagtailcore_workflowstate_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_workflowstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_workflowstate_id_seq OWNER TO beret;

--
-- Name: wagtailcore_workflowstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_workflowstate_id_seq OWNED BY public.wagtailcore_workflowstate.id;


--
-- Name: wagtailcore_workflowtask; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailcore_workflowtask (
    id integer NOT NULL,
    sort_order integer,
    task_id integer NOT NULL,
    workflow_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_workflowtask OWNER TO beret;

--
-- Name: wagtailcore_workflowtask_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailcore_workflowtask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_workflowtask_id_seq OWNER TO beret;

--
-- Name: wagtailcore_workflowtask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailcore_workflowtask_id_seq OWNED BY public.wagtailcore_workflowtask.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL,
    file_size integer,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtaildocs_document_file_size_check CHECK ((file_size >= 0))
);


ALTER TABLE public.wagtaildocs_document OWNER TO beret;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtaildocs_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtaildocs_document_id_seq OWNER TO beret;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtaildocs_document_id_seq OWNED BY public.wagtaildocs_document.id;


--
-- Name: wagtaildocs_uploadeddocument; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtaildocs_uploadeddocument (
    id integer NOT NULL,
    file character varying(200) NOT NULL,
    uploaded_by_user_id integer
);


ALTER TABLE public.wagtaildocs_uploadeddocument OWNER TO beret;

--
-- Name: wagtaildocs_uploadeddocument_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtaildocs_uploadeddocument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtaildocs_uploadeddocument_id_seq OWNER TO beret;

--
-- Name: wagtaildocs_uploadeddocument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtaildocs_uploadeddocument_id_seq OWNED BY public.wagtaildocs_uploadeddocument.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailembeds_embed (
    id integer NOT NULL,
    url text NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url text NOT NULL,
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL,
    hash character varying(32) NOT NULL
);


ALTER TABLE public.wagtailembeds_embed OWNER TO beret;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailembeds_embed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailembeds_embed_id_seq OWNER TO beret;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailembeds_embed_id_seq OWNED BY public.wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailforms_formsubmission OWNER TO beret;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailforms_formsubmission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailforms_formsubmission_id_seq OWNER TO beret;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailforms_formsubmission_id_seq OWNED BY public.wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);


ALTER TABLE public.wagtailimages_image OWNER TO beret;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailimages_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_image_id_seq OWNER TO beret;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailimages_image_id_seq OWNED BY public.wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(16) NOT NULL,
    filter_spec character varying(255) NOT NULL,
    image_id integer NOT NULL
);


ALTER TABLE public.wagtailimages_rendition OWNER TO beret;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailimages_rendition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_rendition_id_seq OWNER TO beret;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailimages_rendition_id_seq OWNED BY public.wagtailimages_rendition.id;


--
-- Name: wagtailimages_uploadedimage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailimages_uploadedimage (
    id integer NOT NULL,
    file character varying(200) NOT NULL,
    uploaded_by_user_id integer
);


ALTER TABLE public.wagtailimages_uploadedimage OWNER TO beret;

--
-- Name: wagtailimages_uploadedimage_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailimages_uploadedimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_uploadedimage_id_seq OWNER TO beret;

--
-- Name: wagtailimages_uploadedimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailimages_uploadedimage_id_seq OWNED BY public.wagtailimages_uploadedimage.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(255) NOT NULL,
    redirect_page_id integer,
    site_id integer
);


ALTER TABLE public.wagtailredirects_redirect OWNER TO beret;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailredirects_redirect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailredirects_redirect_id_seq OWNER TO beret;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailredirects_redirect_id_seq OWNED BY public.wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_editorspick; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE public.wagtailsearch_editorspick OWNER TO beret;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailsearch_editorspick_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_editorspick_id_seq OWNER TO beret;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailsearch_editorspick_id_seq OWNED BY public.wagtailsearch_editorspick.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);


ALTER TABLE public.wagtailsearch_query OWNER TO beret;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailsearch_query_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_query_id_seq OWNER TO beret;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailsearch_query_id_seq OWNED BY public.wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE public.wagtailsearch_querydailyhits OWNER TO beret;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailsearch_querydailyhits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_querydailyhits_id_seq OWNER TO beret;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailsearch_querydailyhits_id_seq OWNED BY public.wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL,
    preferred_language character varying(10) NOT NULL,
    current_time_zone character varying(40) NOT NULL,
    avatar character varying(100) NOT NULL
);


ALTER TABLE public.wagtailusers_userprofile OWNER TO beret;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: beret
--

CREATE SEQUENCE public.wagtailusers_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailusers_userprofile_id_seq OWNER TO beret;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beret
--

ALTER SEQUENCE public.wagtailusers_userprofile_id_seq OWNED BY public.wagtailusers_userprofile.id;


--
-- Name: warsztaty_warsztatypage; Type: TABLE; Schema: public; Owner: beret
--

CREATE TABLE public.warsztaty_warsztatypage (
    page_ptr_id integer NOT NULL,
    beret text NOT NULL,
    comment text NOT NULL,
    milicki text NOT NULL,
    monika text NOT NULL,
    opis text NOT NULL,
    zaproszenie text NOT NULL
);


ALTER TABLE public.warsztaty_warsztatypage OWNER TO beret;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: wagtailadmin_admin id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailadmin_admin ALTER COLUMN id SET DEFAULT nextval('public.wagtailadmin_admin_id_seq'::regclass);


--
-- Name: wagtailcore_collection id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collection_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_groupapprovaltask_groups id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupapprovaltask_groups_id_seq'::regclass);


--
-- Name: wagtailcore_groupcollectionpermission id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: wagtailcore_grouppagepermission id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: wagtailcore_locale id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_locale ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_locale_id_seq'::regclass);


--
-- Name: wagtailcore_page id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_page_id_seq'::regclass);


--
-- Name: wagtailcore_pagelogentry id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagelogentry ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagelogentry_id_seq'::regclass);


--
-- Name: wagtailcore_pagerevision id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_site id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_site_id_seq'::regclass);


--
-- Name: wagtailcore_task id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_task ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_task_id_seq'::regclass);


--
-- Name: wagtailcore_taskstate id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_taskstate_id_seq'::regclass);


--
-- Name: wagtailcore_workflow id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflow ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflow_id_seq'::regclass);


--
-- Name: wagtailcore_workflowstate id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflowstate_id_seq'::regclass);


--
-- Name: wagtailcore_workflowtask id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowtask ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflowtask_id_seq'::regclass);


--
-- Name: wagtaildocs_document id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_document_id_seq'::regclass);


--
-- Name: wagtaildocs_uploadeddocument id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_uploadeddocument ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_uploadeddocument_id_seq'::regclass);


--
-- Name: wagtailembeds_embed id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('public.wagtailembeds_embed_id_seq'::regclass);


--
-- Name: wagtailforms_formsubmission id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('public.wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: wagtailimages_image id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_image_id_seq'::regclass);


--
-- Name: wagtailimages_rendition id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_rendition_id_seq'::regclass);


--
-- Name: wagtailimages_uploadedimage id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_uploadedimage ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_uploadedimage_id_seq'::regclass);


--
-- Name: wagtailredirects_redirect id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('public.wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: wagtailsearch_editorspick id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: wagtailsearch_query id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_query_id_seq'::regclass);


--
-- Name: wagtailsearch_querydailyhits id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: wagtailusers_userprofile id; Type: DEFAULT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('public.wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	2	1
3	1	2
4	1	3
5	1	4
6	2	2
7	2	3
8	2	4
9	1	5
10	1	6
11	1	7
12	2	5
13	2	6
14	2	7
15	1	150
16	2	150
17	1	151
18	2	151
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can access Wagtail admin	4	access_admin
2	Can add document	5	add_document
3	Can change document	5	change_document
4	Can delete document	5	delete_document
5	Can add image	6	add_image
6	Can change image	6	change_image
7	Can delete image	6	delete_image
8	Can add home page	3	add_homepage
9	Can change home page	3	change_homepage
10	Can delete home page	3	delete_homepage
11	Can view home page	3	view_homepage
12	Can add arteunite mock	7	add_arteunitemock
13	Can change arteunite mock	7	change_arteunitemock
14	Can delete arteunite mock	7	delete_arteunitemock
15	Can view arteunite mock	7	view_arteunitemock
16	Can add form submission	8	add_formsubmission
17	Can change form submission	8	change_formsubmission
18	Can delete form submission	8	delete_formsubmission
19	Can view form submission	8	view_formsubmission
20	Can add redirect	9	add_redirect
21	Can change redirect	9	change_redirect
22	Can delete redirect	9	delete_redirect
23	Can view redirect	9	view_redirect
24	Can add embed	10	add_embed
25	Can change embed	10	change_embed
26	Can delete embed	10	delete_embed
27	Can view embed	10	view_embed
28	Can add user profile	11	add_userprofile
29	Can change user profile	11	change_userprofile
30	Can delete user profile	11	delete_userprofile
31	Can view user profile	11	view_userprofile
32	Can view document	5	view_document
33	Can view image	6	view_image
34	Can add rendition	12	add_rendition
35	Can change rendition	12	change_rendition
36	Can delete rendition	12	delete_rendition
37	Can view rendition	12	view_rendition
38	Can add uploaded image	13	add_uploadedimage
39	Can change uploaded image	13	change_uploadedimage
40	Can delete uploaded image	13	delete_uploadedimage
41	Can view uploaded image	13	view_uploadedimage
42	Can add query	14	add_query
43	Can change query	14	change_query
44	Can delete query	14	delete_query
45	Can view query	14	view_query
46	Can add Query Daily Hits	15	add_querydailyhits
47	Can change Query Daily Hits	15	change_querydailyhits
48	Can delete Query Daily Hits	15	delete_querydailyhits
49	Can view Query Daily Hits	15	view_querydailyhits
50	Can add page	1	add_page
51	Can change page	1	change_page
52	Can delete page	1	delete_page
53	Can view page	1	view_page
54	Can add group page permission	16	add_grouppagepermission
55	Can change group page permission	16	change_grouppagepermission
56	Can delete group page permission	16	delete_grouppagepermission
57	Can view group page permission	16	view_grouppagepermission
58	Can add page revision	17	add_pagerevision
59	Can change page revision	17	change_pagerevision
60	Can delete page revision	17	delete_pagerevision
61	Can view page revision	17	view_pagerevision
62	Can add page view restriction	18	add_pageviewrestriction
63	Can change page view restriction	18	change_pageviewrestriction
64	Can delete page view restriction	18	delete_pageviewrestriction
65	Can view page view restriction	18	view_pageviewrestriction
66	Can add site	19	add_site
67	Can change site	19	change_site
68	Can delete site	19	delete_site
69	Can view site	19	view_site
70	Can add collection	20	add_collection
71	Can change collection	20	change_collection
72	Can delete collection	20	delete_collection
73	Can view collection	20	view_collection
74	Can add group collection permission	21	add_groupcollectionpermission
75	Can change group collection permission	21	change_groupcollectionpermission
76	Can delete group collection permission	21	delete_groupcollectionpermission
77	Can view group collection permission	21	view_groupcollectionpermission
78	Can add collection view restriction	22	add_collectionviewrestriction
79	Can change collection view restriction	22	change_collectionviewrestriction
80	Can delete collection view restriction	22	delete_collectionviewrestriction
81	Can view collection view restriction	22	view_collectionviewrestriction
82	Can add task	23	add_task
83	Can change task	23	change_task
84	Can delete task	23	delete_task
85	Can view task	23	view_task
86	Can add Task state	24	add_taskstate
87	Can change Task state	24	change_taskstate
88	Can delete Task state	24	delete_taskstate
89	Can view Task state	24	view_taskstate
90	Can add workflow	25	add_workflow
91	Can change workflow	25	change_workflow
92	Can delete workflow	25	delete_workflow
93	Can view workflow	25	view_workflow
94	Can add Group approval task	2	add_groupapprovaltask
95	Can change Group approval task	2	change_groupapprovaltask
96	Can delete Group approval task	2	delete_groupapprovaltask
97	Can view Group approval task	2	view_groupapprovaltask
98	Can add Workflow state	26	add_workflowstate
99	Can change Workflow state	26	change_workflowstate
100	Can delete Workflow state	26	delete_workflowstate
101	Can view Workflow state	26	view_workflowstate
102	Can add workflow page	27	add_workflowpage
103	Can change workflow page	27	change_workflowpage
104	Can delete workflow page	27	delete_workflowpage
105	Can view workflow page	27	view_workflowpage
106	Can add workflow task order	28	add_workflowtask
107	Can change workflow task order	28	change_workflowtask
108	Can delete workflow task order	28	delete_workflowtask
109	Can view workflow task order	28	view_workflowtask
110	Can add page log entry	29	add_pagelogentry
111	Can change page log entry	29	change_pagelogentry
112	Can delete page log entry	29	delete_pagelogentry
113	Can view page log entry	29	view_pagelogentry
114	Can add locale	30	add_locale
115	Can change locale	30	change_locale
116	Can delete locale	30	delete_locale
117	Can view locale	30	view_locale
118	Can add tag	31	add_tag
119	Can change tag	31	change_tag
120	Can delete tag	31	delete_tag
121	Can view tag	31	view_tag
122	Can add tagged item	32	add_taggeditem
123	Can change tagged item	32	change_taggeditem
124	Can delete tagged item	32	delete_taggeditem
125	Can view tagged item	32	view_taggeditem
126	Can add log entry	33	add_logentry
127	Can change log entry	33	change_logentry
128	Can delete log entry	33	delete_logentry
129	Can view log entry	33	view_logentry
130	Can add permission	34	add_permission
131	Can change permission	34	change_permission
132	Can delete permission	34	delete_permission
133	Can view permission	34	view_permission
134	Can add group	35	add_group
135	Can change group	35	change_group
136	Can delete group	35	delete_group
137	Can view group	35	view_group
138	Can add user	36	add_user
139	Can change user	36	change_user
140	Can delete user	36	delete_user
141	Can view user	36	view_user
142	Can add content type	37	add_contenttype
143	Can change content type	37	change_contenttype
144	Can delete content type	37	delete_contenttype
145	Can view content type	37	view_contenttype
146	Can add session	38	add_session
147	Can change session	38	change_session
148	Can delete session	38	delete_session
149	Can view session	38	view_session
150	Can choose document	5	choose_document
151	Can choose image	6	choose_image
152	Can add uploaded document	39	add_uploadeddocument
153	Can change uploaded document	39	change_uploadeddocument
154	Can delete uploaded document	39	delete_uploadeddocument
155	Can view uploaded document	39	view_uploadeddocument
156	Can add contact page	40	add_contactpage
157	Can change contact page	40	change_contactpage
158	Can delete contact page	40	delete_contactpage
159	Can view contact page	40	view_contactpage
160	Can add warsztaty page	41	add_warsztatypage
161	Can change warsztaty page	41	change_warsztatypage
162	Can delete warsztaty page	41	delete_warsztatypage
163	Can view warsztaty page	41	view_warsztatypage
164	Can add misja page	42	add_misjapage
165	Can change misja page	42	change_misjapage
166	Can delete misja page	42	delete_misjapage
167	Can view misja page	42	view_misjapage
168	Can add miejsca page	43	add_miejscapage
169	Can change miejsca page	43	change_miejscapage
170	Can delete miejsca page	43	delete_miejscapage
171	Can view miejsca page	43	view_miejscapage
172	Can add rwz page	44	add_rwzpage
173	Can change rwz page	44	change_rwzpage
174	Can delete rwz page	44	delete_rwzpage
175	Can view rwz page	44	view_rwzpage
176	Can add statut page	45	add_statutpage
177	Can change statut page	45	change_statutpage
178	Can delete statut page	45	delete_statutpage
179	Can view statut page	45	view_statutpage
180	Can add dolacz page	46	add_dolaczpage
181	Can change dolacz page	46	change_dolaczpage
182	Can delete dolacz page	46	delete_dolaczpage
183	Can view dolacz page	46	view_dolaczpage
184	Can add dorzuc page	47	add_dorzucpage
185	Can change dorzuc page	47	change_dorzucpage
186	Can delete dorzuc page	47	delete_dorzucpage
187	Can view dorzuc page	47	view_dorzucpage
188	Can add strona page	48	add_stronapage
189	Can change strona page	48	change_stronapage
190	Can delete strona page	48	delete_stronapage
191	Can view strona page	48	view_stronapage
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$uy2Eay3QXGvo$6IpiSB4xcRviygcFFYkvKlL1BVE6zWig1zuPqw6yy8Q=	2021-03-05 13:12:43.14173+01	t	beret			beret@hipisi.org.pl	t	t	2021-02-07 05:07:43.021502+01
2	pbkdf2_sha256$216000$CJHQvyBNZUrw$r4dDG59At1k5feVUvu5qkUk1C2pzSleN9RQRLBNmfco=	2021-03-05 13:46:04.405998+01	t	kuba	Kuba	Ferenczak	unite@wp.pl	f	t	2021-03-05 13:14:23.263564+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	1
2	2	2
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: contact_contactpage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.contact_contactpage (page_ptr_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	wagtailcore	groupapprovaltask
3	home	homepage
4	wagtailadmin	admin
5	wagtaildocs	document
6	wagtailimages	image
7	home	arteunitemock
8	wagtailforms	formsubmission
9	wagtailredirects	redirect
10	wagtailembeds	embed
11	wagtailusers	userprofile
12	wagtailimages	rendition
13	wagtailimages	uploadedimage
14	wagtailsearch	query
15	wagtailsearch	querydailyhits
16	wagtailcore	grouppagepermission
17	wagtailcore	pagerevision
18	wagtailcore	pageviewrestriction
19	wagtailcore	site
20	wagtailcore	collection
21	wagtailcore	groupcollectionpermission
22	wagtailcore	collectionviewrestriction
23	wagtailcore	task
24	wagtailcore	taskstate
25	wagtailcore	workflow
26	wagtailcore	workflowstate
27	wagtailcore	workflowpage
28	wagtailcore	workflowtask
29	wagtailcore	pagelogentry
30	wagtailcore	locale
31	taggit	tag
32	taggit	taggeditem
33	admin	logentry
34	auth	permission
35	auth	group
36	auth	user
37	contenttypes	contenttype
38	sessions	session
39	wagtaildocs	uploadeddocument
40	contact	contactpage
41	warsztaty	warsztatypage
42	misja	misjapage
43	miejsca	miejscapage
44	rwz	rwzpage
45	statut	statutpage
46	dolacz	dolaczpage
47	dorzuc	dorzucpage
48	strona	stronapage
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-01-27 20:50:03.596727+01
2	auth	0001_initial	2021-01-27 20:50:03.628721+01
3	admin	0001_initial	2021-01-27 20:50:03.667486+01
4	admin	0002_logentry_remove_auto_add	2021-01-27 20:50:03.678985+01
5	admin	0003_logentry_add_action_flag_choices	2021-01-27 20:50:03.685213+01
6	contenttypes	0002_remove_content_type_name	2021-01-27 20:50:03.69821+01
7	auth	0002_alter_permission_name_max_length	2021-01-27 20:50:03.704534+01
8	auth	0003_alter_user_email_max_length	2021-01-27 20:50:03.711132+01
9	auth	0004_alter_user_username_opts	2021-01-27 20:50:03.71609+01
10	auth	0005_alter_user_last_login_null	2021-01-27 20:50:03.72465+01
11	auth	0006_require_contenttypes_0002	2021-01-27 20:50:03.729176+01
12	auth	0007_alter_validators_add_error_messages	2021-01-27 20:50:03.735451+01
13	auth	0008_alter_user_username_max_length	2021-01-27 20:50:03.747302+01
14	auth	0009_alter_user_last_name_max_length	2021-01-27 20:50:03.75307+01
15	auth	0010_alter_group_name_max_length	2021-01-27 20:50:03.764899+01
16	auth	0011_update_proxy_permissions	2021-01-27 20:50:03.770258+01
17	auth	0012_alter_user_first_name_max_length	2021-01-27 20:50:03.778646+01
18	wagtailcore	0001_initial	2021-01-27 20:50:03.891003+01
19	wagtailcore	0002_initial_data	2021-01-27 20:50:03.89359+01
20	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2021-01-27 20:50:03.896338+01
21	wagtailcore	0004_page_locked	2021-01-27 20:50:03.898544+01
22	wagtailcore	0005_add_page_lock_permission_to_moderators	2021-01-27 20:50:03.901232+01
23	wagtailcore	0006_add_lock_page_permission	2021-01-27 20:50:03.903444+01
24	wagtailcore	0007_page_latest_revision_created_at	2021-01-27 20:50:03.90578+01
25	wagtailcore	0008_populate_latest_revision_created_at	2021-01-27 20:50:03.908158+01
26	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2021-01-27 20:50:03.910337+01
27	wagtailcore	0010_change_page_owner_to_null_on_delete	2021-01-27 20:50:03.911956+01
28	wagtailcore	0011_page_first_published_at	2021-01-27 20:50:03.91325+01
29	wagtailcore	0012_extend_page_slug_field	2021-01-27 20:50:03.914707+01
30	wagtailcore	0013_update_golive_expire_help_text	2021-01-27 20:50:03.917116+01
31	wagtailcore	0014_add_verbose_name	2021-01-27 20:50:03.919517+01
32	wagtailcore	0015_add_more_verbose_names	2021-01-27 20:50:03.921708+01
33	wagtailcore	0016_change_page_url_path_to_text_field	2021-01-27 20:50:03.923999+01
34	wagtailcore	0017_change_edit_page_permission_description	2021-01-27 20:50:03.955616+01
35	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2021-01-27 20:50:03.964411+01
36	wagtailcore	0019_verbose_names_cleanup	2021-01-27 20:50:03.988024+01
37	wagtailcore	0020_add_index_on_page_first_published_at	2021-01-27 20:50:03.995925+01
38	wagtailcore	0021_capitalizeverbose	2021-01-27 20:50:04.252898+01
39	wagtailcore	0022_add_site_name	2021-01-27 20:50:04.259906+01
40	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2021-01-27 20:50:04.277048+01
41	wagtailcore	0024_collection	2021-01-27 20:50:04.283327+01
42	wagtailcore	0025_collection_initial_data	2021-01-27 20:50:04.291605+01
43	wagtailcore	0026_group_collection_permission	2021-01-27 20:50:04.305299+01
44	wagtailcore	0027_fix_collection_path_collation	2021-01-27 20:50:04.321227+01
45	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2021-01-27 20:50:04.334869+01
46	wagtailcore	0028_merge	2021-01-27 20:50:04.337143+01
47	wagtailcore	0029_unicode_slugfield_dj19	2021-01-27 20:50:04.344065+01
48	wagtailcore	0030_index_on_pagerevision_created_at	2021-01-27 20:50:04.351717+01
49	wagtailcore	0031_add_page_view_restriction_types	2021-01-27 20:50:04.380293+01
50	wagtailcore	0032_add_bulk_delete_page_permission	2021-01-27 20:50:04.397101+01
51	wagtailcore	0033_remove_golive_expiry_help_text	2021-01-27 20:50:04.410708+01
52	wagtailcore	0034_page_live_revision	2021-01-27 20:50:04.424466+01
53	wagtailcore	0035_page_last_published_at	2021-01-27 20:50:04.436198+01
54	wagtailcore	0036_populate_page_last_published_at	2021-01-27 20:50:04.447226+01
55	wagtailcore	0037_set_page_owner_editable	2021-01-27 20:50:04.463553+01
56	wagtailcore	0038_make_first_published_at_editable	2021-01-27 20:50:04.472038+01
57	wagtailcore	0039_collectionviewrestriction	2021-01-27 20:50:04.508336+01
58	wagtailcore	0040_page_draft_title	2021-01-27 20:50:04.532361+01
59	wagtailcore	0041_group_collection_permissions_verbose_name_plural	2021-01-27 20:50:04.538381+01
60	wagtailcore	0042_index_on_pagerevision_approved_go_live_at	2021-01-27 20:50:04.549618+01
61	wagtailcore	0043_lock_fields	2021-01-27 20:50:04.569581+01
62	wagtailcore	0044_add_unlock_grouppagepermission	2021-01-27 20:50:04.580952+01
63	wagtailcore	0045_assign_unlock_grouppagepermission	2021-01-27 20:50:04.596424+01
64	wagtailcore	0046_site_name_remove_null	2021-01-27 20:50:04.637129+01
65	wagtailcore	0047_add_workflow_models	2021-01-27 20:50:04.775623+01
66	wagtailcore	0048_add_default_workflows	2021-01-27 20:50:04.843771+01
67	wagtailcore	0049_taskstate_finished_by	2021-01-27 20:50:04.857748+01
68	wagtailcore	0050_workflow_rejected_to_needs_changes	2021-01-27 20:50:04.889629+01
69	wagtailcore	0051_taskstate_comment	2021-01-27 20:50:04.907362+01
70	wagtailcore	0052_pagelogentry	2021-01-27 20:50:04.932573+01
71	home	0001_initial	2021-01-27 20:50:04.954143+01
72	home	0002_create_homepage	2021-01-27 20:50:04.980937+01
73	wagtailcore	0053_locale_model	2021-01-27 20:50:04.990106+01
74	wagtailcore	0054_initial_locale	2021-01-27 20:50:05.007015+01
75	wagtailcore	0055_page_locale_fields	2021-01-27 20:50:05.052924+01
76	wagtailcore	0056_page_locale_fields_populate	2021-01-27 20:50:05.074073+01
77	wagtailcore	0057_page_locale_fields_notnull	2021-01-27 20:50:05.117326+01
78	wagtailcore	0058_page_alias_of	2021-01-27 20:50:05.135813+01
79	wagtailcore	0059_apply_collection_ordering	2021-01-27 20:50:05.191872+01
80	home	0003_auto_20210101_2116	2021-01-27 20:50:05.228912+01
81	sessions	0001_initial	2021-01-27 20:50:05.246517+01
82	taggit	0001_initial	2021-01-27 20:50:05.278708+01
83	taggit	0002_auto_20150616_2121	2021-01-27 20:50:05.291807+01
84	taggit	0003_taggeditem_add_unique_index	2021-01-27 20:50:05.301025+01
85	wagtailadmin	0001_create_admin_access_permissions	2021-01-27 20:50:05.326742+01
86	wagtaildocs	0001_initial	2021-01-27 20:50:05.352334+01
87	wagtaildocs	0002_initial_data	2021-01-27 20:50:05.382023+01
88	wagtaildocs	0003_add_verbose_names	2021-01-27 20:50:05.42505+01
89	wagtaildocs	0004_capitalizeverbose	2021-01-27 20:50:05.491214+01
90	wagtaildocs	0005_document_collection	2021-01-27 20:50:05.514337+01
91	wagtaildocs	0006_copy_document_permissions_to_collections	2021-01-27 20:50:05.541614+01
92	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2021-01-27 20:50:05.572754+01
93	wagtaildocs	0007_merge	2021-01-27 20:50:05.575367+01
94	wagtaildocs	0008_document_file_size	2021-01-27 20:50:05.588461+01
95	wagtaildocs	0009_document_verbose_name_plural	2021-01-27 20:50:05.600383+01
96	wagtaildocs	0010_document_file_hash	2021-01-27 20:50:05.614901+01
97	wagtailembeds	0001_initial	2021-01-27 20:50:05.63208+01
98	wagtailembeds	0002_add_verbose_names	2021-01-27 20:50:05.635852+01
99	wagtailembeds	0003_capitalizeverbose	2021-01-27 20:50:05.639412+01
100	wagtailembeds	0004_embed_verbose_name_plural	2021-01-27 20:50:05.644039+01
101	wagtailembeds	0005_specify_thumbnail_url_max_length	2021-01-27 20:50:05.649868+01
102	wagtailforms	0001_initial	2021-01-27 20:50:05.673912+01
103	wagtailforms	0002_add_verbose_names	2021-01-27 20:50:05.694243+01
104	wagtailforms	0003_capitalizeverbose	2021-01-27 20:50:05.744582+01
105	wagtailforms	0004_add_verbose_name_plural	2021-01-27 20:50:05.756316+01
106	wagtailimages	0001_initial	2021-01-27 20:50:05.857057+01
107	wagtailimages	0002_initial_data	2021-01-27 20:50:05.861626+01
108	wagtailimages	0003_fix_focal_point_fields	2021-01-27 20:50:05.865467+01
109	wagtailimages	0004_make_focal_point_key_not_nullable	2021-01-27 20:50:05.86877+01
110	wagtailimages	0005_make_filter_spec_unique	2021-01-27 20:50:05.871811+01
111	wagtailimages	0006_add_verbose_names	2021-01-27 20:50:05.874529+01
112	wagtailimages	0007_image_file_size	2021-01-27 20:50:05.877324+01
113	wagtailimages	0008_image_created_at_index	2021-01-27 20:50:05.87992+01
114	wagtailimages	0009_capitalizeverbose	2021-01-27 20:50:05.882482+01
115	wagtailimages	0010_change_on_delete_behaviour	2021-01-27 20:50:05.884356+01
116	wagtailimages	0011_image_collection	2021-01-27 20:50:05.886014+01
117	wagtailimages	0012_copy_image_permissions_to_collections	2021-01-27 20:50:05.887837+01
118	wagtailimages	0013_make_rendition_upload_callable	2021-01-27 20:50:05.889372+01
119	wagtailimages	0014_add_filter_spec_field	2021-01-27 20:50:05.890679+01
120	wagtailimages	0015_fill_filter_spec_field	2021-01-27 20:50:05.892078+01
121	wagtailimages	0016_deprecate_rendition_filter_relation	2021-01-27 20:50:05.893377+01
122	wagtailimages	0017_reduce_focal_point_key_max_length	2021-01-27 20:50:05.894975+01
123	wagtailimages	0018_remove_rendition_filter	2021-01-27 20:50:05.898091+01
124	wagtailimages	0019_delete_filter	2021-01-27 20:50:05.900294+01
125	wagtailimages	0020_add-verbose-name	2021-01-27 20:50:05.902623+01
126	wagtailimages	0021_image_file_hash	2021-01-27 20:50:05.904121+01
127	wagtailimages	0022_uploadedimage	2021-01-27 20:50:05.938452+01
128	wagtailredirects	0001_initial	2021-01-27 20:50:05.961999+01
129	wagtailredirects	0002_add_verbose_names	2021-01-27 20:50:06.00697+01
130	wagtailredirects	0003_make_site_field_editable	2021-01-27 20:50:06.035353+01
131	wagtailredirects	0004_set_unique_on_path_and_site	2021-01-27 20:50:06.060136+01
132	wagtailredirects	0005_capitalizeverbose	2021-01-27 20:50:06.149156+01
133	wagtailredirects	0006_redirect_increase_max_length	2021-01-27 20:50:06.163419+01
134	wagtailsearch	0001_initial	2021-01-27 20:50:06.248214+01
135	wagtailsearch	0002_add_verbose_names	2021-01-27 20:50:06.31831+01
136	wagtailsearch	0003_remove_editors_pick	2021-01-27 20:50:06.338216+01
137	wagtailsearch	0004_querydailyhits_verbose_name_plural	2021-01-27 20:50:06.343137+01
138	wagtailusers	0001_initial	2021-01-27 20:50:06.36848+01
139	wagtailusers	0002_add_verbose_name_on_userprofile	2021-01-27 20:50:06.396633+01
140	wagtailusers	0003_add_verbose_names	2021-01-27 20:50:06.407922+01
141	wagtailusers	0004_capitalizeverbose	2021-01-27 20:50:06.439921+01
142	wagtailusers	0005_make_related_name_wagtail_specific	2021-01-27 20:50:06.47199+01
143	wagtailusers	0006_userprofile_prefered_language	2021-01-27 20:50:06.48533+01
144	wagtailusers	0007_userprofile_current_time_zone	2021-01-27 20:50:06.498695+01
145	wagtailusers	0008_userprofile_avatar	2021-01-27 20:50:06.513274+01
146	wagtailusers	0009_userprofile_verbose_name_plural	2021-01-27 20:50:06.5247+01
147	wagtailimages	0001_squashed_0021	2021-01-27 20:50:06.533017+01
148	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2021-01-27 20:50:06.537028+01
149	home	0004_auto_20210207_1502	2021-02-07 15:02:55.186498+01
150	home	0005_homepage_quote_author	2021-02-07 15:08:12.439552+01
151	home	0006_auto_20210207_1512	2021-02-07 15:12:40.896908+01
152	home	0007_auto_20210207_1516	2021-02-07 15:16:11.021542+01
153	home	0008_auto_20210214_2126	2021-02-14 21:26:34.702245+01
154	wagtailadmin	0002_admin	2021-02-19 01:47:15.75426+01
155	wagtailadmin	0003_admin_managed	2021-02-19 01:47:15.783249+01
156	wagtailcore	0060_fix_workflow_unique_constraint	2021-02-19 01:47:15.816551+01
157	wagtaildocs	0011_add_choose_permissions	2021-02-19 01:47:15.871178+01
158	wagtaildocs	0012_uploadeddocument	2021-02-19 01:47:15.887964+01
159	wagtailembeds	0006_add_embed_hash	2021-02-19 01:47:15.895892+01
160	wagtailembeds	0007_populate_hash	2021-02-19 01:47:15.913949+01
161	wagtailembeds	0008_allow_long_urls	2021-02-19 01:47:15.932825+01
162	wagtailimages	0023_add_choose_permissions	2021-02-19 01:47:15.981502+01
163	contact	0001_initial	2021-02-21 00:26:06.938558+01
164	warsztaty	0001_initial	2021-02-21 00:26:06.96643+01
165	warsztaty	0002_auto_20210221_0101	2021-02-21 01:01:48.74069+01
166	home	0002_delete_arteunitemock	2021-02-21 01:16:59.142839+01
167	warsztaty	0003_auto_20210221_0116	2021-02-21 01:16:59.170364+01
168	misja	0001_initial	2021-02-21 02:03:00.663632+01
169	miejsca	0001_initial	2021-02-21 02:13:21.707218+01
170	rwz	0001_initial	2021-02-21 02:34:35.697516+01
171	home	0003_homepage_filozofia	2021-03-03 06:54:29.984351+01
172	statut	0001_initial	2021-03-03 07:58:06.956723+01
173	statut	0002_auto_20210303_0807	2021-03-03 08:07:09.870141+01
174	dolacz	0001_initial	2021-03-06 04:40:08.486116+01
175	dolacz	0002_auto_20210306_0438	2021-03-06 04:40:08.636405+01
176	dorzuc	0001_initial	2021-03-06 04:40:08.727872+01
177	home	0004_auto_20210305_2231	2021-03-06 04:40:08.821934+01
178	strona	0001_initial	2021-03-06 04:40:08.927543+01
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
39jr3d1eofuryngkrq9yseu8qqfoqt5m	.eJzVWNtu4zgS_ZcAzgsnhm9J7AHyECfdu9M9Pcj0bbC9WASUWLGpC-mRyLClxf77VpGULF8amMddIEgkkioWq845Vcy_L565NdtnW0P1LMXFzxfTi5-GYwlPc1A0ITKuNnqcamUqmYxpyTjO1uMPWkCxjmsPDGx5vcWvYZFMk-lNepvcpi-Lm1Vyk0A6SSCZXk8nsymfXK8WYgnLVTLF-RlfJvM5XL8sxGL1snhJX9Co4xvDZXG1q-BVgru6-PmfF2ldvZRSiAIcr8Bo3P_uS1KU6vbl8esvk3df-cOb79s2-eV2_WFRv_5juXh9-vV9Iu4_F-_n7qZZfL1__DNTT7_99pi_uf_dvnuSby8VfDd3l0aaAu4-2nTL_tCFgox9k1DKS72T9d3odj2azZJCp3mND6P5_eh6HQZzaOLIbPa6a5d_0tvsAX8btNtPnRhmGdSGSSXTjJvGjR4Wo-U1q3d69HA9Ws4gbVU3ltud1N2b4syJitOq9QNX0jLHwkuTSkADFXei1arB_SrdOhm-a_0XywWjeT8pma42aKDlaZP5EcdSKCwbvZmNlpPR6o11vFASl_DgcjfxSG4K5oKnvFbe59U6lWi9cdzgIcfsGy8gOoZOl-S4cbpqgXyW3jed4ZMyoNJMK9yLnDiIwN6wk5DVucQFo9nStG7MINdO6hpyjDa96JqL0WxFb47lZvQwH63nFZkUkDZtBkxo06RtiEcKzNVtUxtvE48DWakdVxjBGGhX74INjAHQrrlWNaja1nEXebxP2dBwYUUrgZ52upZc8LJhVVjl0DzFn7OW90OaOY3kiKjQFW9ZLSHBPRV3Lc-gHLPPFLgGDTlmmjKkSdc6aUI6gRkM-ItVgqd4zsImrDZ4Gvympnjz8R6UzQ56UG6BC6iuMC39vICd2YYFkzAiVSEVfDJNAR9REmBAgOvHsAQUsqf50azghsdRZMztI_0cfvmB744WXOokQ2BJdB7-KvtQLqrb8-z7krbINiVzjDEjKlpW6gBOYEnjM37L8sgqwX1wOeWwTzAnxNrSpwWDyiKhZp0ZYolk7YaLlmMCyeRqxVqmZCnH7JT-BCovAT0Lswi8MLerMIGIpEhuLuhTcFIQW4hobaN6hu2JMg7mve8HIMt4rtlTgQg3fhLfcSfDCftM6Q1HnxCwBgmK_vCwflNZZQ7C0JwLXNo20fngxjlpiPNoS8mNaPwZyYBfF8-chKgRf9j-cLxbJDQj-vqoox7kHImhkXWRckcxIbrgFyHaSCyRkzZFP1NmNPnSH2ZIUhkthG_iGSnrMUEvPCch6RQZeZeH5GHCJStl3b0YyzbeM0o0hEiUzXjM-OEIwyIDuVXce4o5iEBEwNKQB1wWk-c1xo9sNHvUJWnpBxLHFAsDe6_rElUHxuydzx83VgWFxLicOaFUokFMWRJ6_OgLWcZU5GaPz9E10cmyXG9iMsOIF1qS0LQ5Oo2NAtZhMdgRBffWhU4qZOFAXhtUuHVMfZee3tUGAxAEsgynPBb4sit_qJQ-OLUh0Wz2JNwfO1rq3PuD5JNyCUy3iqfI3ACLDuF4PihyQqOECimsy0Gp062mrfb1hAgXMYIiQGVuz215JCYo7KVFre6dHMQj4irU3NgDxL_I1Z3uapjJKfmKjJGjzNBhQhHz7KVI66FhiDwr9Sba6ymM3AESK8ryQAeipRM-h68QZZRZo4fsEFVvXVBtKwYa0OtOzcuuzB4s6EViECqseaCoL6jDUMKgQFFVFL62p0LfA3lFw8S4hlHFtuWOugvZlvYHVdCqmoqb-J-rgbkucQ4x9VcrILbLq-Z8BcRubK_Q64dcxjI4rEm-qaEyCUNQDwPfKV_juzmoqDyzJ11gZ4Yg9M0s4i-Ahf0dFJaLT7hLydMtVGTed4Adxx2bTSYTVuHDWkLdIv-wgdmyt6GRicR4KiIN8PkTV3YcDZPaZ5Buu-0QbNETx6ar1RTtHmv-zjdEsb2MekJt4RA8LRW9Xd96481G4j2o688_atRzPP7n4BAWPlIRw0vflrW8pha8tTkvsOIo2WkWhQtspXe-iQX2bVPpEqu7j99HDFyiHXuLWl80B-BHXRJdkdQDregO6NB5RCYaoQ6xwVSSOxjV6RmtP4oyFYsy3grwHMiajNNtIdTafi_TF8Oo71JTc4Rp9oHi-1BoZNz7KgRqcyJ31LR6YRluoqnNPe2k4Fg4bVenC-nkXnKzrsWmT9pwq_JyNZC8LGjejhIH_v1MczJmj208MOLHQGkDOBc-xn-reBKjiXCxgp8kBIUfqMhVHv1eUD8NG3Bg95UB9kVJA0cJpn2mMwKroRa_t033vJOS8AMdZokVDdZ5ttF0M-OVx-X5xDBftSJnjkKPt0bfDq4bgZbars7E4uC7LORHx0ZB3ValhXYQa8ZW4mVZO4I4jlReYA7Rza4ihfgxhZA_WBT2LBKDhGDwkDyOGp1CptTEW9zP9efgnWRw32V0Ld-vweHjM1JFqTTWTgz8FFvzE6Kc2zrc51wTllC17a_uzXlIQFJ1WJDMhu5BxgGP0pM7AcYhXkkRFtj3IHA03e0sdhkDRsCwccXTWGxdol2kmXfL7gX89OaBvrt2U8QkWkIa5Ro2-zbBDhaES9jgiiwpgEr2F2sZ8ZHr7nr8QDeCgv7FIRQ1A334V2tqM__PynBd2M0d5e_K-TBeeaW5rEE_h38a4SNSbvssoE4ruTOYtbvLjX4u5Cs8c3N3Cd93svKPFz9Nb6bz5e10vliM5_PJcjn713_-Cz7yNAE:1lDdey:5S2euqCwGnqVGi1QpGfQG_Dn08C4szOgJP3G07a0rkM	2021-03-07 02:35:44.383123+01
lox1z9s7qlse8g8pv911k24fmru1ipx5	.eJzdXOuP3DaS_18MjL9o3fD09LwW8Ad7nFyyTjZGJj5vfDgYbInTw9aDDT2ilRb3v19VsUiRbGlmjMsG8QGL7LhbIlnvXz3Y_3r2WXTt_eeukfVnlT3767PTZ3_xP9uKNJcVfpHtRbXTq1RXba22K3xkxd82qx91Jos3_GywwL1o7uFtudmebk8v0svtZXq3ubjeXmxl-nIrt6fnpy_Xp-Ll-fUmu5JX19tT-H4trrZnZ_L8bpNtru82d-kdLNqLXStU8eJQy9-U7F88--t_PUub-q5UWVbIXtSy1bD_q2_-_uFXue0v_-OHD_fqPy_efdS_bGX5_Xd_e_1aF_-4_ubHw6_vN-_fqk-_nn3Xp9998-3HD6W80j_846fXv34_fP-355X8Z_vqeavaQr66bUXbtcltq2GDcWhGWSmRvK5bmXyoVCuft0PbFa9OLt-crNfbQqd5A3-cnL0-OX9jPszlwJ-s1-k1bIT_Wt_Af1vYx3312EbTW8NBure6qmmHQmbu20we2nvz9UvziaoKVclbfOxnkKD0znf-1jwiKyB2WPo2E63gT4Ggy7f4v_DNH8UheuB5Q-Q8lS-nV1f79TxfftZjNipxcnN-crVOTpMXyXsNi1e6V8QhvTu5OTt5c1ZUCyy6lyKT9Yu21380k-CLI0qz0-Yum6f0dHW6OrlZn7x-GSiBTE6-WZ9cvTy5_sbTBv4IN0nGXlQy6ZNMFPDGPknHk5vNyfU18uz6TaqSJlivxHf2smkTXe9EpUaR7vGFq_Nk4rTgj1L-phLJQWfAeGB7cqhFD5wP1xXpPSwoxqRSsMkePtvhE6gG3erk_KY6Xa1XSUTaQTdKZLBWo7caJEQnpi0vaZfKbM_vn62SX2QtK1n6J0UtCE_C1G2bUdTJz-9XydtCJD0_brnSA6dqKQqiXyWpLIwi9Xxo3Q9AUci6pKQjvrlBHsAXcAo-rHeeooro0KNIdjWcMxWlgvOQzHY6wwXHBAk3q5yPneX6UMJr9Wj-leUgNMMO-Lwr7TlLZeScjUMlap3RiYHFSsJptiy42xnOlEoAXckP3bZAWaXM3s2ReCZytwNTg8qFZOqKTpXXYm84pebP4ymZApUBJdLbCj8HhqPKhIJcJe9rfLuQZuOIlRExmU5UVcWbTIeugEzDhoOV015mA1KWyXQYrdp_BJmhtn6S25rUCU65N7Tw-_heha6GSDdngmWYceer5AHWsY7zAVpUYN1Ls2LT5mo6_LCvJKv4A0_A0js-FZxT7kvY12ohUSUXTgsuosmZ18B2WEhVq-QMjM9o1BYMhRdo_V2c7N125G5GkdeygWU0_L_ZpNCooYd6lCPY1q4rQOGrpJfGjoGb9VgNjgX7JQr3zNeL1UcxqwePr-AfSiRdet-zlvkitwJHakpdyipFixQt-Lg6MyrmqOgiMkBf-JSXTxCZ0YhJbL5GBL4PvDUZuuPB1ZFm6QMcD1xer2fcdux8wG83B22-lOmInIH108G3Y_YnZHuyV1kHCtCwLTs9LlTkniV4SSAZzAY4Vnfozch0YHXdV8quis4uK4T1l8ZuZ85LYcr4XTjjgkJcrxatrDN_DM4WgEs2EMLasOBYifxxv6tAF1pQYqfdqM0H1YAO8CFOX65uRtEkbd0vxh7YQhuXP4JJ0It_LgA3h01O75r7_CkobA0o7EYWErhqhAfOHlQ-dOVfAxpbd_e6nqcY6SvncUV6X2uwq08Q_xSq90Gzx9Njr_bkT8DmwKptoGbVTGEFZ3bgY3KBXhQUciSFrED7a6OHuOoWVhzFrrYaToYDhuQ4Dks0sAS9xgFMwRvbrh5JL2veHhyT2KlE5roZmlaWXYILp_foxzGEg2lkLVJp_umvF-_lEVKz3YKkcFt0mQxXWlL39WqNOoKIpxlTAIPmNJZ6NLQomjdMO4oS7Sz5iRkNVpgVsP9Dez5MkwKI8ABdfODkkzjorZI7YRACGHBGiGLuccCiHxvyxPgwwKh0L9qhR4cLypCOrCYDufMZ_mzQ3erSHDhRnn-UVnI29MHGBHLudH0EfCEkQ8AZrfuCp8xhewgwuow8dq4LvQOXxKgadhV1CzoxuI_oaOcRJ0pRV7oFMpq275Kmg5OmVrUZ8ctjdI16JnYaLCETNZHZwYYdGLUFg9lBZDb24L4XwBK97TIS2hwdqfJogCjhRzYK9lcbOKKRz-WK2AtSAbUpQDzwBfryYS8oeM_ZEpqdJagZczBMj6-B5cJ_klK2OqPwYDXNGUg_RTU6DATxt6HcnJqAmQOBKF_cvdsicQimD8DxUW6nyATQHpe6DvSuB9spchXiaMOJZCxR54S3AALmIxRDbkvvu9g1of_px13BmL7DI-_x-VxX2ZAyPk4ODSys79Q4KRESgmsY3wjfslpzhG9CRDI4dxHFdpOcERiB80lMGKT1tZ6TMDiB7QhWbnNmAG1fw0s5aBudacD8Ff8CElJZtx5E6VEvMu8DgAejSwhBFwo4EyU0-KUqYeERYGgpyHiscMiHBDpP0K8G_OkrMWSEWMPwJdNbUIhmEkWdotvC93sDtVxSONKjE54BSAKvg1sdfcdvFFIHgvZsaKf_vaHGusoP6AVZYzwvTpkwanEuXPRx5qqTrdKQrQFNeFS0CVmXIu8KjpPX185gfSsEJWFFtvKkJZHLSGjnBbEJvdgn03tJ25mMFvSkkQjzWt9PmTy5sfIVJh0JRN2AlO1GbY5P4oIGJoQlBSQBVhC5V1goj5du8f0ZVVKmvFApEHwr03sA3gm4UETg5PHAbYOxIoYmmQWiT3xmAO9BmWWtXJ5kGGJdJrmPY52wAeOXXtfWyv1Qpo9ZLLMuJ1jPxkQCjMKaeyZMNDmkzp3hYiEeh76GcID1vMimARZFUaQj6LUyZ-mHXKN82smlv2YNzyRDYFnJeqcggBbAswp3goDkqLHRsMFASGYbOAURxj6OV4gHHN9UBetmQ5MOB7ATCMCmGNVlyrJRJVvKIY2vd6mM0bRxIcfiwB86GBui_P3hm1rnWK-xhRCKmUBdNqJeEZmtE_pWuDQSjo5Ahes9oVyRhkgeyLNKdLktIllGgVRsQZH0mvSWFjCvs-Z6LtRoh0MOoXpcB3Cr7c1hYZfJlIxjQfe2D5ARAo25PfExkBKgRKofhtFz5PTAK1--DDm8kAT3QybQeEc6xUEXCja4M4DHrHNKmu7Dacy5cUuFyWTbgeabxGSqimFcUFRpwL84WptkFyt4Hblzk7CGNQo_MTa1Ow7EUd2OTgbh74OXJlJMa436HIzig5hEVoJ1Nm1tfQBoFfLZk2RjMXOk0wqyPXCHrlzdR6LWU4QyB0KQPoRHkASCYrRKIXgH_r48yBZ3UO6ZbEwKnYvCKitiEVafbMwNWJuqoKSwnMm48AMOAcADqGKJJjFi8dVGj2P3yN4zRG1d01XKFjNA1AIYWFlGs4cJwvcMsqXYmN4z_Kw7RhdxkCcK9EEh3DHRFGw8s_WgflS2uUA5BYTersrbDgAfF3eQI4RKJp0ejTuTDTHA5UXjALsOqHoZ0ExAJ4uA85-_aHL-UlZPal2dYdFkKrqhnzC8VoQMsKOigqJUrr6GEsoliON6nv6zFbiqmGQsdhQ2DNkiI8TkEcwHkhUGXr0J5XHyc4YtJG9Fgrv2xVLN1Kw5URCQKIDzG6zrI9jlgS7Q8wOHdog0srW1_S1sBwmphkOX6RC9BJqNmHU6ZVJi4wtdMRwMM0iytR6y2qJJpSHgLCAAYVdMaznXdskZyYO9nKyvjCc3lWKTHzBdYM7r6ySTeQEGHrXwIKJWFWVQEF1REoVYbIAdwQOQZI95mCqnIhCkjFS7qrDonyM29QvHsELrjBkF9WnS7A61xeRLBhNbZMI9i4HK9w35iErsS2woAojPu0TkCLXg9B1ESPSBQBU7auyAzsdUf-dkLyBOTNVvmR8JgA8HkrJPMcl2o09TFoaFAMNu4VLi1Fd57LiYYIW2Du5SNbIkZa0BjJeyyjg8j9haraOAy3lOaiADAH2OZYkpL9ocqCOr0rSsYWjAuYzjlV_FmPCaZ3lsZJsjHZ2MLE5OZ3TVKKfTyJyTpxrsglr3JqYMFlhSMQT7MbA4N2S6sN9M-f-eWYf0WIZjOE3vIS7bMv-BcLvt-dkm4Yw-n2HT7sbXAkci5EFkWXoqMnwctigbpk9NpPbmCzy6ByuycW5LREe-0nL8tG26hsrNNNgweYI-ZoxNqN9xhjKFYSx2DbF0et_C91NH3oCVyeQ5r33jaOx8HEd1pgHbWiZUpYKctKmCiLhL7nLCt5A-WKdKYPmhvICw6gMO6ILWgwSek3vRVqYYNWVqkM5O1RGuBxKGnuGMzbnexkvM5tgEALHBTU6dawlcGPOLODbtO0q4TAlnucQzlXGUrRNUwlh9ySI3DAgAgitaeBHR6TFyZ2qkD5MyY5evweKiqe4e3DgNc4xnNsivTH3T-MQEXVx31J4kavUCLdwRBQPjpq1XK_MSdk9Nxymt9ZSVufCTFX9q6n2unw0bRH5XUVmtHxrIY50sO1iyEKYNin4y7APzJpdPiNGLgyFLbhBVgAM2wHeDhxFhgwuV9dDqeiqgfknyTuXMRz3sHLFf5GMf8LDMtKvIn8Ysc251Ct1YSAAJGQ83QgJTmuS4i9wilR3AZ5Zmp-un7jTp_LHjPfKsS3taZf13eFxw5L-Py-Wy5O_uIYnZT3I7kRD-33kfGsxjmf0hTgjrRX7y1GBFPAqNHS21J1Nu8g7pnDj9Vm8hrdZUzwKlGXaVIZCxYTxiBec6gkpmUs1axahxKfQayrxSEib1sbBp-SQd1QwqSBY6EhK3_6Zu1egrlOX3VDMgrs4iKPr-NXa2UhUqIPrXrq1FOyxN1Nhc42G1tc3dIS-61GjbwviQPzGG7qDX2CWDTNJXcfGgih-psHpA62mU5qiNSI1KzgpmeAZe4SMWn0A1NFa2mSiIWF2jTLiwHi1IdrBEE4nasA-rd2VXJkCg4fQQQyEZsDhK0aMjxjHJjJhhIjlN6GG64x29M75XTQUxDNCT82Zlo6MF0RE0oJWVqcUBO0zZcZh6SJq5QRkoQlI7F4ePpFj9ntbC71uRYwuWSnsq6dkpDJUtkNG_LBiO6CTHBLuC0njYodbjQbT1NMREPV5LJxqfMo8a7gcHsCj5J4IdzC7NwKPxR_TEFIoxlW54kDrrtadZQOyRkvfoRZHxMjndJBn2S7IkQ4vLgkw1sJhYjY5YwUSjzIMzYOsH1KYhpLLfFkx6YxoD8HJm5xXF8VHNpA5aGvYZxFdSTEzXl5d3TykmbpIXyUeXbcbO8muoG4oyv1ggdYN1w4k6ceQ1olEh1qcJP0pT7naBybT8S9XgMIjsAZHvK1fWih2QzVhVctdVuSvqeBqtM9HbfkWieOBP7PvBKqit-DgS5ttuya2f7sM6BvOFw5lUNLUOVCFqMbBQumHfuellN6bbuFZJ7B_3Zpx8flSYGh1gZDL14EGKkI5LSqcn62_PnlJNQqBFiOMgsrxL4Ijw37zXNYSQiPU624Ln8yqISVZ3OwARzutwc98NR72mszinuE7agRNpACHuLYzwyNmStIqOiX7lyxi4OFIdMcmGR3-smiGFVzak2QJUSDsTwVpppWXKSjGDMEZxu4YbUFSSnS_rgdc9S6iUzYvmYP6V0-clhXCgwRNaF5XU5sQ-0dZRxDHkKUcZyMm5cz4Jo0Xv2oBx62jwsUxIIZ096ZJmdCkXNR92O4wfJqjlWh9awrrNEb9mjn4bI5KA8rDvFpapvHpfWIJ5AjNmM_Ju7Cb_AyG50l5y8Uh58XwCeifrq56mBUn5TUKPfYGojyh_T3qOSuWEXwBkWufn4Ua-o7Tk4R5GhHIO_jldXsB9PvAlf00JSql0i9iRAFTHmo8zXLaE9piHolkP05jwsNH8fQiPiQDS3NN4UtM26szozEFXNC8U3gDqjGnM6e8Be6doNIGgAm8NvoABG9EdlT6kNfqzI-aPFo8h__2I6rJMb9jFFHl58MZ2UYCdsLvF3MeKMzVbCCZSc8Q9vhhlZhOdDZdzpx7-kWefLUl8wNBeGAG724QIMqmnNW260F3yync0s3GnKlE1dI1hPof9OPBkeE1zypbFg2m3P-Zcj1lo4wtendpPE8Ws8wuLuiFkF-uoqTblnr0Zw8Ba0wi6Vdm0lRwAjbq76QzlmcRsEQlCH1-q4XLLo4WbQyHsjPFx8ebMAP-MT62PKhpNfOnRvysWXlmT_5fbana60dRzEA6EhZ5HKkMsg_MQGthOarjXMQgG6EGd3A79up9vxVofLl9LLCECiKdubVjFxtq0tJcuQRThmxM1nryxnATLNTi9sH5Ueafo5rVNApzd5KLeVirH9cAF1LLFqU7m1MUqMvBg8ci4XcUOp4TNtaTBTQl7tzO84p-JMDN-gwsEnqnMXmqYm8M2UNpcKTL3pNg-Ryx8Ky7Wh5emZsud_o02WoHS4Jm6LI3WY1TFsxTRRA34n5-tBjDCDfeKdSCJLvZIO4usSkSDriN564WrkdmMcGx09VTwWZqHMLddxjWP1unJ8rWwuAg203rz47lOJcSQBT-5wfAeetyP3NEjaZuzTvcgJvWfgEhgbQuJwWiaehbQT8X8R0zEnPFy9Xe5o6lSQeREGGypnbMcZrk8iYcH8FQpnieIcB3JNSzCTHdCOSAoGZeKFgHbEmuSfvCrqdznfJQzPqZDeXliELaa5xXqN9iSesdp_8827V_yYnMwA3c8TiGCM8T3SDlxQwH1mIm6uUbTiiGxsB5eRY45rnH8Eed8z7779sjGbp3vnfvSOenbOSB2Pcf3LzOfA1WXw9T6YSN6FzAXuydRrOAH3JEIF8_AwXf4Cye6EHxR1ldB60FvJ9lUrgLrrkQlFdsuGz8asJVfbMULWBwRDgCJij0UiEvXHbIQXRxZQhm02sbtdJ_YuV3UIgdGlycOpguucHQg-b5DgBJGjQWvGVWHIUrhLLgcadTME1x4ozZgwgxe_PPXacXF1cWTbsqeJy-SH62ksD0XBTPjrL6Gcu3-7n7hl2seoC8caILHZ8ZrqA12NHEDmDDDCWVMUOgGGShnRZdk3Ti3fzVu_pZGjALp_oUCBEIO09lwro6wuTQuFb8ztWQwEHoLwgwgRfN1t-3Rs-BEOZuqXDCruavmaDuUYE2Jsmsh9eB2JgtvIfs3HDKXeBwPzfUt9hc6ayT98EAGMPagx8EhqxxOb_ta9gobG7W_I1_Vc008QJx3Cq9-OrEc8AdDKM018AiO_K2Rk7lf4J2Yhgb9y2pBbWLiUq_tMPCRP6ELB3gFC72xrWHOg7rzFTnMKbfRs1fzzU0jHJZ386ameTvXjbaek5DGwV2lA1dfDaaGNC4GbzpM4wcJYW9CYa3G3VZF8tE9MpSeibTYc-wB2tDPGcAT7WCxAIYmlildDjvogscNhlIAXXxI4CFoIYVZ5O5iXc_8SA7vBaoLWTLWwERKQ0G2pUkB5ulnmMrn5hjDY6OofmTwf4xIOCOfQKMBp1_C52CohqsBrnkAyivwqp50dQ-aQZmVvA_bjmVG2AVHh75AFJ9ilPHnD4KbbPvbQkgIg-AFBMFPWEISroak4grS19jCvDyHhH6eARcrV1c01-m82pm5yGv4MZvIGa2ZRcYUNNyPE2FLgksWTu8e6NnZm3d463HG-Doak0ElN3eOwv6Q-WkmjGhdQkH18vQqed-uknXC0mv88X-eRlhTgdEdN8L-OtaC2AP-sfxZL1WbH-OMofXMn7Qh-bqSqBE-Tdy48dBgrioekuBbwbbgw69M3QFsuOAOGLUzVKSe7g_gbyWYSOIV7i1KivutfGxXA3ZPxvNONH_zmKSOigB-5-Cd3-v8QeW9yuj2H-PCcISVgBP_ulpS8MOuPPjw-BDdJMcdvWs6CCURsyVzpSQvjQrvN7ofI0KBP_CrjDfTheIg4UYq9uZXth7A_2Zcrh-muihJz7iIGVTCMjtfYVYByy0eLFkYSrZJmuMrWQbwLrE_UyMyTEcVXerpuQ1akz-nGyZRw_bR3oxd3kyKHXC2qcXrmX-q8Pb4z1kW3e6VUYkXIX0vBPD8RUe_BdpI_dn8bCj8Ker0_nMmm7RWhxZ8x6vnO_25UL_Jz6J99Vz-86Bq-vPZX04vTjeX55tL8JrnZ1cX64v__p__BUF-6Lc:1lHLUF:FEvNW3-of3GdSSRajm-J3dM4FW-MXEC1CtfqxWMGnJk	2021-03-17 07:59:59.610127+01
gut6pzzbo2gwop3caka4e7a1glhu3sc2	.eJztXGmPG0eS_S8CWl9yRDRb3ermAPqgluzxJctj2SvAi4WQrMomk3VkqY6urlrsf98XEZl18PAIi_lgAgvo4FFHZmTEixcvsvjfzz7rpt5-bipTfrbxs78_Wz772_SztY4Sk9MX8U7nG7eIXF6Xdr2gQxb-22rx3sUmvffHzi6w1dUWZ5vr9XK9fBXdrm-jh-tXq_WrtYku12a9vFleXi315c3qOr4zd6v1Et9f6bv1y5fm5uE6vl49XD9ED7hoqze1tumLojSP1rQvnv39P59FVfmQ2ThOTatLUzvc__V33-Td77_-8vhd8-rxt1fffLt6evmP1afo7pv7fy6ffivvfnz854df_yNt_9iZ1aP-Un18-hI13z_81Pa_lm-_fNLPc_NUv35e2zo1r79zmXmeunzzOdeZeX1xe39xdbVOXZRUeHHx8s3Fzb18mJjOf3J1tS1Mfk3vrt7i3xrXG776WDsMte-q3uTWqFyrsjdRr5pWp7nV-KP-sCazqipcrNqLtzcXd1e6yh29Wt1HVtk87lobNzje7HAHFadatVVx8fblxf3LNHe1MolzlY5d20XbxTiOrjDDOJq8qrvUxMO3sSnqrXx9KZ_YPLW5-UiH_Yq1N5MZ37yTQ0wOM3Wnvo11rf2nMNHtO_ozP_O9LvYOeP6lcbV5_bOGgVTU66qDjcq-iayYoqMZJw62i_pglIu31xd3t6qqW1eSWbV6sKnr3YO1fHQtpim1yqz2Fl13KtrqUie1KdUmdWuYs1NWNbltTVnROzo38scP5odN6ag-LnVr9Y5vfRN1Cxk3O74rX39n8rJL1MfEpTZzbZXY50aXiImt0fHrt9vImtSuO7loxnei1_dvDcbVWhP3dIBymHvVd5kqSrczCc7CQsN3om42rx5z6Rs_FnEfer1aqZ1O3NQ3OhW7bJiU2am0iftkmNxCvdcZGZzcMcYCuLgmb9XiqnVTstOp0qQ62lkV7hPzCLylMPwEQ1CaB-8HVaQ6N7W8WSgYwOA-hUt0r2X1JiZQdLfC1VjLdbOTAyurY3-knyCOp0XEWHH4zp_bySELsfbXhuvjVXG7PB6uFzdv83s_Sb_WqhRrtnmHMG0dgAyGMLsqQhiOi4JV82OiKdBwq1rzbKqwOsOFwmUqa9bWLNQnVZucEKCSI9aKXbvDyZmTq6a2nXt_6fp1QyHfMoiksC2vVVWXTYKVIyv2FnDGmNHjXWZzP5KI1itgDS3mzsQ5sIPdw8LGsYrLZmMzuyCDYHyu0GVkG3hoE2NlVa8Li1Bdh_iik7HmGa1Phu-woAgYjdDpdRJuxG7lyg3-79mf3DBaTefzeHElGnCYNxlQjOHnLUZALNY8qLrzUYMxAf56mJxOb02by_rBrVSi5WKx2TgVm8wlpa5xcE7vC5nCNeCExls71TcATh4zDTg1G7LsQv1ARspgyppm6-_mlxQWrGrVdohimNm1PNVjaF6UWLDaI3kNg20o9jHdjT9YwckdrNhrW9W4ip-2RPawZHoef5rXbD8kF-r3ifvQumY0PR9dNMKeU88-asCLLEUZMhLhEr0_MhWOSMynN7GHqTqx2YjKFNMxYqAFBsG_N45OwOSGxYBzyx391CmqgnOHSAl-FNO6RV3sxNvhOK2zQ8TBM9lRzyz1wTilZIgfy479kaC_yZGjEJ5qa02JqNtawAUcffShYanEblFvKlqjCDQhlcgiU7NHFkhG4BtbNmQPnpDTuk_Bdxpo4wKElJHAlzyMT7zP4xn5XI0hR4NPZUiMNKuvReL08em2PY7EHwqafki4I4giNGpMlhAL_z34ccL9WnLTqZ2m-VxPcAM-RIwpByAizIhcRKZEbIBqqbXOEy3ZBjmYkqKd5UxvHrhjpTPX6xC1cccO-NsYo3I8Bxl7Py2Fixu6ci6pEuPlNElpfm16XqASdKMuMcDW7QhK_1XCBXSGJPuzrfqoD_Yikpj4MKqxin3pBO8YHTub6Y3gFA0NfwE2ARAxEdgf8Zw08hImSs0OLrTB_fKE7GSBgDLD0iEobZXwhUcXpNxI6xRt6RPVw7XAK1QLq8Itvf1AviJ4KSaEoJZU89GGBWuyrpLXAWPbDmDAeYpMRQZDBkA2ib1rgOC5qjkVHkmTUlqkYbrClM3oWjWlHxiU0Bl-ZOULZkHZ6AaRd_sKEDpBtBBHBMkm9yOh8Q3YpBn45KIxf_pGOeR9oHvUKfg4O0XSFIH8bFJ_cDfSCyNZ0IfihGkNfg2mN3dSe8hA2gOigTm2DpUIeb2qgOEmC-b2MUKwJDkZ53kiOX5WgPEKdGFZLDFFu7G7nAsRWs-ftc_rcPIjQ6WMyFRRlz4nzohgP4A-OWYTG8_3D4NMZsbgSevITJOOHMO-2aecsR4NE-7jTeew2ogROXmSZWSA4n0t6JkcgHpR8hQ7xo6G2ushYyIoxb3PKzk9gM0ZyU4fYirIRiyeJgcCr5oonqSIEX9Hmg96MeUcA53nYEPoUQmyI_AOqHjUTwQ4pSTxd3vAake7UPpQQiDLh-VqrZvBx0LuzNHY64FhOKE_v4gXhvGCB5Ljxip3G4oMjJ_cEmCj5fhN2eT1rCobuTrgPLBVuJE3m_elY0RKvqf52Q1inowktSLBoJX3IQ9wYZZ6cBmSW-z2-OBC1u9r83Bz3ZrmeB5GSsP6cGHAHKIbb0_1Ce4s-gXYfJwQuR3cpHb7RH4sgPwV5BxvqwmoPaBOJ1A5ttBUhlbhTd14Ak1sx4T6erFAcpx9AsiHWRqf5QnxZQAe-LzjiRN04mr4BO70zmUNzng_FHw_uiqDM1M9wH5AKdEkTIZTc2SGE_mGTvqdrowlBUzlftg-4TZIs5sQPPwJp2qp__dm0wylo_i0XIdyPl09duuSGOREB0At8PVlLd_331XZFiWvJQq_PteomLxbhEghepomlhG5bKLtLDO43tGt_IgJ5BG43kdiwvdmWk7uaT8ozjJkkUnyG-2xL53gdeX_R8wXLvCoOqHF52qMBgpqhslwOhIUIEvPSycfr1zP8fUGKJCsgZV3TAYDnph5aVfNRS6qOrGytZtGR1wOV0f4UfqeoaTgF_hVAOXZAQPYTEx1SAukjiXz9UMojIQmVHYdkeeqyYpo57AI2VlWYWQe_ZkrYf21eNk-dMXTcbz8Hqxup2sAocoG16W4BD1MG9V7hw0SwcR1YOJJAAqsxUGPpMp58OQDQYSXheJj1GkOhaNoHiHz0q8S4S9IqwSKBCcSx3Re6foQF6tVyDtjbFkD9Es1XNVkjQAI6LoLg-sd1bYxgSll1fsu3rixXFmo3zSYtgMZBqsHEBDq4QqFLv31R8-kyNGoXFBVDHBYFR6A1iOFmwmEdGHSQ35oPCpjOTBHKrdnse7JZz5fGGaH_W7MykTSY7PLBAlaLrRomJuGaUjQctykBqSYyVzkQ5LCxiByKokYyjvDxYlOWa-V5HrH5vCqSphNSI-4sIhEwc9CxE-7A37FRK1xIi2MbkJy11TzHk2GpBvrIeumzRqDmPYyeOTfujLjzLY3ED0BZj1hMyRB4bA-8JlcH6mlMPHR7wcX60ujUw6cAKhktYFY6j0Fi-CWMRY5KZ6ClzgnGXmKeMHgE-7lBk45LzciIr2pXqgPMSl4XNxT56IR1cWLhJsZ-eTyaM_QojFeS-4e-eishgu6Gs5uqJCFjZOhHOZMO3oi3WJiAxv8lp0pduQxoX2BI2XYCDmUokTNOEBoSVGxscB5RMjQFUzNSm2LIPTuSqM4dABCFFCjeu40Wr0pa6N-z21tQn04pLXRY_yKN8e84Liz5rT8gm82TTQjEfBEJtLFWupGLlFbFXsUIHliAmiirQ2xsQtY4cDh2Lg5N9iEC4scjEzb1gacHXduh-TqIYZoALV1RphqHReHiW5DBaXHciiz2aGqABO0gxEoeAZDzOc_X_ce8QPwBtAip2EdFupdbw9tGewgmpAqDHFB5ZLSVKze7nQbunBT_a01NexWm7KTxtxC_aPUa--ViagdjgIMx6LCG4qUSbJwVbLPMrEYsFbVJ3pisXgY9nCVwpHsuLykJV6ojzpze7g0cTEYggLTZFzzucFnHaMDjq0sle6AB7IP6ViRLzMdG47S2g5DJWVJasPB6gHOYGivRY8MrpsI0z6oPrGXtON9JIxGC4_WeZOj3BYtBJY2JUCuJy9Zg6L9hGrC5GD9mrQvl7tgXcIdfL9u4g7ViEJyBS7Aj_t553ACrFM-wcojcGAMJmRqOvEFymNpTbv1sAJZM55pY6PV2Icd-2Jjhjmk3ae4LiuoLBZM4OWnZg1WaE3EX__BgrPchjLZLORYPUNS6PZp1YS5tv6c1Srhkg91PHWrhjyAUAFzYzuy0EkZM0cO871UkzDUWKpZwGfkSp4hxYHucaCebNz1tHYeDTn37YAvnjNynUeCEaLQjfFq4oxMOeQqMsReLqGrhRKGcpvxCW1kFY57wTsOy91al8Qvd1ORj5qEpJ81mF8s4-ubielMbsqNtNgdEbX9S5Gi23Yk_yPoYC-SpAGBIu_IrHhkO-l4U189dqPWIzKZHzbRkv18TyyoIT02ApfXIj_uBIR3vkjaT7rIBqgqc141ZFLE3D6iXCvuoqZ6kCw_sYuJBzQkSmGwKO154AWjzIzd-T6DdLhnLK0cVej7t8QTdVn1SIpkGL1HPKcBI93MJvPJdLWqJ_1DFBnqB7dhO0UAh8wKkgbB-c2afDwuTev7PO9HPzRDWgn0KzhMECt6vQsdYmqN9JpyQaMIhQprFRXoAqa5bhAeE-eQBExrNKkiveo_coLYBa-ZRyFRwkFWGmfLOwfmWyfGsc5sHToUAYC4S1SanGA2n2lmEwoUu9COpXfjsA8XA9w9NCM6Zae1-D5p-QtWwPjioICtGvMUHS9gP-3xmKpvEh0kwCP7UFI7q01JL6Di0a3hkizW0c6WcYuJyD-sUSBv15RrUr3nSaIoclBzgtknx5H1OxX-bDfGOCK4WxzaPSzbHZHp5qqUV9WOeg6jNlI3Enoe9SfLAxk-g6PzU8WgdFUYbu8y6kjZMpVnlD3RJekZlfpJc8rszsTXojjNX57YbvOXGvxXNOxBhNKvVomKjXn1cHziv9C2ieChbT_uy_GAk2npYXUh-029c9q4mqHgkbpfxEtftx3GEadbaqWK8NFN6-l_ucmJto9R1h0kzgGbKU8O236YyV68vbp4c7nbq7oHlkQwMEWdcMUxYRxhLNLu-XdyFroi-V4zAaSFaP8BuTIBKyIZDAcT44dSfR8kBQLXk412_w-B_wcInJOWCKun05p2boA4j3L4niKNq2FBfHTttWX53hW14oe6OwqFK_dzw8YC6a4c66qcGYABLJJq64qv3p_TrYrH4wj2hyJ82tkDVYuMKr2Oj6frcqo12UsFD-QKky2-tPFWauBIGKCaUMBPuvJVlB1hohmZfeNbySz-eNKtw4aED4P-PtEZBq2nlXpTSoOoIaodRIuN-r4z-UaXWqCEKLD_TjZiKlw11VHHux-AE7UCkHvW6KRx1qow14AehppYlNzzRFoCmdrAMy6mmzsACfl4ITuWKuqD1964yDpZcdJq-G0sgpCxSLYklTUqon5xK_rkLqhh0979IVIM5sIqpDofxEdv60GgDH3Vj5w3TWiSxtSMLQXZK1_nXke83TVU0Ig0l9dj7ddr8hkSQ8x8Y1FBe4dCR9Brir8D7sbFnXUbRRGM7Kj63b9ldZV0olAsTJLSbtIwQJGOw0wSxmSHy4byMzRgSWmqc3BflyEUuRjZ07eHlKnTtRtU50EFUe9SXcs-kgG9aIkrU8ZGhP95ukEAUE-glR2tzAj2vGzCGeCaprTiA7GbqA97bcFxPwPLMdIZGnXAoQY6UHjODRarwlaf5QEQfv3Vz30kV5cnti_-tSxwtATsmukwZ3sv4css2GymG-k6yokRwCpzUU4H6Kgh1Ape0Pn9b9Jebn1NPuZvEX_GHUEtyepjJLQd7041iudzDoXN463ZnXjs50OS09aduETFpu4uLy-VV40o4JZXavoJ7Wo41D5YvZdAnYla51L0rRprjttGeN8ktwHX-oS23ojo3VGKQ5KFt-TqSj0xamfSWVVUx4AaTA8EEK7lONqTYJlryMnX-PDi6t4vwyv1dB62i7vu8eYUrCDSnvyEaGq3fqpDoqoGUCZjuBxTXJ3HtG--IOn_qctUWPs4sAvROIV5XE_jySrTYkSy42rvHIfBJNLGI1YU2TbsUdClfAx4M7VOiUOyV5a5GHp6i_Ow52WV9Sfs-UtoLgycXZ5zCVRPWkDSR3exP5bUO44mUyUMT9QXanjjn9oMDSacGd7IgyQnrnM3Azfee61RWM6w8mxcd5umdnvc1FIU7Ex4HItN24qFhoeepBsYDLQRjxvOxOqMVf2w8Z6rgl4VpkwtiTCmdnlzHua6vd4V8XFzfdrT3j2aZVTOhd31JD5g8k6mrF4gNmkbg4t6t6FHlnIm4hMjj3oT2XXueFfscCl5ZI3yAj5d1ioyRNzJt8W8zdl44tK9zNbHTTsLrRdgIdP379xYiDEcbLu41E1qE3s-hGxVPtza45Pvg9pk1Iba65N9NMVEEup6v8nDjvE4KaK4XpKnJBp4zLe0Q40eKKY61PfqSncetnqM7JcTqvzxmYfqniZ-16emlf4ZKgLpQ_pnQF6o3mbUDUSq5dzgzdu1ZxNDrt7S9ofjT6WRsCjMAjPVXqXwj_YTOW1Ous6acceqyhGr4A1FmsQe1Elkyn5tXUn70Tk5jhIEt8LHzRmHagzdmJ_WVSAutJlB5KizMfdmE9UnorZ0vTyCajXpVEVKmwdc3J3HxKorbfLjE_tEG-5Igpv_sgE1-IEqqGz0JuxPeEHPLlT-JwFq0hmH5_k3AxidSVWYl2l8Qk_2FP9U8FRN1TMXnwHwXfjY9xoEd8KO1zPx_3p5tzqRso_bIiQw7Z8cSZqy7qhlQc_-1GWfa__cJrGdcDAbrgn7jvBhq8_DPO1dvyqOm-fXLucf8ej12vQFBdLQfUBlh_pEx-PTI3CYlJ9V5e2RBNQvpwSIN8ASn0ZGC30y4oQgohPMb2HP0BCgwrK36sGWGW_BmSinY3uWmvbyIMrZ-GP81L46EaSfcIcu5T3dL-eF2t3-TlrXOonJQZnYOBb0z8UMqP7rE2F5v69gmWSysUwI5PJGnZ1ikOvmJjo-Zaxwoh9o2yNtLxtLK8-dkcvyRPZXJ020zbnjnpokGR77JTMlFHsoVvNNM61w9ch96LSat15SF8xyu2f2Ux5-Xx68aGiliQKNYJMBBlpPPbFzSYu3L7MTQvI3MGJddsD6m3n59ursvCtb5evNqTx3qEclmhqx9CQU_KCPEWKtWi55C6jjneJR2NMP3ywsCLE8OBVUO36j87o0le894ryC0sWmDD3rhPnEWOqSW51iIDQewJ560D1vZBzqofOwfl5t9QmJ6jQZ5cJDfstF6CeqG8xJ889BnUlwVcttq_8UxxP6aSRE2ExFFjnSztWibqF-pION33JMalGHYGxnPtkc7EPOBm9BcsgWh_nSF3fHGj58p7PJmruncvfquLXXurSmTPSg3PM2orVOE1LxbuZ0gs07V-rOxgbV8os9IW8eyGyU7MJC9z7TkYoUflDDp0g730tCOZgpLGVRukT4WZzh8PNLD9eNvupPAdRc4JjuGnTD78RxBempwNC6oYf9mxgvNiOk0xMbOe0vOrG95UCokc2LZMYhuSj5vZ7hnvQEeV26guSftqcOOeNmxvvR6EfO-PfOxoc6ljf7C0TbPn50lO4JU8Ja5wTIZqIUzRZ2GNf070eesD4yYz0dwWwAfynv-Lr9Grhx8vp5lTab11v61c7KuGEPh6HfzfocmyoqbVFbl79-vnE449F81vXr5-apsCW_fPa35avlzXK5ur1bLZZ3sMnq6r_-538BxpTGXQ:1lIsRB:tFT84EdP-kyezI693idLD8jNW3_cVIyZmH35lUeSU1U	2021-03-21 13:23:09.206436+01
uzgto6qdbzkihxs5w1tmn43pd3wwn5a5	.eJztXGmPG0eS_S8CWl9yRHSz2QcH6A9qaTyyZVuekQ3ZXiyEZFU2mawj6TpUXbXY_74vIjLr4LEjLOaDCSygg0cdmZERL168yOJ_vfis62rzuS5N8dnGL_76Yv7iL-PPVjpKTE5fxFudr90scnlV2NWMDpn5b8vZDy426aM_dnKBjS43OPv2Klot9eW9uYwujb6Louju6v5ueX-_wL96dXd5eY0_8_nqdmFur-5v766ie6PNwmitr6PLBS7a6HWlbfpqV5gv1jSvXvz1P15EZfGU2ThOTaMLUznc_8EUP0fvouj3v7231bb59uPtO_uPn94t3v8Wff_j_c37n7e_Xf366dfN5XxRvL4rlvnz_P7bm_Jdm37z91_z69_-eJmb5-rhZWWr1Dy8c5l5mbp8_TnXmXm4uHu8wCBTFyUlXlxcv764eZQPE9P6T-bz25tNHtG7-Rv8W-F6_VcfK4ehdm3ZmdwalWtVdCbqVN3oNLcaf9Tv1mRWlTsXq-bizc3F_VyXuaNXy8fIKpvHbWPjGsebLe6g4lSrptxdvLm-eLxOc1cpkzhX6tg1bbSZDeNod6YfR52XVZuauP82NrtqI19fyic2T21uPtJh_8Tam9GMb97KISaHmdpT38a60v5TmOjuLf2ZnvmD3u0d8PKP2lXm4UcNA6mo02ULGxVdHVkxRUszThxsF3XBKBdvFhf3d6qsGleQWbV6sqnr3JO1fHQlpim0yqz2Fl21KtroQieVKdQ6dSuYs1VW1bltTFHSOzo38sf35odN6aguLnRj9ZZvfRO1Mxk3O74rHt6ZvGgT9TFxqc1cUyb2pdEFYmJjdPzwZhNZk9pVKxfN-E70-vGNwbgaa-KODlAOcy-7NlO7wm1NgrOw0PCdqJ3Mq8NcutqPRdyHXi-XaqsTN_aNVsUu6ydltiqt4y7pJzdTP-iMDE7uGGMBXFyRt2px1aou2OlUYVIdba0K94l5BN5SGH6CISjNg_eD2qU6N5W8mSkYwOA-O5foTsvqjUyg6G47V2EtV_VWDiytjv2RfoI4nhYRY8XhW39uK4fMxNpfG66L56i-PR6uFzdv8kc_Sb_WqhBrNnmLMG3cykQwhNmWEcJwWBSsmh8TTYGGW1aaZ1OG1ekvFC5TWrOyZqY-qcrkhAClHLFS7NotTs6cXDW1zdT7C9etagr5hkEkhW15rcqqqBOsHFmxs4AzxowO7zKb-5FEtF4Ba2gxtybOgR3sHhY2jlVc1Gub2RkZBONzO11EtoaH1jFWVnV6ZxGqqxBfdDLWPKP1yfAdFhQBoxE6nU7CjditXLHG_x37k-tHq-l8Hi-uRAMO8yYDijH8vMUIiMWKB1W1PmowJsBfB5PT6Y1pclk_uJVKtFwsNmunYpO5pNAVDs7p_U6msACc0Hgrp7oawMljpgGnZk2WnanvyEgZTFnRbP3d_JLCgmWlmhZRDDO7hqd6DM13BRas8khewWBrin1Md-0PVnByByt22pYVruKnLZHdL5mexp_mNdsPyZn6ZeQ-tK4ZTc9HF42w49SzjxrwIktRhoxEuETvj0yFIxLz6UzsYapKbDagMsV0jBhogEHw77WjEzC5fjHg3HJHP3WKquDcIVKCH8W0blEbO_F2OE7jbB9x8Ex21DNLfTBOIRnifdGyPxL01zlyFMJTbawpEHUbC7iAow8-1C-V2C3qTElrFIEmpBJZZGr2yB2SEfjGhg3ZgSfktO5j8B0H2rAAIWUk8CUP4yPv83hGPldhyFHvUxkSI83qq5FYR8vNcST-sKPph4Q7gChCo8JkCbHw35MfJ9yvITcd22mcz_UIN-BDxJhyACLCjMhFZArEBqiWWuk80ZJtkIMpKdpJzvTmgTuWOnOdDlEbt-yAPw8xKsdzkLH301K4uKYr55IqMV5Ok5TmV6bjBSpAN6oCA2zclqD0XyVcQGdIsj_asou6YC8iiYkPowqr2BVO8I7RsbWZXgtO0dDwF2ATABETgf0Rz0ktL2Gi1GzhQmvcL0_IThYIKDMsHILSlglfeHBByo20TtGGPlEdXAu8QjWwKtzS2w_kK4KXYkIIakk1H21YsDprS3kdMLZpAQacp8hUZDBkAGST2LsGCJ4r61PhkdQppUUaptuZoh5cq6L0A4MSOsOPrHzBLCgb3CDybl8CQkeIFuKIINnkfiQ0vh6bNAOfXDTmT18rh7wPdI9aBR9np0jqXSA_69Qf3A70wkgW9KE4Ylq9X4PpTZ3UHjKQ5oBoYI6NQyVCXq9KYLjJgrl9jBAsSU7GeZ5IDp_twHgFurAslpiiXdttzoUIreeP2ud1OPmRoVJGZKqoC58TJ0Sw60GfHLOOjef7h0EmM2PwpHVkpklHDmFf71POWA-GCffxpnNYbcSInDzKMjJA8b4G9EwOQL0oeYodY0tD7XSfMRGU4t7nlZyewOaMZKcPMRVkAxaPkwOBV0UUT1LEgL8DzQe9GHOOns5zsCH0qATZEngHVDzqJwKcUpL4uz1htaNtKH0oIZDlw3I11k3gYyZ35mjsdM8wnNCfn8QLw3jBA8lxY5W7NUUGxk9uCbDRcvy6qPNqUpUNXB1wHtgq3MibzfvSMSIl39P87BoxT0aSWpFg0Mr7kAe4MEs9uPTJLXZ7fHAm6_e1ebhZLJ-T43kYKQ3rw4UBc4h2uD3VJ7iz6Bdg83FC5LZ3k8rtE_mhAPJXkHO8rUag9oQ6nUDl2EJTGVqGN1XtCTSxHRPq69kMyXHyCSAfZql9lifElwF44POOJ07QiqvhE7jTW5fVOOOHvuB778oMzkz1APsBpUSTMBlOzZEZjuQbOukXujKWFDCV-2H7hFsjza5D8PAnnKql_t-bTd2XjuLTch3K-XT12K0KYpAjHQC1wNeXtXzff1dluyt4LVH4dblGxeTdIkQK0dM0sYzIRR1tJpnBdY5u5UdMII_A9T4SE77X43JyT_tBcZYhi4yS32CPfekEr0v_P2J-5wKPqhJafK7GaKCgZpgMpyNBAbL0tHTy8cr1HF-vhwLJGlh5x2Qw4ImZlnblVOSiqhMrW7lxdMRFf3WEH6XvCUoKfoFfBVCeHNCDzchUh7RA6lgyX9eHwkBoQmXXEnku62wXbR0WITvLKozMoz9zJay_Fi_T6C5ujuPlt2B1W10BCFXWuy7FJehhWqvOO2yQCEauAxOPAlBgLQ56JFXOvScfCCK8LBQfg05zKBxF0wiZln6lCH9BWiVQJDiROKbzCteFuFguQ94ZYssaoF-q4aomqwVAQNddGFznqLaNCUwpqz628doN5cpM_azBtB3IMFg9gIBQD1fY6cJff_BMihyNygVVRQ-H5c4D0GqgcBOBkC5Mesh3tUdlLAfmSOX2JNY9-cynC8PssNsOWZlIemy2mSBBw4UWDXNdMw0JWo4b1YAUM5mLfEhS2BhETikRQ3mnvzjRKeu1klxv2RxeVQmzCekRFxaRKPhZiPhxd8CvmKg1TqSFwU1I7hpr3oPJkHRj3WfdtF5hEONeBo_8G1dknNn2BqJHwKxHbIYkKBzWBT6T6yO1FCY--H3vYl1hdMqBEwCVrNYTS72nYBHcMsYiJ8Vj8BLnJCOPES8YfMS9XM8pp-VGRKQ31TP1ISYFj4t76lzUorp4kXA9IZ9cHu0ZWjTGheTugY9Oarigq-HsmgpZ2Djpy2HOtIMn0i1GNrDBb9mZYkceE9oXOFKGjZBDKUrUjAOElhQVGwucR4QMXcLUrNQ2CELvrjSKQwcgRAE1qqZOo9XrojLql9xWJtSHfVobPMaveH3MC447a07LL_hm00QzEgFPZCJtrKVu5BK1UbFHAZInRoAm2lofG9uAFQ4cjo2bc4NNuLDIwci0TWXA2XHnpk-uHmKIBlBbZ4CpxnFxmOgmVFB6KIcymx2qCjBB0xuBgqc3xHT-03XvED8AbwAtchrWYabedvbQlsEOogmpnSEuqFxSmJLV261uQhdurL81poLdKlO00pibqb8XeuW9MhG1w1GA4VhUeH2RMkoWrkz2WSYWA9Yqu0SPLBb3w-6vsnMkO15d0hLP1EeduT1cGrkYDEGBaTKu-Vzvs47RAceWlkp3wAPZh3SsyJeZjg1HaW2LoZKyJLVhb_UAZzC016IHBteOhGkfVJ_YS5rhPhJGg4UH67zOUW6LFgJLmwIg15GXrEDRvkc1YXKwfk3al8tdsC7hDr5f1XGLakQhuQIX4MfdtHM4AtYxn2DlETgwBBMyNZ34CuWxtKbdql-BrB7OtLHRaujDDn2xIcMc0u5TXJcVVBYLRvDyfb0CK7Qm4q9_Z8FZbkOZbBJyrJ4hKbT7tGrEXBt_znKZcMmHOp66VX0eQKiAubEdWeikjJkjh_leqkkYaizVLOAzciXPkOJA9zhQTzbuOlo7j4ac-7bAF88Zuc4jwQhR6IZ4NXFGpuxzFRliL5fQ1UIJQ7nN-IQ2sArHveAth-V2pQvil9uxyEdNQtLPaswvlvF19ch0JjfFWlrsjoja_qVI0W1akv8RdLAXSdKAQJF3ZFY8sq10vKmvHrtB6xGZzA-baMl-vicWVJMeG4HLa5EftwLCW18k7SddZANUlTmvGjIpYm4fURaKu6ip7iXLT-xi4gE1iVIYLEp7HviOUWbC7nyfQTrcE5ZWDCr04xviibooOyRFMozeI57jgJFuZp35ZLpcVqP-IYoM9Z1bs50igENmBUmD4Px6RT4eF6bxfZ4fBj80fVoJ9Cs4TBArOr0NHWJqjXSackGtCIV21ioq0AVMc10jPEbOIQmY1mhURXrVf-AEsQteM41CooS9rDTMlncOTLdODGOd2Dp0KAIAcZeoMDnBbD7RzEYUKHahHUvvhmEfLga4e2hGtMqOa_F90vInrIDxxUEBe9M-yemHBeynPR5TdnWigwR4ZB9Kaie1KekFVDy6FVySxTra2TJsMRH5hzUK5O2Kck2q9zxJFEUOak4w--Q4sn6nwv-2G2MYEdwtDu0elu2OyHRTVcqrakc9h1EbqRsJPY-6k-WBDJ_B0fmpYlC63Blu7zLqSNkylmeUPdEl6RiVulFzymzPxNe-LNMbfWK7zZ9q8F_RsAcRSr9aJTJ6tzyxz-gn2jYRPLTphn05HnAyLT2sNmS_sXeOG1cTFDxS94t46eu2wzjidEutVBE-2nE9_S83OdH2Mcq6vcTZYzPlyX7bDzPZizfzi9eX272qu2dJBANj1AlXHBLGEcYi7Z5_J2ehK5Lv1SNAmon2H5ArE7AiksFwMDJ-KNX3QVIgcDXaaPf_EPh_gMApaYmwejqtaOcGiPMgh-8p0rgaFsRH115blu9dUiu-r7ujULhyPzdsLJDuyrGuypkBGMAiKTdu97UI5mx7bY4j2O-K8GlrD1QtMqr0Oj6ersup1mQvFTyQK4y2-NLGW6mBI2GAakQBP-nSV1F2gIl6YPa1byWz-ONJtw4bEj70-vtIZ-i1nkbqTSkNopqodhAt1urb1uRrXWiBEqLA_jvZiKlw1VRHLe9-AE5UCkDuWaOTxlmjwlwDehhqYlFyzxNpCWRqDc-4GG_uACTkw4XsUKqoD1574yLrZMVJq-G3sQhCxiLZklRWq4j6xY3ok9ugho1794dI0ZsLq5DqvBcfva17gTL0VT9y3jShSRpTM7YQZC99nbuIeLtrqKARaS6vhtqv0-QzJIaY6caiHe0dCh1Bryn-ArgbFnfSbRRFMLKD6vf4htVV0olCsTBKSttRwwBFOg4zSRiT7S8bys_QgCWlqcrBfV2GUORiZE_f7lOmTleuV517FUS9TXUl-0h69KIlLk0RGxH-p-kGAUA9gUZ2tDIj2POyEWeAa5rCig_EbqQ-7LUFh_0MLMdIZ2jQAfsa6EDhOTdYLHe2_CwPgPDrr4XHuz_u0_tzYLbHaHmxdqvr44P_AF9mwWY93kjXUk6MAFaZi3I6QEc1oVbwgtbvf5P2cuNr8iF_i_gz7AhqSFYfIqFpeXeqUTyfcyhsXLRdn8iOH5Kctu7EBSo2dX95eam8akQBdzVX409oV8Oh9sHqvQTqRNQ6k6KvebrdVMdtI7xvlNuAa11CW29E9G4pxSHJwltyNVfPjNqZdFYV1TGgBuMDAYQrOY72JFjmGnLyAh9ezB_9Mtyq5_Ow3ap4rr-cghVE2rOfEE3tzk-1T1RlD8pkDJdjisvzmPaX5WJ-ApC8y5RY-ziwC9E4hXksxvFklWkwItlxtXeOw2ASaeMRK4psE_Yo6EI-BryZSqfEIdkri1wMPb7FedhzdWkW8-P2_Ck0F3rOLs-5BKonLSDpo7vYH0vqHUeTKROGJ-oL1bzxT637BhPODG_kQZIT17mfgBvvvdYoLCdYeTauexUtmvS4qaUo2JrwOBabthEL9Q89STcwGGgtHtefidUZqvp-4z1XBZ3amSK1JMKYyuX1eZirWJnrp-Pm-rSnvXs0y6icC7vrSXzA5J1MWb1CbNI2Bhd1bk2PLOVMxEdGHvQmsuvU8ebscCl5ZIXyAj5dVCoyRNzJt8W89dl44lP5xSyPm3YSWq_AQsbv37qhEGM42LRxoevUJvZ8CNn2tkvujk--C2qTUWtqr4_20exGklDb-U0edojHURHF9ZI8JVHDY76hHWr0QDHVob5XV7jzsNVc192J7HB85qG6p4nfd6lppH-GikD6kP4ZkFeqsxl1A5FqOTd487bN2cTQ_XZ9tz1umg8sLAqzwEy1Vyn8o_1ETuuTrrNi3LGqdMQqeEORJrEHdRKZsltZV9B-dE6OgwTBrfBhc8ahGkM35qd1FYgLbWYQOepszN2Vz8nVcXMXrpNHUK0mnWqX0uYBF7fnMTFn_9icgKNPtOGOJLjpLxtQgx-ogspGr8P-hFf07ELpfxKgIp2xf55_3YPRmVSFyf08qY9bxFP8U8FT1mXHXHwCwPfhY99rENwJO17PxP_v1pvyhIp03BYhgWn_5EhSF1VLLQt69qcqulz75zaJ7YSD2XB12HeEDxt9HuZZlOun4rh5_tnm_CMenV6ZbkeB1HcfUNmhPtHx8PQIHCblZ1V5eyQB9fWYAPEGWOLTyGihT0acEER0hPkN7BkaAlRYdlY92SLjLTgj5XRoz1LTXh5EORt_XLqr5Qk8_oQ7tCnv6b6eFmr3-ztpXeMkJntlYu1Y0D8XM9zcFOXuuBke9xUsk4w2lgmBvLpRZ6cYXDXXyxNTxgon-om2PdL2sqG08twZuSxPZH91UkebnDvuqUmS_rFfMlNCsYdiNV_X4wpXD9yHTqt46yV1wSy3eyY_5eH35cGL-laaKNAINhlgoPXUEzuTtBg95_XiuN3_BiNWRQusv5mWb7dn510mWjUnJOHdET0q0dSIpSeh4AddjBBr1NUVbwF1vFM8Cnv64Zs7C0IsD04F1Y7f6LwqTOl7jzhvR-liXYSedcJ8Yih1ya1OMRAaD2BPPemONzL29dCZWP8-33UnUP0kGeXCQ37LRegnqhvMSfPPQZ1JcD3fXC5O0CuP4wn9NBIibKIiixxpp2pRO1Pv6WDjtxyTWtQiGJuJT9YH-5Cz3luQHLLZYb70xd2xhg_f6Wyy5jxbRSd-0WWlC2uKRPfKPW8jWuk0IRXvZkon2LxTpe5sbHATL-5PhNqBzEbJLix05zMdqUjhBzV8irTTvSSUg5nCUhalS4SfxekPP8f0kGQnAWoqcIx3Dbr-d-K4gvRUoG_d0MP-dYwX6wHS6YmNnPYXndjeciDUyOZFMmOfXJT8Xk9_T3qCvCrcjuSfpqMOOeNmxvvR6EfO-PfOhoc6rm72F4i2fbx3lO4JU8Ja5wTIZqQUTRa2H9f470eesD4yYz0ewWQAfyrv-Lr9Grhx8vCyTOv1w4Z-tbM0rt_DYeh3sz7HpowKu6usyx9erh3O-GI-6-rhpXne2YJfvvjL1e3VzdX8cnk3n93Nl3dXi_l__vf_AL7evts:1lIskG:OWn_z3MZLPCnPgNp7apiHaMp7sQ8myenqwjJsz5mnWc	2021-03-21 13:42:52.752674+01
\.


--
-- Data for Name: dolacz_dolaczpage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.dolacz_dolaczpage (page_ptr_id, opis, link_text, link, pokaz_email, pokaz_imie, pokaz_jak_sie_dowiedziales, pokaz_napisz_do_nas, pokaz_newsletter) FROM stdin;
12	<p>Bądźmy w kontakcie. Wyślij nam swój email a będziesz dostawiać na bierząco najnowsze wieści.</p>			t	f	t	f	t
\.


--
-- Data for Name: dorzuc_dorzucpage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.dorzuc_dorzucpage (page_ptr_id, opis, link_text, link) FROM stdin;
13			
\.


--
-- Data for Name: home_homepage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.home_homepage (page_ptr_id, earth, earth_head, flame, flame_head, long_name, quote, star, star_head, quote_author, stodola, wolna_ziemia, workshop, filozofia, spis, spis_link, spis_title) FROM stdin;
3	<p><br/>Będąc równymi wobec miejsca w którym żyjemy, stajemy się równi wobec siebie. W ten sposób tworzymy możliwość rozbudowywania lokalnej struktury poziomej, z pominięciem władzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy białych plam na mapie prawa i zakładanie organizacji o strukturach poziomych, możemy tworzyć świat oparty o nasze zwyczaje, wewnątrz każdego demokratycznego państwa i to zupełnie legalne. Jednym z tych zwyczajów jest wyeliminowanie własności prywatnej, tam gdzie mogła by ona zaistnieć jako władza człowieka nad człowiekiem. Umożliwi nam to posiadanie ziemi jako wspólnej i niepodzielnej własności, a przede wszystkim stworzenie podstaw do tego, by każdy mógł mieć równe prawa do decydowania o swoim życiu.<br/></p>	Chcielibyśmy, żeby wiedzieli o naszym projekcie wszyscy, którzy czują Ziemię jako wspólny dom całej ludzkości. Mamy na uwadze odtwarzanie naturalnej relacji między człowiekiem a naszą planetą. Chcemy pokazać, że nie potrzebujemy posiadać Ziemi, aby na niej żyć.	<p>To my ludzie przynależymy do Ziemi i odkrywając to, możemy również odkryć naszą faktyczną funkcję i misję tu gdzie jesteśmy.. a jesteśmy opiekunami i strażnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale również indywidualnie. U nas nikt nie jest &quot;u kogoś&quot;, wszyscy jesteśmy u siebie. Ziemia jest dla nas dobrem wspólnym. Będąc równymi wobec miejsca, w którym żyjemy, stajemy się równi wobec siebie. W praktyce oznacza to, że wszelkie nieruchomości pozostające w zarządzaniu organizacji, która zajmuje się wspólną Ziemią są od początku i na zawsze traktowane jako dobro wspólne i nie mogą być przez nikogo postrzegane jako własność. Jest to naszą drogą do wolności, jak i samą wolnością, która w ten sposób eliminuje z naszego życia podstawy konsumpcjonizmu.<br/></p>	Odrzucając całkowicie taką wartość, jak posiadanie Ziemi, przywracamy jej w naszej świadomości, naturalną funkcję jednego z żywiołów. Ziemia, zarówno jako Planeta, jak i ta pod nogami postrzegana jako grunt, który może być czyjąś własnością, nigdy nie była i nie będzie należała do człowieka.	<p>Stowarzyszenie na rzecz uwalniania Ziemi spod własności indywidualnej, dla wspólnot ekoosadowych.</p>	Nasze czasy narzuciły, konieczność stworzenia filozofii, która miałaby charakter globalny i uniwersalny, całościowy i uzdrawiający.	<p>Opierając się na tej jednej fałszywej wartości, cała światowa ekonomia z koncernami i bankami, prowadzi ludzkość do samozagłady.<br/>To właśnie z tego powodu, na naszej planecie bez przerwy trwa wojna między człowiekiem a naturą. Niszcząc dla krótkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich środowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/> Siła umysłów wypranych przez propagandę chaosu współczesnej kultury, operując strachem i przywiązaniem prowadzi często do tego, że za cenę przeżycia, bądź obietnicy raju, kupujemy poglądy które tworzą naszą świadomość i stajemy się w ten sposób niewolnikami systemów ekonomicznych, społecznych, politycznych i religijnych.<br/> Na poziomie świadomości planetarnej, potrzebujemy zdecydowanego uderzenia właśnie w ten punkt i pokazania światu, że nie da się decydować o czyimś życiu, poprzez wymyślone prawo do jego zawłaszczenia.</p>	Krytycznym punktem w hierarchii wartości współczesnej cywilizacji, jest powszechne przekonanie, że możemy mieć całkowitą władzę nad tym co posiadamy.	Henryk Skolimowski	<p>Przedsięwzięcie nasze ma pokazywać, że da się tworzyć wspólnotę na zasadach równości, bez potrzeby posiadania miejsca w którym żyjemy. Ma to być też przykład, w jaki sposób można dążyć do jak najbardziej ekonomicznego z punktu widzenia zużycia energii, oraz jak najbardziej samowystarczalnego stylu życia.Miejsce to, ma łączyć wszystkich, którzy mieli by na uwadze, jak istotna dla życia na Ziemi jest idea równości ludzi wobec miejsca w którym się znajdują. Jak również to, że Ziemia nie należąca do pojedynczego właściciela jest bardzo istotnym aspektem budowania wolności i świadomości będącej alternatywą do konsumpcjonizmu i chęci zawłaszczania sobie tego, co tak na prawdę jest dobrem wspólnym.</p>	<p>Inicjatywa mająca na celu zorganizowanie wspólnego miejsca, gdzie dało by się tworzyć życie w oparciu o możliwości, które możemy stwarzać sami dla siebie, rozpoczęła się wiele lat temu, w wypożyczonym domu pod Bydgoszczą. Tam po raz pierwszy w parę osób postanowiliśmy spróbować żyć razem. Już na samym początku potrzebne wspólne decyzje były podejmowane w kręgu jednogłośnie za pomocą konsensusu.<br/>Plan był taki, by najpierw stworzyć faktycznie istniejącą wspólnotę, a potem w oparciu o to założyć fundację lub stowarzyszenie.<br/>Formalnie istniejąca organizacja była nam niezbędna do tego, żeby dało się zrealizować plan posiadania wspólnej przestrzeni do życia, w taki sposób, by nie było jednego właściciela. Od tamtego czasu, jednym z głównych założeń jest  równość wszystkich uczestników wobec podejmowanych wspólnie decyzji, dotyczących tego co robimy razem.<br/>Na tych właśnie zasadach powstał obecnie istniejący statut stowarzyszenia Arte Unite. <br/>Naszą organizację udało się założyć na wsi, kilka lat po tych wydarzeniach i w dużej części w oparciu już o innych nowych ludzi. Jednak wtedy ,wciąż nie mieliśmy swojego kawałka Ziemi, mimo tego, że udawało nam się żyć wspólnie z dala od miasta. Działo się dużo, w pewnym okresie pojawiły się nawet cztery konie. Grabówka, bo tak nazywała się wioska, w której mieszkaliśmy działała ponad 10 lat. Samo stowarzyszenie Arte Unite z czasem, zostało przeniesione do Dziadowic, natomiast wiejska chata, żyła nadal swoim własnym życiem.<br/>Wtedy w Dziadowicach pojawił się Andrzej, weteran z Zieben Linden. Zaproponował jeden budynek gospodarczy, który dałoby się przerobić na dom, -no i spodobała mu się idea tworzenia miejsca w oparciu o wspólną własność.<br/>Tak powstał Lubliniec.<br/>Z tym miejscem wiążemy plany wspólnego życia w większej grupie osób. Dwa budynki i potencjalny domek na wielkim dębie, dają nam możliwość zaproszenia do tej inicjatywy jeszcze około siedmiu osób<br/>Założenia są takie, by był to dom jak najbardziej ekonomiczny z punktu widzenia zużycia energii, oraz jak najbardziej samowystarczalny. Nie mamy jeszcze takiej wiedzy i doświadczenia, by to zrealizować w stu procentach, jednak jest to główny kierunek naszych działań budowlanych.<br/>W tym budynku w niedalekiej przyszłości, chcemy tworzyć różne warsztaty. Na początku w oparciu o nasze umiejętności : Joga, ceramika, rzeźba w drewnie, Możliwe że będą też zajęcia z zakresu terapii ruchem, nauki życia na wsi w sposób zmierzający do jak największej niezależności. Chcielibyśmy też tworzyć kolejne miejsca na terenach nie należących do prywatnych osób w oparciu o nasze pomysły i naszą organizację.<br/></p><p>Wciąż szukamy ludzi, którzy czuli by się z nami dobrze i mieli na uwadze to, jak istotna dla życia na Ziemi jest idea równości ludzi wobec miejsca w którym się znajdują. Jak również to, że Ziemia nie należąca do pojedynczego właściciela jest bardzo istotnym aspektem budowania wolności i świadomości z tym związanej.<br/></p><p></p>	<p>Z okazji założenia przez Stowarzyszenie Arte Unite zbiórki społecznościowej, chcieli byśmy Was zaprosić do udziału w naszych warsztatach.<br/> Organizowaliśmy już w Lublińcu Jogę wg Iyengara oraz naukę budowy izolacyjnych mat ze słomy, w połączeniu z tynkowaniem gliną ścian słomianych.<br/> Obecnie mamy możliwość przeprowadzenia zdalnie kilku ciekawych zajęć, jak również już zaplanowanych warsztatów w naszej Stodole, ale dopiero jak skończymy ją remontować za zbierane w tej chwili pieniądze.<br/> Uznaliśmy, że w tych ciężkich czasach nie można już na nic czekać i że jest to dla nas ostatni moment na to, żeby być albo nie być.<br/> Dlatego zachęcamy serdecznie wszystkich, do aktywnego przyłączenia się materialnie do inicjatywy, która może stać się naszą wspólną.</p>		<p></p><p>Oto szczegóły prac z mocno szacunkową wyceną, w kolejności takiej, jak powinny być wykonane :<br/></p><p>Okna i drzwi 8000 zł do 12 000 zł w zależności od materiałów.<br/></p><p>budowa ściany szklanej, wymiana okien 2 x w tym jedno dachowe, wymiana szyb 2 x wstawienie okien 4 x + drzwi 6 x<br/></p><p>(5 x drzwi + 7 okien już są wstawione)<br/></p><p>budowa schodów drewnianych 4000 zł i ewentualnie schodów dodatkowych przeciwpożarowych z metalu w szklarni + 4000 zł<br/></p><p>Położenie legarów na dolnej podłodze + deski od spodu i od góry na górnej i dolnej podłodze (materiał i praca 8000 zł )<br/></p><p>izolacje poziome na dwóch poziomach podłogi + izolacje niektórych ścian z perlito betonu<br/></p><p>W oparciu o naszą maszynę do pianobetonu - 40 roboczogodzin dla dwóch osób + materiał 2000 zl (transport cementu i perlitu)<br/></p><p>8000 zł - 12000 zł Dokończenie hydrauliki :<br/></p><p>zbudowanie grzejników płaszczyznowych i podłączenie do systemu / parter i piętro<br/></p><p>podłączenie warsztatu (zlew do prac ceramicznych - zimna woda i odpływ)<br/></p><p>Opcjonalnie - zamontowanie na dachu i podłączenie baterii solarnych na glikol do zbiornika (można to zrobić również na drugim etapie budowy)<br/></p><p>rozdzielnia cieplej wody<br/></p><p>W razie konieczności / wymagań - opis projektowy całego systemu.<br/></p><p>budowa i podłączenie suszarni do systemu (suszarnia jest na wodę)<br/></p><p>podłączenie grzejnika &quot;kurtyna powietrzna&quot; + grzejnik do suszenia drzewa<br/></p><p>Rynny i zabezpieczenia przeciw spadającemu lodowi z dachu 3000 zł razem z pracą. (tu opcjonalnie w grę wchodzi firma, która się tym zajmuje)<br/></p><p>Wentylacja 3000 zł (częściowo jest już gotowa)<br/></p><p>Budowa ścianek działowych 15 000 zł<br/></p><p>(kafelki w dwóch łazienkach i kuchni, lekkie ścianki z itongu + izolacja zbiornika, tynki gliniane wewnątrz budynku) połowę kafelków mamy.<br/></p><p>Elektryka 5000 zł - 6000 zł<br/></p><p>położenie kabli, gniazdek w 11stu pomieszczeniach (piwnica, szklarnia, antresole, pompy i grzałki do hydrauliki) i podłączenie kabla 3 fazy do warsztatu<br/></p><p>W razie konieczności zrobienie projektu instalacji.<br/></p><p>Budowa kominka 4000 zł praca i materiały. Kominek jest spory - w pomieszczeniu głównym warsztatowym. (część materiałów jest)<br/></p><p>barierka drewniana do balkonu 500 zł (jest materiał )<br/></p><p>Dokończenie tynków zewnętrznych i izolacji ze słomy w dachu + tynk na tej izolacji 6000 zł<br/></p><p>W drugim etapie można dodać budowę szklarni i studni głębinowej jak również baterii solarnych <br/>szklarnia z przebudową stropu i wzmocnieniem konstrukcji około 15000 zł<br/><br/> Kolektory słoneczne na glikol 6000 zł <br/><br/><br/><br/>Studnia głębinowa około 5000 zł</p>		
\.


--
-- Data for Name: miejsca_miejscapage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.miejsca_miejscapage (page_ptr_id, opis, objasnienie, komentarz, zaproszenie) FROM stdin;
8	<h2><br/>Chcemy by to miejsce było tworzeniem wspólnej przestrzeni, którą możemy razem kształtować dla naszych pasji i potrzeb.<br/>Bardzo ważne dla nas jest również to, że Ziemia nie należąca do pojedynczego właściciela jest bardzo istotnym aspektem budowania wolności i świadomości będącej alternatywą do konsumpcjonizmu i chęci zawłaszczania sobie tego, co tak na prawdę jest dobrem wspólnym.<br/>Nasza wspólnota, ma łączyć wszystkich, którzy mieli by na uwadze, jak istotna dla życia na Ziemi jest idea równości ludzi wobec miejsca w którym się znajdują.<br/><br/></h2>	<p>Stodoła Wymyślacz jest na obrzeżach Lublińca, blisko trasy nr 11 łączącej Katowice z Poznaniem. Nasze miasteczko leży 30 km na zachód od Częstochowy. Oddzielone jest od aglomeracji śląskiej dużym kompleksem lasów, który rozpoczyna się kilkaset metrów od naszego budynku.<br/> Jest to gospodarczy budynek z cegły na wapiennej zaprawie. Przebudowa na obiekt mieszkalny, polega na łączeniu technologii nowoczesnych z tradycyjnymi.  <br/><br/>Ogrzewanie całego budynku będzie oparte o zbiornik akumulacyjny, a ciepło rozprowadzane za pomocą wody do grzejników płaszczyznowych zrobionych z gliny i kruszywa akumulacyjnego. Sam zbiornik będzie zasilany z dwóch podków, baterii słonecznych, solarnej i fotowoltaicznej.<br/>Budynek ma dwa piętra. Na parterze mieści się sala wykładowa z małą sceną, kuchnia, łazienka, biuro, warsztat, a za nim część szklarni i piwnica z suszarnią do warzyw. Na piętrze są cztery niewielkie pokoje mieszkalne, szklarnia działająca również zimą, balkon i z niego most prowadzący do domku na drzewie. <br/></p><p>Budynek sąsiaduje jednym podwórkiem z glinianym domem Andrzeja. Oba domy tworzą jedną wspólnotę. <br/> Przedsięwzięcie nasze ma pokazywać, że da się tworzyć wspólnotę na zasadach równości, bez potrzeby posiadania miejsca w którym żyjemy. Ma to być też przykład, w jaki sposób można dążyć do jak najbardziej ekonomicznego z punktu widzenia zużycia energii, oraz jak najbardziej samowystarczalnego stylu życia.</p>	<p> Zapraszamy do współpracy osoby, które chciały by się zajmować alternatywnymi rozwiązaniami, dotyczącymi                 struktur społecznych. Będziemy też dysponować tzw. biurem, gdzie można gromadzić i udostępniać przez internet gotowe  projekty. </p>	<h2>Nasze zwyczaje<br/> -zaproszenie<br/><br/></h2><p>Żeby uniknąć przypadkowości ludzi biorących udział w naszym projekcie, jesteśmy w mocy zaprosić wszystkich, którzy nie utożsamiają się z żadnymi dogmatami, nie potrzebują przywódców i chcą z nami współtworzyć rodzinę opartą na plemiennym kręgu. Mamy na uwadze stwarzanie między nami relacji, w której uczymy się nawzajem nie dla samej wiedzy, a dla harmonii ze sobą i z całym życiem. Na tym poziomie różnice między nami stają się inspiracją do łączenia różnorodności w funkcjonalny zespół, wtedy każdy staje się jednakowo potrzebny. Kiedy rywalizacja zmienia się we współpracę, nikt nie podąża już sam naprzeciw przeszkodom i problemom - łatwiej jest pokonywać je razem. U nas nikt nie jest u kogoś, wszyscy jesteśmy u siebie.<br/> Organizacja pozarządowa, gdzie zarząd jest wyłącznie władzą wykonawczą jednogłośnych decyzji daje nam taką możliwość również na poziomie prawnym. Będąc równymi wobec miejsca, w którym żyjemy, stajemy się równi wobec siebie. Dzięki temu każdy, kto pojawia się u nas, może mieć poczucie, że jego udział w tym przedsięwzięciu jest na równi ze wszystkimi.<br/> Nie mamy potrzeby przeciwstawiania się jakiejkolwiek władzy, ale też nie mamy potrzeby jej tworzyć między sobą, ani uczestniczyć w przekazywaniu sobie tej zbędnej dla wolności tradycji. Wspólnie nie utożsamiamy się z żadną religią, ani jej nie tworzymy. Jest to koniecznym warunkiem na ścieżce życia którą idziemy, w taki sposób chcemy zachować możliwość kontynuacji tego kim jesteśmy jako ludzie tutaj na Ziemi. Naszą odpowiedzią jest utworzenie kręgu, w którym mogą uczestniczyć wyznawcy wielu religii, jednak żadnej z nich nie stawiamy w centrum. Zdajemy sobie sprawę, że wiara jest częścią anatomii naszych uczuć i nadaje moc tworzenia wszystkiemu, co jesteśmy w stanie uznać za prawdziwe. Kiedy nie jest w sprzeczności z naszym rozumieniem, faktycznie staje się coraz bardziej skuteczna w kreowaniu rzeczywistości. Żeby to widzieć, nie potrzebujemy żadnych “pośredników” pomiędzy człowiekiem a tym wszystkim czego manifestacją jesteśmy. To my należymy do tej Planety. Jesteśmy jej opiekunami i strażnikami.</p>
\.


--
-- Data for Name: misja_misjapage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.misja_misjapage (page_ptr_id, opis, objasnienie, komentarz_1, komentarz_2, komentarz_3, podsumowanie) FROM stdin;
7	<h2>Rozwój w kierunku integracji z całym życiem na Ziemi jest naturalną możliwością przetrwania każdego gatunku i wynika bezpośrednio z ewolucji życia, dlatego jest też naturalnym kierunkiem ewolucji świadomości człowieka. Chcielibyśmy, żeby wiedzieli o naszym projekcie wszyscy, którzy czują Ziemię jako wspólny dom całej ludzkości. Mamy na uwadze odtwarzanie naturalnej relacji między człowiekiem a naszą planetą. Chcemy pokazać, że nie potrzebujemy posiadać Ziemi, aby na niej żyć.</h2>	<p>Każdy człowiek marzy o tym, by kształtować swoje życie zgodnie z tym, co dla niego dobre. Jednak różnorodność pomysłów i rozwiązań na świecie, wciąż kłóci się ze sobą i sobie zaprzecza. Mimo to, jako ludzie wciąż zmieniamy świat. Każdy z nas pragnie się tym zająć jak najlepiej. Problem w tym, że wciąż nie wiemy co to znaczy lepiej, a zwłaszcza lepiej dla całego życia na Ziemi, którego jesteśmy częścią.<br/> Ewolucja dotarła już do punktu, gdzie zmiana musi dotyczyć nas samych. Świadomość, którą zyskaliśmy w ciągu wieków, pokazuje nam wyraźnie, że nie możemy już planować i działać w zakresie jednego pokolenia, a tym bardziej jednostkowo.<br/> Nasza organizacja ma na celu stwarzanie godnych warunków do życia i do samostanowienia o nim. Chcemy zmieniać świat i relacje między ludźmi w nim panujące. Dlatego do naszych projektów, zapraszamy ludzi świadomych zagrożenia, jakie niesie obecny kierunek rozwoju cywilizacji.<br/><br/>  Krytycznym punktem w hierarchii wartości współczesnej cywilizacji, jest powszechne przekonanie, że możemy mieć całkowitą władzę nad tym co posiadamy. To właśnie z tego powodu, na naszej planecie bez przerwy trwa wojna między człowiekiem a naturą. Niszcząc kolejne gatunki i ich środowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. Świat konsumpcji doprowadził nawet do sytuacji, gdzie możemy konsumować czas i życie innych ludzi wyznaczając za nie cenę. Demokracja daje równe prawa również głupocie, jeśli tylko da się ją sprzedać. Kiedy od dziecka motywację wyznaczają dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzedaż, tworzymy świat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na władzę. Jest to upadek poniżej normalności, a prawda o tym może wystraszyć. Dlatego boimy się jej i ukrywamy swoją naturę wciąż nie mogąc jej odkryć.<br/><br/> Nie mamy potrzeby przeciwstawiania się jakiejkolwiek władzy, ale też nie mamy potrzeby jej tworzyć, ani uczestniczyć w przekazywaniu sobie tej zbędnej dla wolności tradycji. Kiedy przemieniamy stare systemy wartościowania w nowe, nie potrzebujemy już buntu. Nasze działania wywodzą się z ekofilozofii i głębokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie była własnością człowieka. To my należymy do tej Planety. Jesteśmy jej opiekunami i strażnikami. Będąc równymi wobec miejsca, w którym żyjemy, stajemy się w sposób naturalny równi wobec siebie. Dzięki temu każdy, kto pojawia się u nas, może mieć poczucie, że uczestniczy w tym na równych prawach ze wszystkimi. Na tym poziomie różnice miedzy nami stają się inspiracją do łączenia różnorodności w funkcjonalny zespół, wtedy każdy staje się jednakowo potrzebny.<br/>U nas nikt nie jest &quot;u kogoś&quot;, wszyscy jesteśmy u siebie. Ziemia jest dla nas dobrem wspólnym. Będąc równymi wobec miejsca, w którym żyjemy, stajemy się równi wobec siebie.<br/> W praktyce oznacza to, że wszelkie nieruchomości pozostające w zarządzaniu organizacji, która zajmuje się wspólną Ziemią są od początku i na zawsze traktowane jako dobro wspólne i nie mogą być przez nikogo postrzegane jako własność. Jest to naszą drogą do wolności, jak i samą wolnością, która eliminuje z naszego życia konsumpcjonizm jako wartość. Jakakolwiek forma posiadania Ziemi, oparta o struktury władzy człowieka nad człowiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ideę przestrzeni, gdzie każdy może być równy, zarówno wobec miejsca w którym żyje, jak i wobec innych ludzi.</p>	<p>W oparciu o udane zapisy białych plam na mapie prawa i zakładanie organizacji o strukturach poziomych, możemy tworzyć świat oparty o nasze zwyczaje, wewnątrz każdego demokratycznego państwa i to zupełnie legalne. Jednym z tych zwyczajów jest wyeliminowanie własności prywatnej, tam gdzie mogła by ona zaistnieć jako władza człowieka nad człowiekiem. Zakładając, że dane miejsce ma właściciela, to właśnie owy właściciel może zawsze zdecydować ostatecznie i to jego decyzje są egzekwowane przez oficjalne i funkcjonujące we współczesnym społeczeństwie prawo. W związku z tym, wszyscy inni ludzie znajdujący się w tym właśnie miejscu, niestety podlegają decyzją jednej osoby: właściciela. Ta sama władza, jest przekazywana z pokolenia na pokolenie za pomocą tak prostego narzędzia jak dziedziczenie majątku -czyli posiadania terytorium. Jedną z głównych przyczyn powstania Ruchu Wolnej Ziemi jest przerwanie łańcucha dziedziczenia i przekazywania sobie władzy i tym samym napędzania w ten sposób konsumpcjonizmu.</p>	<p>U nas nikt nie jest &quot;u kogoś&quot;, wszyscy jesteśmy u siebie. Ziemia jest dla nas dobrem wspólnym. Będąc równymi wobec miejsca, w którym żyjemy, stajemy się równi wobec siebie. W praktyce oznacza to, że wszelkie nieruchomości pozostające w zarządzaniu organizacji, która zajmuje się wspólną Ziemią są od początku i na zawsze traktowane jako dobro wspólne i nie mogą być przez nikogo postrzegane jako własność. Jest to naszą drogą do wolności, jak i samą wolnością, która eliminuje z naszego życia konsumpcjonizm jako wartość. Jakakolwiek forma posiadania Ziemi, oparta o struktury władzy człowieka nad człowiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ideę przestrzeni, gdzie każdy może być równy, zarówno wobec miejsca w którym żyje, jak i wobec innych ludzi.</p>	<p>Ziemia, zarówno jako Planeta, jak i ta pod nogami postrzegana jako grunt, który może być czyjąś własnością, nigdy nie była i nie będzie należała do człowieka. To my ludzie przynależymy do Ziemi i odkrywając to, możemy również odkryć naszą faktyczną funkcję i misję tu gdzie jesteśmy.. a jesteśmy opiekunami i strażnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale również indywidualnie. Jesteśmy dziećmi tej Planety i możemy bawić się w co chcemy i z kim chcemy, a kto chce może bawić się z nami. Dlatego żeby uniknąć przypadkowości ludzi biorących udział we wspólnym przeżywaniu, jesteśmy w mocy zaprosić wszystkich, którzy nie utożsamiają się z żadnymi dogmatami, nie potrzebują przywódców i chcą wziąć udział w tworzeniu rodziny opartej na plemiennym kręgu. Kiedy rywalizacja zmienia się we współpracę, nikt nie podąża już sam na przeciw przeszkodom i problemom, łatwiej jest pokonywać je razem. Nie można już zmienić przeszłości, jednak po tylu latach eko i ludobójstwa, nadszedł już czas, by zacząć spełniać marzenia. Pierwszy raz o tej inicjatywie, można było się dowiedzieć w Zielonych Brygadach (Sierpień 2002), jako &quot;Projekt Tęczowy Krąg&quot;. Wtedy też kontaktowaliśmy się z siecią społeczności WAS (Wiejskie Aktywne Społeczności), z których część należy do GEN (Global Ecovillage Network). Jako społeczność zgłosiliśmy do WASu swój udział z chęcią rozpowszechnienia naszego projektu na szerszą skalę.</p>	<p>Tworzymy ogólnopolski Ruch na rzecz uwalniania Ziemi spod własności indywidualnej, dla wspólnot ekoosadowych. Ruch Wolnej Ziemi jest inicjatywą społeczną skupioną na wdrażaniu w życie sprawdzonych rozwiązań prawnych i organizacyjnych w celu „uwalniania Ziemi” spod własności prywatnej. Zależy nam na tworzeniu i rozwoju intencjonalnych społeczności wiejskich (tzw. ekowiosek, ekoosad), w których decyzje dotyczące wszystkich podejmowane są wspólnie (konsensus), i w których my, ludzie, posiadamy równe prawa zarówno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia. Uczestnikiem Ruchu może być każda osoba, która rozumie nasze założenia i zgadza się z nimi. Ruch Wolnej Ziemi nie jest organizacją i nie prowadzi żadnej ewidencji przynależności. Mianem „Wolnej Ziemi” określamy taki teren, który jest użytkowany i zarządzany wspólnie, społecznie, przez pewną grupę ludzi na zasadach równości i braterstwa w intencji dobra i korzyści zarówno użytkowników tej ziemi, jej sąsiadów, całej ludzkości, przyrody oraz przyszłych pokoleń. Jednym z głównych założeń jest wspólne decydowanie w sprawach, które dotyczą Ruchu. Pozwala to miejscom w których żyjemy, jak również nam wszystkim na rozwój i ewoluowanie zgodnie z jednogłośnie ustalanym kierunkiem. Decyzje takie, mogą zapadać jedynie w kontakcie osobistym w kręgu. Jedną z organizacji, które założyliśmy, jest Związek Wolnej Ziemi. Oto jego podstawowe założenia : . My, ludzie tworzący Związek Wolnej Ziemi, uznajemy się za opiekunów i strażników Ziemi, a w szczególności terenów, na których żyjemy. Dążymy do rozwoju świadomości poprzez odtworzenie naturalnej relacji człowieka z naszą Planetą. Przyjmujemy, że będąc równymi wobec Ziemi, na której żyjemy, jesteśmy również równi wobec siebie i całej Przyrody. Oświadczamy, że Ziemia i całe życie na Ziemi stanowią dla nas największą wartość przez sam fakt swego istnienia. Uznajemy, że naszym zadaniem jest ochrona Ziemi, naszego Domu i Miejsca w Kosmosie. Uznajemy, że to my, ludzie, należymy do Ziemi, a nie odwrotnie. Uznajemy, że Ziemia ma takie samo prawo do istnienia i uszanowania jej bytu, jakie mają wszyscy ludzie. Pragniemy tworzyć wspólnoty, w których będziemy razem żyli, współpracowali ze sobą i uczyli się od siebie dla dobra nas samych i całego Życia. Pragniemy, aby wszyscy ludzie żyli w harmonii ze sobą i z całą Przyrodą, szanując i chroniąc Ziemię. Wszystkie decyzje podejmujemy przez consensus (jednogłośnie), czyli sposoby życia, ochrony ziemi i dalsze działania na terenie fundacji podlegają decyzji kręgu. Dzięki temu każdy, kto pojawi się u nas, będzie mógł mieć poczucie, że ziemia jest naszym wspólnym domem i razem możemy w tym uczestniczyć.</p>
\.


--
-- Data for Name: rwz_rwzpage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.rwz_rwzpage (page_ptr_id, opis, objasnienie, komentarz) FROM stdin;
9	<h2>Ruch Wolnej Ziemi jest inicjatywą społeczną skupioną na wdrażaniu w życie sprawdzonych rozwiązań prawnych i organizacyjnych w celu uwalniania Ziemi spod własności prywatnej. Zależy nam na tworzeniu i rozwoju intencjonalnych społeczności wiejskich (tzw. ekowiosek, ekoosad), w których decyzje dotyczące wszystkich podejmowane są wspólnie (przez konsensus), i w których my ludzie, posiadamy równe prawa zarówno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia.</h2>	<p>Uczestnikiem Ruchu może być każda osoba, która rozumie nasze założenia i zgadza się z nimi. Ruch Wolnej Ziemi nie jest organizacją i nie prowadzi żadnej ewidencji przynależności. Ziemia, zarówno jako Planeta, jak i ta pod nogami postrzegana jako grunt, który może być czyjąś własnością, nigdy nie była i nie będzie należała do człowieka.</p>	<p> </p><p>Pierwszy raz o tej inicjatywie, można było się dowiedzieć w Zielonych Brygadach (Sierpień 2002), jako &quot;Projekt Tęczowy Krąg&quot;. Wtedy też kontaktowaliśmy się z siecią społeczności WAS (Wiejskie Aktywne Społeczności), z których część należy do GEN (Global Ecovillage Network). Jako społeczność zgłosiliśmy do WASu swój udział z chęcią rozpowszechnienia naszego projektu na szerszą skalę.  Obecnie tworzymy ogólnopolski Ruch na rzecz uwalniania Ziemi spod własności indywidualnej, dla wspólnot ekoosadowych.<br/><br/>Zalążki Ruchu Wolnej Ziemi, istniejące w sposób faktyczny na terenie Polski zainicjował Henry Schumacher, tworząc w 2000 r w Bieszczadach Fundację Plemię Sanu. Henry przyjechał do Polski w 1991 r odkrywając przyszłe miejsce do życia z grupą skautingową Rodziny Tęczy. W tamtym czasie szukali oni miejsca na europejskie Zgromadzenie Rainbow Family, które odbyło się w 1991 r w dolinie Tworylne. W 2001 również w Bieszczadach w Komańczy pojawiła się też ośmioosobowa grupa Tęczowy Krąg, która za cel postawiła sobie założenie organizacji, umożliwiającej posiadanie ziemi jako wspólnej i niepodzielnej własności. Dzięki temu w 2004 r w Grabówce udało się zarejestrować Stowarzyszenie Arte Unite, które w 2012 r otrzymało na wspólną własność budynek gospodarczy. Tęczowy Krąg został założony pod Bydgoszczą przez ludzi z międzynarodowego posthipisowskiego ruchu Rainbow Family - Rodzina Tęczy. W tym samym czasie dzięki Arturowi Milickiemu powstała Fundacja dla Ziemi i Ludzi założona w roku 2011. Również dzięki Arturowi, powyższe inicjatywy udało się zebrać i uruchomić jako Ruch Wolnej Ziemi. Wszystkie wymienione tutaj organizacje, można uznać za inicjujące Ruch Wolnej Ziemi ze względu na szczególne uwzględnienie podejmowania w nich decyzji przez kosensus, czyli jednogłośnie.</p>
\.


--
-- Data for Name: statut_statutpage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.statut_statutpage (page_ptr_id, statut, link, link_text) FROM stdin;
10	<h2>Rozdział 1 - Postanowienia ogólne</h2><p>1.1. Stowarzyszenie „Arte Unite”, zwane w dalszej części stowarzyszeniem, jest organizacją działającą na podstawie prawa o stowarzyszeniach oraz niniejszego statutu.<br/>1.2. Stowarzyszenie posiada osobowość prawną.<br/>1.3. Terenem działania stowarzyszenia jest obszar RP. Dla właściwej realizacji celów statutowych stowarzyszenie może prowadzić działalność poza granicami RP, zgodnie z obowiązującym porządkiem prawnym umów międzynarodowych. Siedzibą Stowarzyszenia jest miasto Lubliniec.<br/>1.4. Stowarzyszenie może być członkiem krajowych i międzynarodowych organizacji o podobnych celach działania. Przynależność Stowarzyszenia do innych organizacji może nastąpić jedynie decyzją Walnego Zebrania podjętą jednogłośnie.<br/>1.5. . Stowarzyszenie może posiadać terenowe jednostki organizacyjne. Terenowe jednostki organizacyjne mogą podejmować decyzje jednogłośnie w składzie min. 3 osób. Decyzje te mogą być podejmowane w zakresie określonym przez regulamin wewnętrzny terenowej jednostki organizacyjnej.<br/>1.6.Ważność terenowej jednostki organizacyjnej określa uchwałą Walne Zebranie w momencie zatwierdzenia regulaminu wewnętrznego.<br/>1.7. Terenowe jednostki organizacyjne nie mogą posiadać osobowości prawnej.<br/>1.8. Stowarzyszenie opiera swoją działalność na społecznej pracy członków. Przewiduje się możliwość etatowego zatrudnienia pracowników, dla prowadzenia działalności statutowej i organizacyjnej.<br/>1.9.Stowarzyszenie może używać pieczęci i oznak zgodnie z obowiązującymi w tym zakresie przepisami.<br/>1.10.Czas trwania stowarzyszenia jest nieograniczony.<br/></p><h2>Rozdział 2 - Cele i środki działania</h2><p>Celem stowarzyszenia jest ochrona Ziemi, poprzez rozwijanie sposobów życia człowieka w zgodzie z naturą, bez zagrożenia dla środowiska naturalnego i zaburzania równowagi ekosystemu z zachowaniem i odtwarzaniem naturalnego środowiska życia roślin i zwierząt.<br/>2.2 Celami szczegółowymi Stowarzyszenia są:<br/>1. Ochrona siedlisk roślin i zwierząt z zachowaniem i odtwarzaniem ich naturalnego środowiska.<br/>2. Zapobieganie degradacji środowiska.<br/>3. Wspieranie inicjatyw na rzecz ochrony praw zwierząt.<br/>4. Promowanie i prowadzenie różnorodnych form działania podnoszących świadomość ekologiczną i artystyczną.<br/>5. Zapobieganie marnotrawstwu surowców oraz niewłaściwemu zagospodarowaniu i utylizacji odpadów.<br/>6. Pobudzanie świadomości ekologicznej społeczeństwa.<br/>7.Promocja rolnictwa przyjaznego dla środowiska, oraz nieszkodzących człowiekowi metod przetwarzania żywności.<br/>8. Działania na rzecz bezdomnych, ubogich i potrzebujących.<br/>9. Wspieranie wszelkich działań zmierzających do wewnętrznego rozwoju człowieka bez względu na jego kondycję psychofizyczną, wiek, pochodzenie i status społeczny.<br/>2.2 Stowarzyszenie realizuje swoje cele poprzez:<br/>1. Organizowanie spotkań, prelekcji, wystaw, koncertów, wyjazdów, obozów szkoleniowych, imprez tematycznych.<br/>2. Zagospodarowanie nieruchomości pozostających w posiadaniu stowarzyszenia lub w jego zarządzaniu zgodnie z zasadami zrównoważonego rozwoju ekologicznego, bez zagrożenia dla środowiska naturalnego i zaburzania równowagi ekosystemu.<br/>3. Uprawę roślin, ze wskazaniem na rolnictwo biodynamiczne i permakulturę, oraz przetwarzanie płodów rolnych bez użycia środków chemicznych i konserwantów.<br/>4. Stosowanie na terenie nieruchomosci użytkowanych przez stowarzyszenie, a także promowanie na terenie tych nieruchomości i poza nimi technik budownictwa tradycyjnego i ekologicznego z użyciem materiałów przyjaznych dla środowiska.<br/>5. Tworzenie i prowadzenie ośrodków edukacyjnych, oraz działania edukacyjne w zakresie ochrony środowiska.<br/>6. Wspieranie inicjatyw społecznych na rzecz budowy oczyszczalni oraz wykorzystania źródeł energii alternatywnej, oraz własciwego zagospodarowania odpadów..<br/>7. Prowadzenie interdyscyplinarnych studiów i badań związanych z działalnością stowarzyszenia.<br/>8. Prowadzenie szeroko pojętego doradztwa oraz tworzenie banków informacji o działaniach społecznych, naukowych i gospodarczych oraz technologiach służących ochronie środowiska.<br/>9. Promowanie twórczości kulturalnej i artystycznej służącej integracji człowieka z Ziemią.<br/>10. Prowadzenie działalności wydawniczej i poligraficznej.<br/>11. Współpraca z instytucjami, organizacjami i osobami fizycznymi w kraju i zagranicą posiadającymi podobne cele działania.<br/>12. Udział w postępowaniach administracyjnych dotyczących spraw związanych z ingerencją w środowisko naturalne.<br/>13. Występowanie do właściwych wg kompetencji władz lokalnych, wojewódzkich i krajowych oraz sądów z wnioskami o zastosowanie środków prowadzących do usunięcia zaistniałego zagrożenia środowiska, zaniechania naruszenia środowiska oraz opiniowanie przedsięwzięć z punktu widzenia ich zgodności z interesami ochrony przyrody i zdrowia ludności.<br/></p><h2>Rozdział 3 - Członkowie oraz ich prawa i obowiązki</h2><p>3.1. Członkowie dzielą się na zwyczajnych i wspierających.<br/>3.2. Członkami zwyczajnymi mogą być:<br/>a. Osoby fizyczne, także niepełnoletnie.<br/>b. Cudzoziemcy, także ci niemający miejsca zamieszkania w Polsce<br/>3.3. Członkiem wspierającym może być każdy ( osoba prawna lub fizyczna ) deklarującą czynne poparcie dla realizacji celów stowarzyszenia.<br/>1. w swoim życiu codziennym kieruje się wartościami Związku,<br/>2. przez ciągły okres przynajmniej roku aktywnie uczestniczyła w działalności Związku jako członek wspierający,<br/>3. złożyła Zarządowi deklarację członkowską wraz z pisemnymi rekomendacjami zawierającymi poręczenie za tę osobę, udzielonymi przez przynajmniej dwóch członków zwyczajnych.<br/>3.4. Członkiem zwyczajnym stowarzyszenia może być osoba fizyczna która zostanie przyjęta na Walnym Zebraniu na podstawie swojej pisemnej deklaracji o chchęci przystąpienia do stowarzyszenia.<br/>3.5. Członek zwyczajny ma prawo:<br/>1. Wybierać i być wybieranym do władz stowarzyszenia.<br/>2. Uczestniczyć z głosem stanowiącym w Walnym Zebraniu.<br/>3. Korzystać z pomocy stowarzyszenia w realizacji jego statutowych celów.<br/>4.Brać udział we wszystkich pracach i imprezach stowarzyszenia.<br/>5. Do pełnej informacji o działaniach organów stowarzyszenia.<br/>6. Do bezpłatnego korzystania z urządzeń i pomocy stowarzyszenia.<br/>7. Do korzystania z nieruchomości i lokali mieszkalnych będących własnością lub w posiadaniu stowarzyszenia zgodnie z ich przeznaczeniem.<br/>3.6. Do obowiązków członka zwyczajnego należy:<br/>1. Przestrzeganie postanowień statutu, uchwał stowarzyszenia oraz regulaminów wewnętrznych jednostek terenowych.<br/>2. Wspieranie realizacji zadań statutowych.<br/>3.Opłacanie składek członkowskich w wysokości ustalanej przez Walne Zebranie.<br/>3.7. Członkiem wspierającym stowarzyszenie może być osoba fizyczna lub prawna zainteresowana merytoryczną działalnością stowarzyszenia, która zostanie przyjęta przez Walne Zebranie na podstawie swojej pisemnej deklaracji o chęci przystąpienia.<br/>3.8. Członek wspierający ma prawo uczestnictwa w walnym zgromadzeniu z głosem doradczym<br/>3.9. Członek wspierający ma prawo:<br/>1. Uczestniczyć w Walnym Zebraniu z głosem doradczym.<br/>2. Korzystać z pomocy stowarzyszenia w realizacji jego statutowych celów.<br/>3. Brać udział we wszystkich pracach i imprezach stowarzyszenia<br/>4. Do bezpłatnego korzystania z urządzeń i pomocy stowarzyszenia.<br/>3.9. Do obowiązków członka wspierającego należy:<br/>1. Przestrzeganie postanowień statutu, uchwał stowarzyszenia oraz regulaminów wewnętrznych jednostek terenowych.<br/>2. Wspieranie realizacji zadań statutowych. <br/>3. Opłacanie składek członkowskich w wysokości ustalanej przez Walne Zebranie.<br/>3.10. Członkostwo w stowarzyszeniu ustaje na skutek :<br/>1. Dobrowolnej rezygnacji z przynależności do stowarzyszenia, zgłoszonej na piśmie zarządowi, po uprzednim uregulowaniu wszelkich zobowiązań odnośnie stowarzyszenia.<br/>2. Śmierci członka lub utraty osobowości prawnej przez członka wspierającego<br/>3. Wykluczenia uchwałą Walnego Zebrania z powodu nieprzestrzegania postanowień statutu, regulaminów i uchwał stowarzyszenia, działania na szkodę stowarzyszenia.<br/>4. Wniosek o wykluczenie musi zostać złożony na piśmie przez minimum trzy osoby będące członkami zwyczajnymi stowarzyszenia. Walne Zebranie podejmuje decyzję o wykluczeniu z pominięciem w głosowaniu osoby, której ten wniosek dotyczy, oraz pozostałych osób, co do których takie wnioski wpłynęły.<br/>5. Walne Zebranie jednorazowo może rozpatrywać nie więcej niż trzy takie wnioski.<br/>6. Osoba wykluczona lub skreślona ma prawo wniesienia odwołania do Walnego Zebrania w terminie 14 dni od daty doręczenia uchwały na piśmie. Walne Zebranie rozpatruje odwołanie w czasie najbliższych obrad. Decyzja Walnego Zebrania jest ostateczna.<br/></p><h2>Rozdział 4 - Władze stowarzyszenia</h2><p>4.1. Władzami stowarzyszenia są:<br/>Walne Zgromadzenie, zarząd, komisja rewizyjna.<br/>1. Walne Zebranie pełni funkcję uchwałodawczą i jest najwyższą władzą stowarzyszenia. Stanowią je wszyscy członkowie zwyczajni. Wszystkie decyzje Walnego Zebrania podejmowane są w głosowaniu jawnym jednogłośnie, w obecności co najmniej 1/3 członków zwyczajnych.<br/>2. W przypadku braku kworum Walne Zebranie odbywa się w drugim terminie nie później niż 2 tygodnie po terminie pierwszym. Wówczas decyzje Walnego Zebrania podejmowane są jednogłośnie w obecności minimum 3 osób.<br/>3. Zarząd i komisję rewizyjną wybiera Walne Zebranie z pośród swoich członków na 3 letnią kadencję w głosowaniu jawnym.<br/>4. W przypadku ustąpienia członków zarządu lub komisji rewizyjnej w czasie kadencji, pomiędzy obradami Walnego Zebrania, władzom tym przysługuje prawo kooptacji spośród członków Stowarzyszenia. W przypadku usunięcia z organów władz członka zarządu lub komisji rewizyjnej przez Walne Zebranie uzupełnia ono skład władz stowarzyszenia.<br/>5. Wniosek (w formie pisemnej) o usunięcie z organów władz członka zarządu lub komisji rewizyjnej złożyć muszą minimum trzej członkowie zwyczajni. Walne Zebranie podejmuje decyzje z pominięciem głosu osoby, której wykluczenie jest przedmiotem wniosku.<br/>4.2. Zwyczajne Walne Zebranie odbywa się raz w roku w terminie określonym przez zarząd. O terminie, miejscu i proponowanym porządku obrad członków powiadamia zarząd co najmniej na 14 dni przed Walnym Zebraniem.<br/>4.3. Walne Zebranie zwołuje zarząd:<br/>1. z własnej inicjatywy,<br/>2. na wniosek komisji rewizyjnej,<br/>3. na pisemny wniosek 1/3 członków stowarzyszenia.<br/>4.4. Do kompetencji Walnego Zebrania należy:<br/>1. Uchwalanie ogólnych kierunków działalności merytorycznej i finansowej stowarzyszenia.<br/>2. Wybór i odwoływanie członków zarządu komisji rewizyjnej.<br/>3. Przyjmowanie i wykluczanie członków.<br/>4. Podejmowanie uchwał w sprawach zmian statutu lub rozwiązania się stowarzyszenia.<br/>3. Zatwierdzanie regulaminów wewnętrznych placówek terenowych.<br/>3. Decydowanie o przynależnosci stowarzyszenia do innych krajowych i miedzynarodowych organizacji o podobnych celach działania.<br/>3. Ustalanie wysokości składek członkowskich.<br/>4.5. Zarząd kieruje działaniami stowarzyszenia w oparciu o uchwały Walnego Zebrania. Zarząd reprezentuje stowarzyszenie na zewnątrz. Zarząd składa się z prezesa i 2 członków zarządu pełniących funkcję skarbnika i sekretarza.<br/>4.6.Do kompetencji zarządu należy: <br/>1. Opracowywanie sposobów realizacji decyzji Walnego Zebrania oraz podejmowanie szczegółowych działań, w tym zatrudnianie i zwalnianie pracowników stowarzyszenia oraz określanie ich obowiązków i odpowiedzialności.<br/>2. Reprezentowane stowarzyszenia na zewnątrz i działanie w jego imieniu.<br/>3. Sporządzanie sprawozdań i rocznych budżetów z działalności stowarzyszenia, będących przedmiotem oceny komisji rewizyjnej.<br/>4. Zwoływanie Walnych Zebrań.<br/>5. Zarząd podejmuje uchwały jednogłośnie za zgodą wszystkich członków zarządu<br/>4.7.Negatywna ocena zarządu przez Walne Zebranie na wniosek komisji rewizyjnej powoduje upomnienie zarządu lub jego odwołanie. Decyzje w sprawie odwołania Walne Zebranie podejmuje jednogłośnie z wyłączeniem członków zarządu, których uchwała dotyczy. <br/>4.8. Komisja Rewizyjna składa się z 3 członków, spośród których Walne Zebranie wybiera przewodniczącego komisji.<br/>4.8a. Zarząd stowarzyszenia składa się z 3 członków, spośród których Walne Zebranie wybiera Prezesa Stowarzyszenia, Sekretarza Stowarzyszenia, Skarbnika Stowarzyszenia.<br/>4.9. Komisja Rewizyjna podejmuje uchwały jednogłośnie przy obecności wszystkich członków Komisji.<br/>4.10. Do kompetencji Komisji Rewizyjnej należy:<br/>1. Kontrola pracy zarządu.<br/>2. Składanie wniosków o negatywną ocenę zarządu przed Walnym Zebraniem.<br/>3. Dokonywanie wyboru podmiotu, mającego zbadać sprawozdania finansowe stowarzyszenia zgodnie z przepisami o rachunkowości.<br/>4. Zwoływanie Walnego Zebrania w razie bezczynności w tym zakresie zarządu stowarzyszenia.<br/></p><h2>Rozdział 5 - Majątek stowarzyszenia </h2><p>Majątek stowarzyszenia stanowią: nieruchomości, ruchomości i fundusze. Pochodzi on z następujących źródeł: <br/>1. darowizny, składki członkowskie, spadki, zapisy, dotacje, subwencje dokonywane zgodnie z przepisami obowiązującego prawa,<br/>2. wpływy z majątku ruchomego i nieruchomego,<br/>3. odsetki od depozytów kapitałowych,<br/>4. wpływy pochodzące z ofiarności publicznej<br/>5.2. Funduszami i majątkiem zarządza zarząd zgodnie z wolą Walnego Zebrania i pod kontrolą komisji rewizyjnej.<br/>5.3. Do reprezentowania stowarzyszenia oraz do zaciągania zobowiązań finansowych upoważniony jest zarząd stowarzyszenia. Do składania oświadczeń woli w imieniu Stowarzyszenia, do kwoty pieciu tysięcy złotych polskich wymagany jest podpis jednego członka zarządu. Dla kwoty przekraczajacej pięć tysięcy złotych polskich wymagane są podpisy dwóch członków zarządu działajacych łącznie. Do składania oświadczeń woli we wszystkich innych niż majatkowe sprawach, upoważniony jest Zarząd Stowarzyszenia, przy czym wymagany jest podpis jednego członka Zarządu.<br/></p><h2>Rozdział 6 - Zmiana statutu i rozwiązanie stowarzyszenia</h2><p>6.1. Uchwalenie statutu lub jego zmiana przez Walne Zebranie wymaga jednogłośnego podjęcia decyzji, przy obecności co najmniej połowy członków uprawnionych do głosowania. Przepisu §18 Pt. 2 nie stosuje się.<br/>6.2. Podjęcie uchwały o rozwiązaniu Stowarzyszenia przez Walne Zebranie wymaga jednogłośnego podjęcia decyzji, przy obecności co najmniej 2/3 członków uprawnionych do głosowania.<br/>6.3. Wniosek o zmianę statutu musi być zgłoszony na piśmie, a treść proponowanej zmiany podana w zawiadomieniu zwołującym Walne Zebranie.<br/>6.4. Podejmując uchwałę o rozwiązaniu Stowarzyszenia Walne Zebranie powołuje Komisję Likwidacyjną, która przeprowadzi likwidację stowarzyszenia. Walne Zebranie wskazuje także fundacje i stowarzyszenia, mające podobne cele statutowe do Stowarzyszenia Arte Unite, na rzecz których przejdzie majątek stowarzyszenia, po wypełnieniu jego zobowiązań.<br/>6.5. Majek Stowarzyszenia Arte Unite nie może być w razie likwidacji, ani w żadnym innym wypadku rozdzielony pomiędzy członków stowarzyszenia, ani osoby prywatne.</p>	/statut-związku-wolnej-ziemi	Statut Ruchu Wolnej Ziemi
11	<p></p><h2>Preambuła</h2><p>My, ludzie tworzący Związek Wolnej Ziemi, uznajemy się za opiekunów i strażników Ziemi, a w szczególności terenów, na których żyjemy. Dążymy do rozwoju świadomości poprzez odtworzenie naturalnej relacji człowieka z naszą Planetą. <br/><br/>Przyjmujemy, że będąc równymi wobec Ziemi, na której żyjemy, jesteśmy również równi wobec siebie i całej Przyrody. <br/><br/>Oświadczamy, że Ziemia i całe życie na Ziemi stanowią dla nas wielką wartość przez sam fakt swego istnienia. <br/><br/>Uznajemy, że naszym zadaniem jest ochrona Ziemi, naszego Domu i Miejsca w Kosmosie.<br/><br/> Uznajemy, że Ziemia ma takie samo prawo do istnienia i uszanowania jej bytu, jakie mają wszystkie istoty.<br/><br/> Pragniemy tworzyć wspólnoty, w których będziemy razem żyli, współpracowali ze sobą i uczyli się od siebie dla dobra nas samych i całego Życia.<br/>Pragniemy, aby wszyscy ludzie żyli w harmonii ze sobą i z całą Przyrodą, szanując i chroniąc Ziemię.</p><p></p><h2>Rozdział 1 - Postanowienia ogólne</h2><p>1.1.  Związek Wolnej Ziemi, zwany dalej „Związkiem”, jest stowarzyszeniem działającym w oparciu o przepisy powszechnie obowiązującego prawa oraz postanowienia niniejszego statutu.<br/> 1.2. Związek jest dobrowolnym, trwałym zrzeszeniem o celach niezarobkowych.<br/> 1.3. Związek może posługiwać się skrótem: „ZWZ”, a także tłumaczeniem swojej nazwy na języki obce.<br/> 1.4. Siedzibą Związku jest miasto Lubliniec <br/> 1.5. Związek prowadzi działalność na terenie całej Polski i poza jej granicami.<br/> 1.6. Związek opiera swoją działalność na pracy społecznej członków.<br/> 1.7. Związek może należeć do organizacji międzynarodowych, jeżeli przynależność taka nie narusza zobowiązań wynikających z umów międzynarodowych, których Rzeczpospolita Polska jest stroną, oraz przystępować do związków stowarzyszeń.<br/> 1.8. Związek może posiadać terenowe jednostki organizacyjne.<br/> 1.9. Związek jest zawiązany na czas nieograniczony. <br/></p><p></p><h2>Rozdział 2 - Cele i zasady działania</h2><p>2.1. Podstawowym celem Związku jest działanie dla dobra Ziemi i wszystkich mieszkających na niej istot poprzez tworzenie obszarów Wolnej Ziemi oraz zakładanie i rozwój wspólnot intencjonalnych żyjących w harmonii z Naturą.<br/> 2.2 Celami szczegółowymi Związku są:<br/> 1. inicjowanie, promocja i rozwój wspólnot intencjonalnych, społeczności lokalnych i kooperatyw dążących do zwiększenia stopnia swej samowystarczalności oraz minimalizacji własnego śladu ekologicznego, w sposób umożliwiający trwanie i rozwój powyższych inicjatyw przez wiele pokoleń,<br/> 2. tworzenie, poszukiwanie, testowanie, wdrażanie i promocja rozwiązań i technologii ułatwiających wspólnotom intencjonalnym, społecznościom lokalnym i kooperatywom osiągnięcie samowystarczalności we wszelkich możliwych aspektach,<br/> 3. tworzenie współpracującej sieci miejsc Wolnej Ziemi,<br/> 4. działanie na rzecz kształtowania stanu prawnego korzystnego dla tworzenia i rozwoju wspólnot intencjonalnych, społeczności lokalnych i kooperatyw,<br/> 5. ochrona i odtwarzanie środowiska przyrodniczego, siedlisk roślin i zwierząt oraz bioróżnorodności,<br/> 6. tworzenie rezerwatów Wolnej Ziemi oraz miejsc bogatych przyrodniczo, w których ludzie nie ingerują w Ziemię i zasiedlającą ją Przyrodę,<br/> 7. tworzenie i wspieranie inicjatyw i programów społecznych mających na celu rozwiązanie egzystencjalnych, ekonomicznych, socjalnych, ekologicznych i zdrowotnych problemów współczesnego społeczeństwa,<br/> 8. tworzenie i wdrażanie ekologicznych rozwiązań poprawiających efektywność ogrodniczą i rolniczą,<br/> 9. wspieranie i promocja  zrównoważonego rozwoju, gospodarki ekologicznej, kooperatyzmu, ekonomii współdzielenia,<br/> 10. promowanie idei i wartości Związku wśród ogółu społeczeństwa,<br/> 11. współpraca z innymi organizacjami o podobnych celach działania.<br/> 2.3. Związek może realizować swoje cele poprzez:<br/> 1. działalność informacyjną,<br/> 2. tworzenie i prowadzenie stron internetowych,<br/> 3. organizację spotkań, wykładów i prelekcji,<br/> 4. opracowywanie materiałów edukacyjnych, również w wersji elektronicznej,<br/> 5. pozyskiwanie nieruchomości, <br/> 6. gospodarowanie nieruchomościami należącymi do Związku lub przez niego zarządzanymi, zgodnie z zasadami zrównoważonego rozwoju, bez zagrożenia dla środowiska naturalnego i zaburzania równowagi ekosystemu,<br/> 7. preferowanie i promowanie na terenie nieruchomości użytkowanych przez Związek i poza nimi technik budownictwa tradycyjnego i naturalnego z użyciem materiałów przyjaznych dla środowiska,<br/> 8. współpracę z organami państwowymi, organizacjami pozarządowymi i innymi osobami prawnymi lub fizycznymi; współpraca ta może mieć charakter współdziałania, wsparcia organizacyjnego, informacyjnego, finansowego, rzeczowego lub inny,<br/> 9. rzecznictwo, organizowanie konsultacji społecznych, petycji i interwencji, a także składanie wniosków i skarg do instytucji publicznych,<br/> 10. prowadzenie programów i akcji społecznościowego zbierania pieniędzy, a także innych działań mających na celu zbieranie środków finansowych,<br/> 11. wspieranie współpracy między wspólnotami intencjonalnymi<br/>, 12. gromadzenie i udostępnianie informacji na temat wspólnot intencjonalnych i ich działań, a także informacji przydatnych w tworzeniu i rozwoju wspólnot intencjonalnych,<br/> 13. tworzenie przestrzeni dla dialogu i wymiany doświadczeń między wspólnotami intencjonalnymi,<br/> 14. prowadzenie działalności rolniczej i ogrodniczej w sposób jak najbardziej zgodny z Naturą, w tym uprawę ziemi, tworzenie ogrodów, sianie i sadzenie roślin,<br/> 15. stosowanie naturalnych środków i metod poprawiających skład i kondycję gleby, a także chroniących zdrowie roślin.<br/> 2.4. Związek kieruje się w swojej działalności otwartością na współpracę z innymi podmiotami, w tym z organizacjami pozarządowymi i instytucjami publicznymi.<br/> 2.5. Związek może zakładać i uczestniczyć w spółkach polskich lub zagranicznych.<br/> 2.6. Całość dochodów uzyskiwanych przez Związek jest przeznaczana wyłącznie na działalność statutową.<br/> 2.7. Związek nie prowadzi działalności gospodarczej.<br/> 2.8. Związek nie prowadzi odpłatnej działalności pożytku publicznego.<br/></p><p></p><h2>Rozdział 3 - Członkowie Związku</h2><p>3.1. Członkowie Związku dzielą się na:<br/> 1. członków zwyczajnych,<br/> 2. członków wspierających.<br/> 3.2. Członkiem zwyczajnym Związku może być osoba fizyczna posiadająca pełną zdolność do czynności prawnych, która:<br/> 1. w swoim życiu codziennym kieruje się wartościami Związku,<br/> 2. przez ciągły okres przynajmniej roku aktywnie uczestniczyła w działalności Związku jako członek wspierający,<br/> 3. złożyła Zarządowi deklarację członkowską wraz z pisemnymi rekomendacjami zawierającymi poręczenie za tę osobę, udzielonymi przez przynajmniej dwóch członków zwyczajnych.<br/> 3.3. Przyjęcia nowych członków zwyczajnych dokonuje Walne Zebranie w drodze konsensusu na zasadzie przyzwolenia.<br/> 3.4. Delegaci Autonomicznych Jednostek Terenowych, którzy nie zostali uprzednio przyjęci do grona członków zwyczajnych, stają się członkami zwyczajnymi tylko i wyłącznie na czas pełnienia przez każdego z nich funkcji Delegata Autonomicznej Jednostki Terenowej.<br/> 3.5. Członkiem wspierającym Związku może być osoba fizyczna lub prawna zainteresowana działalnością Związku, która:<br/> 1. zadeklarowała na rzecz Związku pomoc materialną, intelektualną, fizyczną lub inną,<br/> 2. złożyła Zarządowi deklarację członkowską.<br/> 3.6. Osoba prawna będąca członkiem wspierającym Związku działa w nim przez swojego przedstawiciela.<br/> 3.7. Przyjęcia nowych członków wspierających dokonuje Zarząd uchwałą podjętą w ciągu dwóch miesięcy od daty złożenia deklaracji.<br/> 3.8. Członek zwyczajny ma prawo:<br/> 1. wybierać i być wybieranym do organów Związku,<br/> 2. uczestniczyć z głosem stanowiącym w Walnym Zebraniu,<br/> 3. uzyskiwać pełną informację na temat działalności organów Związku,<br/> 4. zgłaszać Walnemu Zebraniu, Zarządowi i Komisji Rewizyjnej wnioski, zapytania i postulaty dotyczące działalności Związku,<br/> 5. korzystać z pomocy i zaplecza Związku w podejmowanych działaniach zgodnych z celami statutowymi Związku,<br/> 6. korzystać z majątku Związku według zasad opisanych w wewnętrznych regulaminach,<br/> 7. brać udział w pracach i przedsięwzięciach Związku.<br/> 3.9. Członek zwyczajny obowiązany jest do:<br/> 1. udziału w działalności Związku i realizacji jego celów,<br/> 2. podejmowania decyzji w sprawach Związku, <br/> 3. przestrzegania powszechnie obowiązujących przepisów prawa związanych z działalnością Związku, a także statutu Związku, uchwał organów Związku oraz regulaminów Jednostek Terenowych na terenach użytkowanych przez te Jednostki, <br/> 4. uczestnictwa w miarę możliwości w każdym Walnym Zebraniu,<br/> 5. regularnego wspierania Związku poprzez opłacanie składek lub w innej dobrowolnie uzgodnionej z Zarządem formie pomocy materialnej, intelektualnej lub fizycznej,<br/> 6. dbania o mienie Związku.<br/> 3.10. Członek wspierający ma prawo:<br/> 1. uczestniczyć z głosem doradczym w Walnym Zebraniu,<br/> 2. uzyskiwać pełną informację na temat działalności organów Związku,<br/> 3. zgłaszać Walnemu Zebraniu, Zarządowi i Komisji Rewizyjnej wnioski, zapytania i postulaty dotyczące działalności Związku,<br/> 4. korzystać z pomocy i zaplecza Związku w podejmowanych działaniach zgodnych z celami statutowymi Związku,<br/> 5. korzystać z majątku Związku według zasad opisanych w regulaminach wewnętrznych,<br/> 6. brać udział w pracach i przedsięwzięciach Związku.<br/> 3.11. Członek wspierający obowiązany jest do:<br/> 1. przestrzegania powszechnie obowiązujących przepisów prawa związanych z działalnością Związku, a także statutu Związku, uchwał organów Związku oraz regulaminów Jednostek Terenowych na terenach użytkowanych przez te Jednostki.<br/> 2. regularnego wspierania Związku poprzez opłacanie składek lub w innej dobrowolnie uzgodnionej z Zarządem formie pomocy materialnej, intelektualnej lub fizycznej,<br/> 3. dbania o mienie Związku.<br/> 3.12. Zarząd drogą uchwały może okresowo lub trwale zmienić status członka zwyczajnego na status członka wspierającego, wyłącznie na prośbę osoby zainteresowanej zmianą swojego statusu.<br/></p><p></p><h2>Rozdział 4 - Zawieszenie i utrata członkostwa </h2><p>4.1. Zawieszenie członkostwa skutkuje:<br/> 1. brakiem możliwości uczestniczenia z głosem stanowiącym w Walnym Zebraniu,<br/> 2. brakiem możliwości wybierania i bycia wybieranym do organów Związku. <br/> 4.2. Członkostwo w Związku może w drodze uchwały Zarządu lub Walnego Zebrania zostać ze skutkiem natychmiastowym czasowo zawieszone na okres od 6 do 12 miesięcy na skutek: <br/> 1. dobrowolnej czasowej rezygnacji z aktywnego udziału w pracach Związku, zgłoszonej Zarządowi na piśmie,<br/> 2. braku dobrowolnego zaangażowania w pracach i działalności Związku przez okres minimum roku,<br/> 3. naruszenia postanowień statutu Związku, uchwał organów Związku lub regulaminów Jednostek Terenowych na terenach użytkowanych przez te Jednostki,<br/> 4. działania na szkodę Związku,<br/> 5. zachowania godzącego w dobre imię Związku.<br/> 4.3. Po upływie określonego w uchwale okresu zawieszenia członkostwa w Związku, Zarząd lub Walne Zebranie może w przypadku dalszego istnienia przyczyny określonej w ust. 4.2. pkt. 1-5 podjąć decyzję o przedłużeniu okresu zawieszenia członkostwa w Związku o dalszy okres od 6 do 12 miesięcy. W przypadku gdy przyczyna zawieszenia członkostwa w Związku przestanie istnieć, Zarząd lub Walne Zebranie może z własnej inicjatywy lub na wniosek osoby, której członkostwo w Związku zostało zawieszone, skrócić okres zawieszenia członkostwa w Związku. <br/> 4.4. Od uchwały Zarządu stwierdzającej zawieszenie członkostwa w Związku lub przedłużenie okresu zawieszenia członkowi, którego uchwała dotyczy, przysługuje odwołanie do Walnego Zebrania. Od uchwały Walnego Zebrania stwierdzającej zawieszenie członkostwa w Związku lub przedłużenie okresu zawieszenia członkowi, którego uchwała dotyczy, przysługuje wniosek o ponowne rozpatrzenie sprawy przez Walne Zebranie.<br/> 4.5. Odwołanie oraz wniosek o ponowne rozpatrzenie sprawy, o których mowa w ust. 4.4, składa się pisemnie za pośrednictwem Zarządu w terminie miesiąca od daty otrzymania informacji o zawieszeniu. Walne Zebranie rozpatruje odwołanie w czasie najbliższych obrad, a wniosek o ponowne rozpatrzenie sprawy - w czasie najbliższych obrad odbywających się po obradach, w czasie których została podjęta decyzja o zawieszeniu członkostwa w Związku lub przedłużeniu okresu zawieszenia. Decyzja Walnego Zebrania w tej sprawie jest ostateczna. Członek Związku, którego dotyczy decyzja w sprawie zawieszenia członkostwa lub przedłużenia okresu zawieszenia, nie ma prawa wnieść do niej sprzeciwu w czasie obrad Walnego Zebrania. <br/> 4.6. Utrata członkostwa w Związku następuje na skutek: <br/> 1. pisemnej rezygnacji członka Związku złożonej Zarządowi, <br/> 2. śmierci członka Związku,<br/> 3. utraty osobowości prawnej przez osobę prawną będącą członkiem wspierającym Związku,<br/> 4. wykluczenia ze Związku z przyczyn określonych w ust. 4.2 pkt. 2-5.<br/> 4.7. Wykluczenie ze Związku następuje w drodze uchwały Walnego Zebrania podjętej po minimum rocznym okresie zawieszenia członka, którego dotyczy.<br/></p><p></p><h2>Rozdział 5 - Organy Związku </h2><p>5.1. Organami Związku są: <br/> 1. Walne Zebranie, <br/> 2. Zarząd, <br/> 3. Komisja Rewizyjna.<br/> 5.2. Członkowie organów Związku pełnią swoje funkcje bezpłatnie.<br/> 5.3. Osoba pełniąca funkcję członka Zarządu lub członka Komisji Rewizyjnej może być pracownikiem lub współpracownikiem Związku, jeśli zakres świadczonych przez nią odpłatnie usług lub pracy nie wkracza w oczywisty sposób w zakres funkcji członka Zarządu lub członka Komisji Rewizyjnej.<br/> 5.4. Podstawowym modelem podejmowania decyzji realizowanym przez organy Związku jest konsensus oparty na zasadzie przyzwolenia, zgodnie z którym decyzje organów Związku mogą zostać podjęte wtedy, gdy żaden ze zgromadzonych na zebraniu członków organu nie zgłosi swojego sprzeciwu wobec podjęcia danej decyzji. <br/> 5.5. Osoba zgłaszająca sprzeciw powinna podać merytoryczne uzasadnienie swojego sprzeciwu, a także argumenty przemawiające na rzecz racji tego sprzeciwu. W przeciwnym razie sprzeciw może nie zostać uwzględniony przez pozostałych członków organu. <br/> 5.6. Uzasadnienie sprzeciwu i argumenty przemawiające na rzecz racji sprzeciwu mogą  zostać poddane dyskusji, w wyniku której osoba, która zgłosiła sprzeciw, może go wycofać. <br/> 5.7. W przypadku zgłoszenia sprzeciwu osoba, która zgłosiła sprzeciw, a także inne osoby obecne na zebraniu mogą zaproponować inne rozwiązanie, które może zostać przyjęte zamiast wcześniej proponowanej decyzji. <br/> 5.8. W przypadku przyjęcia przez organy Związku zasad umożliwiających bezpieczny i gwarantujący zachowanie bezpieczeństwa i integralności danych sposób podejmowania decyzji przez Internet, wszelkie decyzje mogą być podejmowane także drogą elektroniczną.<br/> 5.9. Członkowie organów Związku są wybierani i odwoływani przez Walne Zebranie.<br/> 5.10. Członkowie organów Związku tracą mandat w przypadku:<br/> 1. złożenia rezygnacji,<br/> 2. odwołania przez Walne Zebranie,<br/> 3. utraty pełnej zdolności do czynności prawnych,<br/> 4. śmierci,<br/> 5. zawieszenia lub pozbawienia członkostwa w Związku, w przypadkach określonych w niniejszym statucie.<br/> 5.11. Uzupełnienia składu osobowego organów Związku dokonuje się w drodze wyboru przez Walne Zebranie lub poprzez kooptację z grona członków zwyczajnych lub wspierających Związku i za ich zgodą. Walne Zebranie dokonuje weryfikacji decyzji o kooptacji w czasie swoich najbliższych obrad. W przypadku niezaakceptowania tej decyzji, Walne Zebranie może samemu uzupełnić skład osobowy organu. <br/> 5.12. W przypadku sporu pomiędzy członkami, organami, Jednostkami Terenowymi lub organami Jednostek Terenowych Związku, obie strony sporu mogą zwrócić się do wspólnie wybranego mediatora o pomoc w rozwiązaniu sporu. Zarząd może prowadzić listę osób, które oferują swoją pomoc w rozwiązywaniu sporów. Jeżeli pomoc mediatora nie przyczyni się do rozwiązania sporu w odpowiednim czasie, każda ze stron może zwrócić się do Walnego Zebrania o pomoc w rozwiązaniu sporu. W takim przypadku Walne Zebranie może podjąć uchwałę rozstrzygającą spór, która obowiązuje obie strony. Strony nie mogą wnieść sprzeciwu wobec uchwały Walnego Zebrania rozstrzygającej spór.<br/></p><p></p><h2>Rozdział 6 - Walne Zebranie</h2><p>6.1. Walne Zebranie jest najwyższym organem Związku.<br/> 6.2. W Walnym Zebraniu biorą udział członkowie zwyczajni z głosem stanowiącym oraz członkowie wspierający z głosem doradczym.<br/> 6.3. Walne Zebranie obraduje według uchwalonego przez siebie porządku obrad.<br/> 6.4. Walne Zebranie może uchwalać swój regulamin dotyczący obrad.<br/> 6.5. Walne Zebranie może być zwyczajne lub nadzwyczajne.<br/> 6.6. Zwyczajne Walne Zebranie zwołuje Zarząd przynajmniej raz w roku jako zebranie sprawozdawcze, tak aby mogło się ono odbyć do końca czerwca danego roku. <br/> 6.7. Nadzwyczajne Walne Zebranie zwołuje Zarząd z własnej inicjatywy, na wniosek Komisji Rewizyjnej lub na wniosek co najmniej 1/3 ogólnej liczby członków zwyczajnych Związku.<br/> 6.8. Wnoszący o zwołanie Nadzwyczajnego Walnego Zebrania są obowiązani złożyć Zarządowi wniosek z podaniem proponowanego porządku obrad, który Zarząd może uzupełnić.<br/> 6.9. Nadzwyczajne Walne Zebranie powinno być zwołane w terminie umożliwiającym odbycie się Walnego Zebrania, nie później jednak niż w terminie 2 miesięcy od dnia otrzymania przez Zarząd stosownego wniosku.<br/> 6.10. W przypadku niezwołania Walnego Zebrania w terminach określonych w ust. 6.6 i 6.9 niniejszego rozdziału Walne Zebranie może również zwołać Komisja Rewizyjna.<br/> 6.11. Organ zwołujący Walne Zebranie zawiadamia wszystkich członków Związku o jego terminie, miejscu i proponowanym porządku obrad co najmniej na 14 dni przed terminem Walnego Zebrania przy wykorzystaniu przynajmniej 2 środków porozumiewania się na odległość (w tym mailowo).<br/> 6.12. Obrady Walnego Zebrania mogą być prowadzone przez koordynatora Walnego Zebrania, wybieranego i odwoływanego przez Walne Zebranie w drodze konsensusu na uzasadniony wniosek jednego z członków zwyczajnych Związku. Koordynator Walnego Zebrania może dbać o przestrzeganie ustalonego porządku obrad i kolejności zabierania głosu, a także o to, aby wypowiedzi uczestników Walnego Zebrania mieściły się w ustalonych tematach i ramach czasowych. <br/> 6.13. Walne Zebranie może podejmować uchwały w obecności co najmniej ⅓ członków zwyczajnych Związku.<br/> 6.14. W przypadku braku kworum Walne Zebranie jest zwoływane w drugim terminie, nie później niż miesiąc po terminie pierwszym. W takim wypadku uchwały mogą być podejmowane w obecności co najmniej trzech członków zwyczajnych Związku. Powyższe postanowienie nie odnosi się do uchwał, o których mowa w rozdziałach 16 i 17.<br/> 6.15. Proponowany porządek obrad Walnego Zebrania ustala organ zwołujący to zebranie.<br/> 6.16. Członkowie Związku mogą brać udział w Walnym Zebraniu osobiście. Niedopuszczalny jest udział przez pełnomocnika lub przy użyciu pełnomocnictwa do wykonywania prawa głosu.<br/> 6.17. W Walnym Zebraniu mogą brać udział z głosem doradczym osoby zaproszone przez co najmniej jednego z członków Związku.<br/> 6.18. Do kompetencji Walnego Zebrania należą:<br/> 1. uchwalanie kierunków i programów działalności Związku,<br/> 2. decydowanie o zmianie statutu Związku,<br/> 3. zatwierdzanie regulaminów organów Związku i Jednostek Terenowych,<br/> 4. powoływanie Jednostek Terenowych,<br/> 5. wybór i odwoływanie członków Zarządu i Komisji Rewizyjnej,<br/> 6. ocena działalności organów Związku,<br/> 7. zatwierdzanie sprawozdań finansowych i merytorycznych Zarządu oraz sprawozdań Komisji Rewizyjnej, <br/> 8. podejmowanie uchwał w sprawach wniesionych pod obrady przez Zarząd, Komisję Rewizyjną lub członka Związku, o ile nie są one zastrzeżone do kompetencji innych organów Związku postanowieniami niniejszego statutu lub przepisami powszechnie obowiązującego prawa,<br/> 9. rozpatrywanie odwołań od uchwał Zarządu,<br/> 10. podejmowanie uchwał w sprawie przystępowania Związku do organizacji krajowych lub międzynarodowych,<br/> 11. podejmowanie uchwał w sprawie rozwiązania Związku i przeznaczenia jego majątku,<br/> 12. ustalanie zasad płatności oraz wysokości składek członkowskich,<br/> 13. podejmowanie uchwał w innych sprawach zastrzeżonych do kompetencji Walnego Zebrania postanowieniami niniejszego statutu lub przepisami powszechnie obowiązującego prawa.<br/></p><p></p><h2>Rozdział 7 - Zarząd</h2><p>7.1. Zarząd kieruje działaniami Związku w oparciu o uchwały Walnego Zebrania i reprezentuje Związek na zewnątrz.<br/> 7.2. Skład Zarządu stanowią członkowie Zarządu w nieparzystej liczbie 3, 5 lub 7, powołani przez Walne Zebranie na czas nieoznaczony.<br/> 7.3. Członkami Zarządu nie mogą być osoby, które były skazane prawomocnym wyrokiem za przestępstwo umyślne ścigane z oskarżenia publicznego lub przestępstwo skarbowe.<br/> 7.4. Zebrania Zarządu odbywają się w miarę potrzeb, jednak nie rzadziej niż raz w roku. <br/> 7.5. Zebranie Zarządu może zwołać każdy członek Zarządu. Powinien powiadomić o tym pozostałych członków Zarządu ze stosownym wyprzedzeniem (nie później niż 7 dni przed terminem zebrania) umożliwiającym ich udział, przy wykorzystaniu przynajmniej 2 środków porozumiewania się na odległość (w tym mailowo). Jeżeli wszyscy członkowie Zarządu są obecni na zebraniu, wówczas Zarząd może obradować i podejmować uchwały i decyzje bez uprzedniego formalnego zwołania.<br/> 7.6. Członkowie Zarządu, na początku każdego zebrania, mogą w drodze konsensusu wybrać spośród siebie koordynatora zebrania.<br/> 7.7. Zarząd może podejmować uchwały w sprawach należących do jego kompetencji w obecności co najmniej połowy swych członków. <br/> 7.8. W zebraniu Zarządu mogą uczestniczyć z głosem doradczym eksperci lub inne osoby zaproszone przez co najmniej jednego z członków Zarządu.<br/> 7.9. Członkostwo w Zarządzie ustaje na skutek:<br/> 1. złożenia pisemnej rezygnacji,<br/> 2. odwołania przez Walne Zebranie,<br/> 3. śmierci członka Zarządu, <br/> 4. utraty praw obywatelskich na skutek skazania prawomocnym wyrokiem sądu za przestępstwo popełnione z winy umyślnej,<br/> 5. skazania prawomocnym wyrokiem za przestępstwo umyślne ścigane z oskarżenia publicznego lub przestępstwo skarbowe.<br/> 7.10. Zarząd Związku w całości lub poszczególni członkowie Zarządu mogą być odwołani w dowolnym czasie przez Walne Zebranie w drodze uchwały. Członkowie Zarządu, których dotyczy wniosek o odwołanie, nie mogą wnieść sprzeciwu wobec uchwały o odwołaniu w czasie obrad Walnego Zebrania. <br/> 7.11. Do kompetencji Zarządu należą:<br/> 1. kierowanie działaniami Związku w oparciu o uchwały Walnego Zebrania,<br/> 2. prowadzenie bieżących spraw Związku, <br/> 3. reprezentowanie Związku na zewnątrz i działanie w jego imieniu,<br/> 4. wykonywanie uchwał Walnego Zebrania,<br/> 5. prowadzenie gospodarki finansowej Związku i zarządzanie jego majątkiem, zgodnie z zasadami ustalonymi przez Walne Zebranie,<br/> 6. sporządzanie sprawozdań finansowych i merytorycznych Związku,<br/> 7. składanie Walnemu Zebraniu sprawozdań z działalności Zarządu,<br/> 8. uchwalanie regulaminu Zarządu, zatwierdzanego przez Walne Zebranie,<br/> 9. podejmowanie uchwał w sprawie przyjmowania członków wspierających, <br/> 10. podejmowanie uchwał w sprawie zawieszania członków Związku,  <br/> 11. pobieranie składek członkowskich i uzgadnianie wspólnie z członkami Związku innych form świadczonej przez nich pomocy,<br/> 12. prowadzenie rejestru członków Związku.<br/> 7.12. Reprezentować Związek na zewnątrz oraz wykonywać czynności w ramach prowadzenia spraw Związku może każdy członek Zarządu samodzielnie, z zastrzeżeniem ust. 7.13.<br/> 7.13. Do składania w imieniu Związku oświadczeń woli w sprawach majątkowych oraz wyznaczania pełnomocnictw wymagane jest współdziałanie co najmniej dwóch członków Zarządu.<br/> 7.14. Do złożenia przez Zarząd oświadczenia woli w sprawie majątkowej o wartości przekraczającej 100000 PLN (słownie: sto tysięcy złotych) wymagane jest pełnomocnictwo udzielone przez Walne Zebranie w formie uchwały. <br/> 7.15. Zarząd nie ma prawa zaciągania zobowiązań, które:<br/> 1. wymagają zabezpieczenia majątkiem trwałym Związku, 2. obciążone są odsetkami.<br/> 7.16. Do złożenia przez Zarząd oświadczenia woli w sprawie składników majątkowych przypisanych do użytkowania przez Autonomiczną Jednostkę Terenową wymagane jest pełnomocnictwo udzielone przez Radę danej Autonomicznej Jednostki Terenowej w formie uchwały, z zastrzeżeniem ust. 7.17.<br/> 7.17. Do złożenia przez Zarząd oświadczenia woli w sprawie zbycia nieruchomości gruntowej wymagane jest pełnomocnictwo udzielone przez Walne Zebranie w formie uchwały podjętej w drodze konsensusu na zasadzie przyzwolenia w obecności wszystkich członków zwyczajnych Związku, a w przypadku gdy przedmiotowa nieruchomość jest w użytkowaniu Autonomicznej Jednostki Terenowej, wymagane jest również pełnomocnictwo udzielone przez Radę danej Autonomicznej Jednostki Terenowej w formie uchwały podjętej w drodze konsensusu na zasadzie przyzwolenia w obecności wszystkich członków tego organu.<br/></p><p></p><h2>Rozdział 8 - Komisja Rewizyjna</h2><p>8.1. Komisja Rewizyjna sprawuje nadzór nad całokształtem działalności statutowej i finansowej Związku. W ramach czynności nadzorczych ma ona prawo do pełnej informacji o działalności Związku, wglądu do dokumentacji oraz żądania udzielenia wyjaśnień i informacji przez Zarząd oraz osoby zaangażowane w działalność w imieniu lub na rzecz Związku.<br/> 8.2. Komisja Rewizyjna składa się z od 3 do 5 członków wybranych przez Walne Zebranie na czas nieoznaczony.<br/> 8.3. Zebrania Komisji Rewizyjnej odbywają się w miarę potrzeb, jednak nie rzadziej niż raz w roku.<br/> 8.4. Komisja Rewizyjna może podejmować uchwały oraz wykonywać inne czynności w sprawach należących do jej kompetencji w obecności co najmniej połowy swych członków.<br/> 8.5. Zebranie Komisji Rewizyjnej może zwołać każdy członek Komisji Rewizyjnej. Powinien powiadomić o tym pozostałych członków Komisji Rewizyjnej ze stosownym wyprzedzeniem (co najmniej 7 dni przed terminem zebrania) umożliwiającym ich udział, przy wykorzystaniu przynajmniej 2 środków porozumiewania się na odległość (w tym mailowo). Jeżeli wszyscy członkowie są obecni na zebraniu, wówczas Komisja Rewizyjna może obradować i podejmować uchwały i decyzje bez uprzedniego formalnego zwołania.<br/> 8.6. Komisja Rewizyjna może upoważnić niektórych spośród swoich członków do wykonywania w jej imieniu określonych czynności nadzorczych.<br/> 8.7. W zebraniu Komisji Rewizyjnej mogą uczestniczyć z głosem doradczym osoby zaproszone przez co najmniej jednego z członków Komisji Rewizyjnej.<br/> 8.8. Komisja Rewizyjna jest niezależna od Zarządu, a jej członkami nie mogą być:<br/> 1. członkowie Zarządu ani osoby pozostające z członkami Zarządu w związku małżeńskim, we wspólnym pożyciu, w stosunku pokrewieństwa, powinowactwa lub podległości służbowej,<br/> 2. osoby skazane prawomocnym wyrokiem za przestępstwo ścigane z oskarżenia publicznego lub przestępstwo skarbowe.<br/> 8.9. Szczegółowy tryb i zasady działania Komisji Rewizyjnej może określać regulamin Komisji Rewizyjnej uchwalony przez ten organ i zatwierdzony przez Walne Zebranie.<br/> 8.10. Członkostwo w Komisji Rewizyjnej ustaje na skutek:<br/> 1. złożenia pisemnej rezygnacji,<br/> 2. odwołania przez Walne Zebranie,<br/> 3. śmierci członka Komisji Rewizyjnej,<br/> 4. utraty praw obywatelskich na skutek skazania prawomocnym wyrokiem sądu za przestępstwo popełnione z winy umyślnej,<br/> 5. skazania prawomocnym wyrokiem za przestępstwo umyślne ścigane z oskarżenia publicznego lub przestępstwo skarbowe. <br/> 8.11. Komisja Rewizyjna w całości lub poszczególni członkowie Komisji Rewizyjnej mogą być odwołani w dowolnym czasie przez Walne Zebranie. Członkowie Komisji Rewizyjnej, których dotyczy wniosek o odwołanie, nie mogą wnieść sprzeciwu wobec uchwały o odwołaniu w czasie obrad Walnego Zebrania. <br/> 8.12. Do obowiązków Komisji Rewizyjnej należą:<br/> 1. kontrolowanie co najmniej raz w roku działalności statutowej i gospodarki finansowej<br/> Związku oraz przedstawianie Walnemu Zebraniu oraz Zarządowi wniosków i uwag z każdej kontroli,<br/> 2. opiniowanie sprawozdań finansowych i merytorycznych Zarządu,<br/> 3. dokonywanie oceny działalności Zarządu i przedstawianie jej Walnemu Zebraniu,<br/> 4. składanie sprawozdań ze swej działalności Walnemu Zebraniu.<br/> 8.13. Do kompetencji Komisji Rewizyjnej należą:<br/> 1. wybieranie podmiotu mającego zbadać sprawozdania finansowe Związku,<br/> 2. żądanie od Zarządu udostępnienia dokumentów związanych z działalnością Związku z możliwością ich kopiowania,<br/> 3. żądanie udzielenia informacji lub wyjaśnień na temat działalności Związku od Zarządu i osób zaangażowanych w działalność w imieniu lub na rzecz Związku,<br/> 4. uchwalanie regulaminu Komisji Rewizyjnej, zatwierdzanego przez Walne Zebranie,<br/> 5. składanie wniosków o zwołanie Nadzwyczajnego Walnego Zebrania,<br/> 6. zwoływanie Walnego Zebrania w przypadku określonym w ust. 6.10.<br/> 8.14. Komisja Rewizyjna może ze skutkiem natychmiastowym zawiesić członkostwo osoby w Zarządzie w przypadku:<br/> 1. naruszenia przez tę osobę postanowień statutu Związku, uchwał organów Związku lub regulaminów Jednostek Terenowych na terenach użytkowanych przez te Jednostki,<br/> 2. działania na szkodę Związku,<br/> 3. zachowania godzącego w dobre imię Związku.<br/> 8.15. Od uchwały Komisji Rewizyjnej stwierdzającej zawieszenie członkostwa w Zarządzie członkowi Zarządu, którego uchwała dotyczy, przysługuje odwołanie do Walnego Zebrania. <br/> 8.16. Odwołanie, o którym mowa w ust. 8.15., składa się pisemnie za pośrednictwem Komisji Rewizyjnej w terminie miesiąca od daty otrzymania informacji o zawieszeniu. Walne Zebranie rozpatruje odwołanie w czasie najbliższych obrad. Decyzja Walnego Zebrania w tej sprawie jest ostateczna. Członek Zarządu, którego dotyczy decyzja w sprawie zawieszenia członkostwa w Zarządzie, nie ma prawa wnieść do niej sprzeciwu w czasie obrad Walnego Zebrania.  <br/> 8.17. Do reprezentowania Komisji Rewizyjnej na zewnątrz i działania w jej imieniu, w tym do wykonywania w jej imieniu czynności kontrolnych, uprawniony jest każdy z członków Komisji Rewizyjnej.<br/></p><p></p><h2>Rozdział 9 - Majątek i gospodarka finansowa</h2><p>9.1. Majątek Związku może powstawać: <br/> 1. ze składek członkowskich,<br/> 2. z zapisów, darowizn, spadków i ofiarności publicznej,<br/> 3. z dotacji,<br/> 4. z dochodów z majątku Związku.<br/> 9.2. Funduszami i majątkiem Związku zarządza Zarząd.<br/> 9.3. W Związku zabronione jest:<br/> 1. udzielanie pożyczek lub zabezpieczanie zobowiązań majątkiem Związku,<br/> 2. przekazywanie majątku Związku na rzecz jego członków, członków organów lub pracowników oraz osób, z którymi członkowie, członkowie organów oraz pracownicy Związku pozostają w związku małżeńskim, we wspólnym pożyciu albo w stosunku pokrewieństwa lub powinowactwa w linii prostej, pokrewieństwa lub powinowactwa w linii bocznej do drugiego stopnia albo są związani z tytułu przysposobienia, opieki lub kurateli, zwanych dalej „osobami bliskimi”, na zasadach innych niż w stosunku do osób trzecich, w szczególności, jeżeli przekazanie to następuje bezpłatnie lub na preferencyjnych warunkach,<br/> 3. wykorzystywanie majątku na rzecz członków, członków organów lub pracowników Związku oraz ich osób bliskich na zasadach innych niż w stosunku do osób trzecich, chyba że to wykorzystanie bezpośrednio wynika ze statutowego celu Związku,<br/> 4. zakup towarów lub usług od podmiotów, w których uczestniczą członkowie, członkowie organów lub pracownicy Związku oraz ich osób bliskich, na zasadach innych niż w stosunku do osób trzecich lub po cenach wyższych niż rynkowe.<br/> 9.4. W przypadku powołania Związku do spadku Zarząd składa oświadczenie o przyjęciu spadku z dobrodziejstwem inwentarza i to tylko wówczas, gdy w chwili składania tego oświadczenia oczywistym jest, że stan czynny spadku znacznie przewyższa długi spadkowe.<br/> 9.5. Związek może tworzyć fundusze, w tym fundusze celowe. Fundusze Związku są tworzone i likwidowane przez Walne Zebranie, które ustala zasady gromadzenia w nich środków i dysponowania nimi. Zarząd Związku oraz Zarządy Jednostek Terenowych mogą dysponować środkami zgromadzonymi w funduszach Związku w oparciu o zasady ustalone przez Walne Zebranie.<br/></p><p></p><h2>Rozdział 10 - Jednostki Terenowe</h2><p>10.1. Jednostki Terenowe, zwane dalej “JT”, dzielą się na dwa rodzaje:<br/> 1. Podstawowe Jednostki Terenowe, zwane dalej “PJT”,<br/> 2. Autonomiczne Jednostki Terenowe, zwane dalej “AJT”.<br/> 10.2. AJT są takimi Jednostkami Terenowymi, którym powierzono do gospodarowania nieruchomości gruntowe należące do Związku w celu tworzenia, utrzymania i rozwoju wspólnot intencjonalnych bądź tworzenia i ochrony rezerwatów Wolnej Ziemi.<br/> 10.3. PJT są wszystkie Jednostki Terenowe niebędące AJT.<br/> 10.4. PJT zostają przekształcone w AJT z chwilą spełnienia warunku określonego w ust. 10.2. <br/> 10.5. JT powinny gospodarować oddanymi im do użytkowania nieruchomościami w sposób korzystny dla Ziemi, Przyrody oraz ludzi, a także zgodny z celami Związku. <br/> 10.6. Zarząd Związku podejmuje wszelkie działania potrzebne do samodzielnego funkcjonowania JT zgodnego z ich regulaminami, w tym udziela organom JT potrzebnych pełnomocnictw. W przypadku gdy działanie organu JT na podstawie pełnomocnictwa udzielonego przez Zarząd Związku jest niemożliwe lub niecelowe, Zarząd Związku na wniosek organu JT działa na rzecz JT wobec innych podmiotów. <br/> 10.7. JT nie posiadają osobowości prawnej.<br/> 10.8. JT powoływane są przez Walne Zebranie na czas nieoznaczony.<br/> 10.9. Walne Zebranie może utworzyć JT na wniosek co najmniej 3 członków Związku, będących osobami fizycznymi, zwanych dalej “Inicjatorami JT”. <br/> 10.10. W celu utworzenia JT, Inicjatorzy JT składają do Walnego Zebrania za pośrednictwem Zarządu Związku wniosek o utworzenie JT wraz z projektem regulaminu JT.<br/> 10.11. Każda JT działa na podstawie statutu Związku oraz własnego regulaminu JT.<br/></p><p></p><h2>Rozdział 11 - Rady Jednostek Terenowych</h2><p>1.1. Każda JT posiada kolektywny organ najwyższy - Radę Jednostki Terenowej, zwaną dalej „Radą JT”. <br/> 11.2. Rada JT decyduje o wszelkich sprawach dotyczących JT.<br/> 11.3. Pierwszy skład Rady JT powoływany jest przez Walne Zebranie wraz z utworzeniem JT i zatwierdzeniem regulaminu JT. W skład pierwszej Rady JT wchodzą Inicjatorzy JT.<br/> 11.4. Wszyscy stali mieszkańcy nieruchomości oddanej do użytkowania dla AJT mają prawo bycia członkami Rady tej AJT. <br/> 11.5. Nowi członkowie Rady JT przyjmowani są przez Radę JT w drodze konsensusu na zasadzie przyzwolenia na czas nieoznaczony.<br/> 11.6. Modelem podejmowania decyzji przez Radę JT jest konsensus oparty na zasadzie przyzwolenia, zgodnie z którym decyzje Rady JT mogą zostać podjęte wtedy, gdy żaden ze zgromadzonych na zebraniu członków Rady JT nie zgłosi swojego sprzeciwu wobec podjęcia danej decyzji.<br/> 11.7. Osoba zgłaszająca sprzeciw powinna podać merytoryczne uzasadnienie swojego sprzeciwu, a także argumenty przemawiające na rzecz racji tego sprzeciwu. W przeciwnym razie sprzeciw może nie zostać uwzględniony przez pozostałych członków Rady JT. <br/> 11.8. Uzasadnienie sprzeciwu i argumenty przemawiające na rzecz racji sprzeciwu mogą  zostać poddane dyskusji, w wyniku której osoba, która zgłosiła sprzeciw, może go wycofać. <br/> 11.9. W przypadku zgłoszenia sprzeciwu, osoba, która zgłosiła sprzeciw, a także inne osoby obecne na zebraniu mogą zaproponować inne rozwiązanie, które może zostać przyjęte zamiast wcześniej proponowanej decyzji. <br/> 11.10. Rada JT działa zgodnie ze statutem Związku, regulaminem JT oraz przepisami powszechnie obowiązującego prawa. <br/> 11.11. Rada JT podejmuje uchwały na zebraniach w obecności przynajmniej połowy swoich członków, pod warunkiem że wszyscy członkowie Rady JT zostali skutecznie zawiadomieni o terminie, miejscu i porządku obrad na co najmniej 7 dni przed datą zebrania. Jeżeli wszyscy członkowie są obecni na zebraniu, wówczas Rada JT może obradować i podejmować uchwały i decyzje bez uprzedniego formalnego zwołania.<br/> 11.12. Zebranie Rady JT zwołuje Zarząd JT z własnej inicjatywy lub na wniosek co najmniej 3 członków Rady JT.<br/> 11.13. Wnoszący o zwołanie zebrania Rady JT są obowiązani złożyć Zarządowi JT wniosek z podaniem proponowanego porządku obrad, który Zarząd JT może uzupełnić.<br/> 11.14. Zebrania Rady JT odbywają się w siedzibie JT lub w innym miejscu znajdującym się na obszarze działania JT.<br/> 11.15. Członkowie Rady JT, którzy nie mogą być obecni na zebraniu Rady JT, mogą wyrażać swoją opinię na temat każdego punktu porządku obrad w sposób zdalny (pisemnie, elektronicznie, telefonicznie).<br/> 11.16. Członkostwo w Radzie JT może zostać ze skutkiem natychmiastowym czasowo zawieszone na okres od 6 do 12 miesięcy na skutek:<br/> 1. dobrowolnej czasowej rezygnacji z aktywnego udziału w pracach JT zgłoszonej na piśmie Zarządowi JT,<br/> 2. uchwały Rady JT uzasadnionej brakiem dobrowolnego zaangażowania członka Rady JT w pracach i działalności JT przez okres minimum roku,<br/> 3. uchwały Rady JT uzasadnionej brakiem fizycznego lub zdalnego uczestnictwa w trzech kolejnych posiedzeniach Rady JT,<br/> 4. uchwały Rady JT uzasadnionej zachowaniem godzącym w dobre imię JT lub Związku,<br/> 5. uchwały Rady JT uzasadnionej naruszeniem postanowień statutu Związku, regulaminu JT lub uchwał organów Związku,<br/> 6. uchwały Rady JT uzasadnionej działaniem na szkodę JT lub Związku.<br/> 11.17. Decyzję o zawieszeniu członkostwa w Radzie JT podejmuje Rada JT na wniosek co najmniej trzech jej członków. Osoba, której dotyczy ta decyzja, nie ma prawa wnieść do niej sprzeciwu w czasie obrad Rady JT. <br/> 11.18. Członek Rady JT, którego członkostwo w Radzie JT zostało czasowo zawieszone, może brać udział w zebraniach Rady JT z głosem doradczym.<br/> 11.19. Po upływie okresu zawieszenia, w celu powrotu do aktywnego uczestnictwa w pracach Rady JT, osoba, której członkostwo w Radzie JT zostało zawieszone, składa Zarządowi JT pisemną deklarację aktywnego uczestnictwa w działalności Rady JT. Złożenie tej deklaracji jest niezbędne do przywrócenia osobie, której członkostwo w Radzie JT zostało zawieszone, pełni praw związanych z członkostwem w Radzie JT.<br/> 11.20. Utrata członkostwa w Radzie JT następuje na skutek: <br/> 1. pisemnej rezygnacji członka Rady JT złożonej Zarządowi JT, <br/> 2. śmierci członka Rady JT,<br/> 3. wykluczenia z Rady JT z powodu przyczyny określonej w ust. 11.16 pkt 4-6.<br/> 11.21. Decyzję o wykluczeniu z Rady JT podejmuje Rada JT po upływie okresu zawieszenia członkostwa. Osoba, której dotyczy ta decyzja, nie ma prawa wnieść do niej sprzeciwu w czasie obrad Rady JT.<br/> 11.22. Od uchwały Rady JT stwierdzającej zawieszenie lub utratę członkostwa w Radzie JT członkowi, którego uchwała dotyczy, przysługuje odwołanie do Walnego Zebrania. <br/> 11.23. Odwołanie, o którym mowa w ust. 11.19, składa się pisemnie za pośrednictwem Zarządu Związku w terminie 30 dni od daty otrzymania informacji o zawieszeniu lub utracie członkostwa w Radzie JT. Walne Zebranie rozpatruje odwołanie w czasie najbliższych obrad. Decyzja Walnego Zebrania w tej sprawie jest ostateczna. Członek Związku, którego dotyczy ta decyzja, nie ma prawa wnieść do niej sprzeciwu w czasie obrad Walnego Zebrania.<br/></p><p></p><h2>Rozdział 12 - Delegaci Autonomicznych Jednostek Terenowych</h2><p>12.1. Każda Rada AJT wybiera ze swego grona Delegata Autonomicznej Jednostki Terenowej, zwanego dalej „Delegatem AJT”, a także Zastępcę Delegata Autonomicznej Jednostki Terenowej, zwanego dalej „Zastępcą Delegata AJT”.<br/> 12.2. Pełnienie funkcji przez Delegata AJT lub Zastępcę Delegata AJT ustaje na skutek:<br/> 1. pisemnej rezygnacji,<br/> 2. odwołania przez Radę AJT,<br/> 3. utraty członkostwa w Związku.<br/> 12.3. Zastępca Delegata AJT pełni funkcję Delegata AJT do czasu wyboru nowego Delegata przez Radę AJT oraz w czasie nieobecności Delegata AJT na obradach Walnego Zebrania. <br/> 12.4. Zastępca Delegata AJT może uczestniczyć z głosem doradczym w obradach Walnego Zebrania. <br/> 12.5. Delegat AJT:<br/> 1. staje się w trakcie i na mocy pełnienia swej funkcji członkiem zwyczajnym Związku,<br/> 2. jest upoważniony do prezentowania woli i stanowiska Rady AJT na Walnym Zebraniu.<br/> 12.6. Delegat AJT i Zastępca Delegata AJT są wybierani na czas określony w regulaminie AJT i mogą w każdej chwili zostać odwołani przez Radę AJT. <br/></p><p></p><h2>Rozdział 13 - Regulaminy Jednostek Terenowych</h2><p>13.1. Regulamin JT określa szczegółową organizację JT i sposób jej działania. Rada JT może dokonywać zmian w regulaminie JT.<br/> 13.2. Regulamin JT oraz wszelkie zmiany do tego regulaminu zatwierdzane są pod rygorem nieważności przez Walne Zebranie w drodze uchwały.<br/> 13.3. Regulamin JT określa w szczególności:<br/> 1. nazwę JT,<br/> 2. siedzibę i obszar działania JT,<br/> 3. profil JT, <br/> 4. cele JT, <br/> 5. strukturę organizacyjną JT,<br/> 6. sposób podejmowania decyzji przez organy JT, zgodny z zasadą konsensusu,<br/> 7. szczegółowe zasady działania organów JT oraz Delegata i Zastępcy Delegata JT.<br/> 13.4. Regulamin AJT, oprócz punktów wymienionych w ust. 13.3, określa również:<br/> 1. zasady gospodarowania nieruchomościami użytkowanymi przez AJT,<br/> 2. podstawowe zasady dotyczące mieszkańców AJT,<br/> 3. zasady przyjmowania nowych mieszkańców AJT,<br/> 4. podstawowe zasady dotyczące gości AJT.<br/> 13.5. Do AJT, których celem jest tworzenie i ochrona rezerwatów Wolnej Ziemi, nie ma zastosowania ust. 13.4. Regulamin tych AJT, oprócz punktów wymienionych w ust. 13.3, powinien określać zasady postępowania na terenie rezerwatów Wolnej Ziemi chronionych przez te AJT.<br/> 13.6. Walne Zebranie może uchwalić instrukcję opracowywania regulaminu JT z dokładnym wyjaśnieniem i rozszerzeniem elementów składowych wymienionych w ust. 13.3 -13.5.<br/></p><p></p><h2>Rozdział 14 - Zarządy Jednostek Terenowych</h2><p>14.1. Każda JT posiada kolektywny organ wykonawczy – Zarząd Jednostki Terenowej, zwany dalej „Zarządem JT”. <br/> 14.2. Zarząd JT jest wybierany przez Radę JT na czas określony w regulaminie JT. <br/> 14.3. Zarząd JT może być w dowolnym czasie odwołany przez Radę JT. <br/> 14.4. Zarząd JT wykonuje uchwały Rady JT i reprezentuje JT na zewnątrz.<br/> 14.5. Do reprezentowania JT na zewnątrz i działania w jej imieniu, w tym do składania oświadczeń woli w imieniu JT, uprawniony jest każdy członek Zarządu JT działający samodzielnie. Uprawnienie to nie obejmuje prawa do reprezentowania AJT w czasie obrad Walnego Zebrania. <br/> 14.6. Do obowiązków Zarządu JT należą:<br/> 1. przesyłanie do Zarządu Związku kopii protokołów z zebrań Rady JT wraz z kopiami wszystkich uchwał i załączników, w terminie miesiąca od daty zebrania,<br/> 2. prowadzenie i aktualizowanie listy członków Rady JT, a także przesyłanie tej listy do Zarządu Związku po każdorazowej aktualizacji w terminie 30 dni od wprowadzenia zmian,<br/> 3. przesyłanie do Zarządu Związku corocznych sprawozdań z działalności JT do 31 marca  następnego roku.<br/> 14.7. Do obowiązków Zarządu AJT oprócz tych wymienionych w ust. 14.6. należy również prowadzenie i aktualizowanie listy mieszkańców AJT, a także przesyłanie tej listy do Zarządu Związku po każdorazowej aktualizacji w terminie 30 dni od wprowadzenia zmian.<br/> 14.8. Pełnienie funkcji członka Zarządu JT ustaje na skutek:<br/> 1. pisemnej rezygnacji,<br/> 2. odwołania przez Radę AJT,<br/> 3. utraty członkostwa w Związku.<br/></p><p></p><h2>Rozdział 15 - Przepisy końcowe dotyczące Jednostek Terenowych</h2><p>15.1. Komisja Rewizyjna może kontrolować całokształt działalności JT. Ma ona prawo do pełnej informacji o działalności JT, wglądu do dokumentacji oraz żądania udzielenia wyjaśnień i informacji przez Zarząd JT oraz osoby zaangażowane w działalność w imieniu lub na rzecz JT.<br/> 15.2. Komisja Rewizyjna może przekazać Radzie JT, Zarządowi JT, Walnemu Zebraniu lub Zarządowi Związku wnioski lub uwagi dotyczące działalności JT. <br/> 15.3. W przypadku gdy działalność JT jest sprzeczna ze statutem Związku lub z powszechnie obowiązującym prawem, Komisja Rewizyjna może wydać zalecenia mające na celu przywrócenie zgodności działań JT ze statutem Związku lub z powszechnie obowiązującym prawem. Zalecenia te są wiążące dla organów JT i powinny zostać wykonane w terminie określonym przez Komisję Rewizyjną. <br/> 15.4. Organ JT może odwołać się od zaleceń Komisji Rewizyjnej do Walnego Zebrania. Wobec uchwał Walnego Zebrania w tej sprawie nie mogą wnieść sprzeciwu członkowie Związku będący jednocześnie członkami Rady lub Zarządu danej JT.<br/> 15.5. W przypadku poważnego lub uporczywego naruszania postanowień statutu Związku lub powszechnie obowiązującego prawa i niewykonywania zaleceń Komisji Rewizyjnej mających na celu przywrócenie zgodności działań JT ze statutem Związku lub z powszechnie obowiązującym prawem, Walne Zebranie może na wniosek Komisji Rewizyjnej zdecydować o zawieszeniu działalności Rady JT oraz powołaniu Rady Naprawczej JT, która przejmuje wszystkie funkcje Rady JT. Członków Rady Naprawczej JT powołuje i odwołuje Komisja Rewizyjna. Walne Zebranie na wniosek Komisji Rewizyjnej rozwiązuje Radę Naprawczą JT i przywraca Radzie JT możliwość pełnienia przez nią swoich funkcji w przypadku gdy przywrócona zostanie zgodność działalności JT z postanowieniami statutu Związku oraz powszechnie obowiązującym prawem. Wobec uchwał Walnego Zebrania w tych sprawach nie mogą wnieść sprzeciwu członkowie Związku będący jednocześnie członkami Rady lub Rady Naprawczej danej JT.<br/> 15.6. W sytuacjach szczególnie uzasadnionych, na wniosek co najmniej 5 osób mieszkających przynajmniej od roku na terenie nieruchomości oddanych do użytkowania AJT, Walne Zebranie może rozwiązać dotychczasową Radę AJT i powołać nową Radę AJT, składającą się ze wszystkich stałych mieszkańców nieruchomości oddanych do użytkowania tej AJT. Wobec uchwały Walnego Zebrania w tej sprawie nie mogą wnieść sprzeciwu członkowie Związku będący jednocześnie członkami Rady danej AJT.<br/> 15.7. JT może zostać rozwiązana uchwałą Rady JT podjętą w drodze konsensusu na zasadzie przyzwolenia w obecności wszystkich członków Rady JT. Uchwała ta wchodzi w życie po zatwierdzeniu jej przez Walne Zebranie.<br/> 15.8. PJT może zostać rozwiązana uchwałą Walnego Zebrania w przypadku ponad rocznego braku aktywności Zarządu PJT i Rady PJT, służącej realizacji celów, dla których została powołana.<br/></p><p></p><h2>Rozdział 16 - Zmiana statutu Związku</h2><p>116.1. Zmiana statutu Związku następuje na podstawie uchwały Walnego Zebrania, podjętej w drodze konsensusu na zasadzie przyzwolenia w obecności przynajmniej 2/3 członków zwyczajnych Związku, z zastrzeżeniem ust. 16.3, przy czym informacja o porządku obrad Walnego Zebrania powinna wyraźnie wskazywać, które postanowienia statutu mają ulec zmianie.<br/> 16.2. Zmiana statutu Związku nie może w istotny sposób naruszyć podstawowego celu realizowanego przez Związek oraz konsensualnego modelu podejmowania decyzji przez wszystkie organy Związku oraz JT.<br/> 16.3. Zmiana rozdziałów 10 - 17, oprócz warunku wymienionego w ust. 16.1, wymaga zgody wszystkich Rad JT w formie uchwał podjętych przy udziale wszystkich uprawnionych do decydowania członków tych Rad.<br/></p><p></p><h2>Rozdział 17 - Przepisy końcowe</h2><p>17.1. Rozwiązanie Związku może nastąpić tylko w przypadku braku AJT lub po ich uprzednim rozwiązaniu zgodnie z ust. 15.7.<br/> 17.2. Walne Zebranie może w obecności wszystkich członków Związku zdecydować o rozwiązaniu Związku, określając przeznaczenie składników majątku pozostałego po likwidacji Związku oraz powołując Komisję Likwidacyjną.<br/> 17.3. Zadaniem Komisji Likwidacyjnej jest przeprowadzenie likwidacji Związku, w tym zakończenie jego spraw majątkowych i uregulowanie jego zobowiązań. Komisja Likwidacyjna podejmuje decyzje w drodze konsensusu opartego na zasadzie przyzwolenia. Do reprezentowania Związku uprawnieni są wszyscy członkowie Komisji Likwidacyjnej działający łącznie.<br/> 17.4. Nieruchomości należące do Związku nie mogą zostać sprzedane w trakcie likwidacji Związku. Powinny one zostać przekazane w całości podmiotom zapewniającym kontynuację realizacji przez te nieruchomości celów, do których zostały przeznaczone. <br/> 17.5. Majątek pozostały po likwidacji Związku przekazuje się organizacjom pozarządowym, w pierwszej kolejności tym, których działalność jest zbieżna z celami Związku.<br/> 17.6. W sprawach nieuregulowanych niniejszym statutem mają zastosowanie przepisy obowiązującego prawa.</p>		
\.


--
-- Data for Name: strona_stronapage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.strona_stronapage (page_ptr_id, opis, link_text, link) FROM stdin;
14	<p>Oto szczegóły prac z mocno szacunkową wyceną, w kolejności takiej, jak powinny być wykonane :<br/></p><p>Okna i drzwi 8000 zł do 12 000 zł w zależności od materiałów.<br/></p><p>budowa ściany szklanej, wymiana okien 2 x w tym jedno dachowe, wymiana szyb 2 x wstawienie okien 4 x + drzwi 6 x<br/></p><p>(5 x drzwi + 7 okien już są wstawione)<br/></p><p>budowa schodów drewnianych 4000 zł i ewentualnie schodów dodatkowych przeciwpożarowych z metalu w szklarni + 4000 zł<br/></p><p>Położenie legarów na dolnej podłodze + deski od spodu i od góry na górnej i dolnej podłodze (materiał i praca 8000 zł )<br/></p><p>izolacje poziome na dwóch poziomach podłogi + izolacje niektórych ścian z perlito betonu<br/></p><p>W oparciu o naszą maszynę do pianobetonu - 40 roboczogodzin dla dwóch osób + materiał 2000 zl (transport cementu i perlitu)<br/></p><p>8000 zł - 12000 zł Dokończenie hydrauliki :<br/></p><p>zbudowanie grzejników płaszczyznowych i podłączenie do systemu / parter i piętro<br/></p><p>podłączenie warsztatu (zlew do prac ceramicznych - zimna woda i odpływ)<br/></p><p>Opcjonalnie - zamontowanie na dachu i podłączenie baterii solarnych na glikol do zbiornika (można to zrobić również na drugim etapie budowy)<br/></p><p>rozdzielnia cieplej wody<br/></p><p>W razie konieczności / wymagań - opis projektowy całego systemu.<br/></p><p>budowa i podłączenie suszarni do systemu (suszarnia jest na wodę)<br/></p><p>podłączenie grzejnika &quot;kurtyna powietrzna&quot; + grzejnik do suszenia drzewa<br/></p><p>Rynny i zabezpieczenia przeciw spadającemu lodowi z dachu 3000 zł razem z pracą. (tu opcjonalnie w grę wchodzi firma, która się tym zajmuje)<br/></p><p>Wentylacja 3000 zł (częściowo jest już gotowa)<br/></p><p>Budowa ścianek działowych 15 000 zł<br/></p><p>(kafelki w dwóch łazienkach i kuchni, lekkie ścianki z itongu + izolacja zbiornika, tynki gliniane wewnątrz budynku) połowę kafelków mamy.<br/></p><p>Elektryka 5000 zł - 6000 zł<br/></p><p>położenie kabli, gniazdek w 11stu pomieszczeniach (piwnica, szklarnia, antresole, pompy i grzałki do hydrauliki) i podłączenie kabla 3 fazy do warsztatu<br/></p><p>W razie konieczności zrobienie projektu instalacji.<br/></p><p>Budowa kominka 4000 zł praca i materiały. Kominek jest spory - w pomieszczeniu głównym warsztatowym. (część materiałów jest)<br/></p><p>barierka drewniana do balkonu 500 zł (jest materiał )<br/></p><p>Dokończenie tynków zewnętrznych i izolacji ze słomy w dachu + tynk na tej izolacji 6000 zł<br/></p><p>W drugim etapie można dodać budowę szklarni i studni głębinowej jak również baterii solarnych <br/>szklarnia z przebudową stropu i wzmocnieniem konstrukcji około 15000 zł<br/><br/> Kolektory słoneczne na glikol 6000 zł <br/><br/><br/><br/>Studnia głębinowa około 5000 zł</p>		
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
\.


--
-- Data for Name: wagtailadmin_admin; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailadmin_admin (id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
1	0001	1	0	Root
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_collectionviewrestriction (id, restriction_type, password, collection_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_collectionviewrestriction_groups (id, collectionviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_groupapprovaltask; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_groupapprovaltask (task_ptr_id) FROM stdin;
1
\.


--
-- Data for Name: wagtailcore_groupapprovaltask_groups; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_groupapprovaltask_groups (id, groupapprovaltask_id, group_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
1	1	1	2
2	1	2	2
3	1	1	3
4	1	2	3
5	1	1	5
6	1	2	5
7	1	1	6
8	1	2	6
9	1	1	150
10	1	2	150
11	1	1	151
12	1	2	151
\.


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
7	unlock	1	1
\.


--
-- Data for Name: wagtailcore_locale; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_locale (id, language_code) FROM stdin;
1	pl
\.


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title, locked_at, locked_by_id, translation_key, locale_id, alias_of_id) FROM stdin;
10	000100010005	3	0	Statut Stowarzyszenia Arte Unite	statut-stowarzyszenia-arte-unite	t	f	/home/statut-stowarzyszenia-arte-unite/		f		\N	\N	f	45	1	f	2021-03-03 08:13:38.098174+01	2021-03-03 08:00:48.757803+01	18	2021-03-03 08:13:38.146902+01	Statut Stowarzyszenia Arte Unite	\N	\N	1001d16c-5336-4633-b24b-2501dc60eba9	1	\N
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N	\N	\N	Root	\N	\N	b59f2bc8-f317-471b-8a04-85d9403b5bc2	1	\N
11	000100010006	3	0	Statut Związku Wolnej Ziemi	statut-związku-wolnej-ziemi	t	f	/home/statut-związku-wolnej-ziemi/		f		\N	\N	f	45	1	f	2021-03-06 11:55:09.285952+01	2021-03-03 08:13:01.98338+01	36	2021-03-06 11:55:09.409705+01	Statut Związku Wolnej Ziemi	\N	\N	f21449e8-dcf9-4b32-9694-5464f37a5d5f	1	\N
7	000100010002	3	0	Misja	misja	t	f	/home/misja/		f		\N	\N	f	42	1	f	2021-03-05 18:59:00.332414+01	2021-02-21 02:05:29.731187+01	25	2021-03-05 18:59:00.454038+01	Misja	\N	\N	ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04	1	\N
9	000100010004	3	0	Ruch Wolnej Ziemi	ruch-wolnej-ziemi	t	f	/home/ruch-wolnej-ziemi/		f		\N	\N	f	44	1	f	2021-03-05 19:27:47.88123+01	2021-02-21 02:35:56.738346+01	30	2021-03-05 19:27:47.992977+01	Ruch Wolnej Ziemi	\N	\N	9f495cdd-69e2-4634-a111-b3c6ffc99ed9	1	\N
12	000100010007	3	0	Dołącz do nas	dołącz-do-nas	t	f	/home/dołącz-do-nas/		f		\N	\N	f	46	1	f	2021-03-06 04:43:27.040379+01	2021-03-06 04:43:27.084764+01	32	2021-03-06 04:43:27.084764+01	Dołącz do nas	\N	\N	6cc979d2-c869-485e-8b7d-ac03371cacbf	1	\N
13	000100010008	3	0	Pomóż nam zmieniać świat	pomóż-nam-zmieniać-świat	t	f	/home/pomóż-nam-zmieniać-świat/		f		\N	\N	f	47	1	f	2021-03-06 04:47:23.638419+01	2021-03-06 04:47:23.683724+01	33	2021-03-06 04:47:23.683724+01	Pomóż nam zmieniać świat	\N	\N	f62cf826-1c52-4a62-a3f0-9c13994c2655	1	\N
3	00010001	2	9	Home	home	t	f	/home/		f		\N	\N	f	3	\N	f	2021-03-07 10:31:03.997552+01	2021-02-07 07:38:02.740781+01	43	2021-03-07 10:31:04.110328+01	Home	\N	\N	4d760b9f-f4c3-407a-92e4-17f32be77507	1	\N
14	000100010009	3	0	Spis prac	spis-prac	t	f	/home/spis-prac/		f		\N	\N	f	48	1	f	2021-03-07 12:33:46.274412+01	2021-03-07 12:33:46.316552+01	44	2021-03-07 12:33:46.316552+01	Spis prac	\N	\N	7107f06c-87b8-403c-81f3-0a47265d680b	1	\N
6	000100010001	3	0	Warsztaty	warsztaty	t	f	/home/warsztaty/		f		\N	\N	f	41	1	f	2021-03-07 13:14:02.597351+01	2021-02-21 01:20:43.836522+01	45	2021-03-07 13:14:02.716455+01	Warsztaty	\N	\N	af663334-acac-4c96-9aa7-48db95a271d6	1	\N
8	000100010003	3	0	Stodoła Wymyślacz	stodoła-wymyślacz	t	f	/home/stodoła-wymyślacz/		f		\N	\N	f	43	1	f	2021-03-07 13:30:49.674727+01	2021-02-21 02:30:25.139524+01	46	2021-03-07 13:30:49.812868+01	Stodoła Wymyślacz	\N	\N	9337acdf-56ac-42a5-aacb-5ea59c83aa6f	1	\N
\.


--
-- Data for Name: wagtailcore_pagelogentry; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_pagelogentry (id, label, action, data_json, "timestamp", content_changed, deleted, content_type_id, page_id, revision_id, user_id) FROM stdin;
1	Home	wagtail.edit	""	2021-02-07 07:27:14.888125+01	t	f	3	3	1	1
2	Home	wagtail.edit	""	2021-02-07 07:37:51.925883+01	t	f	3	3	2	1
3	Home	wagtail.edit	""	2021-02-07 07:38:02.735153+01	t	f	3	3	3	1
4	Home	wagtail.publish	null	2021-02-07 07:38:02.875497+01	f	f	3	3	3	1
5	Home	wagtail.edit	""	2021-02-07 15:10:58.266414+01	t	f	3	3	4	1
6	Home	wagtail.publish	null	2021-02-07 15:10:58.42257+01	t	f	3	3	4	1
7	Home	wagtail.edit	""	2021-02-07 15:16:55.173578+01	t	f	3	3	5	1
8	Home	wagtail.publish	null	2021-02-07 15:16:55.287497+01	t	f	3	3	5	1
9	Home	wagtail.edit	""	2021-02-07 15:24:43.05199+01	t	f	3	3	6	1
10	Home	wagtail.publish	null	2021-02-07 15:24:43.183414+01	f	f	3	3	6	1
11	Home	wagtail.edit	""	2021-02-14 23:05:22.770676+01	t	f	3	3	7	1
12	Home	wagtail.publish	null	2021-02-14 23:05:22.885945+01	t	f	3	3	7	1
13	Home	wagtail.edit	""	2021-02-14 23:14:00.173831+01	t	f	3	3	8	1
14	Home	wagtail.publish	null	2021-02-14 23:14:00.30185+01	t	f	3	3	8	1
15	WARSZTATY	wagtail.create	""	2021-02-21 00:28:30.222002+01	t	f	41	4	\N	1
16	WARSZTATY	wagtail.publish	null	2021-02-21 00:28:30.356676+01	t	f	41	4	9	1
17	Warsztaty	wagtail.create	""	2021-02-21 00:31:33.255749+01	t	f	41	5	\N	1
18	Warsztaty	wagtail.publish	null	2021-02-21 00:31:33.430712+01	t	f	41	5	10	1
19	Warsztaty	wagtail.delete	""	2021-02-21 01:03:09.046268+01	f	t	41	5	\N	1
20	WARSZTATY	wagtail.delete	""	2021-02-21 01:03:30.184142+01	f	t	41	4	\N	1
21	Warsztaty	wagtail.create	""	2021-02-21 01:20:43.743563+01	t	f	41	6	\N	1
22	Warsztaty	wagtail.publish	null	2021-02-21 01:20:43.924886+01	t	f	41	6	11	1
23	Misja	wagtail.create	""	2021-02-21 02:05:29.636394+01	t	f	42	7	\N	1
24	Misja	wagtail.publish	null	2021-02-21 02:05:29.819018+01	t	f	42	7	12	1
25	Stodoła Wymyślacz	wagtail.create	""	2021-02-21 02:30:25.079711+01	t	f	43	8	\N	1
26	Stodoła Wymyślacz	wagtail.publish	null	2021-02-21 02:30:25.218257+01	t	f	43	8	13	1
27	Ruch Wolnej Ziemi	wagtail.create	""	2021-02-21 02:35:56.679739+01	t	f	44	9	\N	1
28	Ruch Wolnej Ziemi	wagtail.publish	null	2021-02-21 02:35:56.79174+01	t	f	44	9	14	1
29	Statut Stowarzyszenia Arte Unite	wagtail.create	""	2021-03-03 08:00:48.705982+01	t	f	45	10	\N	1
30	Statut Stowarzyszenia Arte Unite	wagtail.publish	null	2021-03-03 08:00:48.799678+01	t	f	45	10	15	1
31	Statut Stowarzyszenia Arte Unite	wagtail.edit	""	2021-03-03 08:08:13.882904+01	t	f	45	10	16	1
32	Statut Stowarzyszenia Arte Unite	wagtail.publish	null	2021-03-03 08:08:14.025707+01	t	f	45	10	16	1
33	Statut Związku Wolnej Ziemi	wagtail.create	""	2021-03-03 08:13:01.896707+01	t	f	45	11	\N	1
34	Statut Związku Wolnej Ziemi	wagtail.publish	null	2021-03-03 08:13:02.091158+01	t	f	45	11	17	1
35	Statut Stowarzyszenia Arte Unite	wagtail.edit	""	2021-03-03 08:13:38.125635+01	t	f	45	10	18	1
36	Statut Stowarzyszenia Arte Unite	wagtail.publish	null	2021-03-03 08:13:38.188273+01	t	f	45	10	18	1
37	Home	wagtail.edit	""	2021-03-05 13:47:57.288254+01	t	f	3	3	19	2
38	Home	wagtail.edit	""	2021-03-05 13:48:04.449454+01	t	f	3	3	20	2
39	Home	wagtail.publish	null	2021-03-05 13:48:04.532905+01	f	f	3	3	20	2
40	Home	wagtail.edit	""	2021-03-05 13:56:01.064993+01	t	f	3	3	21	2
41	Home	wagtail.publish	null	2021-03-05 13:56:01.155811+01	t	f	3	3	21	2
42	Home	wagtail.edit	""	2021-03-05 14:08:16.252878+01	t	f	3	3	22	2
43	Home	wagtail.publish	null	2021-03-05 14:08:16.316748+01	t	f	3	3	22	2
44	Home	wagtail.edit	""	2021-03-05 18:53:43.11898+01	t	f	3	3	23	2
45	Home	wagtail.publish	null	2021-03-05 18:53:43.193291+01	t	f	3	3	23	2
46	Home	wagtail.edit	""	2021-03-05 18:56:04.400536+01	t	f	3	3	24	2
47	Home	wagtail.publish	null	2021-03-05 18:56:04.474883+01	t	f	3	3	24	2
48	Misja	wagtail.edit	""	2021-03-05 18:59:00.420947+01	t	f	42	7	25	2
49	Misja	wagtail.publish	null	2021-03-05 18:59:00.502256+01	t	f	42	7	25	2
50	Home	wagtail.edit	""	2021-03-05 19:00:35.188917+01	t	f	3	3	26	2
51	Home	wagtail.publish	null	2021-03-05 19:00:35.270734+01	t	f	3	3	26	2
52	Home	wagtail.edit	""	2021-03-05 19:05:58.315028+01	t	f	3	3	27	2
53	Home	wagtail.publish	null	2021-03-05 19:05:58.399032+01	t	f	3	3	27	2
54	Home	wagtail.edit	""	2021-03-05 19:18:45.957241+01	t	f	3	3	28	2
55	Home	wagtail.publish	null	2021-03-05 19:18:46.063384+01	t	f	3	3	28	2
56	Ruch Wolnej Ziemi	wagtail.edit	""	2021-03-05 19:24:31.672203+01	t	f	44	9	29	2
57	Ruch Wolnej Ziemi	wagtail.publish	null	2021-03-05 19:24:31.764027+01	t	f	44	9	29	2
58	Ruch Wolnej Ziemi	wagtail.edit	""	2021-03-05 19:27:47.959765+01	t	f	44	9	30	2
59	Ruch Wolnej Ziemi	wagtail.publish	null	2021-03-05 19:27:48.051263+01	t	f	44	9	30	2
60	Home	wagtail.edit	""	2021-03-05 20:56:53.641143+01	t	f	3	3	31	2
61	Home	wagtail.publish	null	2021-03-05 20:56:53.714614+01	t	f	3	3	31	2
62	Dołącz do nas	wagtail.create	""	2021-03-06 04:43:27.013828+01	t	f	46	12	\N	1
63	Dołącz do nas	wagtail.publish	null	2021-03-06 04:43:27.134205+01	t	f	46	12	32	1
64	Pomóż nam zmieniać świat	wagtail.create	""	2021-03-06 04:47:23.612741+01	t	f	47	13	\N	1
65	Pomóż nam zmieniać świat	wagtail.publish	null	2021-03-06 04:47:23.732606+01	t	f	47	13	33	1
66	Home	wagtail.edit	""	2021-03-06 11:33:48.290356+01	t	f	3	3	34	2
67	Home	wagtail.publish	null	2021-03-06 11:33:48.372629+01	t	f	3	3	34	2
68	Statut Związku Wolnej Ziemi	wagtail.edit	""	2021-03-06 11:53:50.505226+01	t	f	45	11	35	2
69	Statut Związku Wolnej Ziemi	wagtail.publish	null	2021-03-06 11:53:50.59708+01	t	f	45	11	35	2
70	Statut Związku Wolnej Ziemi	wagtail.edit	""	2021-03-06 11:55:09.376366+01	t	f	45	11	36	2
71	Statut Związku Wolnej Ziemi	wagtail.publish	null	2021-03-06 11:55:09.466915+01	t	f	45	11	36	2
72	Home	wagtail.edit	""	2021-03-06 12:06:44.555289+01	t	f	3	3	37	2
73	Home	wagtail.publish	null	2021-03-06 12:06:44.63825+01	t	f	3	3	37	2
74	Home	wagtail.edit	""	2021-03-06 12:24:30.741915+01	t	f	3	3	38	2
75	Home	wagtail.publish	null	2021-03-06 12:24:30.829798+01	t	f	3	3	38	2
76	Home	wagtail.edit	""	2021-03-06 12:30:05.734847+01	t	f	3	3	39	2
77	Home	wagtail.publish	null	2021-03-06 12:30:05.818397+01	t	f	3	3	39	2
78	Home	wagtail.edit	""	2021-03-06 12:33:15.972171+01	t	f	3	3	40	2
79	Home	wagtail.publish	null	2021-03-06 12:33:16.045715+01	t	f	3	3	40	2
80	Warsztaty	wagtail.edit	""	2021-03-06 12:41:46.76707+01	t	f	41	6	41	2
81	Warsztaty	wagtail.publish	null	2021-03-06 12:41:46.85642+01	t	f	41	6	41	2
82	Home	wagtail.edit	""	2021-03-07 10:23:07.695251+01	t	f	3	3	42	2
83	Home	wagtail.publish	null	2021-03-07 10:23:07.776974+01	t	f	3	3	42	2
84	Home	wagtail.edit	""	2021-03-07 10:31:04.076967+01	t	f	3	3	43	2
85	Home	wagtail.publish	null	2021-03-07 10:31:04.159341+01	t	f	3	3	43	2
86	Spis prac	wagtail.create	""	2021-03-07 12:33:46.217477+01	t	f	48	14	\N	1
87	Spis prac	wagtail.publish	null	2021-03-07 12:33:46.367306+01	t	f	48	14	44	1
88	Warsztaty	wagtail.edit	""	2021-03-07 13:14:02.680609+01	t	f	41	6	45	2
89	Warsztaty	wagtail.publish	null	2021-03-07 13:14:02.773618+01	t	f	41	6	45	2
90	Stodoła Wymyślacz	wagtail.edit	""	2021-03-07 13:30:49.778262+01	t	f	43	8	46	2
91	Stodoła Wymyślacz	wagtail.publish	null	2021-03-07 13:30:49.861067+01	t	f	43	8	46	2
\.


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
15	f	2021-03-03 08:00:48.726737+01	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "1001d16c-5336-4633-b24b-2501dc60eba9", "locale": 1, "title": "Statut Stowarzyszenia Arte Unite", "draft_title": "Statut Stowarzyszenia Arte Unite", "slug": "statut-stowarzyszenia-arte-unite", "content_type": 45, "live": true, "has_unpublished_changes": false, "url_path": "/home/statut-stowarzyszenia-arte-unite/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "tytul": "<p>Statut Stowarzyszenia Arte Unite</p>", "statut": "<h2>Rozdzia\\u0142 1 - Postanowienia og\\u00f3lne</h2><p>1.1.\\u00a0Stowarzyszenie \\u201eArte Unite\\u201d, zwane w dalszej cz\\u0119\\u015bci stowarzyszeniem, jest organizacj\\u0105 dzia\\u0142aj\\u0105c\\u0105 na podstawie prawa o stowarzyszeniach oraz niniejszego statutu.<br/>1.2. Stowarzyszenie posiada osobowo\\u015b\\u0107 prawn\\u0105.<br/>1.3. Terenem dzia\\u0142ania stowarzyszenia jest obszar RP. Dla w\\u0142a\\u015bciwej realizacji cel\\u00f3w statutowych stowarzyszenie mo\\u017ce prowadzi\\u0107 dzia\\u0142alno\\u015b\\u0107 poza granicami RP, zgodnie z obowi\\u0105zuj\\u0105cym porz\\u0105dkiem prawnym um\\u00f3w mi\\u0119dzynarodowych. Siedzib\\u0105 Stowarzyszenia jest miasto Lubliniec.<br/>1.4. Stowarzyszenie mo\\u017ce by\\u0107 cz\\u0142onkiem krajowych i mi\\u0119dzynarodowych organizacji o podobnych celach dzia\\u0142ania. Przynale\\u017cno\\u015b\\u0107 Stowarzyszenia do innych organizacji mo\\u017ce nast\\u0105pi\\u0107 jedynie decyzj\\u0105 Walnego Zebrania podj\\u0119t\\u0105 jednog\\u0142o\\u015bnie.<br/>1.5. . Stowarzyszenie mo\\u017ce posiada\\u0107 terenowe jednostki organizacyjne. Terenowe jednostki organizacyjne mog\\u0105 podejmowa\\u0107 decyzje jednog\\u0142o\\u015bnie w sk\\u0142adzie min. 3 os\\u00f3b. Decyzje te mog\\u0105 by\\u0107 podejmowane w zakresie okre\\u015blonym przez regulamin wewn\\u0119trzny terenowej jednostki organizacyjnej.<br/>1.6.Wa\\u017cno\\u015b\\u0107 terenowej jednostki organizacyjnej okre\\u015bla uchwa\\u0142\\u0105 Walne Zebranie w momencie zatwierdzenia regulaminu wewn\\u0119trznego.<br/>1.7. Terenowe jednostki organizacyjne nie mog\\u0105 posiada\\u0107 osobowo\\u015bci prawnej.<br/>1.8. Stowarzyszenie opiera swoj\\u0105 dzia\\u0142alno\\u015b\\u0107 na spo\\u0142ecznej pracy cz\\u0142onk\\u00f3w. Przewiduje si\\u0119 mo\\u017cliwo\\u015b\\u0107 etatowego zatrudnienia pracownik\\u00f3w, dla prowadzenia dzia\\u0142alno\\u015bci statutowej i organizacyjnej.<br/>1.9.Stowarzyszenie mo\\u017ce u\\u017cywa\\u0107 piecz\\u0119ci i oznak zgodnie z obowi\\u0105zuj\\u0105cymi w tym zakresie przepisami.<br/>1.10.Czas trwania stowarzyszenia jest nieograniczony.<br/></p><h2>Rozdzia\\u0142 2 - Cele i \\u015brodki dzia\\u0142ania</h2><p>Celem stowarzyszenia jest ochrona Ziemi, poprzez rozwijanie sposob\\u00f3w \\u017cycia cz\\u0142owieka w zgodzie z natur\\u0105, bez zagro\\u017cenia dla \\u015brodowiska naturalnego i zaburzania r\\u00f3wnowagi ekosystemu z zachowaniem i odtwarzaniem naturalnego \\u015brodowiska \\u017cycia ro\\u015blin i zwierz\\u0105t.<br/>2.2 Celami szczeg\\u00f3\\u0142owymi Stowarzyszenia s\\u0105:<br/>1. Ochrona siedlisk ro\\u015blin i zwierz\\u0105t z zachowaniem i odtwarzaniem ich naturalnego \\u015brodowiska.<br/>2. Zapobieganie degradacji \\u015brodowiska.<br/>3. Wspieranie inicjatyw na rzecz ochrony praw zwierz\\u0105t.<br/>4. Promowanie i prowadzenie r\\u00f3\\u017cnorodnych form dzia\\u0142ania podnosz\\u0105cych \\u015bwiadomo\\u015b\\u0107 ekologiczn\\u0105 i artystyczn\\u0105.<br/>5. Zapobieganie marnotrawstwu surowc\\u00f3w oraz niew\\u0142a\\u015bciwemu zagospodarowaniu i utylizacji odpad\\u00f3w.<br/>6. Pobudzanie \\u015bwiadomo\\u015bci ekologicznej spo\\u0142ecze\\u0144stwa.<br/>7.Promocja rolnictwa przyjaznego dla \\u015brodowiska, oraz nieszkodz\\u0105cych cz\\u0142owiekowi metod przetwarzania \\u017cywno\\u015bci.<br/>8. Dzia\\u0142ania na rzecz bezdomnych, ubogich i potrzebuj\\u0105cych.<br/>9. Wspieranie wszelkich dzia\\u0142a\\u0144 zmierzaj\\u0105cych do wewn\\u0119trznego rozwoju cz\\u0142owieka bez wzgl\\u0119du na jego kondycj\\u0119 psychofizyczn\\u0105, wiek, pochodzenie i status spo\\u0142eczny.<br/>2.2 Stowarzyszenie realizuje swoje cele poprzez:<br/>1. Organizowanie spotka\\u0144, prelekcji, wystaw, koncert\\u00f3w, wyjazd\\u00f3w, oboz\\u00f3w szkoleniowych, imprez tematycznych.<br/>2. Zagospodarowanie nieruchomo\\u015bci pozostaj\\u0105cych w posiadaniu stowarzyszenia lub w jego zarz\\u0105dzaniu zgodnie z zasadami zr\\u00f3wnowa\\u017conego rozwoju ekologicznego, bez zagro\\u017cenia dla \\u015brodowiska naturalnego i zaburzania r\\u00f3wnowagi ekosystemu.<br/>3. Upraw\\u0119 ro\\u015blin, ze wskazaniem na rolnictwo biodynamiczne i permakultur\\u0119, oraz przetwarzanie p\\u0142od\\u00f3w rolnych bez u\\u017cycia \\u015brodk\\u00f3w chemicznych i konserwant\\u00f3w.<br/>4. Stosowanie na terenie nieruchomosci u\\u017cytkowanych przez stowarzyszenie, a tak\\u017ce promowanie na terenie tych nieruchomo\\u015bci i poza nimi technik budownictwa tradycyjnego i ekologicznego z u\\u017cyciem materia\\u0142\\u00f3w przyjaznych dla \\u015brodowiska.<br/>5. Tworzenie i prowadzenie o\\u015brodk\\u00f3w edukacyjnych, oraz dzia\\u0142ania edukacyjne w zakresie ochrony \\u015brodowiska.<br/>6. Wspieranie inicjatyw spo\\u0142ecznych na rzecz budowy oczyszczalni oraz wykorzystania \\u017ar\\u00f3de\\u0142 energii alternatywnej, oraz w\\u0142asciwego zagospodarowania odpad\\u00f3w..<br/>7. Prowadzenie interdyscyplinarnych studi\\u00f3w i bada\\u0144 zwi\\u0105zanych z dzia\\u0142alno\\u015bci\\u0105 stowarzyszenia.<br/>8. Prowadzenie szeroko poj\\u0119tego doradztwa oraz tworzenie bank\\u00f3w informacji o dzia\\u0142aniach spo\\u0142ecznych, naukowych i gospodarczych oraz technologiach s\\u0142u\\u017c\\u0105cych ochronie \\u015brodowiska.<br/>9. Promowanie tw\\u00f3rczo\\u015bci kulturalnej i artystycznej s\\u0142u\\u017c\\u0105cej integracji cz\\u0142owieka z Ziemi\\u0105.<br/>10. Prowadzenie dzia\\u0142alno\\u015bci wydawniczej i poligraficznej.<br/>11. Wsp\\u00f3\\u0142praca z instytucjami, organizacjami i osobami fizycznymi w kraju i zagranic\\u0105 posiadaj\\u0105cymi podobne cele dzia\\u0142ania.<br/>12. Udzia\\u0142 w post\\u0119powaniach administracyjnych dotycz\\u0105cych spraw zwi\\u0105zanych z ingerencj\\u0105 w \\u015brodowisko naturalne.<br/>13. Wyst\\u0119powanie do w\\u0142a\\u015bciwych wg kompetencji w\\u0142adz lokalnych, wojew\\u00f3dzkich i krajowych oraz s\\u0105d\\u00f3w z wnioskami o zastosowanie \\u015brodk\\u00f3w prowadz\\u0105cych do usuni\\u0119cia zaistnia\\u0142ego zagro\\u017cenia \\u015brodowiska, zaniechania naruszenia \\u015brodowiska oraz opiniowanie przedsi\\u0119wzi\\u0119\\u0107 z punktu widzenia ich zgodno\\u015bci z interesami ochrony przyrody i zdrowia ludno\\u015bci.<br/></p><h2>Rozdzia\\u0142 3 - Cz\\u0142onkowie oraz ich prawa i obowi\\u0105zki</h2><p>3.1. Cz\\u0142onkowie dziel\\u0105 si\\u0119 na zwyczajnych i wspieraj\\u0105cych.<br/>3.2. Cz\\u0142onkami zwyczajnymi mog\\u0105 by\\u0107:<br/>a. Osoby fizyczne, tak\\u017ce niepe\\u0142noletnie.<br/>b. Cudzoziemcy, tak\\u017ce ci niemaj\\u0105cy miejsca zamieszkania w Polsce<br/>3.3. Cz\\u0142onkiem wspieraj\\u0105cym mo\\u017ce by\\u0107 ka\\u017cdy ( osoba prawna lub fizyczna ) deklaruj\\u0105c\\u0105 czynne poparcie dla realizacji cel\\u00f3w stowarzyszenia.<br/>1. w swoim \\u017cyciu codziennym kieruje si\\u0119 warto\\u015bciami Zwi\\u0105zku,<br/>2. przez ci\\u0105g\\u0142y okres przynajmniej roku aktywnie uczestniczy\\u0142a w dzia\\u0142alno\\u015bci Zwi\\u0105zku jako cz\\u0142onek wspieraj\\u0105cy,<br/>3. z\\u0142o\\u017cy\\u0142a Zarz\\u0105dowi deklaracj\\u0119 cz\\u0142onkowsk\\u0105 wraz z pisemnymi rekomendacjami zawieraj\\u0105cymi por\\u0119czenie za t\\u0119 osob\\u0119, udzielonymi przez przynajmniej dw\\u00f3ch cz\\u0142onk\\u00f3w zwyczajnych.<br/>3.4. Cz\\u0142onkiem zwyczajnym stowarzyszenia mo\\u017ce by\\u0107 osoba fizyczna kt\\u00f3ra zostanie przyj\\u0119ta na Walnym Zebraniu na podstawie swojej pisemnej deklaracji o chch\\u0119ci przyst\\u0105pienia do stowarzyszenia.<br/>3.5. Cz\\u0142onek zwyczajny ma prawo:<br/>1. Wybiera\\u0107 i by\\u0107 wybieranym do w\\u0142adz stowarzyszenia.<br/>2. Uczestniczy\\u0107 z g\\u0142osem stanowi\\u0105cym w Walnym Zebraniu.<br/>3. Korzysta\\u0107 z pomocy stowarzyszenia w realizacji jego statutowych cel\\u00f3w.<br/>4.Bra\\u0107 udzia\\u0142 we wszystkich pracach i imprezach stowarzyszenia.<br/>5. Do pe\\u0142nej informacji o dzia\\u0142aniach organ\\u00f3w stowarzyszenia.<br/>6. Do bezp\\u0142atnego korzystania z urz\\u0105dze\\u0144 i pomocy stowarzyszenia.<br/>7. Do korzystania z nieruchomo\\u015bci i lokali mieszkalnych b\\u0119d\\u0105cych w\\u0142asno\\u015bci\\u0105 lub w posiadaniu stowarzyszenia zgodnie z ich przeznaczeniem.<br/>3.6. Do obowi\\u0105zk\\u00f3w cz\\u0142onka zwyczajnego nale\\u017cy:<br/>1. Przestrzeganie postanowie\\u0144 statutu, uchwa\\u0142 stowarzyszenia oraz regulamin\\u00f3w wewn\\u0119trznych jednostek terenowych.<br/>2. Wspieranie realizacji zada\\u0144 statutowych.<br/>3.Op\\u0142acanie sk\\u0142adek cz\\u0142onkowskich w wysoko\\u015bci ustalanej przez Walne Zebranie.<br/>3.7. Cz\\u0142onkiem wspieraj\\u0105cym stowarzyszenie mo\\u017ce by\\u0107 osoba fizyczna lub prawna zainteresowana merytoryczn\\u0105 dzia\\u0142alno\\u015bci\\u0105 stowarzyszenia, kt\\u00f3ra zostanie przyj\\u0119ta przez Walne Zebranie na podstawie swojej pisemnej deklaracji o ch\\u0119ci przyst\\u0105pienia.<br/>3.8. Cz\\u0142onek wspieraj\\u0105cy ma prawo uczestnictwa w walnym zgromadzeniu z g\\u0142osem doradczym<br/>3.9. Cz\\u0142onek wspieraj\\u0105cy ma prawo:<br/>1. Uczestniczy\\u0107 w Walnym Zebraniu z g\\u0142osem doradczym.<br/>2. Korzysta\\u0107 z pomocy stowarzyszenia w realizacji jego statutowych cel\\u00f3w.<br/>3. Bra\\u0107 udzia\\u0142 we wszystkich pracach i imprezach stowarzyszenia<br/>4. Do bezp\\u0142atnego korzystania z urz\\u0105dze\\u0144 i pomocy stowarzyszenia.<br/>3.9. Do obowi\\u0105zk\\u00f3w cz\\u0142onka wspieraj\\u0105cego nale\\u017cy:<br/>1. Przestrzeganie postanowie\\u0144 statutu, uchwa\\u0142 stowarzyszenia oraz regulamin\\u00f3w wewn\\u0119trznych jednostek terenowych.<br/>2. Wspieranie realizacji zada\\u0144 statutowych.\\u00a0<br/>3. Op\\u0142acanie sk\\u0142adek cz\\u0142onkowskich w wysoko\\u015bci ustalanej przez Walne Zebranie.<br/>3.10. Cz\\u0142onkostwo w stowarzyszeniu ustaje na skutek :<br/>1. Dobrowolnej rezygnacji z przynale\\u017cno\\u015bci do stowarzyszenia, zg\\u0142oszonej na pi\\u015bmie zarz\\u0105dowi, po uprzednim uregulowaniu wszelkich zobowi\\u0105za\\u0144 odno\\u015bnie stowarzyszenia.<br/>2. \\u015amierci cz\\u0142onka lub utraty osobowo\\u015bci prawnej przez cz\\u0142onka wspieraj\\u0105cego<br/>3. Wykluczenia uchwa\\u0142\\u0105 Walnego Zebrania z powodu nieprzestrzegania postanowie\\u0144 statutu, regulamin\\u00f3w i uchwa\\u0142 stowarzyszenia, dzia\\u0142ania na szkod\\u0119 stowarzyszenia.<br/>4. Wniosek o wykluczenie musi zosta\\u0107 z\\u0142o\\u017cony na pi\\u015bmie przez minimum trzy osoby b\\u0119d\\u0105ce cz\\u0142onkami zwyczajnymi stowarzyszenia. Walne Zebranie podejmuje decyzj\\u0119 o wykluczeniu z pomini\\u0119ciem w g\\u0142osowaniu osoby, kt\\u00f3rej ten wniosek dotyczy, oraz pozosta\\u0142ych os\\u00f3b, co do kt\\u00f3rych takie wnioski wp\\u0142yn\\u0119\\u0142y.<br/>5. Walne Zebranie jednorazowo mo\\u017ce rozpatrywa\\u0107 nie wi\\u0119cej ni\\u017c trzy takie wnioski.<br/>6. Osoba wykluczona lub skre\\u015blona ma prawo wniesienia odwo\\u0142ania do Walnego Zebrania w terminie 14 dni od daty dor\\u0119czenia uchwa\\u0142y na pi\\u015bmie. Walne Zebranie rozpatruje odwo\\u0142anie w czasie najbli\\u017cszych obrad. Decyzja Walnego Zebrania jest ostateczna.<br/></p><h2>Rozdzia\\u0142 4 - W\\u0142adze stowarzyszenia</h2><p>4.1. W\\u0142adzami stowarzyszenia s\\u0105:<br/>Walne Zgromadzenie, zarz\\u0105d, komisja rewizyjna.<br/>1. Walne Zebranie pe\\u0142ni funkcj\\u0119 uchwa\\u0142odawcz\\u0105 i jest najwy\\u017csz\\u0105 w\\u0142adz\\u0105 stowarzyszenia. Stanowi\\u0105 je wszyscy cz\\u0142onkowie zwyczajni. Wszystkie decyzje Walnego Zebrania podejmowane s\\u0105 w g\\u0142osowaniu jawnym jednog\\u0142o\\u015bnie, w obecno\\u015bci co najmniej 1/3 cz\\u0142onk\\u00f3w zwyczajnych.<br/>2. W przypadku braku kworum Walne Zebranie odbywa si\\u0119 w drugim terminie nie p\\u00f3\\u017aniej ni\\u017c 2 tygodnie po terminie pierwszym. W\\u00f3wczas decyzje Walnego Zebrania podejmowane s\\u0105 jednog\\u0142o\\u015bnie w obecno\\u015bci minimum 3 os\\u00f3b.<br/>3. Zarz\\u0105d i komisj\\u0119 rewizyjn\\u0105 wybiera Walne Zebranie z po\\u015br\\u00f3d swoich cz\\u0142onk\\u00f3w na 3 letni\\u0105 kadencj\\u0119 w g\\u0142osowaniu jawnym.<br/>4. W przypadku ust\\u0105pienia cz\\u0142onk\\u00f3w zarz\\u0105du lub komisji rewizyjnej w czasie kadencji, pomi\\u0119dzy obradami Walnego Zebrania, w\\u0142adzom tym przys\\u0142uguje prawo kooptacji spo\\u015br\\u00f3d cz\\u0142onk\\u00f3w Stowarzyszenia. W przypadku usuni\\u0119cia z organ\\u00f3w w\\u0142adz cz\\u0142onka zarz\\u0105du lub komisji rewizyjnej przez Walne Zebranie uzupe\\u0142nia ono sk\\u0142ad w\\u0142adz stowarzyszenia.<br/>5. Wniosek (w formie pisemnej) o usuni\\u0119cie z organ\\u00f3w w\\u0142adz cz\\u0142onka zarz\\u0105du lub komisji rewizyjnej z\\u0142o\\u017cy\\u0107 musz\\u0105 minimum trzej cz\\u0142onkowie zwyczajni. Walne Zebranie podejmuje decyzje z pomini\\u0119ciem g\\u0142osu osoby, kt\\u00f3rej wykluczenie jest przedmiotem wniosku.<br/>4.2. Zwyczajne Walne Zebranie odbywa si\\u0119 raz w roku w terminie okre\\u015blonym przez zarz\\u0105d. O terminie, miejscu i proponowanym porz\\u0105dku obrad cz\\u0142onk\\u00f3w powiadamia zarz\\u0105d co najmniej na 14 dni przed Walnym Zebraniem.<br/>4.3. Walne Zebranie zwo\\u0142uje zarz\\u0105d:<br/>1. z w\\u0142asnej inicjatywy,<br/>2. na wniosek komisji rewizyjnej,<br/>3. na pisemny wniosek 1/3 cz\\u0142onk\\u00f3w stowarzyszenia.<br/>4.4. Do kompetencji Walnego Zebrania nale\\u017cy:<br/>1. Uchwalanie og\\u00f3lnych kierunk\\u00f3w dzia\\u0142alno\\u015bci merytorycznej i finansowej stowarzyszenia.<br/>2. Wyb\\u00f3r i odwo\\u0142ywanie cz\\u0142onk\\u00f3w zarz\\u0105du komisji rewizyjnej.<br/>3. Przyjmowanie i wykluczanie cz\\u0142onk\\u00f3w.<br/>4. Podejmowanie uchwa\\u0142 w sprawach zmian statutu lub rozwi\\u0105zania si\\u0119 stowarzyszenia.<br/>3. Zatwierdzanie regulamin\\u00f3w wewn\\u0119trznych plac\\u00f3wek terenowych.<br/>3. Decydowanie o przynale\\u017cnosci stowarzyszenia do innych krajowych i miedzynarodowych organizacji o podobnych celach dzia\\u0142ania.<br/>3. Ustalanie wysoko\\u015bci sk\\u0142adek cz\\u0142onkowskich.<br/>4.5. Zarz\\u0105d kieruje dzia\\u0142aniami stowarzyszenia w oparciu o uchwa\\u0142y Walnego Zebrania. Zarz\\u0105d reprezentuje stowarzyszenie na zewn\\u0105trz. Zarz\\u0105d sk\\u0142ada si\\u0119 z prezesa i 2 cz\\u0142onk\\u00f3w zarz\\u0105du pe\\u0142ni\\u0105cych funkcj\\u0119 skarbnika i sekretarza.<br/>4.6.Do kompetencji zarz\\u0105du nale\\u017cy:\\u00a0<br/>1. Opracowywanie sposob\\u00f3w realizacji decyzji Walnego Zebrania oraz podejmowanie szczeg\\u00f3\\u0142owych dzia\\u0142a\\u0144, w tym zatrudnianie i zwalnianie pracownik\\u00f3w stowarzyszenia oraz okre\\u015blanie ich obowi\\u0105zk\\u00f3w i odpowiedzialno\\u015bci.<br/>2. Reprezentowane stowarzyszenia na zewn\\u0105trz i dzia\\u0142anie w jego imieniu.<br/>3. Sporz\\u0105dzanie sprawozda\\u0144 i rocznych bud\\u017cet\\u00f3w z dzia\\u0142alno\\u015bci stowarzyszenia, b\\u0119d\\u0105cych przedmiotem oceny komisji rewizyjnej.<br/>4. Zwo\\u0142ywanie Walnych Zebra\\u0144.<br/>5. Zarz\\u0105d podejmuje uchwa\\u0142y jednog\\u0142o\\u015bnie za zgod\\u0105 wszystkich cz\\u0142onk\\u00f3w zarz\\u0105du<br/>4.7.Negatywna ocena zarz\\u0105du przez Walne Zebranie na wniosek komisji rewizyjnej powoduje upomnienie zarz\\u0105du lub jego odwo\\u0142anie. Decyzje w sprawie odwo\\u0142ania Walne Zebranie podejmuje jednog\\u0142o\\u015bnie z wy\\u0142\\u0105czeniem cz\\u0142onk\\u00f3w zarz\\u0105du, kt\\u00f3rych uchwa\\u0142a dotyczy.\\u00a0<br/>4.8. Komisja Rewizyjna sk\\u0142ada si\\u0119 z 3 cz\\u0142onk\\u00f3w, spo\\u015br\\u00f3d kt\\u00f3rych Walne Zebranie wybiera przewodnicz\\u0105cego komisji.<br/>4.8a. Zarz\\u0105d stowarzyszenia sk\\u0142ada si\\u0119 z 3 cz\\u0142onk\\u00f3w, spo\\u015br\\u00f3d kt\\u00f3rych Walne Zebranie wybiera Prezesa Stowarzyszenia, Sekretarza Stowarzyszenia, Skarbnika Stowarzyszenia.<br/>4.9. Komisja Rewizyjna podejmuje uchwa\\u0142y jednog\\u0142o\\u015bnie przy obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w Komisji.<br/>4.10. Do kompetencji Komisji Rewizyjnej nale\\u017cy:<br/>1. Kontrola pracy zarz\\u0105du.<br/>2. Sk\\u0142adanie wniosk\\u00f3w o negatywn\\u0105 ocen\\u0119 zarz\\u0105du przed Walnym Zebraniem.<br/>3. Dokonywanie wyboru podmiotu, maj\\u0105cego zbada\\u0107 sprawozdania finansowe stowarzyszenia zgodnie z przepisami o rachunkowo\\u015bci.<br/>4. Zwo\\u0142ywanie Walnego Zebrania w razie bezczynno\\u015bci w tym zakresie zarz\\u0105du stowarzyszenia.<br/></p><h2>Rozdzia\\u0142 5 - Maj\\u0105tek stowarzyszenia\\u00a0</h2><p>Maj\\u0105tek stowarzyszenia stanowi\\u0105: nieruchomo\\u015bci, ruchomo\\u015bci i fundusze. Pochodzi on z nast\\u0119puj\\u0105cych \\u017ar\\u00f3de\\u0142:\\u00a0<br/>1. darowizny, sk\\u0142adki cz\\u0142onkowskie, spadki, zapisy, dotacje, subwencje dokonywane zgodnie z przepisami obowi\\u0105zuj\\u0105cego prawa,<br/>2. wp\\u0142ywy z maj\\u0105tku ruchomego i nieruchomego,<br/>3. odsetki od depozyt\\u00f3w kapita\\u0142owych,<br/>4. wp\\u0142ywy pochodz\\u0105ce z ofiarno\\u015bci publicznej<br/>5.2. Funduszami i maj\\u0105tkiem zarz\\u0105dza zarz\\u0105d zgodnie z wol\\u0105 Walnego Zebrania i pod kontrol\\u0105 komisji rewizyjnej.<br/>5.3. Do reprezentowania stowarzyszenia oraz do zaci\\u0105gania zobowi\\u0105za\\u0144 finansowych upowa\\u017cniony jest zarz\\u0105d stowarzyszenia. Do sk\\u0142adania o\\u015bwiadcze\\u0144 woli w imieniu Stowarzyszenia, do kwoty pieciu tysi\\u0119cy z\\u0142otych polskich wymagany jest podpis jednego cz\\u0142onka zarz\\u0105du. Dla kwoty przekraczajacej pi\\u0119\\u0107 tysi\\u0119cy z\\u0142otych polskich wymagane s\\u0105 podpisy dw\\u00f3ch cz\\u0142onk\\u00f3w zarz\\u0105du dzia\\u0142ajacych \\u0142\\u0105cznie. Do sk\\u0142adania o\\u015bwiadcze\\u0144 woli we wszystkich innych ni\\u017c majatkowe sprawach, upowa\\u017cniony jest Zarz\\u0105d Stowarzyszenia, przy czym wymagany jest podpis jednego cz\\u0142onka Zarz\\u0105du.<br/></p><h2>Rozdzia\\u0142 6 - Zmiana statutu i rozwi\\u0105zanie stowarzyszenia</h2><p>6.1. Uchwalenie statutu lub jego zmiana przez Walne Zebranie wymaga jednog\\u0142o\\u015bnego podj\\u0119cia decyzji, przy obecno\\u015bci co najmniej po\\u0142owy cz\\u0142onk\\u00f3w uprawnionych do g\\u0142osowania. Przepisu \\u00a718 Pt. 2 nie stosuje si\\u0119.<br/>6.2. Podj\\u0119cie uchwa\\u0142y o rozwi\\u0105zaniu Stowarzyszenia przez Walne Zebranie wymaga jednog\\u0142o\\u015bnego podj\\u0119cia decyzji, przy obecno\\u015bci co najmniej 2/3 cz\\u0142onk\\u00f3w uprawnionych do g\\u0142osowania.<br/>6.3. Wniosek o zmian\\u0119 statutu musi by\\u0107 zg\\u0142oszony na pi\\u015bmie, a tre\\u015b\\u0107 proponowanej zmiany podana w zawiadomieniu zwo\\u0142uj\\u0105cym Walne Zebranie.<br/>6.4. Podejmuj\\u0105c uchwa\\u0142\\u0119 o rozwi\\u0105zaniu Stowarzyszenia Walne Zebranie powo\\u0142uje Komisj\\u0119 Likwidacyjn\\u0105, kt\\u00f3ra przeprowadzi likwidacj\\u0119 stowarzyszenia. Walne Zebranie wskazuje tak\\u017ce fundacje i stowarzyszenia, maj\\u0105ce podobne cele statutowe do Stowarzyszenia Arte Unite, na rzecz kt\\u00f3rych przejdzie maj\\u0105tek stowarzyszenia, po wype\\u0142nieniu jego zobowi\\u0105za\\u0144.<br/>6.5. Majek Stowarzyszenia Arte Unite nie mo\\u017ce by\\u0107 w razie likwidacji, ani w \\u017cadnym innym wypadku rozdzielony pomi\\u0119dzy cz\\u0142onk\\u00f3w stowarzyszenia, ani osoby prywatne.</p>"}	\N	10	1
16	f	2021-03-03 08:08:13.851463+01	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "1001d16c-5336-4633-b24b-2501dc60eba9", "locale": 1, "title": "Statut Stowarzyszenia Arte Unite", "draft_title": "Statut Stowarzyszenia Arte Unite", "slug": "statut-stowarzyszenia-arte-unite", "content_type": 45, "live": true, "has_unpublished_changes": false, "url_path": "/home/statut-stowarzyszenia-arte-unite/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-03-03T07:00:48.757Z", "last_published_at": "2021-03-03T07:00:48.757Z", "latest_revision_created_at": "2021-03-03T07:00:48.726Z", "live_revision": 15, "alias_of": null, "statut": "<h2>Rozdzia\\u0142 1 - Postanowienia og\\u00f3lne</h2><p>1.1.\\u00a0Stowarzyszenie \\u201eArte Unite\\u201d, zwane w dalszej cz\\u0119\\u015bci stowarzyszeniem, jest organizacj\\u0105 dzia\\u0142aj\\u0105c\\u0105 na podstawie prawa o stowarzyszeniach oraz niniejszego statutu.<br/>1.2. Stowarzyszenie posiada osobowo\\u015b\\u0107 prawn\\u0105.<br/>1.3. Terenem dzia\\u0142ania stowarzyszenia jest obszar RP. Dla w\\u0142a\\u015bciwej realizacji cel\\u00f3w statutowych stowarzyszenie mo\\u017ce prowadzi\\u0107 dzia\\u0142alno\\u015b\\u0107 poza granicami RP, zgodnie z obowi\\u0105zuj\\u0105cym porz\\u0105dkiem prawnym um\\u00f3w mi\\u0119dzynarodowych. Siedzib\\u0105 Stowarzyszenia jest miasto Lubliniec.<br/>1.4. Stowarzyszenie mo\\u017ce by\\u0107 cz\\u0142onkiem krajowych i mi\\u0119dzynarodowych organizacji o podobnych celach dzia\\u0142ania. Przynale\\u017cno\\u015b\\u0107 Stowarzyszenia do innych organizacji mo\\u017ce nast\\u0105pi\\u0107 jedynie decyzj\\u0105 Walnego Zebrania podj\\u0119t\\u0105 jednog\\u0142o\\u015bnie.<br/>1.5. . Stowarzyszenie mo\\u017ce posiada\\u0107 terenowe jednostki organizacyjne. Terenowe jednostki organizacyjne mog\\u0105 podejmowa\\u0107 decyzje jednog\\u0142o\\u015bnie w sk\\u0142adzie min. 3 os\\u00f3b. Decyzje te mog\\u0105 by\\u0107 podejmowane w zakresie okre\\u015blonym przez regulamin wewn\\u0119trzny terenowej jednostki organizacyjnej.<br/>1.6.Wa\\u017cno\\u015b\\u0107 terenowej jednostki organizacyjnej okre\\u015bla uchwa\\u0142\\u0105 Walne Zebranie w momencie zatwierdzenia regulaminu wewn\\u0119trznego.<br/>1.7. Terenowe jednostki organizacyjne nie mog\\u0105 posiada\\u0107 osobowo\\u015bci prawnej.<br/>1.8. Stowarzyszenie opiera swoj\\u0105 dzia\\u0142alno\\u015b\\u0107 na spo\\u0142ecznej pracy cz\\u0142onk\\u00f3w. Przewiduje si\\u0119 mo\\u017cliwo\\u015b\\u0107 etatowego zatrudnienia pracownik\\u00f3w, dla prowadzenia dzia\\u0142alno\\u015bci statutowej i organizacyjnej.<br/>1.9.Stowarzyszenie mo\\u017ce u\\u017cywa\\u0107 piecz\\u0119ci i oznak zgodnie z obowi\\u0105zuj\\u0105cymi w tym zakresie przepisami.<br/>1.10.Czas trwania stowarzyszenia jest nieograniczony.<br/></p><h2>Rozdzia\\u0142 2 - Cele i \\u015brodki dzia\\u0142ania</h2><p>Celem stowarzyszenia jest ochrona Ziemi, poprzez rozwijanie sposob\\u00f3w \\u017cycia cz\\u0142owieka w zgodzie z natur\\u0105, bez zagro\\u017cenia dla \\u015brodowiska naturalnego i zaburzania r\\u00f3wnowagi ekosystemu z zachowaniem i odtwarzaniem naturalnego \\u015brodowiska \\u017cycia ro\\u015blin i zwierz\\u0105t.<br/>2.2 Celami szczeg\\u00f3\\u0142owymi Stowarzyszenia s\\u0105:<br/>1. Ochrona siedlisk ro\\u015blin i zwierz\\u0105t z zachowaniem i odtwarzaniem ich naturalnego \\u015brodowiska.<br/>2. Zapobieganie degradacji \\u015brodowiska.<br/>3. Wspieranie inicjatyw na rzecz ochrony praw zwierz\\u0105t.<br/>4. Promowanie i prowadzenie r\\u00f3\\u017cnorodnych form dzia\\u0142ania podnosz\\u0105cych \\u015bwiadomo\\u015b\\u0107 ekologiczn\\u0105 i artystyczn\\u0105.<br/>5. Zapobieganie marnotrawstwu surowc\\u00f3w oraz niew\\u0142a\\u015bciwemu zagospodarowaniu i utylizacji odpad\\u00f3w.<br/>6. Pobudzanie \\u015bwiadomo\\u015bci ekologicznej spo\\u0142ecze\\u0144stwa.<br/>7.Promocja rolnictwa przyjaznego dla \\u015brodowiska, oraz nieszkodz\\u0105cych cz\\u0142owiekowi metod przetwarzania \\u017cywno\\u015bci.<br/>8. Dzia\\u0142ania na rzecz bezdomnych, ubogich i potrzebuj\\u0105cych.<br/>9. Wspieranie wszelkich dzia\\u0142a\\u0144 zmierzaj\\u0105cych do wewn\\u0119trznego rozwoju cz\\u0142owieka bez wzgl\\u0119du na jego kondycj\\u0119 psychofizyczn\\u0105, wiek, pochodzenie i status spo\\u0142eczny.<br/>2.2 Stowarzyszenie realizuje swoje cele poprzez:<br/>1. Organizowanie spotka\\u0144, prelekcji, wystaw, koncert\\u00f3w, wyjazd\\u00f3w, oboz\\u00f3w szkoleniowych, imprez tematycznych.<br/>2. Zagospodarowanie nieruchomo\\u015bci pozostaj\\u0105cych w posiadaniu stowarzyszenia lub w jego zarz\\u0105dzaniu zgodnie z zasadami zr\\u00f3wnowa\\u017conego rozwoju ekologicznego, bez zagro\\u017cenia dla \\u015brodowiska naturalnego i zaburzania r\\u00f3wnowagi ekosystemu.<br/>3. Upraw\\u0119 ro\\u015blin, ze wskazaniem na rolnictwo biodynamiczne i permakultur\\u0119, oraz przetwarzanie p\\u0142od\\u00f3w rolnych bez u\\u017cycia \\u015brodk\\u00f3w chemicznych i konserwant\\u00f3w.<br/>4. Stosowanie na terenie nieruchomosci u\\u017cytkowanych przez stowarzyszenie, a tak\\u017ce promowanie na terenie tych nieruchomo\\u015bci i poza nimi technik budownictwa tradycyjnego i ekologicznego z u\\u017cyciem materia\\u0142\\u00f3w przyjaznych dla \\u015brodowiska.<br/>5. Tworzenie i prowadzenie o\\u015brodk\\u00f3w edukacyjnych, oraz dzia\\u0142ania edukacyjne w zakresie ochrony \\u015brodowiska.<br/>6. Wspieranie inicjatyw spo\\u0142ecznych na rzecz budowy oczyszczalni oraz wykorzystania \\u017ar\\u00f3de\\u0142 energii alternatywnej, oraz w\\u0142asciwego zagospodarowania odpad\\u00f3w..<br/>7. Prowadzenie interdyscyplinarnych studi\\u00f3w i bada\\u0144 zwi\\u0105zanych z dzia\\u0142alno\\u015bci\\u0105 stowarzyszenia.<br/>8. Prowadzenie szeroko poj\\u0119tego doradztwa oraz tworzenie bank\\u00f3w informacji o dzia\\u0142aniach spo\\u0142ecznych, naukowych i gospodarczych oraz technologiach s\\u0142u\\u017c\\u0105cych ochronie \\u015brodowiska.<br/>9. Promowanie tw\\u00f3rczo\\u015bci kulturalnej i artystycznej s\\u0142u\\u017c\\u0105cej integracji cz\\u0142owieka z Ziemi\\u0105.<br/>10. Prowadzenie dzia\\u0142alno\\u015bci wydawniczej i poligraficznej.<br/>11. Wsp\\u00f3\\u0142praca z instytucjami, organizacjami i osobami fizycznymi w kraju i zagranic\\u0105 posiadaj\\u0105cymi podobne cele dzia\\u0142ania.<br/>12. Udzia\\u0142 w post\\u0119powaniach administracyjnych dotycz\\u0105cych spraw zwi\\u0105zanych z ingerencj\\u0105 w \\u015brodowisko naturalne.<br/>13. Wyst\\u0119powanie do w\\u0142a\\u015bciwych wg kompetencji w\\u0142adz lokalnych, wojew\\u00f3dzkich i krajowych oraz s\\u0105d\\u00f3w z wnioskami o zastosowanie \\u015brodk\\u00f3w prowadz\\u0105cych do usuni\\u0119cia zaistnia\\u0142ego zagro\\u017cenia \\u015brodowiska, zaniechania naruszenia \\u015brodowiska oraz opiniowanie przedsi\\u0119wzi\\u0119\\u0107 z punktu widzenia ich zgodno\\u015bci z interesami ochrony przyrody i zdrowia ludno\\u015bci.<br/></p><h2>Rozdzia\\u0142 3 - Cz\\u0142onkowie oraz ich prawa i obowi\\u0105zki</h2><p>3.1. Cz\\u0142onkowie dziel\\u0105 si\\u0119 na zwyczajnych i wspieraj\\u0105cych.<br/>3.2. Cz\\u0142onkami zwyczajnymi mog\\u0105 by\\u0107:<br/>a. Osoby fizyczne, tak\\u017ce niepe\\u0142noletnie.<br/>b. Cudzoziemcy, tak\\u017ce ci niemaj\\u0105cy miejsca zamieszkania w Polsce<br/>3.3. Cz\\u0142onkiem wspieraj\\u0105cym mo\\u017ce by\\u0107 ka\\u017cdy ( osoba prawna lub fizyczna ) deklaruj\\u0105c\\u0105 czynne poparcie dla realizacji cel\\u00f3w stowarzyszenia.<br/>1. w swoim \\u017cyciu codziennym kieruje si\\u0119 warto\\u015bciami Zwi\\u0105zku,<br/>2. przez ci\\u0105g\\u0142y okres przynajmniej roku aktywnie uczestniczy\\u0142a w dzia\\u0142alno\\u015bci Zwi\\u0105zku jako cz\\u0142onek wspieraj\\u0105cy,<br/>3. z\\u0142o\\u017cy\\u0142a Zarz\\u0105dowi deklaracj\\u0119 cz\\u0142onkowsk\\u0105 wraz z pisemnymi rekomendacjami zawieraj\\u0105cymi por\\u0119czenie za t\\u0119 osob\\u0119, udzielonymi przez przynajmniej dw\\u00f3ch cz\\u0142onk\\u00f3w zwyczajnych.<br/>3.4. Cz\\u0142onkiem zwyczajnym stowarzyszenia mo\\u017ce by\\u0107 osoba fizyczna kt\\u00f3ra zostanie przyj\\u0119ta na Walnym Zebraniu na podstawie swojej pisemnej deklaracji o chch\\u0119ci przyst\\u0105pienia do stowarzyszenia.<br/>3.5. Cz\\u0142onek zwyczajny ma prawo:<br/>1. Wybiera\\u0107 i by\\u0107 wybieranym do w\\u0142adz stowarzyszenia.<br/>2. Uczestniczy\\u0107 z g\\u0142osem stanowi\\u0105cym w Walnym Zebraniu.<br/>3. Korzysta\\u0107 z pomocy stowarzyszenia w realizacji jego statutowych cel\\u00f3w.<br/>4.Bra\\u0107 udzia\\u0142 we wszystkich pracach i imprezach stowarzyszenia.<br/>5. Do pe\\u0142nej informacji o dzia\\u0142aniach organ\\u00f3w stowarzyszenia.<br/>6. Do bezp\\u0142atnego korzystania z urz\\u0105dze\\u0144 i pomocy stowarzyszenia.<br/>7. Do korzystania z nieruchomo\\u015bci i lokali mieszkalnych b\\u0119d\\u0105cych w\\u0142asno\\u015bci\\u0105 lub w posiadaniu stowarzyszenia zgodnie z ich przeznaczeniem.<br/>3.6. Do obowi\\u0105zk\\u00f3w cz\\u0142onka zwyczajnego nale\\u017cy:<br/>1. Przestrzeganie postanowie\\u0144 statutu, uchwa\\u0142 stowarzyszenia oraz regulamin\\u00f3w wewn\\u0119trznych jednostek terenowych.<br/>2. Wspieranie realizacji zada\\u0144 statutowych.<br/>3.Op\\u0142acanie sk\\u0142adek cz\\u0142onkowskich w wysoko\\u015bci ustalanej przez Walne Zebranie.<br/>3.7. Cz\\u0142onkiem wspieraj\\u0105cym stowarzyszenie mo\\u017ce by\\u0107 osoba fizyczna lub prawna zainteresowana merytoryczn\\u0105 dzia\\u0142alno\\u015bci\\u0105 stowarzyszenia, kt\\u00f3ra zostanie przyj\\u0119ta przez Walne Zebranie na podstawie swojej pisemnej deklaracji o ch\\u0119ci przyst\\u0105pienia.<br/>3.8. Cz\\u0142onek wspieraj\\u0105cy ma prawo uczestnictwa w walnym zgromadzeniu z g\\u0142osem doradczym<br/>3.9. Cz\\u0142onek wspieraj\\u0105cy ma prawo:<br/>1. Uczestniczy\\u0107 w Walnym Zebraniu z g\\u0142osem doradczym.<br/>2. Korzysta\\u0107 z pomocy stowarzyszenia w realizacji jego statutowych cel\\u00f3w.<br/>3. Bra\\u0107 udzia\\u0142 we wszystkich pracach i imprezach stowarzyszenia<br/>4. Do bezp\\u0142atnego korzystania z urz\\u0105dze\\u0144 i pomocy stowarzyszenia.<br/>3.9. Do obowi\\u0105zk\\u00f3w cz\\u0142onka wspieraj\\u0105cego nale\\u017cy:<br/>1. Przestrzeganie postanowie\\u0144 statutu, uchwa\\u0142 stowarzyszenia oraz regulamin\\u00f3w wewn\\u0119trznych jednostek terenowych.<br/>2. Wspieranie realizacji zada\\u0144 statutowych.\\u00a0<br/>3. Op\\u0142acanie sk\\u0142adek cz\\u0142onkowskich w wysoko\\u015bci ustalanej przez Walne Zebranie.<br/>3.10. Cz\\u0142onkostwo w stowarzyszeniu ustaje na skutek :<br/>1. Dobrowolnej rezygnacji z przynale\\u017cno\\u015bci do stowarzyszenia, zg\\u0142oszonej na pi\\u015bmie zarz\\u0105dowi, po uprzednim uregulowaniu wszelkich zobowi\\u0105za\\u0144 odno\\u015bnie stowarzyszenia.<br/>2. \\u015amierci cz\\u0142onka lub utraty osobowo\\u015bci prawnej przez cz\\u0142onka wspieraj\\u0105cego<br/>3. Wykluczenia uchwa\\u0142\\u0105 Walnego Zebrania z powodu nieprzestrzegania postanowie\\u0144 statutu, regulamin\\u00f3w i uchwa\\u0142 stowarzyszenia, dzia\\u0142ania na szkod\\u0119 stowarzyszenia.<br/>4. Wniosek o wykluczenie musi zosta\\u0107 z\\u0142o\\u017cony na pi\\u015bmie przez minimum trzy osoby b\\u0119d\\u0105ce cz\\u0142onkami zwyczajnymi stowarzyszenia. Walne Zebranie podejmuje decyzj\\u0119 o wykluczeniu z pomini\\u0119ciem w g\\u0142osowaniu osoby, kt\\u00f3rej ten wniosek dotyczy, oraz pozosta\\u0142ych os\\u00f3b, co do kt\\u00f3rych takie wnioski wp\\u0142yn\\u0119\\u0142y.<br/>5. Walne Zebranie jednorazowo mo\\u017ce rozpatrywa\\u0107 nie wi\\u0119cej ni\\u017c trzy takie wnioski.<br/>6. Osoba wykluczona lub skre\\u015blona ma prawo wniesienia odwo\\u0142ania do Walnego Zebrania w terminie 14 dni od daty dor\\u0119czenia uchwa\\u0142y na pi\\u015bmie. Walne Zebranie rozpatruje odwo\\u0142anie w czasie najbli\\u017cszych obrad. Decyzja Walnego Zebrania jest ostateczna.<br/></p><h2>Rozdzia\\u0142 4 - W\\u0142adze stowarzyszenia</h2><p>4.1. W\\u0142adzami stowarzyszenia s\\u0105:<br/>Walne Zgromadzenie, zarz\\u0105d, komisja rewizyjna.<br/>1. Walne Zebranie pe\\u0142ni funkcj\\u0119 uchwa\\u0142odawcz\\u0105 i jest najwy\\u017csz\\u0105 w\\u0142adz\\u0105 stowarzyszenia. Stanowi\\u0105 je wszyscy cz\\u0142onkowie zwyczajni. Wszystkie decyzje Walnego Zebrania podejmowane s\\u0105 w g\\u0142osowaniu jawnym jednog\\u0142o\\u015bnie, w obecno\\u015bci co najmniej 1/3 cz\\u0142onk\\u00f3w zwyczajnych.<br/>2. W przypadku braku kworum Walne Zebranie odbywa si\\u0119 w drugim terminie nie p\\u00f3\\u017aniej ni\\u017c 2 tygodnie po terminie pierwszym. W\\u00f3wczas decyzje Walnego Zebrania podejmowane s\\u0105 jednog\\u0142o\\u015bnie w obecno\\u015bci minimum 3 os\\u00f3b.<br/>3. Zarz\\u0105d i komisj\\u0119 rewizyjn\\u0105 wybiera Walne Zebranie z po\\u015br\\u00f3d swoich cz\\u0142onk\\u00f3w na 3 letni\\u0105 kadencj\\u0119 w g\\u0142osowaniu jawnym.<br/>4. W przypadku ust\\u0105pienia cz\\u0142onk\\u00f3w zarz\\u0105du lub komisji rewizyjnej w czasie kadencji, pomi\\u0119dzy obradami Walnego Zebrania, w\\u0142adzom tym przys\\u0142uguje prawo kooptacji spo\\u015br\\u00f3d cz\\u0142onk\\u00f3w Stowarzyszenia. W przypadku usuni\\u0119cia z organ\\u00f3w w\\u0142adz cz\\u0142onka zarz\\u0105du lub komisji rewizyjnej przez Walne Zebranie uzupe\\u0142nia ono sk\\u0142ad w\\u0142adz stowarzyszenia.<br/>5. Wniosek (w formie pisemnej) o usuni\\u0119cie z organ\\u00f3w w\\u0142adz cz\\u0142onka zarz\\u0105du lub komisji rewizyjnej z\\u0142o\\u017cy\\u0107 musz\\u0105 minimum trzej cz\\u0142onkowie zwyczajni. Walne Zebranie podejmuje decyzje z pomini\\u0119ciem g\\u0142osu osoby, kt\\u00f3rej wykluczenie jest przedmiotem wniosku.<br/>4.2. Zwyczajne Walne Zebranie odbywa si\\u0119 raz w roku w terminie okre\\u015blonym przez zarz\\u0105d. O terminie, miejscu i proponowanym porz\\u0105dku obrad cz\\u0142onk\\u00f3w powiadamia zarz\\u0105d co najmniej na 14 dni przed Walnym Zebraniem.<br/>4.3. Walne Zebranie zwo\\u0142uje zarz\\u0105d:<br/>1. z w\\u0142asnej inicjatywy,<br/>2. na wniosek komisji rewizyjnej,<br/>3. na pisemny wniosek 1/3 cz\\u0142onk\\u00f3w stowarzyszenia.<br/>4.4. Do kompetencji Walnego Zebrania nale\\u017cy:<br/>1. Uchwalanie og\\u00f3lnych kierunk\\u00f3w dzia\\u0142alno\\u015bci merytorycznej i finansowej stowarzyszenia.<br/>2. Wyb\\u00f3r i odwo\\u0142ywanie cz\\u0142onk\\u00f3w zarz\\u0105du komisji rewizyjnej.<br/>3. Przyjmowanie i wykluczanie cz\\u0142onk\\u00f3w.<br/>4. Podejmowanie uchwa\\u0142 w sprawach zmian statutu lub rozwi\\u0105zania si\\u0119 stowarzyszenia.<br/>3. Zatwierdzanie regulamin\\u00f3w wewn\\u0119trznych plac\\u00f3wek terenowych.<br/>3. Decydowanie o przynale\\u017cnosci stowarzyszenia do innych krajowych i miedzynarodowych organizacji o podobnych celach dzia\\u0142ania.<br/>3. Ustalanie wysoko\\u015bci sk\\u0142adek cz\\u0142onkowskich.<br/>4.5. Zarz\\u0105d kieruje dzia\\u0142aniami stowarzyszenia w oparciu o uchwa\\u0142y Walnego Zebrania. Zarz\\u0105d reprezentuje stowarzyszenie na zewn\\u0105trz. Zarz\\u0105d sk\\u0142ada si\\u0119 z prezesa i 2 cz\\u0142onk\\u00f3w zarz\\u0105du pe\\u0142ni\\u0105cych funkcj\\u0119 skarbnika i sekretarza.<br/>4.6.Do kompetencji zarz\\u0105du nale\\u017cy:\\u00a0<br/>1. Opracowywanie sposob\\u00f3w realizacji decyzji Walnego Zebrania oraz podejmowanie szczeg\\u00f3\\u0142owych dzia\\u0142a\\u0144, w tym zatrudnianie i zwalnianie pracownik\\u00f3w stowarzyszenia oraz okre\\u015blanie ich obowi\\u0105zk\\u00f3w i odpowiedzialno\\u015bci.<br/>2. Reprezentowane stowarzyszenia na zewn\\u0105trz i dzia\\u0142anie w jego imieniu.<br/>3. Sporz\\u0105dzanie sprawozda\\u0144 i rocznych bud\\u017cet\\u00f3w z dzia\\u0142alno\\u015bci stowarzyszenia, b\\u0119d\\u0105cych przedmiotem oceny komisji rewizyjnej.<br/>4. Zwo\\u0142ywanie Walnych Zebra\\u0144.<br/>5. Zarz\\u0105d podejmuje uchwa\\u0142y jednog\\u0142o\\u015bnie za zgod\\u0105 wszystkich cz\\u0142onk\\u00f3w zarz\\u0105du<br/>4.7.Negatywna ocena zarz\\u0105du przez Walne Zebranie na wniosek komisji rewizyjnej powoduje upomnienie zarz\\u0105du lub jego odwo\\u0142anie. Decyzje w sprawie odwo\\u0142ania Walne Zebranie podejmuje jednog\\u0142o\\u015bnie z wy\\u0142\\u0105czeniem cz\\u0142onk\\u00f3w zarz\\u0105du, kt\\u00f3rych uchwa\\u0142a dotyczy.\\u00a0<br/>4.8. Komisja Rewizyjna sk\\u0142ada si\\u0119 z 3 cz\\u0142onk\\u00f3w, spo\\u015br\\u00f3d kt\\u00f3rych Walne Zebranie wybiera przewodnicz\\u0105cego komisji.<br/>4.8a. Zarz\\u0105d stowarzyszenia sk\\u0142ada si\\u0119 z 3 cz\\u0142onk\\u00f3w, spo\\u015br\\u00f3d kt\\u00f3rych Walne Zebranie wybiera Prezesa Stowarzyszenia, Sekretarza Stowarzyszenia, Skarbnika Stowarzyszenia.<br/>4.9. Komisja Rewizyjna podejmuje uchwa\\u0142y jednog\\u0142o\\u015bnie przy obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w Komisji.<br/>4.10. Do kompetencji Komisji Rewizyjnej nale\\u017cy:<br/>1. Kontrola pracy zarz\\u0105du.<br/>2. Sk\\u0142adanie wniosk\\u00f3w o negatywn\\u0105 ocen\\u0119 zarz\\u0105du przed Walnym Zebraniem.<br/>3. Dokonywanie wyboru podmiotu, maj\\u0105cego zbada\\u0107 sprawozdania finansowe stowarzyszenia zgodnie z przepisami o rachunkowo\\u015bci.<br/>4. Zwo\\u0142ywanie Walnego Zebrania w razie bezczynno\\u015bci w tym zakresie zarz\\u0105du stowarzyszenia.<br/></p><h2>Rozdzia\\u0142 5 - Maj\\u0105tek stowarzyszenia\\u00a0</h2><p>Maj\\u0105tek stowarzyszenia stanowi\\u0105: nieruchomo\\u015bci, ruchomo\\u015bci i fundusze. Pochodzi on z nast\\u0119puj\\u0105cych \\u017ar\\u00f3de\\u0142:\\u00a0<br/>1. darowizny, sk\\u0142adki cz\\u0142onkowskie, spadki, zapisy, dotacje, subwencje dokonywane zgodnie z przepisami obowi\\u0105zuj\\u0105cego prawa,<br/>2. wp\\u0142ywy z maj\\u0105tku ruchomego i nieruchomego,<br/>3. odsetki od depozyt\\u00f3w kapita\\u0142owych,<br/>4. wp\\u0142ywy pochodz\\u0105ce z ofiarno\\u015bci publicznej<br/>5.2. Funduszami i maj\\u0105tkiem zarz\\u0105dza zarz\\u0105d zgodnie z wol\\u0105 Walnego Zebrania i pod kontrol\\u0105 komisji rewizyjnej.<br/>5.3. Do reprezentowania stowarzyszenia oraz do zaci\\u0105gania zobowi\\u0105za\\u0144 finansowych upowa\\u017cniony jest zarz\\u0105d stowarzyszenia. Do sk\\u0142adania o\\u015bwiadcze\\u0144 woli w imieniu Stowarzyszenia, do kwoty pieciu tysi\\u0119cy z\\u0142otych polskich wymagany jest podpis jednego cz\\u0142onka zarz\\u0105du. Dla kwoty przekraczajacej pi\\u0119\\u0107 tysi\\u0119cy z\\u0142otych polskich wymagane s\\u0105 podpisy dw\\u00f3ch cz\\u0142onk\\u00f3w zarz\\u0105du dzia\\u0142ajacych \\u0142\\u0105cznie. Do sk\\u0142adania o\\u015bwiadcze\\u0144 woli we wszystkich innych ni\\u017c majatkowe sprawach, upowa\\u017cniony jest Zarz\\u0105d Stowarzyszenia, przy czym wymagany jest podpis jednego cz\\u0142onka Zarz\\u0105du.<br/></p><h2>Rozdzia\\u0142 6 - Zmiana statutu i rozwi\\u0105zanie stowarzyszenia</h2><p>6.1. Uchwalenie statutu lub jego zmiana przez Walne Zebranie wymaga jednog\\u0142o\\u015bnego podj\\u0119cia decyzji, przy obecno\\u015bci co najmniej po\\u0142owy cz\\u0142onk\\u00f3w uprawnionych do g\\u0142osowania. Przepisu \\u00a718 Pt. 2 nie stosuje si\\u0119.<br/>6.2. Podj\\u0119cie uchwa\\u0142y o rozwi\\u0105zaniu Stowarzyszenia przez Walne Zebranie wymaga jednog\\u0142o\\u015bnego podj\\u0119cia decyzji, przy obecno\\u015bci co najmniej 2/3 cz\\u0142onk\\u00f3w uprawnionych do g\\u0142osowania.<br/>6.3. Wniosek o zmian\\u0119 statutu musi by\\u0107 zg\\u0142oszony na pi\\u015bmie, a tre\\u015b\\u0107 proponowanej zmiany podana w zawiadomieniu zwo\\u0142uj\\u0105cym Walne Zebranie.<br/>6.4. Podejmuj\\u0105c uchwa\\u0142\\u0119 o rozwi\\u0105zaniu Stowarzyszenia Walne Zebranie powo\\u0142uje Komisj\\u0119 Likwidacyjn\\u0105, kt\\u00f3ra przeprowadzi likwidacj\\u0119 stowarzyszenia. Walne Zebranie wskazuje tak\\u017ce fundacje i stowarzyszenia, maj\\u0105ce podobne cele statutowe do Stowarzyszenia Arte Unite, na rzecz kt\\u00f3rych przejdzie maj\\u0105tek stowarzyszenia, po wype\\u0142nieniu jego zobowi\\u0105za\\u0144.<br/>6.5. Majek Stowarzyszenia Arte Unite nie mo\\u017ce by\\u0107 w razie likwidacji, ani w \\u017cadnym innym wypadku rozdzielony pomi\\u0119dzy cz\\u0142onk\\u00f3w stowarzyszenia, ani osoby prywatne.</p>", "link_text": "Statut Ruchu Wolnej Ziemi", "link": "/static/statut.html"}	\N	10	1
18	f	2021-03-03 08:13:38.098174+01	{"pk": 10, "path": "000100010005", "depth": 3, "numchild": 0, "translation_key": "1001d16c-5336-4633-b24b-2501dc60eba9", "locale": 1, "title": "Statut Stowarzyszenia Arte Unite", "draft_title": "Statut Stowarzyszenia Arte Unite", "slug": "statut-stowarzyszenia-arte-unite", "content_type": 45, "live": true, "has_unpublished_changes": false, "url_path": "/home/statut-stowarzyszenia-arte-unite/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-03-03T07:00:48.757Z", "last_published_at": "2021-03-03T07:08:13.915Z", "latest_revision_created_at": "2021-03-03T07:08:13.851Z", "live_revision": 16, "alias_of": null, "statut": "<h2>Rozdzia\\u0142 1 - Postanowienia og\\u00f3lne</h2><p>1.1.\\u00a0Stowarzyszenie \\u201eArte Unite\\u201d, zwane w dalszej cz\\u0119\\u015bci stowarzyszeniem, jest organizacj\\u0105 dzia\\u0142aj\\u0105c\\u0105 na podstawie prawa o stowarzyszeniach oraz niniejszego statutu.<br/>1.2. Stowarzyszenie posiada osobowo\\u015b\\u0107 prawn\\u0105.<br/>1.3. Terenem dzia\\u0142ania stowarzyszenia jest obszar RP. Dla w\\u0142a\\u015bciwej realizacji cel\\u00f3w statutowych stowarzyszenie mo\\u017ce prowadzi\\u0107 dzia\\u0142alno\\u015b\\u0107 poza granicami RP, zgodnie z obowi\\u0105zuj\\u0105cym porz\\u0105dkiem prawnym um\\u00f3w mi\\u0119dzynarodowych. Siedzib\\u0105 Stowarzyszenia jest miasto Lubliniec.<br/>1.4. Stowarzyszenie mo\\u017ce by\\u0107 cz\\u0142onkiem krajowych i mi\\u0119dzynarodowych organizacji o podobnych celach dzia\\u0142ania. Przynale\\u017cno\\u015b\\u0107 Stowarzyszenia do innych organizacji mo\\u017ce nast\\u0105pi\\u0107 jedynie decyzj\\u0105 Walnego Zebrania podj\\u0119t\\u0105 jednog\\u0142o\\u015bnie.<br/>1.5. . Stowarzyszenie mo\\u017ce posiada\\u0107 terenowe jednostki organizacyjne. Terenowe jednostki organizacyjne mog\\u0105 podejmowa\\u0107 decyzje jednog\\u0142o\\u015bnie w sk\\u0142adzie min. 3 os\\u00f3b. Decyzje te mog\\u0105 by\\u0107 podejmowane w zakresie okre\\u015blonym przez regulamin wewn\\u0119trzny terenowej jednostki organizacyjnej.<br/>1.6.Wa\\u017cno\\u015b\\u0107 terenowej jednostki organizacyjnej okre\\u015bla uchwa\\u0142\\u0105 Walne Zebranie w momencie zatwierdzenia regulaminu wewn\\u0119trznego.<br/>1.7. Terenowe jednostki organizacyjne nie mog\\u0105 posiada\\u0107 osobowo\\u015bci prawnej.<br/>1.8. Stowarzyszenie opiera swoj\\u0105 dzia\\u0142alno\\u015b\\u0107 na spo\\u0142ecznej pracy cz\\u0142onk\\u00f3w. Przewiduje si\\u0119 mo\\u017cliwo\\u015b\\u0107 etatowego zatrudnienia pracownik\\u00f3w, dla prowadzenia dzia\\u0142alno\\u015bci statutowej i organizacyjnej.<br/>1.9.Stowarzyszenie mo\\u017ce u\\u017cywa\\u0107 piecz\\u0119ci i oznak zgodnie z obowi\\u0105zuj\\u0105cymi w tym zakresie przepisami.<br/>1.10.Czas trwania stowarzyszenia jest nieograniczony.<br/></p><h2>Rozdzia\\u0142 2 - Cele i \\u015brodki dzia\\u0142ania</h2><p>Celem stowarzyszenia jest ochrona Ziemi, poprzez rozwijanie sposob\\u00f3w \\u017cycia cz\\u0142owieka w zgodzie z natur\\u0105, bez zagro\\u017cenia dla \\u015brodowiska naturalnego i zaburzania r\\u00f3wnowagi ekosystemu z zachowaniem i odtwarzaniem naturalnego \\u015brodowiska \\u017cycia ro\\u015blin i zwierz\\u0105t.<br/>2.2 Celami szczeg\\u00f3\\u0142owymi Stowarzyszenia s\\u0105:<br/>1. Ochrona siedlisk ro\\u015blin i zwierz\\u0105t z zachowaniem i odtwarzaniem ich naturalnego \\u015brodowiska.<br/>2. Zapobieganie degradacji \\u015brodowiska.<br/>3. Wspieranie inicjatyw na rzecz ochrony praw zwierz\\u0105t.<br/>4. Promowanie i prowadzenie r\\u00f3\\u017cnorodnych form dzia\\u0142ania podnosz\\u0105cych \\u015bwiadomo\\u015b\\u0107 ekologiczn\\u0105 i artystyczn\\u0105.<br/>5. Zapobieganie marnotrawstwu surowc\\u00f3w oraz niew\\u0142a\\u015bciwemu zagospodarowaniu i utylizacji odpad\\u00f3w.<br/>6. Pobudzanie \\u015bwiadomo\\u015bci ekologicznej spo\\u0142ecze\\u0144stwa.<br/>7.Promocja rolnictwa przyjaznego dla \\u015brodowiska, oraz nieszkodz\\u0105cych cz\\u0142owiekowi metod przetwarzania \\u017cywno\\u015bci.<br/>8. Dzia\\u0142ania na rzecz bezdomnych, ubogich i potrzebuj\\u0105cych.<br/>9. Wspieranie wszelkich dzia\\u0142a\\u0144 zmierzaj\\u0105cych do wewn\\u0119trznego rozwoju cz\\u0142owieka bez wzgl\\u0119du na jego kondycj\\u0119 psychofizyczn\\u0105, wiek, pochodzenie i status spo\\u0142eczny.<br/>2.2 Stowarzyszenie realizuje swoje cele poprzez:<br/>1. Organizowanie spotka\\u0144, prelekcji, wystaw, koncert\\u00f3w, wyjazd\\u00f3w, oboz\\u00f3w szkoleniowych, imprez tematycznych.<br/>2. Zagospodarowanie nieruchomo\\u015bci pozostaj\\u0105cych w posiadaniu stowarzyszenia lub w jego zarz\\u0105dzaniu zgodnie z zasadami zr\\u00f3wnowa\\u017conego rozwoju ekologicznego, bez zagro\\u017cenia dla \\u015brodowiska naturalnego i zaburzania r\\u00f3wnowagi ekosystemu.<br/>3. Upraw\\u0119 ro\\u015blin, ze wskazaniem na rolnictwo biodynamiczne i permakultur\\u0119, oraz przetwarzanie p\\u0142od\\u00f3w rolnych bez u\\u017cycia \\u015brodk\\u00f3w chemicznych i konserwant\\u00f3w.<br/>4. Stosowanie na terenie nieruchomosci u\\u017cytkowanych przez stowarzyszenie, a tak\\u017ce promowanie na terenie tych nieruchomo\\u015bci i poza nimi technik budownictwa tradycyjnego i ekologicznego z u\\u017cyciem materia\\u0142\\u00f3w przyjaznych dla \\u015brodowiska.<br/>5. Tworzenie i prowadzenie o\\u015brodk\\u00f3w edukacyjnych, oraz dzia\\u0142ania edukacyjne w zakresie ochrony \\u015brodowiska.<br/>6. Wspieranie inicjatyw spo\\u0142ecznych na rzecz budowy oczyszczalni oraz wykorzystania \\u017ar\\u00f3de\\u0142 energii alternatywnej, oraz w\\u0142asciwego zagospodarowania odpad\\u00f3w..<br/>7. Prowadzenie interdyscyplinarnych studi\\u00f3w i bada\\u0144 zwi\\u0105zanych z dzia\\u0142alno\\u015bci\\u0105 stowarzyszenia.<br/>8. Prowadzenie szeroko poj\\u0119tego doradztwa oraz tworzenie bank\\u00f3w informacji o dzia\\u0142aniach spo\\u0142ecznych, naukowych i gospodarczych oraz technologiach s\\u0142u\\u017c\\u0105cych ochronie \\u015brodowiska.<br/>9. Promowanie tw\\u00f3rczo\\u015bci kulturalnej i artystycznej s\\u0142u\\u017c\\u0105cej integracji cz\\u0142owieka z Ziemi\\u0105.<br/>10. Prowadzenie dzia\\u0142alno\\u015bci wydawniczej i poligraficznej.<br/>11. Wsp\\u00f3\\u0142praca z instytucjami, organizacjami i osobami fizycznymi w kraju i zagranic\\u0105 posiadaj\\u0105cymi podobne cele dzia\\u0142ania.<br/>12. Udzia\\u0142 w post\\u0119powaniach administracyjnych dotycz\\u0105cych spraw zwi\\u0105zanych z ingerencj\\u0105 w \\u015brodowisko naturalne.<br/>13. Wyst\\u0119powanie do w\\u0142a\\u015bciwych wg kompetencji w\\u0142adz lokalnych, wojew\\u00f3dzkich i krajowych oraz s\\u0105d\\u00f3w z wnioskami o zastosowanie \\u015brodk\\u00f3w prowadz\\u0105cych do usuni\\u0119cia zaistnia\\u0142ego zagro\\u017cenia \\u015brodowiska, zaniechania naruszenia \\u015brodowiska oraz opiniowanie przedsi\\u0119wzi\\u0119\\u0107 z punktu widzenia ich zgodno\\u015bci z interesami ochrony przyrody i zdrowia ludno\\u015bci.<br/></p><h2>Rozdzia\\u0142 3 - Cz\\u0142onkowie oraz ich prawa i obowi\\u0105zki</h2><p>3.1. Cz\\u0142onkowie dziel\\u0105 si\\u0119 na zwyczajnych i wspieraj\\u0105cych.<br/>3.2. Cz\\u0142onkami zwyczajnymi mog\\u0105 by\\u0107:<br/>a. Osoby fizyczne, tak\\u017ce niepe\\u0142noletnie.<br/>b. Cudzoziemcy, tak\\u017ce ci niemaj\\u0105cy miejsca zamieszkania w Polsce<br/>3.3. Cz\\u0142onkiem wspieraj\\u0105cym mo\\u017ce by\\u0107 ka\\u017cdy ( osoba prawna lub fizyczna ) deklaruj\\u0105c\\u0105 czynne poparcie dla realizacji cel\\u00f3w stowarzyszenia.<br/>1. w swoim \\u017cyciu codziennym kieruje si\\u0119 warto\\u015bciami Zwi\\u0105zku,<br/>2. przez ci\\u0105g\\u0142y okres przynajmniej roku aktywnie uczestniczy\\u0142a w dzia\\u0142alno\\u015bci Zwi\\u0105zku jako cz\\u0142onek wspieraj\\u0105cy,<br/>3. z\\u0142o\\u017cy\\u0142a Zarz\\u0105dowi deklaracj\\u0119 cz\\u0142onkowsk\\u0105 wraz z pisemnymi rekomendacjami zawieraj\\u0105cymi por\\u0119czenie za t\\u0119 osob\\u0119, udzielonymi przez przynajmniej dw\\u00f3ch cz\\u0142onk\\u00f3w zwyczajnych.<br/>3.4. Cz\\u0142onkiem zwyczajnym stowarzyszenia mo\\u017ce by\\u0107 osoba fizyczna kt\\u00f3ra zostanie przyj\\u0119ta na Walnym Zebraniu na podstawie swojej pisemnej deklaracji o chch\\u0119ci przyst\\u0105pienia do stowarzyszenia.<br/>3.5. Cz\\u0142onek zwyczajny ma prawo:<br/>1. Wybiera\\u0107 i by\\u0107 wybieranym do w\\u0142adz stowarzyszenia.<br/>2. Uczestniczy\\u0107 z g\\u0142osem stanowi\\u0105cym w Walnym Zebraniu.<br/>3. Korzysta\\u0107 z pomocy stowarzyszenia w realizacji jego statutowych cel\\u00f3w.<br/>4.Bra\\u0107 udzia\\u0142 we wszystkich pracach i imprezach stowarzyszenia.<br/>5. Do pe\\u0142nej informacji o dzia\\u0142aniach organ\\u00f3w stowarzyszenia.<br/>6. Do bezp\\u0142atnego korzystania z urz\\u0105dze\\u0144 i pomocy stowarzyszenia.<br/>7. Do korzystania z nieruchomo\\u015bci i lokali mieszkalnych b\\u0119d\\u0105cych w\\u0142asno\\u015bci\\u0105 lub w posiadaniu stowarzyszenia zgodnie z ich przeznaczeniem.<br/>3.6. Do obowi\\u0105zk\\u00f3w cz\\u0142onka zwyczajnego nale\\u017cy:<br/>1. Przestrzeganie postanowie\\u0144 statutu, uchwa\\u0142 stowarzyszenia oraz regulamin\\u00f3w wewn\\u0119trznych jednostek terenowych.<br/>2. Wspieranie realizacji zada\\u0144 statutowych.<br/>3.Op\\u0142acanie sk\\u0142adek cz\\u0142onkowskich w wysoko\\u015bci ustalanej przez Walne Zebranie.<br/>3.7. Cz\\u0142onkiem wspieraj\\u0105cym stowarzyszenie mo\\u017ce by\\u0107 osoba fizyczna lub prawna zainteresowana merytoryczn\\u0105 dzia\\u0142alno\\u015bci\\u0105 stowarzyszenia, kt\\u00f3ra zostanie przyj\\u0119ta przez Walne Zebranie na podstawie swojej pisemnej deklaracji o ch\\u0119ci przyst\\u0105pienia.<br/>3.8. Cz\\u0142onek wspieraj\\u0105cy ma prawo uczestnictwa w walnym zgromadzeniu z g\\u0142osem doradczym<br/>3.9. Cz\\u0142onek wspieraj\\u0105cy ma prawo:<br/>1. Uczestniczy\\u0107 w Walnym Zebraniu z g\\u0142osem doradczym.<br/>2. Korzysta\\u0107 z pomocy stowarzyszenia w realizacji jego statutowych cel\\u00f3w.<br/>3. Bra\\u0107 udzia\\u0142 we wszystkich pracach i imprezach stowarzyszenia<br/>4. Do bezp\\u0142atnego korzystania z urz\\u0105dze\\u0144 i pomocy stowarzyszenia.<br/>3.9. Do obowi\\u0105zk\\u00f3w cz\\u0142onka wspieraj\\u0105cego nale\\u017cy:<br/>1. Przestrzeganie postanowie\\u0144 statutu, uchwa\\u0142 stowarzyszenia oraz regulamin\\u00f3w wewn\\u0119trznych jednostek terenowych.<br/>2. Wspieranie realizacji zada\\u0144 statutowych.\\u00a0<br/>3. Op\\u0142acanie sk\\u0142adek cz\\u0142onkowskich w wysoko\\u015bci ustalanej przez Walne Zebranie.<br/>3.10. Cz\\u0142onkostwo w stowarzyszeniu ustaje na skutek :<br/>1. Dobrowolnej rezygnacji z przynale\\u017cno\\u015bci do stowarzyszenia, zg\\u0142oszonej na pi\\u015bmie zarz\\u0105dowi, po uprzednim uregulowaniu wszelkich zobowi\\u0105za\\u0144 odno\\u015bnie stowarzyszenia.<br/>2. \\u015amierci cz\\u0142onka lub utraty osobowo\\u015bci prawnej przez cz\\u0142onka wspieraj\\u0105cego<br/>3. Wykluczenia uchwa\\u0142\\u0105 Walnego Zebrania z powodu nieprzestrzegania postanowie\\u0144 statutu, regulamin\\u00f3w i uchwa\\u0142 stowarzyszenia, dzia\\u0142ania na szkod\\u0119 stowarzyszenia.<br/>4. Wniosek o wykluczenie musi zosta\\u0107 z\\u0142o\\u017cony na pi\\u015bmie przez minimum trzy osoby b\\u0119d\\u0105ce cz\\u0142onkami zwyczajnymi stowarzyszenia. Walne Zebranie podejmuje decyzj\\u0119 o wykluczeniu z pomini\\u0119ciem w g\\u0142osowaniu osoby, kt\\u00f3rej ten wniosek dotyczy, oraz pozosta\\u0142ych os\\u00f3b, co do kt\\u00f3rych takie wnioski wp\\u0142yn\\u0119\\u0142y.<br/>5. Walne Zebranie jednorazowo mo\\u017ce rozpatrywa\\u0107 nie wi\\u0119cej ni\\u017c trzy takie wnioski.<br/>6. Osoba wykluczona lub skre\\u015blona ma prawo wniesienia odwo\\u0142ania do Walnego Zebrania w terminie 14 dni od daty dor\\u0119czenia uchwa\\u0142y na pi\\u015bmie. Walne Zebranie rozpatruje odwo\\u0142anie w czasie najbli\\u017cszych obrad. Decyzja Walnego Zebrania jest ostateczna.<br/></p><h2>Rozdzia\\u0142 4 - W\\u0142adze stowarzyszenia</h2><p>4.1. W\\u0142adzami stowarzyszenia s\\u0105:<br/>Walne Zgromadzenie, zarz\\u0105d, komisja rewizyjna.<br/>1. Walne Zebranie pe\\u0142ni funkcj\\u0119 uchwa\\u0142odawcz\\u0105 i jest najwy\\u017csz\\u0105 w\\u0142adz\\u0105 stowarzyszenia. Stanowi\\u0105 je wszyscy cz\\u0142onkowie zwyczajni. Wszystkie decyzje Walnego Zebrania podejmowane s\\u0105 w g\\u0142osowaniu jawnym jednog\\u0142o\\u015bnie, w obecno\\u015bci co najmniej 1/3 cz\\u0142onk\\u00f3w zwyczajnych.<br/>2. W przypadku braku kworum Walne Zebranie odbywa si\\u0119 w drugim terminie nie p\\u00f3\\u017aniej ni\\u017c 2 tygodnie po terminie pierwszym. W\\u00f3wczas decyzje Walnego Zebrania podejmowane s\\u0105 jednog\\u0142o\\u015bnie w obecno\\u015bci minimum 3 os\\u00f3b.<br/>3. Zarz\\u0105d i komisj\\u0119 rewizyjn\\u0105 wybiera Walne Zebranie z po\\u015br\\u00f3d swoich cz\\u0142onk\\u00f3w na 3 letni\\u0105 kadencj\\u0119 w g\\u0142osowaniu jawnym.<br/>4. W przypadku ust\\u0105pienia cz\\u0142onk\\u00f3w zarz\\u0105du lub komisji rewizyjnej w czasie kadencji, pomi\\u0119dzy obradami Walnego Zebrania, w\\u0142adzom tym przys\\u0142uguje prawo kooptacji spo\\u015br\\u00f3d cz\\u0142onk\\u00f3w Stowarzyszenia. W przypadku usuni\\u0119cia z organ\\u00f3w w\\u0142adz cz\\u0142onka zarz\\u0105du lub komisji rewizyjnej przez Walne Zebranie uzupe\\u0142nia ono sk\\u0142ad w\\u0142adz stowarzyszenia.<br/>5. Wniosek (w formie pisemnej) o usuni\\u0119cie z organ\\u00f3w w\\u0142adz cz\\u0142onka zarz\\u0105du lub komisji rewizyjnej z\\u0142o\\u017cy\\u0107 musz\\u0105 minimum trzej cz\\u0142onkowie zwyczajni. Walne Zebranie podejmuje decyzje z pomini\\u0119ciem g\\u0142osu osoby, kt\\u00f3rej wykluczenie jest przedmiotem wniosku.<br/>4.2. Zwyczajne Walne Zebranie odbywa si\\u0119 raz w roku w terminie okre\\u015blonym przez zarz\\u0105d. O terminie, miejscu i proponowanym porz\\u0105dku obrad cz\\u0142onk\\u00f3w powiadamia zarz\\u0105d co najmniej na 14 dni przed Walnym Zebraniem.<br/>4.3. Walne Zebranie zwo\\u0142uje zarz\\u0105d:<br/>1. z w\\u0142asnej inicjatywy,<br/>2. na wniosek komisji rewizyjnej,<br/>3. na pisemny wniosek 1/3 cz\\u0142onk\\u00f3w stowarzyszenia.<br/>4.4. Do kompetencji Walnego Zebrania nale\\u017cy:<br/>1. Uchwalanie og\\u00f3lnych kierunk\\u00f3w dzia\\u0142alno\\u015bci merytorycznej i finansowej stowarzyszenia.<br/>2. Wyb\\u00f3r i odwo\\u0142ywanie cz\\u0142onk\\u00f3w zarz\\u0105du komisji rewizyjnej.<br/>3. Przyjmowanie i wykluczanie cz\\u0142onk\\u00f3w.<br/>4. Podejmowanie uchwa\\u0142 w sprawach zmian statutu lub rozwi\\u0105zania si\\u0119 stowarzyszenia.<br/>3. Zatwierdzanie regulamin\\u00f3w wewn\\u0119trznych plac\\u00f3wek terenowych.<br/>3. Decydowanie o przynale\\u017cnosci stowarzyszenia do innych krajowych i miedzynarodowych organizacji o podobnych celach dzia\\u0142ania.<br/>3. Ustalanie wysoko\\u015bci sk\\u0142adek cz\\u0142onkowskich.<br/>4.5. Zarz\\u0105d kieruje dzia\\u0142aniami stowarzyszenia w oparciu o uchwa\\u0142y Walnego Zebrania. Zarz\\u0105d reprezentuje stowarzyszenie na zewn\\u0105trz. Zarz\\u0105d sk\\u0142ada si\\u0119 z prezesa i 2 cz\\u0142onk\\u00f3w zarz\\u0105du pe\\u0142ni\\u0105cych funkcj\\u0119 skarbnika i sekretarza.<br/>4.6.Do kompetencji zarz\\u0105du nale\\u017cy:\\u00a0<br/>1. Opracowywanie sposob\\u00f3w realizacji decyzji Walnego Zebrania oraz podejmowanie szczeg\\u00f3\\u0142owych dzia\\u0142a\\u0144, w tym zatrudnianie i zwalnianie pracownik\\u00f3w stowarzyszenia oraz okre\\u015blanie ich obowi\\u0105zk\\u00f3w i odpowiedzialno\\u015bci.<br/>2. Reprezentowane stowarzyszenia na zewn\\u0105trz i dzia\\u0142anie w jego imieniu.<br/>3. Sporz\\u0105dzanie sprawozda\\u0144 i rocznych bud\\u017cet\\u00f3w z dzia\\u0142alno\\u015bci stowarzyszenia, b\\u0119d\\u0105cych przedmiotem oceny komisji rewizyjnej.<br/>4. Zwo\\u0142ywanie Walnych Zebra\\u0144.<br/>5. Zarz\\u0105d podejmuje uchwa\\u0142y jednog\\u0142o\\u015bnie za zgod\\u0105 wszystkich cz\\u0142onk\\u00f3w zarz\\u0105du<br/>4.7.Negatywna ocena zarz\\u0105du przez Walne Zebranie na wniosek komisji rewizyjnej powoduje upomnienie zarz\\u0105du lub jego odwo\\u0142anie. Decyzje w sprawie odwo\\u0142ania Walne Zebranie podejmuje jednog\\u0142o\\u015bnie z wy\\u0142\\u0105czeniem cz\\u0142onk\\u00f3w zarz\\u0105du, kt\\u00f3rych uchwa\\u0142a dotyczy.\\u00a0<br/>4.8. Komisja Rewizyjna sk\\u0142ada si\\u0119 z 3 cz\\u0142onk\\u00f3w, spo\\u015br\\u00f3d kt\\u00f3rych Walne Zebranie wybiera przewodnicz\\u0105cego komisji.<br/>4.8a. Zarz\\u0105d stowarzyszenia sk\\u0142ada si\\u0119 z 3 cz\\u0142onk\\u00f3w, spo\\u015br\\u00f3d kt\\u00f3rych Walne Zebranie wybiera Prezesa Stowarzyszenia, Sekretarza Stowarzyszenia, Skarbnika Stowarzyszenia.<br/>4.9. Komisja Rewizyjna podejmuje uchwa\\u0142y jednog\\u0142o\\u015bnie przy obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w Komisji.<br/>4.10. Do kompetencji Komisji Rewizyjnej nale\\u017cy:<br/>1. Kontrola pracy zarz\\u0105du.<br/>2. Sk\\u0142adanie wniosk\\u00f3w o negatywn\\u0105 ocen\\u0119 zarz\\u0105du przed Walnym Zebraniem.<br/>3. Dokonywanie wyboru podmiotu, maj\\u0105cego zbada\\u0107 sprawozdania finansowe stowarzyszenia zgodnie z przepisami o rachunkowo\\u015bci.<br/>4. Zwo\\u0142ywanie Walnego Zebrania w razie bezczynno\\u015bci w tym zakresie zarz\\u0105du stowarzyszenia.<br/></p><h2>Rozdzia\\u0142 5 - Maj\\u0105tek stowarzyszenia\\u00a0</h2><p>Maj\\u0105tek stowarzyszenia stanowi\\u0105: nieruchomo\\u015bci, ruchomo\\u015bci i fundusze. Pochodzi on z nast\\u0119puj\\u0105cych \\u017ar\\u00f3de\\u0142:\\u00a0<br/>1. darowizny, sk\\u0142adki cz\\u0142onkowskie, spadki, zapisy, dotacje, subwencje dokonywane zgodnie z przepisami obowi\\u0105zuj\\u0105cego prawa,<br/>2. wp\\u0142ywy z maj\\u0105tku ruchomego i nieruchomego,<br/>3. odsetki od depozyt\\u00f3w kapita\\u0142owych,<br/>4. wp\\u0142ywy pochodz\\u0105ce z ofiarno\\u015bci publicznej<br/>5.2. Funduszami i maj\\u0105tkiem zarz\\u0105dza zarz\\u0105d zgodnie z wol\\u0105 Walnego Zebrania i pod kontrol\\u0105 komisji rewizyjnej.<br/>5.3. Do reprezentowania stowarzyszenia oraz do zaci\\u0105gania zobowi\\u0105za\\u0144 finansowych upowa\\u017cniony jest zarz\\u0105d stowarzyszenia. Do sk\\u0142adania o\\u015bwiadcze\\u0144 woli w imieniu Stowarzyszenia, do kwoty pieciu tysi\\u0119cy z\\u0142otych polskich wymagany jest podpis jednego cz\\u0142onka zarz\\u0105du. Dla kwoty przekraczajacej pi\\u0119\\u0107 tysi\\u0119cy z\\u0142otych polskich wymagane s\\u0105 podpisy dw\\u00f3ch cz\\u0142onk\\u00f3w zarz\\u0105du dzia\\u0142ajacych \\u0142\\u0105cznie. Do sk\\u0142adania o\\u015bwiadcze\\u0144 woli we wszystkich innych ni\\u017c majatkowe sprawach, upowa\\u017cniony jest Zarz\\u0105d Stowarzyszenia, przy czym wymagany jest podpis jednego cz\\u0142onka Zarz\\u0105du.<br/></p><h2>Rozdzia\\u0142 6 - Zmiana statutu i rozwi\\u0105zanie stowarzyszenia</h2><p>6.1. Uchwalenie statutu lub jego zmiana przez Walne Zebranie wymaga jednog\\u0142o\\u015bnego podj\\u0119cia decyzji, przy obecno\\u015bci co najmniej po\\u0142owy cz\\u0142onk\\u00f3w uprawnionych do g\\u0142osowania. Przepisu \\u00a718 Pt. 2 nie stosuje si\\u0119.<br/>6.2. Podj\\u0119cie uchwa\\u0142y o rozwi\\u0105zaniu Stowarzyszenia przez Walne Zebranie wymaga jednog\\u0142o\\u015bnego podj\\u0119cia decyzji, przy obecno\\u015bci co najmniej 2/3 cz\\u0142onk\\u00f3w uprawnionych do g\\u0142osowania.<br/>6.3. Wniosek o zmian\\u0119 statutu musi by\\u0107 zg\\u0142oszony na pi\\u015bmie, a tre\\u015b\\u0107 proponowanej zmiany podana w zawiadomieniu zwo\\u0142uj\\u0105cym Walne Zebranie.<br/>6.4. Podejmuj\\u0105c uchwa\\u0142\\u0119 o rozwi\\u0105zaniu Stowarzyszenia Walne Zebranie powo\\u0142uje Komisj\\u0119 Likwidacyjn\\u0105, kt\\u00f3ra przeprowadzi likwidacj\\u0119 stowarzyszenia. Walne Zebranie wskazuje tak\\u017ce fundacje i stowarzyszenia, maj\\u0105ce podobne cele statutowe do Stowarzyszenia Arte Unite, na rzecz kt\\u00f3rych przejdzie maj\\u0105tek stowarzyszenia, po wype\\u0142nieniu jego zobowi\\u0105za\\u0144.<br/>6.5. Majek Stowarzyszenia Arte Unite nie mo\\u017ce by\\u0107 w razie likwidacji, ani w \\u017cadnym innym wypadku rozdzielony pomi\\u0119dzy cz\\u0142onk\\u00f3w stowarzyszenia, ani osoby prywatne.</p>", "link_text": "Statut Ruchu Wolnej Ziemi", "link": "/statut-zwi\\u0105zku-wolnej-ziemi"}	\N	10	1
35	f	2021-03-06 11:53:50.419407+01	{"pk": 11, "path": "000100010006", "depth": 3, "numchild": 0, "translation_key": "f21449e8-dcf9-4b32-9694-5464f37a5d5f", "locale": 1, "title": "Statut Zwi\\u0105zku Wolnej Ziemi", "draft_title": "Statut Zwi\\u0105zku Wolnej Ziemi", "slug": "statut-zwi\\u0105zku-wolnej-ziemi", "content_type": 45, "live": true, "has_unpublished_changes": false, "url_path": "/home/statut-zwi\\u0105zku-wolnej-ziemi/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-03-03T07:13:01.983Z", "last_published_at": "2021-03-03T07:13:01.983Z", "latest_revision_created_at": "2021-03-03T07:13:01.921Z", "live_revision": 17, "alias_of": null, "statut": "<p></p><h2>Preambu\\u0142a</h2><p>My, ludzie tworz\\u0105cy Zwi\\u0105zek Wolnej Ziemi, uznajemy si\\u0119 za opiekun\\u00f3w i stra\\u017cnik\\u00f3w Ziemi, a w szczeg\\u00f3lno\\u015bci teren\\u00f3w, na kt\\u00f3rych \\u017cyjemy. D\\u0105\\u017cymy do rozwoju \\u015bwiadomo\\u015bci poprzez odtworzenie naturalnej relacji cz\\u0142owieka z nasz\\u0105 Planet\\u0105. Przyjmujemy, \\u017ce b\\u0119d\\u0105c r\\u00f3wnymi wobec Ziemi, na kt\\u00f3rej \\u017cyjemy, jeste\\u015bmy r\\u00f3wnie\\u017c r\\u00f3wni wobec siebie i ca\\u0142ej Przyrody. O\\u015bwiadczamy, \\u017ce Ziemia i ca\\u0142e \\u017cycie na Ziemi stanowi\\u0105 dla nas wielk\\u0105 warto\\u015b\\u0107 przez sam fakt swego istnienia. Uznajemy, \\u017ce naszym zadaniem jest ochrona Ziemi, naszego Domu i Miejsca w Kosmosie. <br/>Uznajemy, \\u017ce Ziemia ma takie samo prawo do istnienia i uszanowania jej bytu, jakie maj\\u0105 wszystkie istoty. <br/>Pragniemy tworzy\\u0107 wsp\\u00f3lnoty, w kt\\u00f3rych b\\u0119dziemy razem \\u017cyli, wsp\\u00f3\\u0142pracowali ze sob\\u0105 i uczyli si\\u0119 od siebie dla dobra nas samych i ca\\u0142ego \\u017bycia.<br/>Pragniemy, aby wszyscy ludzie \\u017cyli w harmonii ze sob\\u0105 i z ca\\u0142\\u0105 Przyrod\\u0105, szanuj\\u0105c i chroni\\u0105c Ziemi\\u0119.</p><p></p><h2>Rozdzia\\u0142 1 - Postanowienia og\\u00f3lne</h2><p>1.1.\\u00a0 Zwi\\u0105zek Wolnej Ziemi, zwany dalej \\u201eZwi\\u0105zkiem\\u201d, jest stowarzyszeniem dzia\\u0142aj\\u0105cym w oparciu o przepisy powszechnie obowi\\u0105zuj\\u0105cego prawa oraz postanowienia niniejszego statutu.<br/> 1.2. Zwi\\u0105zek jest dobrowolnym, trwa\\u0142ym zrzeszeniem o celach niezarobkowych.<br/> 1.3. Zwi\\u0105zek mo\\u017ce pos\\u0142ugiwa\\u0107 si\\u0119 skr\\u00f3tem: \\u201eZWZ\\u201d, a tak\\u017ce t\\u0142umaczeniem swojej nazwy na j\\u0119zyki obce.<br/> 1.4. Siedzib\\u0105 Zwi\\u0105zku jest miasto Lubliniec\\u00a0<br/> 1.5. Zwi\\u0105zek prowadzi dzia\\u0142alno\\u015b\\u0107 na terenie ca\\u0142ej Polski i poza jej granicami.<br/> 1.6. Zwi\\u0105zek opiera swoj\\u0105 dzia\\u0142alno\\u015b\\u0107 na pracy spo\\u0142ecznej cz\\u0142onk\\u00f3w.<br/> 1.7. Zwi\\u0105zek mo\\u017ce nale\\u017ce\\u0107 do organizacji mi\\u0119dzynarodowych, je\\u017celi przynale\\u017cno\\u015b\\u0107 taka nie narusza zobowi\\u0105za\\u0144 wynikaj\\u0105cych z um\\u00f3w mi\\u0119dzynarodowych, kt\\u00f3rych Rzeczpospolita Polska jest stron\\u0105, oraz przyst\\u0119powa\\u0107 do zwi\\u0105zk\\u00f3w stowarzysze\\u0144.<br/> 1.8. Zwi\\u0105zek mo\\u017ce posiada\\u0107 terenowe jednostki organizacyjne.<br/> 1.9. Zwi\\u0105zek jest zawi\\u0105zany na czas nieograniczony.\\u00a0<br/></p><p></p><h2>Rozdzia\\u0142 2 - Cele i zasady dzia\\u0142ania</h2><p>2.1. Podstawowym celem Zwi\\u0105zku jest dzia\\u0142anie dla dobra Ziemi i wszystkich mieszkaj\\u0105cych na niej istot poprzez tworzenie obszar\\u00f3w Wolnej Ziemi oraz zak\\u0142adanie i rozw\\u00f3j wsp\\u00f3lnot intencjonalnych \\u017cyj\\u0105cych w harmonii z Natur\\u0105.<br/> 2.2 Celami szczeg\\u00f3\\u0142owymi Zwi\\u0105zku s\\u0105:<br/> 1. inicjowanie, promocja i rozw\\u00f3j wsp\\u00f3lnot intencjonalnych, spo\\u0142eczno\\u015bci lokalnych i kooperatyw d\\u0105\\u017c\\u0105cych do zwi\\u0119kszenia stopnia swej samowystarczalno\\u015bci oraz minimalizacji w\\u0142asnego \\u015bladu ekologicznego, w spos\\u00f3b umo\\u017cliwiaj\\u0105cy trwanie i rozw\\u00f3j powy\\u017cszych inicjatyw przez wiele pokole\\u0144,<br/> 2. tworzenie, poszukiwanie, testowanie, wdra\\u017canie i promocja rozwi\\u0105za\\u0144 i technologii u\\u0142atwiaj\\u0105cych wsp\\u00f3lnotom intencjonalnym, spo\\u0142eczno\\u015bciom lokalnym i kooperatywom osi\\u0105gni\\u0119cie samowystarczalno\\u015bci we wszelkich mo\\u017cliwych aspektach,<br/> 3. tworzenie wsp\\u00f3\\u0142pracuj\\u0105cej sieci miejsc Wolnej Ziemi,<br/> 4. dzia\\u0142anie na rzecz kszta\\u0142towania stanu prawnego korzystnego dla tworzenia i rozwoju wsp\\u00f3lnot intencjonalnych, spo\\u0142eczno\\u015bci lokalnych i kooperatyw,<br/> 5. ochrona i odtwarzanie \\u015brodowiska przyrodniczego, siedlisk ro\\u015blin i zwierz\\u0105t oraz bior\\u00f3\\u017cnorodno\\u015bci,<br/> 6. tworzenie rezerwat\\u00f3w Wolnej Ziemi oraz miejsc bogatych przyrodniczo, w kt\\u00f3rych ludzie nie ingeruj\\u0105 w Ziemi\\u0119 i zasiedlaj\\u0105c\\u0105 j\\u0105 Przyrod\\u0119,<br/> 7. tworzenie i wspieranie inicjatyw i program\\u00f3w spo\\u0142ecznych maj\\u0105cych na celu rozwi\\u0105zanie egzystencjalnych, ekonomicznych, socjalnych, ekologicznych i zdrowotnych problem\\u00f3w wsp\\u00f3\\u0142czesnego spo\\u0142ecze\\u0144stwa,<br/> 8. tworzenie i wdra\\u017canie ekologicznych rozwi\\u0105za\\u0144 poprawiaj\\u0105cych efektywno\\u015b\\u0107 ogrodnicz\\u0105 i rolnicz\\u0105,<br/> 9. wspieranie i promocja\\u00a0 zr\\u00f3wnowa\\u017conego rozwoju, gospodarki ekologicznej, kooperatyzmu, ekonomii wsp\\u00f3\\u0142dzielenia,<br/> 10. promowanie idei i warto\\u015bci Zwi\\u0105zku w\\u015br\\u00f3d og\\u00f3\\u0142u spo\\u0142ecze\\u0144stwa,<br/> 11. wsp\\u00f3\\u0142praca z innymi organizacjami o podobnych celach dzia\\u0142ania.<br/> 2.3. Zwi\\u0105zek mo\\u017ce realizowa\\u0107 swoje cele poprzez:<br/> 1. dzia\\u0142alno\\u015b\\u0107 informacyjn\\u0105,<br/> 2. tworzenie i prowadzenie stron internetowych,<br/> 3. organizacj\\u0119 spotka\\u0144, wyk\\u0142ad\\u00f3w i prelekcji,<br/> 4. opracowywanie materia\\u0142\\u00f3w edukacyjnych, r\\u00f3wnie\\u017c w wersji elektronicznej,<br/> 5. pozyskiwanie nieruchomo\\u015bci,\\u00a0<br/> 6. gospodarowanie nieruchomo\\u015bciami nale\\u017c\\u0105cymi do Zwi\\u0105zku lub przez niego zarz\\u0105dzanymi, zgodnie z zasadami zr\\u00f3wnowa\\u017conego rozwoju, bez zagro\\u017cenia dla \\u015brodowiska naturalnego i zaburzania r\\u00f3wnowagi ekosystemu,<br/> 7. preferowanie i promowanie na terenie nieruchomo\\u015bci u\\u017cytkowanych przez Zwi\\u0105zek i poza nimi technik budownictwa tradycyjnego i naturalnego z u\\u017cyciem materia\\u0142\\u00f3w przyjaznych dla \\u015brodowiska,<br/> 8. wsp\\u00f3\\u0142prac\\u0119 z organami pa\\u0144stwowymi, organizacjami pozarz\\u0105dowymi i innymi osobami prawnymi lub fizycznymi; wsp\\u00f3\\u0142praca ta mo\\u017ce mie\\u0107 charakter wsp\\u00f3\\u0142dzia\\u0142ania, wsparcia organizacyjnego, informacyjnego, finansowego, rzeczowego lub inny,<br/> 9. rzecznictwo, organizowanie konsultacji spo\\u0142ecznych, petycji i interwencji, a tak\\u017ce sk\\u0142adanie wniosk\\u00f3w i skarg do instytucji publicznych,<br/> 10. prowadzenie program\\u00f3w i akcji spo\\u0142eczno\\u015bciowego zbierania pieni\\u0119dzy, a tak\\u017ce innych dzia\\u0142a\\u0144 maj\\u0105cych na celu zbieranie \\u015brodk\\u00f3w finansowych,<br/> 11. wspieranie wsp\\u00f3\\u0142pracy mi\\u0119dzy wsp\\u00f3lnotami intencjonalnymi<br/>, 12. gromadzenie i udost\\u0119pnianie informacji na temat wsp\\u00f3lnot intencjonalnych i ich dzia\\u0142a\\u0144, a tak\\u017ce informacji przydatnych w tworzeniu i rozwoju wsp\\u00f3lnot intencjonalnych,<br/> 13. tworzenie przestrzeni dla dialogu i wymiany do\\u015bwiadcze\\u0144 mi\\u0119dzy wsp\\u00f3lnotami intencjonalnymi,<br/> 14. prowadzenie dzia\\u0142alno\\u015bci rolniczej i ogrodniczej w spos\\u00f3b jak najbardziej zgodny z Natur\\u0105, w tym upraw\\u0119 ziemi, tworzenie ogrod\\u00f3w, sianie i sadzenie ro\\u015blin,<br/> 15. stosowanie naturalnych \\u015brodk\\u00f3w i metod poprawiaj\\u0105cych sk\\u0142ad i kondycj\\u0119 gleby, a tak\\u017ce chroni\\u0105cych zdrowie ro\\u015blin.<br/> 2.4. Zwi\\u0105zek kieruje si\\u0119 w swojej dzia\\u0142alno\\u015bci otwarto\\u015bci\\u0105 na wsp\\u00f3\\u0142prac\\u0119 z innymi podmiotami, w tym z organizacjami pozarz\\u0105dowymi i instytucjami publicznymi.<br/> 2.5. Zwi\\u0105zek mo\\u017ce zak\\u0142ada\\u0107 i uczestniczy\\u0107 w sp\\u00f3\\u0142kach polskich lub zagranicznych.<br/> 2.6. Ca\\u0142o\\u015b\\u0107 dochod\\u00f3w uzyskiwanych przez Zwi\\u0105zek jest przeznaczana wy\\u0142\\u0105cznie na dzia\\u0142alno\\u015b\\u0107 statutow\\u0105.<br/> 2.7. Zwi\\u0105zek nie prowadzi dzia\\u0142alno\\u015bci gospodarczej.<br/> 2.8. Zwi\\u0105zek nie prowadzi odp\\u0142atnej dzia\\u0142alno\\u015bci po\\u017cytku publicznego.<br/></p><p></p><h2>Rozdzia\\u0142 3 - Cz\\u0142onkowie Zwi\\u0105zku</h2><p>3.1. Cz\\u0142onkowie Zwi\\u0105zku dziel\\u0105 si\\u0119 na:<br/> 1. cz\\u0142onk\\u00f3w zwyczajnych,<br/> 2. cz\\u0142onk\\u00f3w wspieraj\\u0105cych.<br/> 3.2. Cz\\u0142onkiem zwyczajnym Zwi\\u0105zku mo\\u017ce by\\u0107 osoba fizyczna posiadaj\\u0105ca pe\\u0142n\\u0105 zdolno\\u015b\\u0107 do czynno\\u015bci prawnych, kt\\u00f3ra:<br/> 1. w swoim \\u017cyciu codziennym kieruje si\\u0119 warto\\u015bciami Zwi\\u0105zku,<br/> 2. przez ci\\u0105g\\u0142y okres przynajmniej roku aktywnie uczestniczy\\u0142a w dzia\\u0142alno\\u015bci Zwi\\u0105zku jako cz\\u0142onek wspieraj\\u0105cy,<br/> 3. z\\u0142o\\u017cy\\u0142a Zarz\\u0105dowi deklaracj\\u0119 cz\\u0142onkowsk\\u0105 wraz z pisemnymi rekomendacjami zawieraj\\u0105cymi por\\u0119czenie za t\\u0119 osob\\u0119, udzielonymi przez przynajmniej dw\\u00f3ch cz\\u0142onk\\u00f3w zwyczajnych.<br/> 3.3. Przyj\\u0119cia nowych cz\\u0142onk\\u00f3w zwyczajnych dokonuje Walne Zebranie w drodze konsensusu na zasadzie przyzwolenia.<br/> 3.4. Delegaci Autonomicznych Jednostek Terenowych, kt\\u00f3rzy nie zostali uprzednio przyj\\u0119ci do grona cz\\u0142onk\\u00f3w zwyczajnych, staj\\u0105 si\\u0119 cz\\u0142onkami zwyczajnymi tylko i wy\\u0142\\u0105cznie na czas pe\\u0142nienia przez ka\\u017cdego z nich funkcji Delegata Autonomicznej Jednostki Terenowej.<br/> 3.5. Cz\\u0142onkiem wspieraj\\u0105cym Zwi\\u0105zku mo\\u017ce by\\u0107 osoba fizyczna lub prawna zainteresowana dzia\\u0142alno\\u015bci\\u0105 Zwi\\u0105zku, kt\\u00f3ra:<br/> 1. zadeklarowa\\u0142a na rzecz Zwi\\u0105zku pomoc materialn\\u0105, intelektualn\\u0105, fizyczn\\u0105 lub inn\\u0105,<br/> 2. z\\u0142o\\u017cy\\u0142a Zarz\\u0105dowi deklaracj\\u0119 cz\\u0142onkowsk\\u0105.<br/> 3.6. Osoba prawna b\\u0119d\\u0105ca cz\\u0142onkiem wspieraj\\u0105cym Zwi\\u0105zku dzia\\u0142a w nim przez swojego przedstawiciela.<br/> 3.7. Przyj\\u0119cia nowych cz\\u0142onk\\u00f3w wspieraj\\u0105cych dokonuje Zarz\\u0105d uchwa\\u0142\\u0105 podj\\u0119t\\u0105 w ci\\u0105gu dw\\u00f3ch miesi\\u0119cy od daty z\\u0142o\\u017cenia deklaracji.<br/> 3.8. Cz\\u0142onek zwyczajny ma prawo:<br/> 1. wybiera\\u0107 i by\\u0107 wybieranym do organ\\u00f3w Zwi\\u0105zku,<br/> 2. uczestniczy\\u0107 z g\\u0142osem stanowi\\u0105cym w Walnym Zebraniu,<br/> 3. uzyskiwa\\u0107 pe\\u0142n\\u0105 informacj\\u0119 na temat dzia\\u0142alno\\u015bci organ\\u00f3w Zwi\\u0105zku,<br/> 4. zg\\u0142asza\\u0107 Walnemu Zebraniu, Zarz\\u0105dowi i Komisji Rewizyjnej wnioski, zapytania i postulaty dotycz\\u0105ce dzia\\u0142alno\\u015bci Zwi\\u0105zku,<br/> 5. korzysta\\u0107 z pomocy i zaplecza Zwi\\u0105zku w podejmowanych dzia\\u0142aniach zgodnych z celami statutowymi Zwi\\u0105zku,<br/> 6. korzysta\\u0107 z maj\\u0105tku Zwi\\u0105zku wed\\u0142ug zasad opisanych w wewn\\u0119trznych regulaminach,<br/> 7. bra\\u0107 udzia\\u0142 w pracach i przedsi\\u0119wzi\\u0119ciach Zwi\\u0105zku.<br/> 3.9. Cz\\u0142onek zwyczajny obowi\\u0105zany jest do:<br/> 1. udzia\\u0142u w dzia\\u0142alno\\u015bci Zwi\\u0105zku i realizacji jego cel\\u00f3w,<br/> 2. podejmowania decyzji w sprawach Zwi\\u0105zku,\\u00a0<br/> 3. przestrzegania powszechnie obowi\\u0105zuj\\u0105cych przepis\\u00f3w prawa zwi\\u0105zanych z dzia\\u0142alno\\u015bci\\u0105 Zwi\\u0105zku, a tak\\u017ce statutu Zwi\\u0105zku, uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku oraz regulamin\\u00f3w Jednostek Terenowych na terenach u\\u017cytkowanych przez te Jednostki,\\u00a0<br/> 4. uczestnictwa w miar\\u0119 mo\\u017cliwo\\u015bci w ka\\u017cdym Walnym Zebraniu,<br/> 5. regularnego wspierania Zwi\\u0105zku poprzez op\\u0142acanie sk\\u0142adek lub w innej dobrowolnie uzgodnionej z Zarz\\u0105dem formie pomocy materialnej, intelektualnej lub fizycznej,<br/> 6. dbania o mienie Zwi\\u0105zku.<br/> 3.10. Cz\\u0142onek wspieraj\\u0105cy ma prawo:<br/> 1. uczestniczy\\u0107 z g\\u0142osem doradczym w Walnym Zebraniu,<br/> 2. uzyskiwa\\u0107 pe\\u0142n\\u0105 informacj\\u0119 na temat dzia\\u0142alno\\u015bci organ\\u00f3w Zwi\\u0105zku,<br/> 3. zg\\u0142asza\\u0107 Walnemu Zebraniu, Zarz\\u0105dowi i Komisji Rewizyjnej wnioski, zapytania i postulaty dotycz\\u0105ce dzia\\u0142alno\\u015bci Zwi\\u0105zku,<br/> 4. korzysta\\u0107 z pomocy i zaplecza Zwi\\u0105zku w podejmowanych dzia\\u0142aniach zgodnych z celami statutowymi Zwi\\u0105zku,<br/> 5. korzysta\\u0107 z maj\\u0105tku Zwi\\u0105zku wed\\u0142ug zasad opisanych w regulaminach wewn\\u0119trznych,<br/> 6. bra\\u0107 udzia\\u0142 w pracach i przedsi\\u0119wzi\\u0119ciach Zwi\\u0105zku.<br/> 3.11. Cz\\u0142onek wspieraj\\u0105cy obowi\\u0105zany jest do:<br/> 1. przestrzegania powszechnie obowi\\u0105zuj\\u0105cych przepis\\u00f3w prawa zwi\\u0105zanych z dzia\\u0142alno\\u015bci\\u0105 Zwi\\u0105zku, a tak\\u017ce statutu Zwi\\u0105zku, uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku oraz regulamin\\u00f3w Jednostek Terenowych na terenach u\\u017cytkowanych przez te Jednostki.<br/> 2. regularnego wspierania Zwi\\u0105zku poprzez op\\u0142acanie sk\\u0142adek lub w innej dobrowolnie uzgodnionej z Zarz\\u0105dem formie pomocy materialnej, intelektualnej lub fizycznej,<br/> 3. dbania o mienie Zwi\\u0105zku.<br/> 3.12. Zarz\\u0105d drog\\u0105 uchwa\\u0142y mo\\u017ce okresowo lub trwale zmieni\\u0107 status cz\\u0142onka zwyczajnego na status cz\\u0142onka wspieraj\\u0105cego, wy\\u0142\\u0105cznie na pro\\u015bb\\u0119 osoby zainteresowanej zmian\\u0105 swojego statusu.<br/></p><p></p><h2>Rozdzia\\u0142 4 - Zawieszenie i utrata cz\\u0142onkostwa\\u00a0</h2><p>4.1. Zawieszenie cz\\u0142onkostwa skutkuje:<br/> 1. brakiem mo\\u017cliwo\\u015bci uczestniczenia z g\\u0142osem stanowi\\u0105cym w Walnym Zebraniu,<br/> 2. brakiem mo\\u017cliwo\\u015bci wybierania i bycia wybieranym do organ\\u00f3w Zwi\\u0105zku.\\u00a0<br/> 4.2. Cz\\u0142onkostwo w Zwi\\u0105zku mo\\u017ce w drodze uchwa\\u0142y Zarz\\u0105du lub Walnego Zebrania zosta\\u0107 ze skutkiem natychmiastowym czasowo zawieszone na okres od 6 do 12 miesi\\u0119cy na skutek:\\u00a0<br/> 1. dobrowolnej czasowej rezygnacji z aktywnego udzia\\u0142u w pracach Zwi\\u0105zku, zg\\u0142oszonej Zarz\\u0105dowi na pi\\u015bmie,<br/> 2. braku dobrowolnego zaanga\\u017cowania w pracach i dzia\\u0142alno\\u015bci Zwi\\u0105zku przez okres minimum roku,<br/> 3. naruszenia postanowie\\u0144 statutu Zwi\\u0105zku, uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku lub regulamin\\u00f3w Jednostek Terenowych na terenach u\\u017cytkowanych przez te Jednostki,<br/> 4. dzia\\u0142ania na szkod\\u0119 Zwi\\u0105zku,<br/> 5. zachowania godz\\u0105cego w dobre imi\\u0119 Zwi\\u0105zku.<br/> 4.3. Po up\\u0142ywie okre\\u015blonego w uchwale okresu zawieszenia cz\\u0142onkostwa w Zwi\\u0105zku, Zarz\\u0105d lub Walne Zebranie mo\\u017ce w przypadku dalszego istnienia przyczyny okre\\u015blonej w ust. 4.2. pkt. 1-5 podj\\u0105\\u0107 decyzj\\u0119 o przed\\u0142u\\u017ceniu okresu zawieszenia cz\\u0142onkostwa w Zwi\\u0105zku o dalszy okres od 6 do 12 miesi\\u0119cy. W przypadku gdy przyczyna zawieszenia cz\\u0142onkostwa w Zwi\\u0105zku przestanie istnie\\u0107, Zarz\\u0105d lub Walne Zebranie mo\\u017ce z w\\u0142asnej inicjatywy lub na wniosek osoby, kt\\u00f3rej cz\\u0142onkostwo w Zwi\\u0105zku zosta\\u0142o zawieszone, skr\\u00f3ci\\u0107 okres zawieszenia cz\\u0142onkostwa w Zwi\\u0105zku.\\u00a0<br/> 4.4. Od uchwa\\u0142y Zarz\\u0105du stwierdzaj\\u0105cej zawieszenie cz\\u0142onkostwa w Zwi\\u0105zku lub przed\\u0142u\\u017cenie okresu zawieszenia cz\\u0142onkowi, kt\\u00f3rego uchwa\\u0142a dotyczy, przys\\u0142uguje odwo\\u0142anie do Walnego Zebrania. Od uchwa\\u0142y Walnego Zebrania stwierdzaj\\u0105cej zawieszenie cz\\u0142onkostwa w Zwi\\u0105zku lub przed\\u0142u\\u017cenie okresu zawieszenia cz\\u0142onkowi, kt\\u00f3rego uchwa\\u0142a dotyczy, przys\\u0142uguje wniosek o ponowne rozpatrzenie sprawy przez Walne Zebranie.<br/> 4.5. Odwo\\u0142anie oraz wniosek o ponowne rozpatrzenie sprawy, o kt\\u00f3rych mowa w ust. 4.4, sk\\u0142ada si\\u0119 pisemnie za po\\u015brednictwem Zarz\\u0105du w terminie miesi\\u0105ca od daty otrzymania informacji o zawieszeniu. Walne Zebranie rozpatruje odwo\\u0142anie w czasie najbli\\u017cszych obrad, a wniosek o ponowne rozpatrzenie sprawy - w czasie najbli\\u017cszych obrad odbywaj\\u0105cych si\\u0119 po obradach, w czasie kt\\u00f3rych zosta\\u0142a podj\\u0119ta decyzja o zawieszeniu cz\\u0142onkostwa w Zwi\\u0105zku lub przed\\u0142u\\u017ceniu okresu zawieszenia. Decyzja Walnego Zebrania w tej sprawie jest ostateczna. Cz\\u0142onek Zwi\\u0105zku, kt\\u00f3rego dotyczy decyzja w sprawie zawieszenia cz\\u0142onkostwa lub przed\\u0142u\\u017cenia okresu zawieszenia, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad Walnego Zebrania.\\u00a0<br/> 4.6. Utrata cz\\u0142onkostwa w Zwi\\u0105zku nast\\u0119puje na skutek:\\u00a0<br/> 1. pisemnej rezygnacji cz\\u0142onka Zwi\\u0105zku z\\u0142o\\u017conej Zarz\\u0105dowi,\\u00a0<br/> 2. \\u015bmierci cz\\u0142onka Zwi\\u0105zku,<br/> 3. utraty osobowo\\u015bci prawnej przez osob\\u0119 prawn\\u0105 b\\u0119d\\u0105c\\u0105 cz\\u0142onkiem wspieraj\\u0105cym Zwi\\u0105zku,<br/> 4. wykluczenia ze Zwi\\u0105zku z przyczyn okre\\u015blonych w ust. 4.2 pkt. 2-5.<br/> 4.7. Wykluczenie ze Zwi\\u0105zku nast\\u0119puje w drodze uchwa\\u0142y Walnego Zebrania podj\\u0119tej po minimum rocznym okresie zawieszenia cz\\u0142onka, kt\\u00f3rego dotyczy.<br/></p><p></p><h2>Rozdzia\\u0142 5 - Organy Zwi\\u0105zku\\u00a0</h2><p>5.1. Organami Zwi\\u0105zku s\\u0105:\\u00a0<br/> 1. Walne Zebranie,\\u00a0<br/> 2. Zarz\\u0105d,\\u00a0<br/> 3. Komisja Rewizyjna.<br/> 5.2. Cz\\u0142onkowie organ\\u00f3w Zwi\\u0105zku pe\\u0142ni\\u0105 swoje funkcje bezp\\u0142atnie.<br/> 5.3. Osoba pe\\u0142ni\\u0105ca funkcj\\u0119 cz\\u0142onka Zarz\\u0105du lub cz\\u0142onka Komisji Rewizyjnej mo\\u017ce by\\u0107 pracownikiem lub wsp\\u00f3\\u0142pracownikiem Zwi\\u0105zku, je\\u015bli zakres \\u015bwiadczonych przez ni\\u0105 odp\\u0142atnie us\\u0142ug lub pracy nie wkracza w oczywisty spos\\u00f3b w zakres funkcji cz\\u0142onka Zarz\\u0105du lub cz\\u0142onka Komisji Rewizyjnej.<br/> 5.4. Podstawowym modelem podejmowania decyzji realizowanym przez organy Zwi\\u0105zku jest konsensus oparty na zasadzie przyzwolenia, zgodnie z kt\\u00f3rym decyzje organ\\u00f3w Zwi\\u0105zku mog\\u0105 zosta\\u0107 podj\\u0119te wtedy, gdy \\u017caden ze zgromadzonych na zebraniu cz\\u0142onk\\u00f3w organu nie zg\\u0142osi swojego sprzeciwu wobec podj\\u0119cia danej decyzji.\\u00a0<br/> 5.5. Osoba zg\\u0142aszaj\\u0105ca sprzeciw powinna poda\\u0107 merytoryczne uzasadnienie swojego sprzeciwu, a tak\\u017ce argumenty przemawiaj\\u0105ce na rzecz racji tego sprzeciwu. W przeciwnym razie sprzeciw mo\\u017ce nie zosta\\u0107 uwzgl\\u0119dniony przez pozosta\\u0142ych cz\\u0142onk\\u00f3w organu.\\u00a0<br/> 5.6. Uzasadnienie sprzeciwu i argumenty przemawiaj\\u0105ce na rzecz racji sprzeciwu mog\\u0105\\u00a0 zosta\\u0107 poddane dyskusji, w wyniku kt\\u00f3rej osoba, kt\\u00f3ra zg\\u0142osi\\u0142a sprzeciw, mo\\u017ce go wycofa\\u0107.\\u00a0<br/> 5.7. W przypadku zg\\u0142oszenia sprzeciwu osoba, kt\\u00f3ra zg\\u0142osi\\u0142a sprzeciw, a tak\\u017ce inne osoby obecne na zebraniu mog\\u0105 zaproponowa\\u0107 inne rozwi\\u0105zanie, kt\\u00f3re mo\\u017ce zosta\\u0107 przyj\\u0119te zamiast wcze\\u015bniej proponowanej decyzji.\\u00a0<br/> 5.8. W przypadku przyj\\u0119cia przez organy Zwi\\u0105zku zasad umo\\u017cliwiaj\\u0105cych bezpieczny i gwarantuj\\u0105cy zachowanie bezpiecze\\u0144stwa i integralno\\u015bci danych spos\\u00f3b podejmowania decyzji przez Internet, wszelkie decyzje mog\\u0105 by\\u0107 podejmowane tak\\u017ce drog\\u0105 elektroniczn\\u0105.<br/> 5.9. Cz\\u0142onkowie organ\\u00f3w Zwi\\u0105zku s\\u0105 wybierani i odwo\\u0142ywani przez Walne Zebranie.<br/> 5.10. Cz\\u0142onkowie organ\\u00f3w Zwi\\u0105zku trac\\u0105 mandat w przypadku:<br/> 1. z\\u0142o\\u017cenia rezygnacji,<br/> 2. odwo\\u0142ania przez Walne Zebranie,<br/> 3. utraty pe\\u0142nej zdolno\\u015bci do czynno\\u015bci prawnych,<br/> 4. \\u015bmierci,<br/> 5. zawieszenia lub pozbawienia cz\\u0142onkostwa w Zwi\\u0105zku, w przypadkach okre\\u015blonych w niniejszym statucie.<br/> 5.11. Uzupe\\u0142nienia sk\\u0142adu osobowego organ\\u00f3w Zwi\\u0105zku dokonuje si\\u0119 w drodze wyboru przez Walne Zebranie lub poprzez kooptacj\\u0119 z grona cz\\u0142onk\\u00f3w zwyczajnych lub wspieraj\\u0105cych Zwi\\u0105zku i za ich zgod\\u0105. Walne Zebranie dokonuje weryfikacji decyzji o kooptacji w czasie swoich najbli\\u017cszych obrad. W przypadku niezaakceptowania tej decyzji, Walne Zebranie mo\\u017ce samemu uzupe\\u0142ni\\u0107 sk\\u0142ad osobowy organu.\\u00a0<br/> 5.12. W przypadku sporu pomi\\u0119dzy cz\\u0142onkami, organami, Jednostkami Terenowymi lub organami Jednostek Terenowych Zwi\\u0105zku, obie strony sporu mog\\u0105 zwr\\u00f3ci\\u0107 si\\u0119 do wsp\\u00f3lnie wybranego mediatora o pomoc w rozwi\\u0105zaniu sporu. Zarz\\u0105d mo\\u017ce prowadzi\\u0107 list\\u0119 os\\u00f3b, kt\\u00f3re oferuj\\u0105 swoj\\u0105 pomoc w rozwi\\u0105zywaniu spor\\u00f3w. Je\\u017celi pomoc mediatora nie przyczyni si\\u0119 do rozwi\\u0105zania sporu w odpowiednim czasie, ka\\u017cda ze stron mo\\u017ce zwr\\u00f3ci\\u0107 si\\u0119 do Walnego Zebrania o pomoc w rozwi\\u0105zaniu sporu. W takim przypadku Walne Zebranie mo\\u017ce podj\\u0105\\u0107 uchwa\\u0142\\u0119 rozstrzygaj\\u0105c\\u0105 sp\\u00f3r, kt\\u00f3ra obowi\\u0105zuje obie strony. Strony nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu wobec uchwa\\u0142y Walnego Zebrania rozstrzygaj\\u0105cej sp\\u00f3r.<br/></p><p></p><h2>Rozdzia\\u0142 6 - Walne Zebranie</h2><p>6.1. Walne Zebranie jest najwy\\u017cszym organem Zwi\\u0105zku.<br/> 6.2. W Walnym Zebraniu bior\\u0105 udzia\\u0142 cz\\u0142onkowie zwyczajni z g\\u0142osem stanowi\\u0105cym oraz cz\\u0142onkowie wspieraj\\u0105cy z g\\u0142osem doradczym.<br/> 6.3. Walne Zebranie obraduje wed\\u0142ug uchwalonego przez siebie porz\\u0105dku obrad.<br/> 6.4. Walne Zebranie mo\\u017ce uchwala\\u0107 sw\\u00f3j regulamin dotycz\\u0105cy obrad.<br/> 6.5. Walne Zebranie mo\\u017ce by\\u0107 zwyczajne lub nadzwyczajne.<br/> 6.6. Zwyczajne Walne Zebranie zwo\\u0142uje Zarz\\u0105d przynajmniej raz w roku jako zebranie sprawozdawcze, tak aby mog\\u0142o si\\u0119 ono odby\\u0107 do ko\\u0144ca czerwca danego roku.\\u00a0<br/> 6.7. Nadzwyczajne Walne Zebranie zwo\\u0142uje Zarz\\u0105d z w\\u0142asnej inicjatywy, na wniosek Komisji Rewizyjnej lub na wniosek co najmniej 1/3 og\\u00f3lnej liczby cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku.<br/> 6.8. Wnosz\\u0105cy o zwo\\u0142anie Nadzwyczajnego Walnego Zebrania s\\u0105 obowi\\u0105zani z\\u0142o\\u017cy\\u0107 Zarz\\u0105dowi wniosek z podaniem proponowanego porz\\u0105dku obrad, kt\\u00f3ry Zarz\\u0105d mo\\u017ce uzupe\\u0142ni\\u0107.<br/> 6.9. Nadzwyczajne Walne Zebranie powinno by\\u0107 zwo\\u0142ane w terminie umo\\u017cliwiaj\\u0105cym odbycie si\\u0119 Walnego Zebrania, nie p\\u00f3\\u017aniej jednak ni\\u017c w terminie 2 miesi\\u0119cy od dnia otrzymania przez Zarz\\u0105d stosownego wniosku.<br/> 6.10. W przypadku niezwo\\u0142ania Walnego Zebrania w terminach okre\\u015blonych w ust. 6.6 i 6.9 niniejszego rozdzia\\u0142u Walne Zebranie mo\\u017ce r\\u00f3wnie\\u017c zwo\\u0142a\\u0107 Komisja Rewizyjna.<br/> 6.11. Organ zwo\\u0142uj\\u0105cy Walne Zebranie zawiadamia wszystkich cz\\u0142onk\\u00f3w Zwi\\u0105zku o jego terminie, miejscu i proponowanym porz\\u0105dku obrad co najmniej na 14 dni przed terminem Walnego Zebrania przy wykorzystaniu przynajmniej 2 \\u015brodk\\u00f3w porozumiewania si\\u0119 na odleg\\u0142o\\u015b\\u0107 (w tym mailowo).<br/> 6.12. Obrady Walnego Zebrania mog\\u0105 by\\u0107 prowadzone przez koordynatora Walnego Zebrania, wybieranego i odwo\\u0142ywanego przez Walne Zebranie w drodze konsensusu na uzasadniony wniosek jednego z cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku. Koordynator Walnego Zebrania mo\\u017ce dba\\u0107 o przestrzeganie ustalonego porz\\u0105dku obrad i kolejno\\u015bci zabierania g\\u0142osu, a tak\\u017ce o to, aby wypowiedzi uczestnik\\u00f3w Walnego Zebrania mie\\u015bci\\u0142y si\\u0119 w ustalonych tematach i ramach czasowych.\\u00a0<br/> 6.13. Walne Zebranie mo\\u017ce podejmowa\\u0107 uchwa\\u0142y w obecno\\u015bci co najmniej \\u2153 cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku.<br/> 6.14. W przypadku braku kworum Walne Zebranie jest zwo\\u0142ywane w drugim terminie, nie p\\u00f3\\u017aniej ni\\u017c miesi\\u0105c po terminie pierwszym. W takim wypadku uchwa\\u0142y mog\\u0105 by\\u0107 podejmowane w obecno\\u015bci co najmniej trzech cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku. Powy\\u017csze postanowienie nie odnosi si\\u0119 do uchwa\\u0142, o kt\\u00f3rych mowa w rozdzia\\u0142ach 16 i 17.<br/> 6.15. Proponowany porz\\u0105dek obrad Walnego Zebrania ustala organ zwo\\u0142uj\\u0105cy to zebranie.<br/> 6.16. Cz\\u0142onkowie Zwi\\u0105zku mog\\u0105 bra\\u0107 udzia\\u0142 w Walnym Zebraniu osobi\\u015bcie. Niedopuszczalny jest udzia\\u0142 przez pe\\u0142nomocnika lub przy u\\u017cyciu pe\\u0142nomocnictwa do wykonywania prawa g\\u0142osu.<br/> 6.17. W Walnym Zebraniu mog\\u0105 bra\\u0107 udzia\\u0142 z g\\u0142osem doradczym osoby zaproszone przez co najmniej jednego z cz\\u0142onk\\u00f3w Zwi\\u0105zku.<br/> 6.18. Do kompetencji Walnego Zebrania nale\\u017c\\u0105:<br/> 1. uchwalanie kierunk\\u00f3w i program\\u00f3w dzia\\u0142alno\\u015bci Zwi\\u0105zku,<br/> 2. decydowanie o zmianie statutu Zwi\\u0105zku,<br/> 3. zatwierdzanie regulamin\\u00f3w organ\\u00f3w Zwi\\u0105zku i Jednostek Terenowych,<br/> 4. powo\\u0142ywanie Jednostek Terenowych,<br/> 5. wyb\\u00f3r i odwo\\u0142ywanie cz\\u0142onk\\u00f3w Zarz\\u0105du i Komisji Rewizyjnej,<br/> 6. ocena dzia\\u0142alno\\u015bci organ\\u00f3w Zwi\\u0105zku,<br/> 7. zatwierdzanie sprawozda\\u0144 finansowych i merytorycznych Zarz\\u0105du oraz sprawozda\\u0144 Komisji Rewizyjnej,\\u00a0<br/> 8. podejmowanie uchwa\\u0142 w sprawach wniesionych pod obrady przez Zarz\\u0105d, Komisj\\u0119 Rewizyjn\\u0105 lub cz\\u0142onka Zwi\\u0105zku, o ile nie s\\u0105 one zastrze\\u017cone do kompetencji innych organ\\u00f3w Zwi\\u0105zku postanowieniami niniejszego statutu lub przepisami powszechnie obowi\\u0105zuj\\u0105cego prawa,<br/> 9. rozpatrywanie odwo\\u0142a\\u0144 od uchwa\\u0142 Zarz\\u0105du,<br/> 10. podejmowanie uchwa\\u0142 w sprawie przyst\\u0119powania Zwi\\u0105zku do organizacji krajowych lub mi\\u0119dzynarodowych,<br/> 11. podejmowanie uchwa\\u0142 w sprawie rozwi\\u0105zania Zwi\\u0105zku i przeznaczenia jego maj\\u0105tku,<br/> 12. ustalanie zasad p\\u0142atno\\u015bci oraz wysoko\\u015bci sk\\u0142adek cz\\u0142onkowskich,<br/> 13. podejmowanie uchwa\\u0142 w innych sprawach zastrze\\u017conych do kompetencji Walnego Zebrania postanowieniami niniejszego statutu lub przepisami powszechnie obowi\\u0105zuj\\u0105cego prawa.<br/></p><p></p><h2>Rozdzia\\u0142 7 - Zarz\\u0105d</h2><p>7.1. Zarz\\u0105d kieruje dzia\\u0142aniami Zwi\\u0105zku w oparciu o uchwa\\u0142y Walnego Zebrania i reprezentuje Zwi\\u0105zek na zewn\\u0105trz.<br/> 7.2. Sk\\u0142ad Zarz\\u0105du stanowi\\u0105 cz\\u0142onkowie Zarz\\u0105du w nieparzystej liczbie 3, 5 lub 7, powo\\u0142ani przez Walne Zebranie na czas nieoznaczony.<br/> 7.3. Cz\\u0142onkami Zarz\\u0105du nie mog\\u0105 by\\u0107 osoby, kt\\u00f3re by\\u0142y skazane prawomocnym wyrokiem za przest\\u0119pstwo umy\\u015blne \\u015bcigane z oskar\\u017cenia publicznego lub przest\\u0119pstwo skarbowe.<br/> 7.4. Zebrania Zarz\\u0105du odbywaj\\u0105 si\\u0119 w miar\\u0119 potrzeb, jednak nie rzadziej ni\\u017c raz w roku.\\u00a0<br/> 7.5. Zebranie Zarz\\u0105du mo\\u017ce zwo\\u0142a\\u0107 ka\\u017cdy cz\\u0142onek Zarz\\u0105du. Powinien powiadomi\\u0107 o tym pozosta\\u0142ych cz\\u0142onk\\u00f3w Zarz\\u0105du ze stosownym wyprzedzeniem (nie p\\u00f3\\u017aniej ni\\u017c 7 dni przed terminem zebrania) umo\\u017cliwiaj\\u0105cym ich udzia\\u0142, przy wykorzystaniu przynajmniej 2 \\u015brodk\\u00f3w porozumiewania si\\u0119 na odleg\\u0142o\\u015b\\u0107 (w tym mailowo). Je\\u017celi wszyscy cz\\u0142onkowie Zarz\\u0105du s\\u0105 obecni na zebraniu, w\\u00f3wczas Zarz\\u0105d mo\\u017ce obradowa\\u0107 i podejmowa\\u0107 uchwa\\u0142y i decyzje bez uprzedniego formalnego zwo\\u0142ania.<br/> 7.6. Cz\\u0142onkowie Zarz\\u0105du, na pocz\\u0105tku ka\\u017cdego zebrania, mog\\u0105 w drodze konsensusu wybra\\u0107 spo\\u015br\\u00f3d siebie koordynatora zebrania.<br/> 7.7. Zarz\\u0105d mo\\u017ce podejmowa\\u0107 uchwa\\u0142y w sprawach nale\\u017c\\u0105cych do jego kompetencji w obecno\\u015bci co najmniej po\\u0142owy swych cz\\u0142onk\\u00f3w.\\u00a0<br/> 7.8. W zebraniu Zarz\\u0105du mog\\u0105 uczestniczy\\u0107 z g\\u0142osem doradczym eksperci lub inne osoby zaproszone przez co najmniej jednego z cz\\u0142onk\\u00f3w Zarz\\u0105du.<br/> 7.9. Cz\\u0142onkostwo w Zarz\\u0105dzie ustaje na skutek:<br/> 1. z\\u0142o\\u017cenia pisemnej rezygnacji,<br/> 2. odwo\\u0142ania przez Walne Zebranie,<br/> 3. \\u015bmierci cz\\u0142onka Zarz\\u0105du,\\u00a0<br/> 4. utraty praw obywatelskich na skutek skazania prawomocnym wyrokiem s\\u0105du za przest\\u0119pstwo pope\\u0142nione z winy umy\\u015blnej,<br/> 5. skazania prawomocnym wyrokiem za przest\\u0119pstwo umy\\u015blne \\u015bcigane z oskar\\u017cenia publicznego lub przest\\u0119pstwo skarbowe.<br/> 7.10. Zarz\\u0105d Zwi\\u0105zku w ca\\u0142o\\u015bci lub poszczeg\\u00f3lni cz\\u0142onkowie Zarz\\u0105du mog\\u0105 by\\u0107 odwo\\u0142ani w dowolnym czasie przez Walne Zebranie w drodze uchwa\\u0142y. Cz\\u0142onkowie Zarz\\u0105du, kt\\u00f3rych dotyczy wniosek o odwo\\u0142anie, nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu wobec uchwa\\u0142y o odwo\\u0142aniu w czasie obrad Walnego Zebrania.\\u00a0<br/> 7.11. Do kompetencji Zarz\\u0105du nale\\u017c\\u0105:<br/> 1. kierowanie dzia\\u0142aniami Zwi\\u0105zku w oparciu o uchwa\\u0142y Walnego Zebrania,<br/> 2. prowadzenie bie\\u017c\\u0105cych spraw Zwi\\u0105zku,\\u00a0<br/> 3. reprezentowanie Zwi\\u0105zku na zewn\\u0105trz i dzia\\u0142anie w jego imieniu,<br/> 4. wykonywanie uchwa\\u0142 Walnego Zebrania,<br/> 5. prowadzenie gospodarki finansowej Zwi\\u0105zku i zarz\\u0105dzanie jego maj\\u0105tkiem, zgodnie z zasadami ustalonymi przez Walne Zebranie,<br/> 6. sporz\\u0105dzanie sprawozda\\u0144 finansowych i merytorycznych Zwi\\u0105zku,<br/> 7. sk\\u0142adanie Walnemu Zebraniu sprawozda\\u0144 z dzia\\u0142alno\\u015bci Zarz\\u0105du,<br/> 8. uchwalanie regulaminu Zarz\\u0105du, zatwierdzanego przez Walne Zebranie,<br/> 9. podejmowanie uchwa\\u0142 w sprawie przyjmowania cz\\u0142onk\\u00f3w wspieraj\\u0105cych,\\u00a0<br/> 10. podejmowanie uchwa\\u0142 w sprawie zawieszania cz\\u0142onk\\u00f3w Zwi\\u0105zku,\\u00a0\\u00a0<br/> 11. pobieranie sk\\u0142adek cz\\u0142onkowskich i uzgadnianie wsp\\u00f3lnie z cz\\u0142onkami Zwi\\u0105zku innych form \\u015bwiadczonej przez nich pomocy,<br/> 12. prowadzenie rejestru cz\\u0142onk\\u00f3w Zwi\\u0105zku.<br/> 7.12. Reprezentowa\\u0107 Zwi\\u0105zek na zewn\\u0105trz oraz wykonywa\\u0107 czynno\\u015bci w ramach prowadzenia spraw Zwi\\u0105zku mo\\u017ce ka\\u017cdy cz\\u0142onek Zarz\\u0105du samodzielnie, z zastrze\\u017ceniem ust. 7.13.<br/> 7.13. Do sk\\u0142adania w imieniu Zwi\\u0105zku o\\u015bwiadcze\\u0144 woli w sprawach maj\\u0105tkowych oraz wyznaczania pe\\u0142nomocnictw wymagane jest wsp\\u00f3\\u0142dzia\\u0142anie co najmniej dw\\u00f3ch cz\\u0142onk\\u00f3w Zarz\\u0105du.<br/> 7.14. Do z\\u0142o\\u017cenia przez Zarz\\u0105d o\\u015bwiadczenia woli w sprawie maj\\u0105tkowej o warto\\u015bci przekraczaj\\u0105cej 100000 PLN (s\\u0142ownie: sto tysi\\u0119cy z\\u0142otych) wymagane jest pe\\u0142nomocnictwo udzielone przez Walne Zebranie w formie uchwa\\u0142y.\\u00a0<br/> 7.15. Zarz\\u0105d nie ma prawa zaci\\u0105gania zobowi\\u0105za\\u0144, kt\\u00f3re:<br/> 1. wymagaj\\u0105 zabezpieczenia maj\\u0105tkiem trwa\\u0142ym Zwi\\u0105zku, 2. obci\\u0105\\u017cone s\\u0105 odsetkami.<br/> 7.16. Do z\\u0142o\\u017cenia przez Zarz\\u0105d o\\u015bwiadczenia woli w sprawie sk\\u0142adnik\\u00f3w maj\\u0105tkowych przypisanych do u\\u017cytkowania przez Autonomiczn\\u0105 Jednostk\\u0119 Terenow\\u0105 wymagane jest pe\\u0142nomocnictwo udzielone przez Rad\\u0119 danej Autonomicznej Jednostki Terenowej w formie uchwa\\u0142y, z zastrze\\u017ceniem ust. 7.17.<br/> 7.17. Do z\\u0142o\\u017cenia przez Zarz\\u0105d o\\u015bwiadczenia woli w sprawie zbycia nieruchomo\\u015bci gruntowej wymagane jest pe\\u0142nomocnictwo udzielone przez Walne Zebranie w formie uchwa\\u0142y podj\\u0119tej w drodze konsensusu na zasadzie przyzwolenia w obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku, a w przypadku gdy przedmiotowa nieruchomo\\u015b\\u0107 jest w u\\u017cytkowaniu Autonomicznej Jednostki Terenowej, wymagane jest r\\u00f3wnie\\u017c pe\\u0142nomocnictwo udzielone przez Rad\\u0119 danej Autonomicznej Jednostki Terenowej w formie uchwa\\u0142y podj\\u0119tej w drodze konsensusu na zasadzie przyzwolenia w obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w tego organu.<br/></p><p></p><h2>Rozdzia\\u0142 8 - Komisja Rewizyjna</h2><p>8.1. Komisja Rewizyjna sprawuje nadz\\u00f3r nad ca\\u0142okszta\\u0142tem dzia\\u0142alno\\u015bci statutowej i finansowej Zwi\\u0105zku. W ramach czynno\\u015bci nadzorczych ma ona prawo do pe\\u0142nej informacji o dzia\\u0142alno\\u015bci Zwi\\u0105zku, wgl\\u0105du do dokumentacji oraz \\u017c\\u0105dania udzielenia wyja\\u015bnie\\u0144 i informacji przez Zarz\\u0105d oraz osoby zaanga\\u017cowane w dzia\\u0142alno\\u015b\\u0107 w imieniu lub na rzecz Zwi\\u0105zku.<br/> 8.2. Komisja Rewizyjna sk\\u0142ada si\\u0119 z od 3 do 5 cz\\u0142onk\\u00f3w wybranych przez Walne Zebranie na czas nieoznaczony.<br/> 8.3. Zebrania Komisji Rewizyjnej odbywaj\\u0105 si\\u0119 w miar\\u0119 potrzeb, jednak nie rzadziej ni\\u017c raz w roku.<br/> 8.4. Komisja Rewizyjna mo\\u017ce podejmowa\\u0107 uchwa\\u0142y oraz wykonywa\\u0107 inne czynno\\u015bci w sprawach nale\\u017c\\u0105cych do jej kompetencji w obecno\\u015bci co najmniej po\\u0142owy swych cz\\u0142onk\\u00f3w.<br/> 8.5. Zebranie Komisji Rewizyjnej mo\\u017ce zwo\\u0142a\\u0107 ka\\u017cdy cz\\u0142onek Komisji Rewizyjnej. Powinien powiadomi\\u0107 o tym pozosta\\u0142ych cz\\u0142onk\\u00f3w Komisji Rewizyjnej ze stosownym wyprzedzeniem (co najmniej 7 dni przed terminem zebrania) umo\\u017cliwiaj\\u0105cym ich udzia\\u0142, przy wykorzystaniu przynajmniej 2 \\u015brodk\\u00f3w porozumiewania si\\u0119 na odleg\\u0142o\\u015b\\u0107 (w tym mailowo). Je\\u017celi wszyscy cz\\u0142onkowie s\\u0105 obecni na zebraniu, w\\u00f3wczas Komisja Rewizyjna mo\\u017ce obradowa\\u0107 i podejmowa\\u0107 uchwa\\u0142y i decyzje bez uprzedniego formalnego zwo\\u0142ania.<br/> 8.6. Komisja Rewizyjna mo\\u017ce upowa\\u017cni\\u0107 niekt\\u00f3rych spo\\u015br\\u00f3d swoich cz\\u0142onk\\u00f3w do wykonywania w jej imieniu okre\\u015blonych czynno\\u015bci nadzorczych.<br/> 8.7. W zebraniu Komisji Rewizyjnej mog\\u0105 uczestniczy\\u0107 z g\\u0142osem doradczym osoby zaproszone przez co najmniej jednego z cz\\u0142onk\\u00f3w Komisji Rewizyjnej.<br/> 8.8. Komisja Rewizyjna jest niezale\\u017cna od Zarz\\u0105du, a jej cz\\u0142onkami nie mog\\u0105 by\\u0107:<br/> 1. cz\\u0142onkowie Zarz\\u0105du ani osoby pozostaj\\u0105ce z cz\\u0142onkami Zarz\\u0105du w zwi\\u0105zku ma\\u0142\\u017ce\\u0144skim, we wsp\\u00f3lnym po\\u017cyciu, w stosunku pokrewie\\u0144stwa, powinowactwa lub podleg\\u0142o\\u015bci s\\u0142u\\u017cbowej,<br/> 2. osoby skazane prawomocnym wyrokiem za przest\\u0119pstwo \\u015bcigane z oskar\\u017cenia publicznego lub przest\\u0119pstwo skarbowe.<br/> 8.9. Szczeg\\u00f3\\u0142owy tryb i zasady dzia\\u0142ania Komisji Rewizyjnej mo\\u017ce okre\\u015bla\\u0107 regulamin Komisji Rewizyjnej uchwalony przez ten organ i zatwierdzony przez Walne Zebranie.<br/> 8.10. Cz\\u0142onkostwo w Komisji Rewizyjnej ustaje na skutek:<br/> 1. z\\u0142o\\u017cenia pisemnej rezygnacji,<br/> 2. odwo\\u0142ania przez Walne Zebranie,<br/> 3. \\u015bmierci cz\\u0142onka Komisji Rewizyjnej,<br/> 4. utraty praw obywatelskich na skutek skazania prawomocnym wyrokiem s\\u0105du za przest\\u0119pstwo pope\\u0142nione z winy umy\\u015blnej,<br/> 5. skazania prawomocnym wyrokiem za przest\\u0119pstwo umy\\u015blne \\u015bcigane z oskar\\u017cenia publicznego lub przest\\u0119pstwo skarbowe.\\u00a0<br/> 8.11. Komisja Rewizyjna w ca\\u0142o\\u015bci lub poszczeg\\u00f3lni cz\\u0142onkowie Komisji Rewizyjnej mog\\u0105 by\\u0107 odwo\\u0142ani w dowolnym czasie przez Walne Zebranie. Cz\\u0142onkowie Komisji Rewizyjnej, kt\\u00f3rych dotyczy wniosek o odwo\\u0142anie, nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu wobec uchwa\\u0142y o odwo\\u0142aniu w czasie obrad Walnego Zebrania.\\u00a0<br/> 8.12. Do obowi\\u0105zk\\u00f3w Komisji Rewizyjnej nale\\u017c\\u0105:<br/> 1. kontrolowanie co najmniej raz w roku dzia\\u0142alno\\u015bci statutowej i gospodarki finansowej<br/> Zwi\\u0105zku oraz przedstawianie Walnemu Zebraniu oraz Zarz\\u0105dowi wniosk\\u00f3w i uwag z ka\\u017cdej kontroli,<br/> 2. opiniowanie sprawozda\\u0144 finansowych i merytorycznych Zarz\\u0105du,<br/> 3. dokonywanie oceny dzia\\u0142alno\\u015bci Zarz\\u0105du i przedstawianie jej Walnemu Zebraniu,<br/> 4. sk\\u0142adanie sprawozda\\u0144 ze swej dzia\\u0142alno\\u015bci Walnemu Zebraniu.<br/> 8.13. Do kompetencji Komisji Rewizyjnej nale\\u017c\\u0105:<br/> 1. wybieranie podmiotu maj\\u0105cego zbada\\u0107 sprawozdania finansowe Zwi\\u0105zku,<br/> 2. \\u017c\\u0105danie od Zarz\\u0105du udost\\u0119pnienia dokument\\u00f3w zwi\\u0105zanych z dzia\\u0142alno\\u015bci\\u0105 Zwi\\u0105zku z mo\\u017cliwo\\u015bci\\u0105 ich kopiowania,<br/> 3. \\u017c\\u0105danie udzielenia informacji lub wyja\\u015bnie\\u0144 na temat dzia\\u0142alno\\u015bci Zwi\\u0105zku od Zarz\\u0105du i os\\u00f3b zaanga\\u017cowanych w dzia\\u0142alno\\u015b\\u0107 w imieniu lub na rzecz Zwi\\u0105zku,<br/> 4. uchwalanie regulaminu Komisji Rewizyjnej, zatwierdzanego przez Walne Zebranie,<br/> 5. sk\\u0142adanie wniosk\\u00f3w o zwo\\u0142anie Nadzwyczajnego Walnego Zebrania,<br/> 6. zwo\\u0142ywanie Walnego Zebrania w przypadku okre\\u015blonym w ust. 6.10.<br/> 8.14. Komisja Rewizyjna mo\\u017ce ze skutkiem natychmiastowym zawiesi\\u0107 cz\\u0142onkostwo osoby w Zarz\\u0105dzie w przypadku:<br/> 1. naruszenia przez t\\u0119 osob\\u0119 postanowie\\u0144 statutu Zwi\\u0105zku, uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku lub regulamin\\u00f3w Jednostek Terenowych na terenach u\\u017cytkowanych przez te Jednostki,<br/> 2. dzia\\u0142ania na szkod\\u0119 Zwi\\u0105zku,<br/> 3. zachowania godz\\u0105cego w dobre imi\\u0119 Zwi\\u0105zku.<br/> 8.15. Od uchwa\\u0142y Komisji Rewizyjnej stwierdzaj\\u0105cej zawieszenie cz\\u0142onkostwa w Zarz\\u0105dzie cz\\u0142onkowi Zarz\\u0105du, kt\\u00f3rego uchwa\\u0142a dotyczy, przys\\u0142uguje odwo\\u0142anie do Walnego Zebrania.\\u00a0<br/> 8.16. Odwo\\u0142anie, o kt\\u00f3rym mowa w ust. 8.15., sk\\u0142ada si\\u0119 pisemnie za po\\u015brednictwem Komisji Rewizyjnej w terminie miesi\\u0105ca od daty otrzymania informacji o zawieszeniu. Walne Zebranie rozpatruje odwo\\u0142anie w czasie najbli\\u017cszych obrad. Decyzja Walnego Zebrania w tej sprawie jest ostateczna. Cz\\u0142onek Zarz\\u0105du, kt\\u00f3rego dotyczy decyzja w sprawie zawieszenia cz\\u0142onkostwa w Zarz\\u0105dzie, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad Walnego Zebrania.\\u00a0\\u00a0<br/> 8.17. Do reprezentowania Komisji Rewizyjnej na zewn\\u0105trz i dzia\\u0142ania w jej imieniu, w tym do wykonywania w jej imieniu czynno\\u015bci kontrolnych, uprawniony jest ka\\u017cdy z cz\\u0142onk\\u00f3w Komisji Rewizyjnej.<br/></p><p></p><h2>Rozdzia\\u0142 9 - Maj\\u0105tek i gospodarka finansowa</h2><p>9.1. Maj\\u0105tek Zwi\\u0105zku mo\\u017ce powstawa\\u0107:\\u00a0<br/> 1. ze sk\\u0142adek cz\\u0142onkowskich,<br/> 2. z zapis\\u00f3w, darowizn, spadk\\u00f3w i ofiarno\\u015bci publicznej,<br/> 3. z dotacji,<br/> 4. z dochod\\u00f3w z maj\\u0105tku Zwi\\u0105zku.<br/> 9.2. Funduszami i maj\\u0105tkiem Zwi\\u0105zku zarz\\u0105dza Zarz\\u0105d.<br/> 9.3. W Zwi\\u0105zku zabronione jest:<br/> 1. udzielanie po\\u017cyczek lub zabezpieczanie zobowi\\u0105za\\u0144 maj\\u0105tkiem Zwi\\u0105zku,<br/> 2. przekazywanie maj\\u0105tku Zwi\\u0105zku na rzecz jego cz\\u0142onk\\u00f3w, cz\\u0142onk\\u00f3w organ\\u00f3w lub pracownik\\u00f3w oraz os\\u00f3b, z kt\\u00f3rymi cz\\u0142onkowie, cz\\u0142onkowie organ\\u00f3w oraz pracownicy Zwi\\u0105zku pozostaj\\u0105 w zwi\\u0105zku ma\\u0142\\u017ce\\u0144skim, we wsp\\u00f3lnym po\\u017cyciu albo w stosunku pokrewie\\u0144stwa lub powinowactwa w linii prostej, pokrewie\\u0144stwa lub powinowactwa w linii bocznej do drugiego stopnia albo s\\u0105 zwi\\u0105zani z tytu\\u0142u przysposobienia, opieki lub kurateli, zwanych dalej \\u201eosobami bliskimi\\u201d, na zasadach innych ni\\u017c w stosunku do os\\u00f3b trzecich, w szczeg\\u00f3lno\\u015bci, je\\u017celi przekazanie to nast\\u0119puje bezp\\u0142atnie lub na preferencyjnych warunkach,<br/> 3. wykorzystywanie maj\\u0105tku na rzecz cz\\u0142onk\\u00f3w, cz\\u0142onk\\u00f3w organ\\u00f3w lub pracownik\\u00f3w Zwi\\u0105zku oraz ich os\\u00f3b bliskich na zasadach innych ni\\u017c w stosunku do os\\u00f3b trzecich, chyba \\u017ce to wykorzystanie bezpo\\u015brednio wynika ze statutowego celu Zwi\\u0105zku,<br/> 4. zakup towar\\u00f3w lub us\\u0142ug od podmiot\\u00f3w, w kt\\u00f3rych uczestnicz\\u0105 cz\\u0142onkowie, cz\\u0142onkowie organ\\u00f3w lub pracownicy Zwi\\u0105zku oraz ich os\\u00f3b bliskich, na zasadach innych ni\\u017c w stosunku do os\\u00f3b trzecich lub po cenach wy\\u017cszych ni\\u017c rynkowe.<br/> 9.4. W przypadku powo\\u0142ania Zwi\\u0105zku do spadku Zarz\\u0105d sk\\u0142ada o\\u015bwiadczenie o przyj\\u0119ciu spadku z dobrodziejstwem inwentarza i to tylko w\\u00f3wczas, gdy w chwili sk\\u0142adania tego o\\u015bwiadczenia oczywistym jest, \\u017ce stan czynny spadku znacznie przewy\\u017csza d\\u0142ugi spadkowe.<br/> 9.5. Zwi\\u0105zek mo\\u017ce tworzy\\u0107 fundusze, w tym fundusze celowe. Fundusze Zwi\\u0105zku s\\u0105 tworzone i likwidowane przez Walne Zebranie, kt\\u00f3re ustala zasady gromadzenia w nich \\u015brodk\\u00f3w i dysponowania nimi. Zarz\\u0105d Zwi\\u0105zku oraz Zarz\\u0105dy Jednostek Terenowych mog\\u0105 dysponowa\\u0107 \\u015brodkami zgromadzonymi w funduszach Zwi\\u0105zku w oparciu o zasady ustalone przez Walne Zebranie.<br/></p><p></p><h2>Rozdzia\\u0142 10 - Jednostki Terenowe</h2><p>10.1. Jednostki Terenowe, zwane dalej \\u201cJT\\u201d, dziel\\u0105 si\\u0119 na dwa rodzaje:<br/> 1. Podstawowe Jednostki Terenowe, zwane dalej \\u201cPJT\\u201d,<br/> 2. Autonomiczne Jednostki Terenowe, zwane dalej \\u201cAJT\\u201d.<br/> 10.2. AJT s\\u0105 takimi Jednostkami Terenowymi, kt\\u00f3rym powierzono do gospodarowania nieruchomo\\u015bci gruntowe nale\\u017c\\u0105ce do Zwi\\u0105zku w celu tworzenia, utrzymania i rozwoju wsp\\u00f3lnot intencjonalnych b\\u0105d\\u017a tworzenia i ochrony rezerwat\\u00f3w Wolnej Ziemi.<br/> 10.3. PJT s\\u0105 wszystkie Jednostki Terenowe nieb\\u0119d\\u0105ce AJT.<br/> 10.4. PJT zostaj\\u0105 przekszta\\u0142cone w AJT z chwil\\u0105 spe\\u0142nienia warunku okre\\u015blonego w ust. 10.2.\\u00a0<br/> 10.5. JT powinny gospodarowa\\u0107 oddanymi im do u\\u017cytkowania nieruchomo\\u015bciami w spos\\u00f3b korzystny dla Ziemi, Przyrody oraz ludzi, a tak\\u017ce zgodny z celami Zwi\\u0105zku.\\u00a0<br/> 10.6. Zarz\\u0105d Zwi\\u0105zku podejmuje wszelkie dzia\\u0142ania potrzebne do samodzielnego funkcjonowania JT zgodnego z ich regulaminami, w tym udziela organom JT potrzebnych pe\\u0142nomocnictw. W przypadku gdy dzia\\u0142anie organu JT na podstawie pe\\u0142nomocnictwa udzielonego przez Zarz\\u0105d Zwi\\u0105zku jest niemo\\u017cliwe lub niecelowe, Zarz\\u0105d Zwi\\u0105zku na wniosek organu JT dzia\\u0142a na rzecz JT wobec innych podmiot\\u00f3w.\\u00a0<br/> 10.7. JT nie posiadaj\\u0105 osobowo\\u015bci prawnej.<br/> 10.8. JT powo\\u0142ywane s\\u0105 przez Walne Zebranie na czas nieoznaczony.<br/> 10.9. Walne Zebranie mo\\u017ce utworzy\\u0107 JT na wniosek co najmniej 3 cz\\u0142onk\\u00f3w Zwi\\u0105zku, b\\u0119d\\u0105cych osobami fizycznymi, zwanych dalej \\u201cInicjatorami JT\\u201d.\\u00a0<br/> 10.10. W celu utworzenia JT, Inicjatorzy JT sk\\u0142adaj\\u0105 do Walnego Zebrania za po\\u015brednictwem Zarz\\u0105du Zwi\\u0105zku wniosek o utworzenie JT wraz z projektem regulaminu JT.<br/> 10.11. Ka\\u017cda JT dzia\\u0142a na podstawie statutu Zwi\\u0105zku oraz w\\u0142asnego regulaminu JT.<br/></p><p></p><h2>Rozdzia\\u0142 11 - Rady Jednostek Terenowych</h2><p>1.1. Ka\\u017cda JT posiada kolektywny organ najwy\\u017cszy - Rad\\u0119 Jednostki Terenowej, zwan\\u0105 dalej \\u201eRad\\u0105 JT\\u201d.\\u00a0<br/> 11.2. Rada JT decyduje o wszelkich sprawach dotycz\\u0105cych JT.<br/> 11.3. Pierwszy sk\\u0142ad Rady JT powo\\u0142ywany jest przez Walne Zebranie wraz z utworzeniem JT i zatwierdzeniem regulaminu JT. W sk\\u0142ad pierwszej Rady JT wchodz\\u0105 Inicjatorzy JT.<br/> 11.4. Wszyscy stali mieszka\\u0144cy nieruchomo\\u015bci oddanej do u\\u017cytkowania dla AJT maj\\u0105 prawo bycia cz\\u0142onkami Rady tej AJT.\\u00a0<br/> 11.5. Nowi cz\\u0142onkowie Rady JT przyjmowani s\\u0105 przez Rad\\u0119 JT w drodze konsensusu na zasadzie przyzwolenia na czas nieoznaczony.<br/> 11.6. Modelem podejmowania decyzji przez Rad\\u0119 JT jest konsensus oparty na zasadzie przyzwolenia, zgodnie z kt\\u00f3rym decyzje Rady JT mog\\u0105 zosta\\u0107 podj\\u0119te wtedy, gdy \\u017caden ze zgromadzonych na zebraniu cz\\u0142onk\\u00f3w Rady JT nie zg\\u0142osi swojego sprzeciwu wobec podj\\u0119cia danej decyzji.<br/> 11.7. Osoba zg\\u0142aszaj\\u0105ca sprzeciw powinna poda\\u0107 merytoryczne uzasadnienie swojego sprzeciwu, a tak\\u017ce argumenty przemawiaj\\u0105ce na rzecz racji tego sprzeciwu. W przeciwnym razie sprzeciw mo\\u017ce nie zosta\\u0107 uwzgl\\u0119dniony przez pozosta\\u0142ych cz\\u0142onk\\u00f3w Rady JT.\\u00a0<br/> 11.8. Uzasadnienie sprzeciwu i argumenty przemawiaj\\u0105ce na rzecz racji sprzeciwu mog\\u0105\\u00a0 zosta\\u0107 poddane dyskusji, w wyniku kt\\u00f3rej osoba, kt\\u00f3ra zg\\u0142osi\\u0142a sprzeciw, mo\\u017ce go wycofa\\u0107.\\u00a0<br/> 11.9. W przypadku zg\\u0142oszenia sprzeciwu, osoba, kt\\u00f3ra zg\\u0142osi\\u0142a sprzeciw, a tak\\u017ce inne osoby obecne na zebraniu mog\\u0105 zaproponowa\\u0107 inne rozwi\\u0105zanie, kt\\u00f3re mo\\u017ce zosta\\u0107 przyj\\u0119te zamiast wcze\\u015bniej proponowanej decyzji.\\u00a0<br/> 11.10. Rada JT dzia\\u0142a zgodnie ze statutem Zwi\\u0105zku, regulaminem JT oraz przepisami powszechnie obowi\\u0105zuj\\u0105cego prawa.\\u00a0<br/> 11.11. Rada JT podejmuje uchwa\\u0142y na zebraniach w obecno\\u015bci przynajmniej po\\u0142owy swoich cz\\u0142onk\\u00f3w, pod warunkiem \\u017ce wszyscy cz\\u0142onkowie Rady JT zostali skutecznie zawiadomieni o terminie, miejscu i porz\\u0105dku obrad na co najmniej 7 dni przed dat\\u0105 zebrania. Je\\u017celi wszyscy cz\\u0142onkowie s\\u0105 obecni na zebraniu, w\\u00f3wczas Rada JT mo\\u017ce obradowa\\u0107 i podejmowa\\u0107 uchwa\\u0142y i decyzje bez uprzedniego formalnego zwo\\u0142ania.<br/> 11.12. Zebranie Rady JT zwo\\u0142uje Zarz\\u0105d JT z w\\u0142asnej inicjatywy lub na wniosek co najmniej 3 cz\\u0142onk\\u00f3w Rady JT.<br/> 11.13. Wnosz\\u0105cy o zwo\\u0142anie zebrania Rady JT s\\u0105 obowi\\u0105zani z\\u0142o\\u017cy\\u0107 Zarz\\u0105dowi JT wniosek z podaniem proponowanego porz\\u0105dku obrad, kt\\u00f3ry Zarz\\u0105d JT mo\\u017ce uzupe\\u0142ni\\u0107.<br/> 11.14. Zebrania Rady JT odbywaj\\u0105 si\\u0119 w siedzibie JT lub w innym miejscu znajduj\\u0105cym si\\u0119 na obszarze dzia\\u0142ania JT.<br/> 11.15. Cz\\u0142onkowie Rady JT, kt\\u00f3rzy nie mog\\u0105 by\\u0107 obecni na zebraniu Rady JT, mog\\u0105 wyra\\u017ca\\u0107 swoj\\u0105 opini\\u0119 na temat ka\\u017cdego punktu porz\\u0105dku obrad w spos\\u00f3b zdalny (pisemnie, elektronicznie, telefonicznie).<br/> 11.16. Cz\\u0142onkostwo w Radzie JT mo\\u017ce zosta\\u0107 ze skutkiem natychmiastowym czasowo zawieszone na okres od 6 do 12 miesi\\u0119cy na skutek:<br/> 1. dobrowolnej czasowej rezygnacji z aktywnego udzia\\u0142u w pracach JT zg\\u0142oszonej na pi\\u015bmie Zarz\\u0105dowi JT,<br/> 2. uchwa\\u0142y Rady JT uzasadnionej brakiem dobrowolnego zaanga\\u017cowania cz\\u0142onka Rady JT w pracach i dzia\\u0142alno\\u015bci JT przez okres minimum roku,<br/> 3. uchwa\\u0142y Rady JT uzasadnionej brakiem fizycznego lub zdalnego uczestnictwa w trzech kolejnych posiedzeniach Rady JT,<br/> 4. uchwa\\u0142y Rady JT uzasadnionej zachowaniem godz\\u0105cym w dobre imi\\u0119 JT lub Zwi\\u0105zku,<br/> 5. uchwa\\u0142y Rady JT uzasadnionej naruszeniem postanowie\\u0144 statutu Zwi\\u0105zku, regulaminu JT lub uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku,<br/> 6. uchwa\\u0142y Rady JT uzasadnionej dzia\\u0142aniem na szkod\\u0119 JT lub Zwi\\u0105zku.<br/> 11.17. Decyzj\\u0119 o zawieszeniu cz\\u0142onkostwa w Radzie JT podejmuje Rada JT na wniosek co najmniej trzech jej cz\\u0142onk\\u00f3w. Osoba, kt\\u00f3rej dotyczy ta decyzja, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad Rady JT.\\u00a0<br/> 11.18. Cz\\u0142onek Rady JT, kt\\u00f3rego cz\\u0142onkostwo w Radzie JT zosta\\u0142o czasowo zawieszone, mo\\u017ce bra\\u0107 udzia\\u0142 w zebraniach Rady JT z g\\u0142osem doradczym.<br/> 11.19. Po up\\u0142ywie okresu zawieszenia, w celu powrotu do aktywnego uczestnictwa w pracach Rady JT, osoba, kt\\u00f3rej cz\\u0142onkostwo w Radzie JT zosta\\u0142o zawieszone, sk\\u0142ada Zarz\\u0105dowi JT pisemn\\u0105 deklaracj\\u0119 aktywnego uczestnictwa w dzia\\u0142alno\\u015bci Rady JT. Z\\u0142o\\u017cenie tej deklaracji jest niezb\\u0119dne do przywr\\u00f3cenia osobie, kt\\u00f3rej cz\\u0142onkostwo w Radzie JT zosta\\u0142o zawieszone, pe\\u0142ni praw zwi\\u0105zanych z cz\\u0142onkostwem w Radzie JT.<br/> 11.20. Utrata cz\\u0142onkostwa w Radzie JT nast\\u0119puje na skutek:\\u00a0<br/> 1. pisemnej rezygnacji cz\\u0142onka Rady JT z\\u0142o\\u017conej Zarz\\u0105dowi JT,\\u00a0<br/> 2. \\u015bmierci cz\\u0142onka Rady JT,<br/> 3. wykluczenia z Rady JT z powodu przyczyny okre\\u015blonej w ust. 11.16 pkt 4-6.<br/> 11.21. Decyzj\\u0119 o wykluczeniu z Rady JT podejmuje Rada JT po up\\u0142ywie okresu zawieszenia cz\\u0142onkostwa. Osoba, kt\\u00f3rej dotyczy ta decyzja, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad Rady JT.<br/> 11.22. Od uchwa\\u0142y Rady JT stwierdzaj\\u0105cej zawieszenie lub utrat\\u0119 cz\\u0142onkostwa w Radzie JT cz\\u0142onkowi, kt\\u00f3rego uchwa\\u0142a dotyczy, przys\\u0142uguje odwo\\u0142anie do Walnego Zebrania.\\u00a0<br/> 11.23. Odwo\\u0142anie, o kt\\u00f3rym mowa w ust. 11.19, sk\\u0142ada si\\u0119 pisemnie za po\\u015brednictwem Zarz\\u0105du Zwi\\u0105zku w terminie 30 dni od daty otrzymania informacji o zawieszeniu lub utracie cz\\u0142onkostwa w Radzie JT. Walne Zebranie rozpatruje odwo\\u0142anie w czasie najbli\\u017cszych obrad. Decyzja Walnego Zebrania w tej sprawie jest ostateczna. Cz\\u0142onek Zwi\\u0105zku, kt\\u00f3rego dotyczy ta decyzja, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad Walnego Zebrania.<br/></p><p></p><h2>Rozdzia\\u0142 12 - Delegaci Autonomicznych Jednostek Terenowych</h2><p>12.1. Ka\\u017cda Rada AJT wybiera ze swego grona Delegata Autonomicznej Jednostki Terenowej, zwanego dalej \\u201eDelegatem AJT\\u201d, a tak\\u017ce Zast\\u0119pc\\u0119 Delegata Autonomicznej Jednostki Terenowej, zwanego dalej \\u201eZast\\u0119pc\\u0105 Delegata AJT\\u201d.<br/> 12.2. Pe\\u0142nienie funkcji przez Delegata AJT lub Zast\\u0119pc\\u0119 Delegata AJT ustaje na skutek:<br/> 1. pisemnej rezygnacji,<br/> 2. odwo\\u0142ania przez Rad\\u0119 AJT,<br/> 3. utraty cz\\u0142onkostwa w Zwi\\u0105zku.<br/> 12.3. Zast\\u0119pca Delegata AJT pe\\u0142ni funkcj\\u0119 Delegata AJT do czasu wyboru nowego Delegata przez Rad\\u0119 AJT oraz w czasie nieobecno\\u015bci Delegata AJT na obradach Walnego Zebrania.\\u00a0<br/> 12.4. Zast\\u0119pca Delegata AJT mo\\u017ce uczestniczy\\u0107 z g\\u0142osem doradczym w obradach Walnego Zebrania.\\u00a0<br/> 12.5. Delegat AJT:<br/> 1. staje si\\u0119 w trakcie i na mocy pe\\u0142nienia swej funkcji cz\\u0142onkiem zwyczajnym Zwi\\u0105zku,<br/> 2. jest upowa\\u017cniony do prezentowania woli i stanowiska Rady AJT na Walnym Zebraniu.<br/> 12.6. Delegat AJT i Zast\\u0119pca Delegata AJT s\\u0105 wybierani na czas okre\\u015blony w regulaminie AJT i mog\\u0105 w ka\\u017cdej chwili zosta\\u0107 odwo\\u0142ani przez Rad\\u0119 AJT.\\u00a0<br/></p><p></p><h2>Rozdzia\\u0142 13 - Regulaminy Jednostek Terenowych</h2><p>13.1. Regulamin JT okre\\u015bla szczeg\\u00f3\\u0142ow\\u0105 organizacj\\u0119 JT i spos\\u00f3b jej dzia\\u0142ania. Rada JT mo\\u017ce dokonywa\\u0107 zmian w regulaminie JT.<br/> 13.2. Regulamin JT oraz wszelkie zmiany do tego regulaminu zatwierdzane s\\u0105 pod rygorem niewa\\u017cno\\u015bci przez Walne Zebranie w drodze uchwa\\u0142y.<br/> 13.3. Regulamin JT okre\\u015bla w szczeg\\u00f3lno\\u015bci:<br/> 1. nazw\\u0119 JT,<br/> 2. siedzib\\u0119 i obszar dzia\\u0142ania JT,<br/> 3. profil JT,\\u00a0<br/> 4. cele JT,\\u00a0<br/> 5. struktur\\u0119 organizacyjn\\u0105 JT,<br/> 6. spos\\u00f3b podejmowania decyzji przez organy JT, zgodny z zasad\\u0105 konsensusu,<br/> 7. szczeg\\u00f3\\u0142owe zasady dzia\\u0142ania organ\\u00f3w JT oraz Delegata i Zast\\u0119pcy Delegata JT.<br/> 13.4. Regulamin AJT, opr\\u00f3cz punkt\\u00f3w wymienionych w ust. 13.3, okre\\u015bla r\\u00f3wnie\\u017c:<br/> 1. zasady gospodarowania nieruchomo\\u015bciami u\\u017cytkowanymi przez AJT,<br/> 2. podstawowe zasady dotycz\\u0105ce mieszka\\u0144c\\u00f3w AJT,<br/> 3. zasady przyjmowania nowych mieszka\\u0144c\\u00f3w AJT,<br/> 4. podstawowe zasady dotycz\\u0105ce go\\u015bci AJT.<br/> 13.5. Do AJT, kt\\u00f3rych celem jest tworzenie i ochrona rezerwat\\u00f3w Wolnej Ziemi, nie ma zastosowania ust. 13.4. Regulamin tych AJT, opr\\u00f3cz punkt\\u00f3w wymienionych w ust. 13.3, powinien okre\\u015bla\\u0107 zasady post\\u0119powania na terenie rezerwat\\u00f3w Wolnej Ziemi chronionych przez te AJT.<br/> 13.6. Walne Zebranie mo\\u017ce uchwali\\u0107 instrukcj\\u0119 opracowywania regulaminu JT z dok\\u0142adnym wyja\\u015bnieniem i rozszerzeniem element\\u00f3w sk\\u0142adowych wymienionych w ust. 13.3 -13.5.<br/></p><p></p><h2>Rozdzia\\u0142 14 - Zarz\\u0105dy Jednostek Terenowych</h2><p>14.1. Ka\\u017cda JT posiada kolektywny organ wykonawczy \\u2013 Zarz\\u0105d Jednostki Terenowej, zwany dalej \\u201eZarz\\u0105dem JT\\u201d.\\u00a0<br/> 14.2. Zarz\\u0105d JT jest wybierany przez Rad\\u0119 JT na czas okre\\u015blony w regulaminie JT.\\u00a0<br/> 14.3. Zarz\\u0105d JT mo\\u017ce by\\u0107 w dowolnym czasie odwo\\u0142any przez Rad\\u0119 JT.\\u00a0<br/> 14.4. Zarz\\u0105d JT wykonuje uchwa\\u0142y Rady JT i reprezentuje JT na zewn\\u0105trz.<br/> 14.5. Do reprezentowania JT na zewn\\u0105trz i dzia\\u0142ania w jej imieniu, w tym do sk\\u0142adania o\\u015bwiadcze\\u0144 woli w imieniu JT, uprawniony jest ka\\u017cdy cz\\u0142onek Zarz\\u0105du JT dzia\\u0142aj\\u0105cy samodzielnie. Uprawnienie to nie obejmuje prawa do reprezentowania AJT w czasie obrad Walnego Zebrania.\\u00a0<br/> 14.6. Do obowi\\u0105zk\\u00f3w Zarz\\u0105du JT nale\\u017c\\u0105:<br/> 1. przesy\\u0142anie do Zarz\\u0105du Zwi\\u0105zku kopii protoko\\u0142\\u00f3w z zebra\\u0144 Rady JT wraz z kopiami wszystkich uchwa\\u0142 i za\\u0142\\u0105cznik\\u00f3w, w terminie miesi\\u0105ca od daty zebrania,<br/> 2. prowadzenie i aktualizowanie listy cz\\u0142onk\\u00f3w Rady JT, a tak\\u017ce przesy\\u0142anie tej listy do Zarz\\u0105du Zwi\\u0105zku po ka\\u017cdorazowej aktualizacji w terminie 30 dni od wprowadzenia zmian,<br/> 3. przesy\\u0142anie do Zarz\\u0105du Zwi\\u0105zku corocznych sprawozda\\u0144 z dzia\\u0142alno\\u015bci JT do 31 marca\\u00a0 nast\\u0119pnego roku.<br/> 14.7. Do obowi\\u0105zk\\u00f3w Zarz\\u0105du AJT opr\\u00f3cz tych wymienionych w ust. 14.6. nale\\u017cy r\\u00f3wnie\\u017c prowadzenie i aktualizowanie listy mieszka\\u0144c\\u00f3w AJT, a tak\\u017ce przesy\\u0142anie tej listy do Zarz\\u0105du Zwi\\u0105zku po ka\\u017cdorazowej aktualizacji w terminie 30 dni od wprowadzenia zmian.<br/> 14.8. Pe\\u0142nienie funkcji cz\\u0142onka Zarz\\u0105du JT ustaje na skutek:<br/> 1. pisemnej rezygnacji,<br/> 2. odwo\\u0142ania przez Rad\\u0119 AJT,<br/> 3. utraty cz\\u0142onkostwa w Zwi\\u0105zku.<br/></p><p></p><h2>Rozdzia\\u0142 15 - Przepisy ko\\u0144cowe dotycz\\u0105ce Jednostek Terenowych</h2><p>15.1. Komisja Rewizyjna mo\\u017ce kontrolowa\\u0107 ca\\u0142okszta\\u0142t dzia\\u0142alno\\u015bci JT. Ma ona prawo do pe\\u0142nej informacji o dzia\\u0142alno\\u015bci JT, wgl\\u0105du do dokumentacji oraz \\u017c\\u0105dania udzielenia wyja\\u015bnie\\u0144 i informacji przez Zarz\\u0105d JT oraz osoby zaanga\\u017cowane w dzia\\u0142alno\\u015b\\u0107 w imieniu lub na rzecz JT.<br/> 15.2. Komisja Rewizyjna mo\\u017ce przekaza\\u0107 Radzie JT, Zarz\\u0105dowi JT, Walnemu Zebraniu lub Zarz\\u0105dowi Zwi\\u0105zku wnioski lub uwagi dotycz\\u0105ce dzia\\u0142alno\\u015bci JT.\\u00a0<br/> 15.3. W przypadku gdy dzia\\u0142alno\\u015b\\u0107 JT jest sprzeczna ze statutem Zwi\\u0105zku lub z powszechnie obowi\\u0105zuj\\u0105cym prawem, Komisja Rewizyjna mo\\u017ce wyda\\u0107 zalecenia maj\\u0105ce na celu przywr\\u00f3cenie zgodno\\u015bci dzia\\u0142a\\u0144 JT ze statutem Zwi\\u0105zku lub z powszechnie obowi\\u0105zuj\\u0105cym prawem. Zalecenia te s\\u0105 wi\\u0105\\u017c\\u0105ce dla organ\\u00f3w JT i powinny zosta\\u0107 wykonane w terminie okre\\u015blonym przez Komisj\\u0119 Rewizyjn\\u0105.\\u00a0<br/> 15.4. Organ JT mo\\u017ce odwo\\u0142a\\u0107 si\\u0119 od zalece\\u0144 Komisji Rewizyjnej do Walnego Zebrania. Wobec uchwa\\u0142 Walnego Zebrania w tej sprawie nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu cz\\u0142onkowie Zwi\\u0105zku b\\u0119d\\u0105cy jednocze\\u015bnie cz\\u0142onkami Rady lub Zarz\\u0105du danej JT.<br/> 15.5. W przypadku powa\\u017cnego lub uporczywego naruszania postanowie\\u0144 statutu Zwi\\u0105zku lub powszechnie obowi\\u0105zuj\\u0105cego prawa i niewykonywania zalece\\u0144 Komisji Rewizyjnej maj\\u0105cych na celu przywr\\u00f3cenie zgodno\\u015bci dzia\\u0142a\\u0144 JT ze statutem Zwi\\u0105zku lub z powszechnie obowi\\u0105zuj\\u0105cym prawem, Walne Zebranie mo\\u017ce na wniosek Komisji Rewizyjnej zdecydowa\\u0107 o zawieszeniu dzia\\u0142alno\\u015bci Rady JT oraz powo\\u0142aniu Rady Naprawczej JT, kt\\u00f3ra przejmuje wszystkie funkcje Rady JT. Cz\\u0142onk\\u00f3w Rady Naprawczej JT powo\\u0142uje i odwo\\u0142uje Komisja Rewizyjna. Walne Zebranie na wniosek Komisji Rewizyjnej rozwi\\u0105zuje Rad\\u0119 Naprawcz\\u0105 JT i przywraca Radzie JT mo\\u017cliwo\\u015b\\u0107 pe\\u0142nienia przez ni\\u0105 swoich funkcji w przypadku gdy przywr\\u00f3cona zostanie zgodno\\u015b\\u0107 dzia\\u0142alno\\u015bci JT z postanowieniami statutu Zwi\\u0105zku oraz powszechnie obowi\\u0105zuj\\u0105cym prawem. Wobec uchwa\\u0142 Walnego Zebrania w tych sprawach nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu cz\\u0142onkowie Zwi\\u0105zku b\\u0119d\\u0105cy jednocze\\u015bnie cz\\u0142onkami Rady lub Rady Naprawczej danej JT.<br/> 15.6. W sytuacjach szczeg\\u00f3lnie uzasadnionych, na wniosek co najmniej 5 os\\u00f3b mieszkaj\\u0105cych przynajmniej od roku na terenie nieruchomo\\u015bci oddanych do u\\u017cytkowania AJT, Walne Zebranie mo\\u017ce rozwi\\u0105za\\u0107 dotychczasow\\u0105 Rad\\u0119 AJT i powo\\u0142a\\u0107 now\\u0105 Rad\\u0119 AJT, sk\\u0142adaj\\u0105c\\u0105 si\\u0119 ze wszystkich sta\\u0142ych mieszka\\u0144c\\u00f3w nieruchomo\\u015bci oddanych do u\\u017cytkowania tej AJT. Wobec uchwa\\u0142y Walnego Zebrania w tej sprawie nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu cz\\u0142onkowie Zwi\\u0105zku b\\u0119d\\u0105cy jednocze\\u015bnie cz\\u0142onkami Rady danej AJT.<br/> 15.7. JT mo\\u017ce zosta\\u0107 rozwi\\u0105zana uchwa\\u0142\\u0105 Rady JT podj\\u0119t\\u0105 w drodze konsensusu na zasadzie przyzwolenia w obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w Rady JT. Uchwa\\u0142a ta wchodzi w \\u017cycie po zatwierdzeniu jej przez Walne Zebranie.<br/> 15.8. PJT mo\\u017ce zosta\\u0107 rozwi\\u0105zana uchwa\\u0142\\u0105 Walnego Zebrania w przypadku ponad rocznego braku aktywno\\u015bci Zarz\\u0105du PJT i Rady PJT, s\\u0142u\\u017c\\u0105cej realizacji cel\\u00f3w, dla kt\\u00f3rych zosta\\u0142a powo\\u0142ana.<br/></p><p></p><h2>Rozdzia\\u0142 16 - Zmiana statutu Zwi\\u0105zku</h2><p>116.1. Zmiana statutu Zwi\\u0105zku nast\\u0119puje na podstawie uchwa\\u0142y Walnego Zebrania, podj\\u0119tej w drodze konsensusu na zasadzie przyzwolenia w obecno\\u015bci przynajmniej 2/3 cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku, z zastrze\\u017ceniem ust. 16.3, przy czym informacja o porz\\u0105dku obrad Walnego Zebrania powinna wyra\\u017anie wskazywa\\u0107, kt\\u00f3re postanowienia statutu maj\\u0105 ulec zmianie.<br/> 16.2. Zmiana statutu Zwi\\u0105zku nie mo\\u017ce w istotny spos\\u00f3b naruszy\\u0107 podstawowego celu realizowanego przez Zwi\\u0105zek oraz konsensualnego modelu podejmowania decyzji przez wszystkie organy Zwi\\u0105zku oraz JT.<br/> 16.3. Zmiana rozdzia\\u0142\\u00f3w 10 - 17, opr\\u00f3cz warunku wymienionego w ust. 16.1, wymaga zgody wszystkich Rad JT w formie uchwa\\u0142 podj\\u0119tych przy udziale wszystkich uprawnionych do decydowania cz\\u0142onk\\u00f3w tych Rad.<br/></p><p></p><h2>Rozdzia\\u0142 17 - Przepisy ko\\u0144cowe</h2><p>17.1. Rozwi\\u0105zanie Zwi\\u0105zku mo\\u017ce nast\\u0105pi\\u0107 tylko w przypadku braku AJT lub po ich uprzednim rozwi\\u0105zaniu zgodnie z ust. 15.7.<br/> 17.2. Walne Zebranie mo\\u017ce w obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w Zwi\\u0105zku zdecydowa\\u0107 o rozwi\\u0105zaniu Zwi\\u0105zku, okre\\u015blaj\\u0105c przeznaczenie sk\\u0142adnik\\u00f3w maj\\u0105tku pozosta\\u0142ego po likwidacji Zwi\\u0105zku oraz powo\\u0142uj\\u0105c Komisj\\u0119 Likwidacyjn\\u0105.<br/> 17.3. Zadaniem Komisji Likwidacyjnej jest przeprowadzenie likwidacji Zwi\\u0105zku, w tym zako\\u0144czenie jego spraw maj\\u0105tkowych i uregulowanie jego zobowi\\u0105za\\u0144. Komisja Likwidacyjna podejmuje decyzje w drodze konsensusu opartego na zasadzie przyzwolenia. Do reprezentowania Zwi\\u0105zku uprawnieni s\\u0105 wszyscy cz\\u0142onkowie Komisji Likwidacyjnej dzia\\u0142aj\\u0105cy \\u0142\\u0105cznie.<br/> 17.4. Nieruchomo\\u015bci nale\\u017c\\u0105ce do Zwi\\u0105zku nie mog\\u0105 zosta\\u0107 sprzedane w trakcie likwidacji Zwi\\u0105zku. Powinny one zosta\\u0107 przekazane w ca\\u0142o\\u015bci podmiotom zapewniaj\\u0105cym kontynuacj\\u0119 realizacji przez te nieruchomo\\u015bci cel\\u00f3w, do kt\\u00f3rych zosta\\u0142y przeznaczone.\\u00a0<br/> 17.5. Maj\\u0105tek pozosta\\u0142y po likwidacji Zwi\\u0105zku przekazuje si\\u0119 organizacjom pozarz\\u0105dowym, w pierwszej kolejno\\u015bci tym, kt\\u00f3rych dzia\\u0142alno\\u015b\\u0107 jest zbie\\u017cna z celami Zwi\\u0105zku.<br/> 17.6. W sprawach nieuregulowanych niniejszym statutem maj\\u0105 zastosowanie przepisy obowi\\u0105zuj\\u0105cego prawa.</p>", "link_text": "", "link": ""}	\N	11	2
17	f	2021-03-03 08:13:01.921718+01	{"pk": 11, "path": "000100010006", "depth": 3, "numchild": 0, "translation_key": "f21449e8-dcf9-4b32-9694-5464f37a5d5f", "locale": 1, "title": "Statut Zwi\\u0105zku Wolnej Ziemi", "draft_title": "Statut Zwi\\u0105zku Wolnej Ziemi", "slug": "statut-zwi\\u0105zku-wolnej-ziemi", "content_type": 45, "live": true, "has_unpublished_changes": false, "url_path": "/home/statut-zwi\\u0105zku-wolnej-ziemi/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "statut": "<p> </p><h2>Preambu\\u0142a</h2><p>My, ludzie tworz\\u0105cy Zwi\\u0105zek Wolnej Ziemi,  uznajemy si\\u0119 za opiekun\\u00f3w i stra\\u017cnik\\u00f3w Ziemi, a w szczeg\\u00f3lno\\u015bci teren\\u00f3w,  na kt\\u00f3rych \\u017cyjemy. D\\u0105\\u017cymy do rozwoju \\u015bwiadomo\\u015bci poprzez odtworzenie naturalnej relacji  cz\\u0142owieka z nasz\\u0105 Planet\\u0105. Przyjmujemy, \\u017ce b\\u0119d\\u0105c r\\u00f3wnymi wobec Ziemi, na kt\\u00f3rej \\u017cyjemy, jeste\\u015bmy  r\\u00f3wnie\\u017c r\\u00f3wni wobec siebie i ca\\u0142ej Przyrody. O\\u015bwiadczamy, \\u017ce Ziemia i ca\\u0142e \\u017cycie na Ziemi stanowi\\u0105 dla nas wielk\\u0105  warto\\u015b\\u0107 przez sam fakt swego istnienia. Uznajemy, \\u017ce naszym zadaniem jest ochrona Ziemi, naszego Domu i Miejsca w  Kosmosie. Uznajemy, \\u017ce Ziemia ma takie samo prawo do istnienia i uszanowania jej  bytu, jakie maj\\u0105 wszystkie istoty. Pragniemy tworzy\\u0107 wsp\\u00f3lnoty, w kt\\u00f3rych b\\u0119dziemy razem \\u017cyli,  wsp\\u00f3\\u0142pracowali ze sob\\u0105 i uczyli si\\u0119 od siebie dla dobra nas samych i  ca\\u0142ego \\u017bycia. Pragniemy, aby wszyscy ludzie \\u017cyli w harmonii ze sob\\u0105 i z ca\\u0142\\u0105 Przyrod\\u0105,  szanuj\\u0105c i chroni\\u0105c Ziemi\\u0119.</p><p>    </p><h2>Rozdzia\\u0142 1 - Postanowienia og\\u00f3lne</h2><p>1.1.\\u00a0 Zwi\\u0105zek Wolnej Ziemi, zwany dalej  \\u201eZwi\\u0105zkiem\\u201d, jest stowarzyszeniem dzia\\u0142aj\\u0105cym w oparciu o przepisy  powszechnie obowi\\u0105zuj\\u0105cego prawa oraz postanowienia niniejszego statutu.  <br/> 1.2. Zwi\\u0105zek jest dobrowolnym, trwa\\u0142ym zrzeszeniem o celach niezarobkowych.<br/> 1.3. Zwi\\u0105zek mo\\u017ce pos\\u0142ugiwa\\u0107 si\\u0119 skr\\u00f3tem: \\u201eZWZ\\u201d, a tak\\u017ce t\\u0142umaczeniem swojej nazwy na j\\u0119zyki obce.<br/> 1.4. Siedzib\\u0105 Zwi\\u0105zku jest miasto Lubliniec\\u00a0<br/> 1.5. Zwi\\u0105zek prowadzi dzia\\u0142alno\\u015b\\u0107 na terenie ca\\u0142ej Polski i poza jej granicami.<br/> 1.6. Zwi\\u0105zek opiera swoj\\u0105 dzia\\u0142alno\\u015b\\u0107 na pracy spo\\u0142ecznej cz\\u0142onk\\u00f3w.<br/> 1.7. Zwi\\u0105zek mo\\u017ce nale\\u017ce\\u0107 do organizacji mi\\u0119dzynarodowych, je\\u017celi  przynale\\u017cno\\u015b\\u0107 taka nie narusza zobowi\\u0105za\\u0144 wynikaj\\u0105cych z um\\u00f3w  mi\\u0119dzynarodowych, kt\\u00f3rych Rzeczpospolita Polska jest stron\\u0105, oraz  przyst\\u0119powa\\u0107 do zwi\\u0105zk\\u00f3w stowarzysze\\u0144.<br/> 1.8. Zwi\\u0105zek mo\\u017ce posiada\\u0107 terenowe jednostki organizacyjne.<br/> 1.9. Zwi\\u0105zek jest zawi\\u0105zany na czas nieograniczony.\\u00a0<br/></p><p>    </p><h2>Rozdzia\\u0142 2 - Cele i zasady dzia\\u0142ania</h2><p>2.1. Podstawowym celem Zwi\\u0105zku jest dzia\\u0142anie  dla dobra Ziemi i wszystkich mieszkaj\\u0105cych na niej istot poprzez  tworzenie obszar\\u00f3w Wolnej Ziemi oraz zak\\u0142adanie i rozw\\u00f3j wsp\\u00f3lnot  intencjonalnych \\u017cyj\\u0105cych w harmonii z Natur\\u0105.<br/> 2.2 Celami szczeg\\u00f3\\u0142owymi Zwi\\u0105zku s\\u0105:<br/> 1. inicjowanie, promocja i rozw\\u00f3j wsp\\u00f3lnot intencjonalnych, spo\\u0142eczno\\u015bci  lokalnych i kooperatyw d\\u0105\\u017c\\u0105cych do zwi\\u0119kszenia stopnia swej  samowystarczalno\\u015bci oraz minimalizacji w\\u0142asnego \\u015bladu ekologicznego, w  spos\\u00f3b umo\\u017cliwiaj\\u0105cy trwanie i rozw\\u00f3j powy\\u017cszych inicjatyw przez wiele  pokole\\u0144,<br/> 2. tworzenie, poszukiwanie, testowanie, wdra\\u017canie i promocja rozwi\\u0105za\\u0144 i  technologii u\\u0142atwiaj\\u0105cych wsp\\u00f3lnotom intencjonalnym, spo\\u0142eczno\\u015bciom  lokalnym i kooperatywom osi\\u0105gni\\u0119cie samowystarczalno\\u015bci we wszelkich  mo\\u017cliwych aspektach,<br/> 3. tworzenie wsp\\u00f3\\u0142pracuj\\u0105cej sieci miejsc Wolnej Ziemi,<br/> 4. dzia\\u0142anie na rzecz kszta\\u0142towania stanu prawnego korzystnego dla  tworzenia i rozwoju wsp\\u00f3lnot intencjonalnych, spo\\u0142eczno\\u015bci lokalnych i  kooperatyw,<br/> 5. ochrona i odtwarzanie \\u015brodowiska przyrodniczego, siedlisk ro\\u015blin i zwierz\\u0105t oraz bior\\u00f3\\u017cnorodno\\u015bci,<br/> 6. tworzenie rezerwat\\u00f3w Wolnej Ziemi oraz miejsc bogatych przyrodniczo, w  kt\\u00f3rych ludzie nie ingeruj\\u0105 w Ziemi\\u0119 i zasiedlaj\\u0105c\\u0105 j\\u0105 Przyrod\\u0119,<br/> 7. tworzenie i wspieranie inicjatyw i program\\u00f3w spo\\u0142ecznych maj\\u0105cych na  celu rozwi\\u0105zanie egzystencjalnych, ekonomicznych, socjalnych,  ekologicznych i zdrowotnych problem\\u00f3w wsp\\u00f3\\u0142czesnego spo\\u0142ecze\\u0144stwa,<br/> 8. tworzenie i wdra\\u017canie ekologicznych rozwi\\u0105za\\u0144 poprawiaj\\u0105cych efektywno\\u015b\\u0107 ogrodnicz\\u0105 i rolnicz\\u0105,<br/> 9. wspieranie i promocja\\u00a0 zr\\u00f3wnowa\\u017conego rozwoju, gospodarki ekologicznej, kooperatyzmu, ekonomii wsp\\u00f3\\u0142dzielenia,<br/> 10. promowanie idei i warto\\u015bci Zwi\\u0105zku w\\u015br\\u00f3d og\\u00f3\\u0142u spo\\u0142ecze\\u0144stwa,<br/> 11. wsp\\u00f3\\u0142praca z innymi organizacjami o podobnych celach dzia\\u0142ania.<br/> 2.3. Zwi\\u0105zek mo\\u017ce realizowa\\u0107 swoje cele poprzez:<br/> 1. dzia\\u0142alno\\u015b\\u0107 informacyjn\\u0105,<br/> 2. tworzenie i prowadzenie stron internetowych,<br/> 3. organizacj\\u0119 spotka\\u0144, wyk\\u0142ad\\u00f3w i prelekcji,<br/> 4. opracowywanie materia\\u0142\\u00f3w edukacyjnych, r\\u00f3wnie\\u017c w wersji elektronicznej,<br/> 5. pozyskiwanie nieruchomo\\u015bci,\\u00a0<br/> 6. gospodarowanie nieruchomo\\u015bciami nale\\u017c\\u0105cymi do Zwi\\u0105zku lub przez niego  zarz\\u0105dzanymi, zgodnie z zasadami zr\\u00f3wnowa\\u017conego rozwoju, bez zagro\\u017cenia  dla \\u015brodowiska naturalnego i zaburzania r\\u00f3wnowagi ekosystemu,<br/> 7. preferowanie i promowanie na terenie nieruchomo\\u015bci u\\u017cytkowanych przez  Zwi\\u0105zek i poza nimi technik budownictwa tradycyjnego i naturalnego z  u\\u017cyciem materia\\u0142\\u00f3w przyjaznych dla \\u015brodowiska,<br/> 8. wsp\\u00f3\\u0142prac\\u0119 z organami pa\\u0144stwowymi, organizacjami pozarz\\u0105dowymi i  innymi osobami prawnymi lub fizycznymi; wsp\\u00f3\\u0142praca ta mo\\u017ce mie\\u0107  charakter wsp\\u00f3\\u0142dzia\\u0142ania, wsparcia organizacyjnego, informacyjnego,  finansowego, rzeczowego lub inny,<br/> 9. rzecznictwo, organizowanie konsultacji spo\\u0142ecznych, petycji i  interwencji, a tak\\u017ce sk\\u0142adanie wniosk\\u00f3w i skarg do instytucji  publicznych,<br/> 10. prowadzenie program\\u00f3w i akcji spo\\u0142eczno\\u015bciowego zbierania pieni\\u0119dzy,  a tak\\u017ce innych dzia\\u0142a\\u0144 maj\\u0105cych na celu zbieranie \\u015brodk\\u00f3w finansowych,<br/> 11. wspieranie wsp\\u00f3\\u0142pracy mi\\u0119dzy wsp\\u00f3lnotami intencjonalnymi<br/>, 12. gromadzenie i udost\\u0119pnianie informacji na temat wsp\\u00f3lnot  intencjonalnych i ich dzia\\u0142a\\u0144, a tak\\u017ce informacji przydatnych w  tworzeniu i rozwoju wsp\\u00f3lnot intencjonalnych,<br/> 13. tworzenie przestrzeni dla dialogu i wymiany do\\u015bwiadcze\\u0144 mi\\u0119dzy wsp\\u00f3lnotami intencjonalnymi,<br/> 14. prowadzenie dzia\\u0142alno\\u015bci rolniczej i ogrodniczej w spos\\u00f3b jak  najbardziej zgodny z Natur\\u0105, w tym upraw\\u0119 ziemi, tworzenie ogrod\\u00f3w,  sianie i sadzenie ro\\u015blin,<br/> 15. stosowanie naturalnych \\u015brodk\\u00f3w i metod poprawiaj\\u0105cych sk\\u0142ad i kondycj\\u0119 gleby, a tak\\u017ce chroni\\u0105cych zdrowie ro\\u015blin.<br/> 2.4. Zwi\\u0105zek kieruje si\\u0119 w swojej dzia\\u0142alno\\u015bci otwarto\\u015bci\\u0105 na wsp\\u00f3\\u0142prac\\u0119  z innymi podmiotami, w tym z organizacjami pozarz\\u0105dowymi i instytucjami  publicznymi.<br/> 2.5. Zwi\\u0105zek mo\\u017ce zak\\u0142ada\\u0107 i uczestniczy\\u0107 w sp\\u00f3\\u0142kach polskich lub zagranicznych.<br/> 2.6. Ca\\u0142o\\u015b\\u0107 dochod\\u00f3w uzyskiwanych przez Zwi\\u0105zek jest przeznaczana wy\\u0142\\u0105cznie na dzia\\u0142alno\\u015b\\u0107 statutow\\u0105.<br/> 2.7. Zwi\\u0105zek nie prowadzi dzia\\u0142alno\\u015bci gospodarczej.<br/> 2.8. Zwi\\u0105zek nie prowadzi odp\\u0142atnej dzia\\u0142alno\\u015bci po\\u017cytku publicznego.<br/></p><p>    </p><h2>Rozdzia\\u0142 3 - Cz\\u0142onkowie Zwi\\u0105zku</h2><p>3.1. Cz\\u0142onkowie Zwi\\u0105zku dziel\\u0105 si\\u0119 na:<br/> 1. cz\\u0142onk\\u00f3w zwyczajnych,<br/> 2. cz\\u0142onk\\u00f3w wspieraj\\u0105cych.<br/> 3.2. Cz\\u0142onkiem zwyczajnym Zwi\\u0105zku mo\\u017ce by\\u0107 osoba fizyczna posiadaj\\u0105ca pe\\u0142n\\u0105 zdolno\\u015b\\u0107 do czynno\\u015bci prawnych, kt\\u00f3ra:<br/> 1. w swoim \\u017cyciu codziennym kieruje si\\u0119 warto\\u015bciami Zwi\\u0105zku,<br/> 2. przez ci\\u0105g\\u0142y okres przynajmniej roku aktywnie uczestniczy\\u0142a w dzia\\u0142alno\\u015bci Zwi\\u0105zku jako cz\\u0142onek wspieraj\\u0105cy,<br/> 3. z\\u0142o\\u017cy\\u0142a Zarz\\u0105dowi deklaracj\\u0119 cz\\u0142onkowsk\\u0105 wraz z pisemnymi  rekomendacjami zawieraj\\u0105cymi por\\u0119czenie za t\\u0119 osob\\u0119, udzielonymi przez  przynajmniej dw\\u00f3ch cz\\u0142onk\\u00f3w zwyczajnych.<br/> 3.3. Przyj\\u0119cia nowych cz\\u0142onk\\u00f3w zwyczajnych dokonuje Walne Zebranie w drodze konsensusu na zasadzie przyzwolenia.<br/> 3.4. Delegaci Autonomicznych Jednostek Terenowych, kt\\u00f3rzy nie zostali  uprzednio przyj\\u0119ci do grona cz\\u0142onk\\u00f3w zwyczajnych, staj\\u0105 si\\u0119 cz\\u0142onkami  zwyczajnymi tylko i wy\\u0142\\u0105cznie na czas pe\\u0142nienia przez ka\\u017cdego z nich  funkcji Delegata Autonomicznej Jednostki Terenowej.<br/> 3.5. Cz\\u0142onkiem wspieraj\\u0105cym Zwi\\u0105zku mo\\u017ce by\\u0107 osoba fizyczna lub prawna zainteresowana dzia\\u0142alno\\u015bci\\u0105 Zwi\\u0105zku, kt\\u00f3ra:<br/> 1. zadeklarowa\\u0142a na rzecz Zwi\\u0105zku pomoc materialn\\u0105, intelektualn\\u0105, fizyczn\\u0105 lub inn\\u0105,<br/> 2. z\\u0142o\\u017cy\\u0142a Zarz\\u0105dowi deklaracj\\u0119 cz\\u0142onkowsk\\u0105.<br/> 3.6. Osoba prawna b\\u0119d\\u0105ca cz\\u0142onkiem wspieraj\\u0105cym Zwi\\u0105zku dzia\\u0142a w nim przez swojego przedstawiciela.<br/> 3.7. Przyj\\u0119cia nowych cz\\u0142onk\\u00f3w wspieraj\\u0105cych dokonuje Zarz\\u0105d uchwa\\u0142\\u0105 podj\\u0119t\\u0105 w ci\\u0105gu dw\\u00f3ch miesi\\u0119cy od daty z\\u0142o\\u017cenia deklaracji.<br/> 3.8. Cz\\u0142onek zwyczajny ma prawo:<br/> 1. wybiera\\u0107 i by\\u0107 wybieranym do organ\\u00f3w Zwi\\u0105zku,<br/> 2. uczestniczy\\u0107 z g\\u0142osem stanowi\\u0105cym w Walnym Zebraniu,<br/> 3. uzyskiwa\\u0107 pe\\u0142n\\u0105 informacj\\u0119 na temat dzia\\u0142alno\\u015bci organ\\u00f3w Zwi\\u0105zku,<br/> 4. zg\\u0142asza\\u0107 Walnemu Zebraniu, Zarz\\u0105dowi i Komisji Rewizyjnej wnioski, zapytania i postulaty dotycz\\u0105ce dzia\\u0142alno\\u015bci Zwi\\u0105zku,<br/> 5. korzysta\\u0107 z pomocy i zaplecza Zwi\\u0105zku w podejmowanych dzia\\u0142aniach zgodnych z celami statutowymi Zwi\\u0105zku,<br/> 6. korzysta\\u0107 z maj\\u0105tku Zwi\\u0105zku wed\\u0142ug zasad opisanych w wewn\\u0119trznych regulaminach,<br/> 7. bra\\u0107 udzia\\u0142 w pracach i przedsi\\u0119wzi\\u0119ciach Zwi\\u0105zku.<br/> 3.9. Cz\\u0142onek zwyczajny obowi\\u0105zany jest do:<br/> 1. udzia\\u0142u w dzia\\u0142alno\\u015bci Zwi\\u0105zku i realizacji jego cel\\u00f3w,<br/> 2. podejmowania decyzji w sprawach Zwi\\u0105zku,\\u00a0<br/> 3. przestrzegania powszechnie obowi\\u0105zuj\\u0105cych przepis\\u00f3w prawa zwi\\u0105zanych z  dzia\\u0142alno\\u015bci\\u0105 Zwi\\u0105zku, a tak\\u017ce statutu Zwi\\u0105zku, uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku  oraz regulamin\\u00f3w Jednostek Terenowych na terenach u\\u017cytkowanych przez te  Jednostki,\\u00a0<br/> 4. uczestnictwa w miar\\u0119 mo\\u017cliwo\\u015bci w ka\\u017cdym Walnym Zebraniu,<br/> 5. regularnego wspierania Zwi\\u0105zku poprzez op\\u0142acanie sk\\u0142adek lub w innej  dobrowolnie uzgodnionej z Zarz\\u0105dem formie pomocy materialnej,  intelektualnej lub fizycznej,<br/> 6. dbania o mienie Zwi\\u0105zku.<br/> 3.10. Cz\\u0142onek wspieraj\\u0105cy ma prawo:<br/> 1. uczestniczy\\u0107 z g\\u0142osem doradczym w Walnym Zebraniu,<br/> 2. uzyskiwa\\u0107 pe\\u0142n\\u0105 informacj\\u0119 na temat dzia\\u0142alno\\u015bci organ\\u00f3w Zwi\\u0105zku,<br/> 3. zg\\u0142asza\\u0107 Walnemu Zebraniu, Zarz\\u0105dowi i Komisji Rewizyjnej wnioski, zapytania i postulaty dotycz\\u0105ce dzia\\u0142alno\\u015bci Zwi\\u0105zku,<br/> 4. korzysta\\u0107 z pomocy i zaplecza Zwi\\u0105zku w podejmowanych dzia\\u0142aniach zgodnych z celami statutowymi Zwi\\u0105zku,<br/> 5. korzysta\\u0107 z maj\\u0105tku Zwi\\u0105zku wed\\u0142ug zasad opisanych w regulaminach wewn\\u0119trznych,<br/> 6. bra\\u0107 udzia\\u0142 w pracach i przedsi\\u0119wzi\\u0119ciach Zwi\\u0105zku.<br/> 3.11. Cz\\u0142onek wspieraj\\u0105cy obowi\\u0105zany jest do:<br/> 1. przestrzegania powszechnie obowi\\u0105zuj\\u0105cych przepis\\u00f3w prawa zwi\\u0105zanych z  dzia\\u0142alno\\u015bci\\u0105 Zwi\\u0105zku, a tak\\u017ce statutu Zwi\\u0105zku, uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku  oraz regulamin\\u00f3w Jednostek Terenowych na terenach u\\u017cytkowanych przez te  Jednostki.<br/> 2. regularnego wspierania Zwi\\u0105zku poprzez op\\u0142acanie sk\\u0142adek lub w innej  dobrowolnie uzgodnionej z Zarz\\u0105dem formie pomocy materialnej,  intelektualnej lub fizycznej,<br/> 3. dbania o mienie Zwi\\u0105zku.<br/> 3.12. Zarz\\u0105d drog\\u0105 uchwa\\u0142y mo\\u017ce okresowo lub trwale zmieni\\u0107 status  cz\\u0142onka zwyczajnego na status cz\\u0142onka wspieraj\\u0105cego, wy\\u0142\\u0105cznie na pro\\u015bb\\u0119  osoby zainteresowanej zmian\\u0105 swojego statusu.<br/></p><p>    </p><h2>Rozdzia\\u0142 4 - Zawieszenie i utrata cz\\u0142onkostwa\\u00a0</h2><p>4.1. Zawieszenie cz\\u0142onkostwa skutkuje:<br/> 1. brakiem mo\\u017cliwo\\u015bci uczestniczenia z g\\u0142osem stanowi\\u0105cym w Walnym Zebraniu,<br/> 2. brakiem mo\\u017cliwo\\u015bci wybierania i bycia wybieranym do organ\\u00f3w Zwi\\u0105zku.\\u00a0<br/> 4.2. Cz\\u0142onkostwo w Zwi\\u0105zku mo\\u017ce w drodze uchwa\\u0142y Zarz\\u0105du lub Walnego  Zebrania zosta\\u0107 ze skutkiem natychmiastowym czasowo zawieszone na okres  od 6 do 12 miesi\\u0119cy na skutek:\\u00a0<br/> 1. dobrowolnej czasowej rezygnacji z aktywnego udzia\\u0142u w pracach Zwi\\u0105zku, zg\\u0142oszonej Zarz\\u0105dowi na pi\\u015bmie,<br/> 2. braku dobrowolnego zaanga\\u017cowania w pracach i dzia\\u0142alno\\u015bci Zwi\\u0105zku przez okres minimum roku,<br/> 3. naruszenia postanowie\\u0144 statutu Zwi\\u0105zku, uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku lub  regulamin\\u00f3w Jednostek Terenowych na terenach u\\u017cytkowanych przez te  Jednostki,<br/> 4. dzia\\u0142ania na szkod\\u0119 Zwi\\u0105zku,<br/> 5. zachowania godz\\u0105cego w dobre imi\\u0119 Zwi\\u0105zku.<br/> 4.3. Po up\\u0142ywie okre\\u015blonego w uchwale okresu zawieszenia cz\\u0142onkostwa w  Zwi\\u0105zku, Zarz\\u0105d lub Walne Zebranie mo\\u017ce w przypadku dalszego istnienia  przyczyny okre\\u015blonej w ust. 4.2. pkt. 1-5 podj\\u0105\\u0107 decyzj\\u0119 o przed\\u0142u\\u017ceniu  okresu zawieszenia cz\\u0142onkostwa w Zwi\\u0105zku o dalszy okres od 6 do 12  miesi\\u0119cy. W przypadku gdy przyczyna zawieszenia cz\\u0142onkostwa w Zwi\\u0105zku  przestanie istnie\\u0107, Zarz\\u0105d lub Walne Zebranie mo\\u017ce z w\\u0142asnej inicjatywy  lub na wniosek osoby, kt\\u00f3rej cz\\u0142onkostwo w Zwi\\u0105zku zosta\\u0142o zawieszone,  skr\\u00f3ci\\u0107 okres zawieszenia cz\\u0142onkostwa w Zwi\\u0105zku.\\u00a0<br/> 4.4. Od uchwa\\u0142y Zarz\\u0105du stwierdzaj\\u0105cej zawieszenie cz\\u0142onkostwa w Zwi\\u0105zku  lub przed\\u0142u\\u017cenie okresu zawieszenia cz\\u0142onkowi, kt\\u00f3rego uchwa\\u0142a dotyczy,  przys\\u0142uguje odwo\\u0142anie do Walnego Zebrania. Od uchwa\\u0142y Walnego Zebrania  stwierdzaj\\u0105cej zawieszenie cz\\u0142onkostwa w Zwi\\u0105zku lub przed\\u0142u\\u017cenie okresu  zawieszenia cz\\u0142onkowi, kt\\u00f3rego uchwa\\u0142a dotyczy, przys\\u0142uguje wniosek o  ponowne rozpatrzenie sprawy przez Walne Zebranie.<br/> 4.5. Odwo\\u0142anie oraz wniosek o ponowne rozpatrzenie sprawy, o kt\\u00f3rych  mowa w ust. 4.4, sk\\u0142ada si\\u0119 pisemnie za po\\u015brednictwem Zarz\\u0105du w terminie  miesi\\u0105ca od daty otrzymania informacji o zawieszeniu. Walne Zebranie  rozpatruje odwo\\u0142anie w czasie najbli\\u017cszych obrad, a wniosek o ponowne  rozpatrzenie sprawy - w czasie najbli\\u017cszych obrad odbywaj\\u0105cych si\\u0119 po  obradach, w czasie kt\\u00f3rych zosta\\u0142a podj\\u0119ta decyzja o zawieszeniu  cz\\u0142onkostwa w Zwi\\u0105zku lub przed\\u0142u\\u017ceniu okresu zawieszenia. Decyzja  Walnego Zebrania w tej sprawie jest ostateczna. Cz\\u0142onek Zwi\\u0105zku, kt\\u00f3rego  dotyczy decyzja w sprawie zawieszenia cz\\u0142onkostwa lub przed\\u0142u\\u017cenia  okresu zawieszenia, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad  Walnego Zebrania.\\u00a0<br/> 4.6. Utrata cz\\u0142onkostwa w Zwi\\u0105zku nast\\u0119puje na skutek:\\u00a0<br/> 1. pisemnej rezygnacji cz\\u0142onka Zwi\\u0105zku z\\u0142o\\u017conej Zarz\\u0105dowi,\\u00a0<br/> 2. \\u015bmierci cz\\u0142onka Zwi\\u0105zku,<br/> 3. utraty osobowo\\u015bci prawnej przez osob\\u0119 prawn\\u0105 b\\u0119d\\u0105c\\u0105 cz\\u0142onkiem wspieraj\\u0105cym Zwi\\u0105zku,<br/> 4. wykluczenia ze Zwi\\u0105zku z przyczyn okre\\u015blonych w ust. 4.2 pkt. 2-5.<br/> 4.7. Wykluczenie ze Zwi\\u0105zku nast\\u0119puje w drodze uchwa\\u0142y Walnego Zebrania  podj\\u0119tej po minimum rocznym okresie zawieszenia cz\\u0142onka, kt\\u00f3rego  dotyczy.<br/></p><p>    </p><h2>Rozdzia\\u0142 5 - Organy Zwi\\u0105zku\\u00a0</h2><p>5.1. Organami Zwi\\u0105zku s\\u0105:\\u00a0<br/> 1. Walne Zebranie,\\u00a0<br/> 2. Zarz\\u0105d,\\u00a0<br/> 3. Komisja Rewizyjna.<br/> 5.2. Cz\\u0142onkowie organ\\u00f3w Zwi\\u0105zku pe\\u0142ni\\u0105 swoje funkcje bezp\\u0142atnie.<br/> 5.3. Osoba pe\\u0142ni\\u0105ca funkcj\\u0119 cz\\u0142onka Zarz\\u0105du lub cz\\u0142onka Komisji  Rewizyjnej mo\\u017ce by\\u0107 pracownikiem lub wsp\\u00f3\\u0142pracownikiem Zwi\\u0105zku, je\\u015bli  zakres \\u015bwiadczonych przez ni\\u0105 odp\\u0142atnie us\\u0142ug lub pracy nie wkracza w  oczywisty spos\\u00f3b w zakres funkcji cz\\u0142onka Zarz\\u0105du lub cz\\u0142onka Komisji  Rewizyjnej.<br/> 5.4. Podstawowym modelem podejmowania decyzji realizowanym przez organy  Zwi\\u0105zku jest konsensus oparty na zasadzie przyzwolenia, zgodnie z kt\\u00f3rym  decyzje organ\\u00f3w Zwi\\u0105zku mog\\u0105 zosta\\u0107 podj\\u0119te wtedy, gdy \\u017caden ze  zgromadzonych na zebraniu cz\\u0142onk\\u00f3w organu nie zg\\u0142osi swojego sprzeciwu  wobec podj\\u0119cia danej decyzji.\\u00a0<br/> 5.5. Osoba zg\\u0142aszaj\\u0105ca sprzeciw powinna poda\\u0107 merytoryczne uzasadnienie  swojego sprzeciwu, a tak\\u017ce argumenty przemawiaj\\u0105ce na rzecz racji tego  sprzeciwu. W przeciwnym razie sprzeciw mo\\u017ce nie zosta\\u0107 uwzgl\\u0119dniony  przez pozosta\\u0142ych cz\\u0142onk\\u00f3w organu.\\u00a0<br/> 5.6. Uzasadnienie sprzeciwu i argumenty przemawiaj\\u0105ce na rzecz racji  sprzeciwu mog\\u0105\\u00a0 zosta\\u0107 poddane dyskusji, w wyniku kt\\u00f3rej osoba, kt\\u00f3ra  zg\\u0142osi\\u0142a sprzeciw, mo\\u017ce go wycofa\\u0107.\\u00a0<br/> 5.7. W przypadku zg\\u0142oszenia sprzeciwu osoba, kt\\u00f3ra zg\\u0142osi\\u0142a sprzeciw, a  tak\\u017ce inne osoby obecne na zebraniu mog\\u0105 zaproponowa\\u0107 inne rozwi\\u0105zanie,  kt\\u00f3re mo\\u017ce zosta\\u0107 przyj\\u0119te zamiast wcze\\u015bniej proponowanej decyzji.\\u00a0<br/> 5.8. W przypadku przyj\\u0119cia przez organy Zwi\\u0105zku zasad umo\\u017cliwiaj\\u0105cych  bezpieczny i gwarantuj\\u0105cy zachowanie bezpiecze\\u0144stwa i integralno\\u015bci  danych spos\\u00f3b podejmowania decyzji przez Internet, wszelkie decyzje mog\\u0105  by\\u0107 podejmowane tak\\u017ce drog\\u0105 elektroniczn\\u0105.<br/> 5.9. Cz\\u0142onkowie organ\\u00f3w Zwi\\u0105zku s\\u0105 wybierani i odwo\\u0142ywani przez Walne Zebranie.<br/> 5.10. Cz\\u0142onkowie organ\\u00f3w Zwi\\u0105zku trac\\u0105 mandat w przypadku:<br/> 1. z\\u0142o\\u017cenia rezygnacji,<br/> 2. odwo\\u0142ania przez Walne Zebranie,<br/> 3. utraty pe\\u0142nej zdolno\\u015bci do czynno\\u015bci prawnych,<br/> 4. \\u015bmierci,<br/> 5. zawieszenia lub pozbawienia cz\\u0142onkostwa w Zwi\\u0105zku, w przypadkach okre\\u015blonych w niniejszym statucie.<br/> 5.11. Uzupe\\u0142nienia sk\\u0142adu osobowego organ\\u00f3w Zwi\\u0105zku dokonuje si\\u0119 w  drodze wyboru przez Walne Zebranie lub poprzez kooptacj\\u0119 z grona  cz\\u0142onk\\u00f3w zwyczajnych lub wspieraj\\u0105cych Zwi\\u0105zku i za ich zgod\\u0105. Walne  Zebranie dokonuje weryfikacji decyzji o kooptacji w czasie swoich  najbli\\u017cszych obrad. W przypadku niezaakceptowania tej decyzji, Walne  Zebranie mo\\u017ce samemu uzupe\\u0142ni\\u0107 sk\\u0142ad osobowy organu.\\u00a0<br/> 5.12. W przypadku sporu pomi\\u0119dzy cz\\u0142onkami, organami, Jednostkami  Terenowymi lub organami Jednostek Terenowych Zwi\\u0105zku, obie strony sporu  mog\\u0105 zwr\\u00f3ci\\u0107 si\\u0119 do wsp\\u00f3lnie wybranego mediatora o pomoc w rozwi\\u0105zaniu  sporu. Zarz\\u0105d mo\\u017ce prowadzi\\u0107 list\\u0119 os\\u00f3b, kt\\u00f3re oferuj\\u0105 swoj\\u0105 pomoc w  rozwi\\u0105zywaniu spor\\u00f3w. Je\\u017celi pomoc mediatora nie przyczyni si\\u0119 do  rozwi\\u0105zania sporu w odpowiednim czasie, ka\\u017cda ze stron mo\\u017ce zwr\\u00f3ci\\u0107 si\\u0119  do Walnego Zebrania o pomoc w rozwi\\u0105zaniu sporu. W takim przypadku Walne  Zebranie mo\\u017ce podj\\u0105\\u0107 uchwa\\u0142\\u0119 rozstrzygaj\\u0105c\\u0105 sp\\u00f3r, kt\\u00f3ra obowi\\u0105zuje obie  strony. Strony nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu wobec uchwa\\u0142y Walnego Zebrania  rozstrzygaj\\u0105cej sp\\u00f3r.<br/></p><p>    </p><h2>Rozdzia\\u0142 6 - Walne Zebranie</h2><p>6.1. Walne Zebranie jest najwy\\u017cszym organem Zwi\\u0105zku.<br/> 6.2. W Walnym Zebraniu bior\\u0105 udzia\\u0142 cz\\u0142onkowie zwyczajni z g\\u0142osem stanowi\\u0105cym oraz cz\\u0142onkowie wspieraj\\u0105cy z g\\u0142osem doradczym.<br/> 6.3. Walne Zebranie obraduje wed\\u0142ug uchwalonego przez siebie porz\\u0105dku obrad.<br/> 6.4. Walne Zebranie mo\\u017ce uchwala\\u0107 sw\\u00f3j regulamin dotycz\\u0105cy obrad.<br/> 6.5. Walne Zebranie mo\\u017ce by\\u0107 zwyczajne lub nadzwyczajne.<br/> 6.6. Zwyczajne Walne Zebranie zwo\\u0142uje Zarz\\u0105d przynajmniej raz w roku  jako zebranie sprawozdawcze, tak aby mog\\u0142o si\\u0119 ono odby\\u0107 do ko\\u0144ca  czerwca danego roku.\\u00a0<br/> 6.7. Nadzwyczajne Walne Zebranie zwo\\u0142uje Zarz\\u0105d z w\\u0142asnej inicjatywy, na  wniosek Komisji Rewizyjnej lub na wniosek co najmniej 1/3 og\\u00f3lnej  liczby cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku.<br/> 6.8. Wnosz\\u0105cy o zwo\\u0142anie Nadzwyczajnego Walnego Zebrania s\\u0105 obowi\\u0105zani  z\\u0142o\\u017cy\\u0107 Zarz\\u0105dowi wniosek z podaniem proponowanego porz\\u0105dku obrad, kt\\u00f3ry  Zarz\\u0105d mo\\u017ce uzupe\\u0142ni\\u0107.<br/> 6.9. Nadzwyczajne Walne Zebranie powinno by\\u0107 zwo\\u0142ane w terminie  umo\\u017cliwiaj\\u0105cym odbycie si\\u0119 Walnego Zebrania, nie p\\u00f3\\u017aniej jednak ni\\u017c w  terminie 2 miesi\\u0119cy od dnia otrzymania przez Zarz\\u0105d stosownego wniosku.<br/> 6.10. W przypadku niezwo\\u0142ania Walnego Zebrania w terminach okre\\u015blonych w  ust. 6.6 i 6.9 niniejszego rozdzia\\u0142u Walne Zebranie mo\\u017ce r\\u00f3wnie\\u017c zwo\\u0142a\\u0107  Komisja Rewizyjna.<br/> 6.11. Organ zwo\\u0142uj\\u0105cy Walne Zebranie zawiadamia wszystkich cz\\u0142onk\\u00f3w  Zwi\\u0105zku o jego terminie, miejscu i proponowanym porz\\u0105dku obrad co  najmniej na 14 dni przed terminem Walnego Zebrania przy wykorzystaniu  przynajmniej 2 \\u015brodk\\u00f3w porozumiewania si\\u0119 na odleg\\u0142o\\u015b\\u0107 (w tym mailowo).<br/> 6.12. Obrady Walnego Zebrania mog\\u0105 by\\u0107 prowadzone przez koordynatora  Walnego Zebrania, wybieranego i odwo\\u0142ywanego przez Walne Zebranie w  drodze konsensusu na uzasadniony wniosek jednego z cz\\u0142onk\\u00f3w zwyczajnych  Zwi\\u0105zku. Koordynator Walnego Zebrania mo\\u017ce dba\\u0107 o przestrzeganie  ustalonego porz\\u0105dku obrad i kolejno\\u015bci zabierania g\\u0142osu, a tak\\u017ce o to,  aby wypowiedzi uczestnik\\u00f3w Walnego Zebrania mie\\u015bci\\u0142y si\\u0119 w ustalonych  tematach i ramach czasowych.\\u00a0<br/> 6.13. Walne Zebranie mo\\u017ce podejmowa\\u0107 uchwa\\u0142y w obecno\\u015bci co najmniej \\u2153 cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku.<br/> 6.14. W przypadku braku kworum Walne Zebranie jest zwo\\u0142ywane w drugim  terminie, nie p\\u00f3\\u017aniej ni\\u017c miesi\\u0105c po terminie pierwszym. W takim wypadku  uchwa\\u0142y mog\\u0105 by\\u0107 podejmowane w obecno\\u015bci co najmniej trzech cz\\u0142onk\\u00f3w  zwyczajnych Zwi\\u0105zku. Powy\\u017csze postanowienie nie odnosi si\\u0119 do uchwa\\u0142, o  kt\\u00f3rych mowa w rozdzia\\u0142ach 16 i 17.<br/> 6.15. Proponowany porz\\u0105dek obrad Walnego Zebrania ustala organ zwo\\u0142uj\\u0105cy to zebranie.<br/> 6.16. Cz\\u0142onkowie Zwi\\u0105zku mog\\u0105 bra\\u0107 udzia\\u0142 w Walnym Zebraniu osobi\\u015bcie.  Niedopuszczalny jest udzia\\u0142 przez pe\\u0142nomocnika lub przy u\\u017cyciu  pe\\u0142nomocnictwa do wykonywania prawa g\\u0142osu.<br/> 6.17. W Walnym Zebraniu mog\\u0105 bra\\u0107 udzia\\u0142 z g\\u0142osem doradczym osoby zaproszone przez co najmniej jednego z cz\\u0142onk\\u00f3w Zwi\\u0105zku.<br/> 6.18. Do kompetencji Walnego Zebrania nale\\u017c\\u0105:<br/> 1. uchwalanie kierunk\\u00f3w i program\\u00f3w dzia\\u0142alno\\u015bci Zwi\\u0105zku,<br/> 2. decydowanie o zmianie statutu Zwi\\u0105zku,<br/> 3. zatwierdzanie regulamin\\u00f3w organ\\u00f3w Zwi\\u0105zku i Jednostek Terenowych,<br/> 4. powo\\u0142ywanie Jednostek Terenowych,<br/> 5. wyb\\u00f3r i odwo\\u0142ywanie cz\\u0142onk\\u00f3w Zarz\\u0105du i Komisji Rewizyjnej,<br/> 6. ocena dzia\\u0142alno\\u015bci organ\\u00f3w Zwi\\u0105zku,<br/> 7. zatwierdzanie sprawozda\\u0144 finansowych i merytorycznych Zarz\\u0105du oraz sprawozda\\u0144 Komisji Rewizyjnej,\\u00a0<br/> 8. podejmowanie uchwa\\u0142 w sprawach wniesionych pod obrady przez Zarz\\u0105d,  Komisj\\u0119 Rewizyjn\\u0105 lub cz\\u0142onka Zwi\\u0105zku, o ile nie s\\u0105 one zastrze\\u017cone do  kompetencji innych organ\\u00f3w Zwi\\u0105zku postanowieniami niniejszego statutu  lub przepisami powszechnie obowi\\u0105zuj\\u0105cego prawa,<br/> 9. rozpatrywanie odwo\\u0142a\\u0144 od uchwa\\u0142 Zarz\\u0105du,<br/> 10. podejmowanie uchwa\\u0142 w sprawie przyst\\u0119powania Zwi\\u0105zku do organizacji krajowych lub mi\\u0119dzynarodowych,<br/> 11. podejmowanie uchwa\\u0142 w sprawie rozwi\\u0105zania Zwi\\u0105zku i przeznaczenia jego maj\\u0105tku,<br/> 12. ustalanie zasad p\\u0142atno\\u015bci oraz wysoko\\u015bci sk\\u0142adek cz\\u0142onkowskich,<br/> 13. podejmowanie uchwa\\u0142 w innych sprawach zastrze\\u017conych do kompetencji  Walnego Zebrania postanowieniami niniejszego statutu lub przepisami  powszechnie obowi\\u0105zuj\\u0105cego prawa.<br/></p><p>    </p><h2>Rozdzia\\u0142 7 - Zarz\\u0105d</h2><p>7.1. Zarz\\u0105d kieruje dzia\\u0142aniami Zwi\\u0105zku w oparciu o uchwa\\u0142y Walnego Zebrania i reprezentuje Zwi\\u0105zek na zewn\\u0105trz.<br/> 7.2. Sk\\u0142ad Zarz\\u0105du stanowi\\u0105 cz\\u0142onkowie Zarz\\u0105du w nieparzystej liczbie 3,  5 lub 7, powo\\u0142ani przez Walne Zebranie na czas nieoznaczony.<br/> 7.3. Cz\\u0142onkami Zarz\\u0105du nie mog\\u0105 by\\u0107 osoby, kt\\u00f3re by\\u0142y skazane  prawomocnym wyrokiem za przest\\u0119pstwo umy\\u015blne \\u015bcigane z oskar\\u017cenia  publicznego lub przest\\u0119pstwo skarbowe.<br/> 7.4. Zebrania Zarz\\u0105du odbywaj\\u0105 si\\u0119 w miar\\u0119 potrzeb, jednak nie rzadziej ni\\u017c raz w roku.\\u00a0<br/> 7.5. Zebranie Zarz\\u0105du mo\\u017ce zwo\\u0142a\\u0107 ka\\u017cdy cz\\u0142onek Zarz\\u0105du. Powinien  powiadomi\\u0107 o tym pozosta\\u0142ych cz\\u0142onk\\u00f3w Zarz\\u0105du ze stosownym wyprzedzeniem  (nie p\\u00f3\\u017aniej ni\\u017c 7 dni przed terminem zebrania) umo\\u017cliwiaj\\u0105cym ich  udzia\\u0142, przy wykorzystaniu przynajmniej 2 \\u015brodk\\u00f3w porozumiewania si\\u0119 na  odleg\\u0142o\\u015b\\u0107 (w tym mailowo). Je\\u017celi wszyscy cz\\u0142onkowie Zarz\\u0105du s\\u0105 obecni  na zebraniu, w\\u00f3wczas Zarz\\u0105d mo\\u017ce obradowa\\u0107 i podejmowa\\u0107 uchwa\\u0142y i  decyzje bez uprzedniego formalnego zwo\\u0142ania.<br/> 7.6. Cz\\u0142onkowie Zarz\\u0105du, na pocz\\u0105tku ka\\u017cdego zebrania, mog\\u0105 w drodze konsensusu wybra\\u0107 spo\\u015br\\u00f3d siebie koordynatora zebrania.<br/> 7.7. Zarz\\u0105d mo\\u017ce podejmowa\\u0107 uchwa\\u0142y w sprawach nale\\u017c\\u0105cych do jego kompetencji w obecno\\u015bci co najmniej po\\u0142owy swych cz\\u0142onk\\u00f3w.\\u00a0<br/> 7.8. W zebraniu Zarz\\u0105du mog\\u0105 uczestniczy\\u0107 z g\\u0142osem doradczym eksperci  lub inne osoby zaproszone przez co najmniej jednego z cz\\u0142onk\\u00f3w Zarz\\u0105du.<br/> 7.9. Cz\\u0142onkostwo w Zarz\\u0105dzie ustaje na skutek:<br/> 1. z\\u0142o\\u017cenia pisemnej rezygnacji,<br/> 2. odwo\\u0142ania przez Walne Zebranie,<br/> 3. \\u015bmierci cz\\u0142onka Zarz\\u0105du,\\u00a0<br/> 4. utraty praw obywatelskich na skutek skazania prawomocnym wyrokiem s\\u0105du za przest\\u0119pstwo pope\\u0142nione z winy umy\\u015blnej,<br/> 5. skazania prawomocnym wyrokiem za przest\\u0119pstwo umy\\u015blne \\u015bcigane z oskar\\u017cenia publicznego lub przest\\u0119pstwo skarbowe.<br/> 7.10. Zarz\\u0105d Zwi\\u0105zku w ca\\u0142o\\u015bci lub poszczeg\\u00f3lni cz\\u0142onkowie Zarz\\u0105du mog\\u0105  by\\u0107 odwo\\u0142ani w dowolnym czasie przez Walne Zebranie w drodze uchwa\\u0142y.  Cz\\u0142onkowie Zarz\\u0105du, kt\\u00f3rych dotyczy wniosek o odwo\\u0142anie, nie mog\\u0105 wnie\\u015b\\u0107  sprzeciwu wobec uchwa\\u0142y o odwo\\u0142aniu w czasie obrad Walnego Zebrania.\\u00a0<br/> 7.11. Do kompetencji Zarz\\u0105du nale\\u017c\\u0105:<br/> 1. kierowanie dzia\\u0142aniami Zwi\\u0105zku w oparciu o uchwa\\u0142y Walnego Zebrania,<br/> 2. prowadzenie bie\\u017c\\u0105cych spraw Zwi\\u0105zku,\\u00a0<br/> 3. reprezentowanie Zwi\\u0105zku na zewn\\u0105trz i dzia\\u0142anie w jego imieniu,<br/> 4. wykonywanie uchwa\\u0142 Walnego Zebrania,<br/> 5. prowadzenie gospodarki finansowej Zwi\\u0105zku i zarz\\u0105dzanie jego maj\\u0105tkiem, zgodnie z zasadami ustalonymi przez Walne Zebranie,<br/> 6. sporz\\u0105dzanie sprawozda\\u0144 finansowych i merytorycznych Zwi\\u0105zku,<br/> 7. sk\\u0142adanie Walnemu Zebraniu sprawozda\\u0144 z dzia\\u0142alno\\u015bci Zarz\\u0105du,<br/> 8. uchwalanie regulaminu Zarz\\u0105du, zatwierdzanego przez Walne Zebranie,<br/> 9. podejmowanie uchwa\\u0142 w sprawie przyjmowania cz\\u0142onk\\u00f3w wspieraj\\u0105cych,\\u00a0<br/> 10. podejmowanie uchwa\\u0142 w sprawie zawieszania cz\\u0142onk\\u00f3w Zwi\\u0105zku,\\u00a0\\u00a0<br/> 11. pobieranie sk\\u0142adek cz\\u0142onkowskich i uzgadnianie wsp\\u00f3lnie z cz\\u0142onkami Zwi\\u0105zku innych form \\u015bwiadczonej przez nich pomocy,<br/> 12. prowadzenie rejestru cz\\u0142onk\\u00f3w Zwi\\u0105zku.<br/> 7.12. Reprezentowa\\u0107 Zwi\\u0105zek na zewn\\u0105trz oraz wykonywa\\u0107 czynno\\u015bci w  ramach prowadzenia spraw Zwi\\u0105zku mo\\u017ce ka\\u017cdy cz\\u0142onek Zarz\\u0105du  samodzielnie, z zastrze\\u017ceniem ust. 7.13.<br/> 7.13. Do sk\\u0142adania w imieniu Zwi\\u0105zku o\\u015bwiadcze\\u0144 woli w sprawach  maj\\u0105tkowych oraz wyznaczania pe\\u0142nomocnictw wymagane jest wsp\\u00f3\\u0142dzia\\u0142anie  co najmniej dw\\u00f3ch cz\\u0142onk\\u00f3w Zarz\\u0105du.<br/> 7.14. Do z\\u0142o\\u017cenia przez Zarz\\u0105d o\\u015bwiadczenia woli w sprawie maj\\u0105tkowej o  warto\\u015bci przekraczaj\\u0105cej 100000 PLN (s\\u0142ownie: sto tysi\\u0119cy z\\u0142otych)  wymagane jest pe\\u0142nomocnictwo udzielone przez Walne Zebranie w formie  uchwa\\u0142y.\\u00a0<br/> 7.15. Zarz\\u0105d nie ma prawa zaci\\u0105gania zobowi\\u0105za\\u0144, kt\\u00f3re:<br/> 1. wymagaj\\u0105 zabezpieczenia maj\\u0105tkiem trwa\\u0142ym Zwi\\u0105zku, 2. obci\\u0105\\u017cone s\\u0105 odsetkami.<br/> 7.16. Do z\\u0142o\\u017cenia przez Zarz\\u0105d o\\u015bwiadczenia woli w sprawie sk\\u0142adnik\\u00f3w  maj\\u0105tkowych przypisanych do u\\u017cytkowania przez Autonomiczn\\u0105 Jednostk\\u0119  Terenow\\u0105 wymagane jest pe\\u0142nomocnictwo udzielone przez Rad\\u0119 danej  Autonomicznej Jednostki Terenowej w formie uchwa\\u0142y, z zastrze\\u017ceniem ust.  7.17.<br/> 7.17. Do z\\u0142o\\u017cenia przez Zarz\\u0105d o\\u015bwiadczenia woli w sprawie zbycia  nieruchomo\\u015bci gruntowej wymagane jest pe\\u0142nomocnictwo udzielone przez  Walne Zebranie w formie uchwa\\u0142y podj\\u0119tej w drodze konsensusu na zasadzie  przyzwolenia w obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku, a w  przypadku gdy przedmiotowa nieruchomo\\u015b\\u0107 jest w u\\u017cytkowaniu Autonomicznej  Jednostki Terenowej, wymagane jest r\\u00f3wnie\\u017c pe\\u0142nomocnictwo udzielone  przez Rad\\u0119 danej Autonomicznej Jednostki Terenowej w formie uchwa\\u0142y  podj\\u0119tej w drodze konsensusu na zasadzie przyzwolenia w obecno\\u015bci  wszystkich cz\\u0142onk\\u00f3w tego organu.<br/></p><p>    </p><h2>Rozdzia\\u0142 8 - Komisja Rewizyjna</h2><p>8.1. Komisja Rewizyjna sprawuje nadz\\u00f3r nad  ca\\u0142okszta\\u0142tem dzia\\u0142alno\\u015bci statutowej i finansowej Zwi\\u0105zku. W ramach  czynno\\u015bci nadzorczych ma ona prawo do pe\\u0142nej informacji o dzia\\u0142alno\\u015bci  Zwi\\u0105zku, wgl\\u0105du do dokumentacji oraz \\u017c\\u0105dania udzielenia wyja\\u015bnie\\u0144 i  informacji przez Zarz\\u0105d oraz osoby zaanga\\u017cowane w dzia\\u0142alno\\u015b\\u0107 w imieniu  lub na rzecz Zwi\\u0105zku.<br/> 8.2. Komisja Rewizyjna sk\\u0142ada si\\u0119 z od 3 do 5 cz\\u0142onk\\u00f3w wybranych przez Walne Zebranie na czas nieoznaczony.<br/> 8.3. Zebrania Komisji Rewizyjnej odbywaj\\u0105 si\\u0119 w miar\\u0119 potrzeb, jednak nie rzadziej ni\\u017c raz w roku.<br/> 8.4. Komisja Rewizyjna mo\\u017ce podejmowa\\u0107 uchwa\\u0142y oraz wykonywa\\u0107 inne  czynno\\u015bci w sprawach nale\\u017c\\u0105cych do jej kompetencji w obecno\\u015bci co  najmniej po\\u0142owy swych cz\\u0142onk\\u00f3w.<br/> 8.5. Zebranie Komisji Rewizyjnej mo\\u017ce zwo\\u0142a\\u0107 ka\\u017cdy cz\\u0142onek Komisji  Rewizyjnej. Powinien powiadomi\\u0107 o tym pozosta\\u0142ych cz\\u0142onk\\u00f3w Komisji  Rewizyjnej ze stosownym wyprzedzeniem (co najmniej 7 dni przed terminem  zebrania) umo\\u017cliwiaj\\u0105cym ich udzia\\u0142, przy wykorzystaniu przynajmniej 2  \\u015brodk\\u00f3w porozumiewania si\\u0119 na odleg\\u0142o\\u015b\\u0107 (w tym mailowo). Je\\u017celi wszyscy  cz\\u0142onkowie s\\u0105 obecni na zebraniu, w\\u00f3wczas Komisja Rewizyjna mo\\u017ce  obradowa\\u0107 i podejmowa\\u0107 uchwa\\u0142y i decyzje bez uprzedniego formalnego  zwo\\u0142ania.<br/> 8.6. Komisja Rewizyjna mo\\u017ce upowa\\u017cni\\u0107 niekt\\u00f3rych spo\\u015br\\u00f3d swoich cz\\u0142onk\\u00f3w  do wykonywania w jej imieniu okre\\u015blonych czynno\\u015bci nadzorczych.<br/> 8.7. W zebraniu Komisji Rewizyjnej mog\\u0105 uczestniczy\\u0107 z g\\u0142osem doradczym  osoby zaproszone przez co najmniej jednego z cz\\u0142onk\\u00f3w Komisji  Rewizyjnej.<br/> 8.8. Komisja Rewizyjna jest niezale\\u017cna od Zarz\\u0105du, a jej cz\\u0142onkami nie mog\\u0105 by\\u0107:<br/> 1. cz\\u0142onkowie Zarz\\u0105du ani osoby pozostaj\\u0105ce z cz\\u0142onkami Zarz\\u0105du w  zwi\\u0105zku ma\\u0142\\u017ce\\u0144skim, we wsp\\u00f3lnym po\\u017cyciu, w stosunku pokrewie\\u0144stwa,  powinowactwa lub podleg\\u0142o\\u015bci s\\u0142u\\u017cbowej,<br/> 2. osoby skazane prawomocnym wyrokiem za przest\\u0119pstwo \\u015bcigane z oskar\\u017cenia publicznego lub przest\\u0119pstwo skarbowe.<br/> 8.9. Szczeg\\u00f3\\u0142owy tryb i zasady dzia\\u0142ania Komisji Rewizyjnej mo\\u017ce  okre\\u015bla\\u0107 regulamin Komisji Rewizyjnej uchwalony przez ten organ i  zatwierdzony przez Walne Zebranie.<br/> 8.10. Cz\\u0142onkostwo w Komisji Rewizyjnej ustaje na skutek:<br/> 1. z\\u0142o\\u017cenia pisemnej rezygnacji,<br/> 2. odwo\\u0142ania przez Walne Zebranie,<br/> 3. \\u015bmierci cz\\u0142onka Komisji Rewizyjnej,<br/> 4. utraty praw obywatelskich na skutek skazania prawomocnym wyrokiem s\\u0105du za przest\\u0119pstwo pope\\u0142nione z winy umy\\u015blnej,<br/> 5. skazania prawomocnym wyrokiem za przest\\u0119pstwo umy\\u015blne \\u015bcigane z oskar\\u017cenia publicznego lub przest\\u0119pstwo skarbowe.\\u00a0<br/> 8.11. Komisja Rewizyjna w ca\\u0142o\\u015bci lub poszczeg\\u00f3lni cz\\u0142onkowie Komisji  Rewizyjnej mog\\u0105 by\\u0107 odwo\\u0142ani w dowolnym czasie przez Walne Zebranie.  Cz\\u0142onkowie Komisji Rewizyjnej, kt\\u00f3rych dotyczy wniosek o odwo\\u0142anie, nie  mog\\u0105 wnie\\u015b\\u0107 sprzeciwu wobec uchwa\\u0142y o odwo\\u0142aniu w czasie obrad Walnego  Zebrania.\\u00a0<br/> 8.12. Do obowi\\u0105zk\\u00f3w Komisji Rewizyjnej nale\\u017c\\u0105:<br/> 1. kontrolowanie co najmniej raz w roku dzia\\u0142alno\\u015bci statutowej i gospodarki finansowej<br/> Zwi\\u0105zku oraz przedstawianie Walnemu Zebraniu oraz Zarz\\u0105dowi wniosk\\u00f3w i uwag z ka\\u017cdej kontroli,<br/> 2. opiniowanie sprawozda\\u0144 finansowych i merytorycznych Zarz\\u0105du,<br/> 3. dokonywanie oceny dzia\\u0142alno\\u015bci Zarz\\u0105du i przedstawianie jej Walnemu Zebraniu,<br/> 4. sk\\u0142adanie sprawozda\\u0144 ze swej dzia\\u0142alno\\u015bci Walnemu Zebraniu.<br/> 8.13. Do kompetencji Komisji Rewizyjnej nale\\u017c\\u0105:<br/> 1. wybieranie podmiotu maj\\u0105cego zbada\\u0107 sprawozdania finansowe Zwi\\u0105zku,<br/> 2. \\u017c\\u0105danie od Zarz\\u0105du udost\\u0119pnienia dokument\\u00f3w zwi\\u0105zanych z dzia\\u0142alno\\u015bci\\u0105 Zwi\\u0105zku z mo\\u017cliwo\\u015bci\\u0105 ich kopiowania,<br/> 3. \\u017c\\u0105danie udzielenia informacji lub wyja\\u015bnie\\u0144 na temat dzia\\u0142alno\\u015bci  Zwi\\u0105zku od Zarz\\u0105du i os\\u00f3b zaanga\\u017cowanych w dzia\\u0142alno\\u015b\\u0107 w imieniu lub na  rzecz Zwi\\u0105zku,<br/> 4. uchwalanie regulaminu Komisji Rewizyjnej, zatwierdzanego przez Walne Zebranie,<br/> 5. sk\\u0142adanie wniosk\\u00f3w o zwo\\u0142anie Nadzwyczajnego Walnego Zebrania,<br/> 6. zwo\\u0142ywanie Walnego Zebrania w przypadku okre\\u015blonym w ust. 6.10.<br/> 8.14. Komisja Rewizyjna mo\\u017ce ze skutkiem natychmiastowym zawiesi\\u0107 cz\\u0142onkostwo osoby w Zarz\\u0105dzie w przypadku:<br/> 1. naruszenia przez t\\u0119 osob\\u0119 postanowie\\u0144 statutu Zwi\\u0105zku, uchwa\\u0142 organ\\u00f3w  Zwi\\u0105zku lub regulamin\\u00f3w Jednostek Terenowych na terenach u\\u017cytkowanych  przez te Jednostki,<br/> 2. dzia\\u0142ania na szkod\\u0119 Zwi\\u0105zku,<br/> 3. zachowania godz\\u0105cego w dobre imi\\u0119 Zwi\\u0105zku.<br/> 8.15. Od uchwa\\u0142y Komisji Rewizyjnej stwierdzaj\\u0105cej zawieszenie  cz\\u0142onkostwa w Zarz\\u0105dzie cz\\u0142onkowi Zarz\\u0105du, kt\\u00f3rego uchwa\\u0142a dotyczy,  przys\\u0142uguje odwo\\u0142anie do Walnego Zebrania.\\u00a0<br/> 8.16. Odwo\\u0142anie, o kt\\u00f3rym mowa w ust. 8.15., sk\\u0142ada si\\u0119 pisemnie za  po\\u015brednictwem Komisji Rewizyjnej w terminie miesi\\u0105ca od daty otrzymania  informacji o zawieszeniu. Walne Zebranie rozpatruje odwo\\u0142anie w czasie  najbli\\u017cszych obrad. Decyzja Walnego Zebrania w tej sprawie jest  ostateczna. Cz\\u0142onek Zarz\\u0105du, kt\\u00f3rego dotyczy decyzja w sprawie  zawieszenia cz\\u0142onkostwa w Zarz\\u0105dzie, nie ma prawa wnie\\u015b\\u0107 do niej  sprzeciwu w czasie obrad Walnego Zebrania.\\u00a0\\u00a0<br/> 8.17. Do reprezentowania Komisji Rewizyjnej na zewn\\u0105trz i dzia\\u0142ania w  jej imieniu, w tym do wykonywania w jej imieniu czynno\\u015bci kontrolnych,  uprawniony jest ka\\u017cdy z cz\\u0142onk\\u00f3w Komisji Rewizyjnej.<br/></p><p>    </p><h2>Rozdzia\\u0142 9 - Maj\\u0105tek i gospodarka finansowa</h2><p>9.1. Maj\\u0105tek Zwi\\u0105zku mo\\u017ce powstawa\\u0107:\\u00a0<br/> 1. ze sk\\u0142adek cz\\u0142onkowskich,<br/> 2. z zapis\\u00f3w, darowizn, spadk\\u00f3w i ofiarno\\u015bci publicznej,<br/> 3. z dotacji,<br/> 4. z dochod\\u00f3w z maj\\u0105tku Zwi\\u0105zku.<br/> 9.2. Funduszami i maj\\u0105tkiem Zwi\\u0105zku zarz\\u0105dza Zarz\\u0105d.<br/> 9.3. W Zwi\\u0105zku zabronione jest:<br/> 1. udzielanie po\\u017cyczek lub zabezpieczanie zobowi\\u0105za\\u0144 maj\\u0105tkiem Zwi\\u0105zku,<br/> 2. przekazywanie maj\\u0105tku Zwi\\u0105zku na rzecz jego cz\\u0142onk\\u00f3w, cz\\u0142onk\\u00f3w  organ\\u00f3w lub pracownik\\u00f3w oraz os\\u00f3b, z kt\\u00f3rymi cz\\u0142onkowie, cz\\u0142onkowie  organ\\u00f3w oraz pracownicy Zwi\\u0105zku pozostaj\\u0105 w zwi\\u0105zku ma\\u0142\\u017ce\\u0144skim, we  wsp\\u00f3lnym po\\u017cyciu albo w stosunku pokrewie\\u0144stwa lub powinowactwa w linii  prostej, pokrewie\\u0144stwa lub powinowactwa w linii bocznej do drugiego  stopnia albo s\\u0105 zwi\\u0105zani z tytu\\u0142u przysposobienia, opieki lub kurateli,  zwanych dalej \\u201eosobami bliskimi\\u201d, na zasadach innych ni\\u017c w stosunku do  os\\u00f3b trzecich, w szczeg\\u00f3lno\\u015bci, je\\u017celi przekazanie to nast\\u0119puje  bezp\\u0142atnie lub na preferencyjnych warunkach,<br/> 3. wykorzystywanie maj\\u0105tku na rzecz cz\\u0142onk\\u00f3w, cz\\u0142onk\\u00f3w organ\\u00f3w lub  pracownik\\u00f3w Zwi\\u0105zku oraz ich os\\u00f3b bliskich na zasadach innych ni\\u017c w  stosunku do os\\u00f3b trzecich, chyba \\u017ce to wykorzystanie bezpo\\u015brednio wynika  ze statutowego celu Zwi\\u0105zku,<br/> 4. zakup towar\\u00f3w lub us\\u0142ug od podmiot\\u00f3w, w kt\\u00f3rych uczestnicz\\u0105  cz\\u0142onkowie, cz\\u0142onkowie organ\\u00f3w lub pracownicy Zwi\\u0105zku oraz ich os\\u00f3b  bliskich, na zasadach innych ni\\u017c w stosunku do os\\u00f3b trzecich lub po  cenach wy\\u017cszych ni\\u017c rynkowe.<br/> 9.4. W przypadku powo\\u0142ania Zwi\\u0105zku do spadku Zarz\\u0105d sk\\u0142ada o\\u015bwiadczenie o  przyj\\u0119ciu spadku z dobrodziejstwem inwentarza i to tylko w\\u00f3wczas, gdy w  chwili sk\\u0142adania tego o\\u015bwiadczenia oczywistym jest, \\u017ce stan czynny  spadku znacznie przewy\\u017csza d\\u0142ugi spadkowe.<br/> 9.5. Zwi\\u0105zek mo\\u017ce tworzy\\u0107 fundusze, w tym fundusze celowe. Fundusze  Zwi\\u0105zku s\\u0105 tworzone i likwidowane przez Walne Zebranie, kt\\u00f3re ustala  zasady gromadzenia w nich \\u015brodk\\u00f3w i dysponowania nimi. Zarz\\u0105d Zwi\\u0105zku  oraz Zarz\\u0105dy Jednostek Terenowych mog\\u0105 dysponowa\\u0107 \\u015brodkami zgromadzonymi  w funduszach Zwi\\u0105zku w oparciu o zasady ustalone przez Walne Zebranie.<br/></p><p>    </p><h2>Rozdzia\\u0142 10 - Jednostki Terenowe</h2><p>10.1. Jednostki Terenowe, zwane dalej \\u201cJT\\u201d, dziel\\u0105 si\\u0119 na dwa rodzaje:<br/> 1. Podstawowe Jednostki Terenowe, zwane dalej \\u201cPJT\\u201d,<br/> 2. Autonomiczne Jednostki Terenowe, zwane dalej \\u201cAJT\\u201d.<br/> 10.2. AJT s\\u0105 takimi Jednostkami Terenowymi, kt\\u00f3rym powierzono do  gospodarowania nieruchomo\\u015bci gruntowe nale\\u017c\\u0105ce do Zwi\\u0105zku w celu  tworzenia, utrzymania i rozwoju wsp\\u00f3lnot intencjonalnych b\\u0105d\\u017a tworzenia i  ochrony rezerwat\\u00f3w Wolnej Ziemi.<br/> 10.3. PJT s\\u0105 wszystkie Jednostki Terenowe nieb\\u0119d\\u0105ce AJT.<br/> 10.4. PJT zostaj\\u0105 przekszta\\u0142cone w AJT z chwil\\u0105 spe\\u0142nienia warunku okre\\u015blonego w ust. 10.2.\\u00a0<br/> 10.5. JT powinny gospodarowa\\u0107 oddanymi im do u\\u017cytkowania  nieruchomo\\u015bciami w spos\\u00f3b korzystny dla Ziemi, Przyrody oraz ludzi, a  tak\\u017ce zgodny z celami Zwi\\u0105zku.\\u00a0<br/> 10.6. Zarz\\u0105d Zwi\\u0105zku podejmuje wszelkie dzia\\u0142ania potrzebne do  samodzielnego funkcjonowania JT zgodnego z ich regulaminami, w tym  udziela organom JT potrzebnych pe\\u0142nomocnictw. W przypadku gdy dzia\\u0142anie  organu JT na podstawie pe\\u0142nomocnictwa udzielonego przez Zarz\\u0105d Zwi\\u0105zku  jest niemo\\u017cliwe lub niecelowe, Zarz\\u0105d Zwi\\u0105zku na wniosek organu JT  dzia\\u0142a na rzecz JT wobec innych podmiot\\u00f3w.\\u00a0<br/> 10.7. JT nie posiadaj\\u0105 osobowo\\u015bci prawnej.<br/> 10.8. JT powo\\u0142ywane s\\u0105 przez Walne Zebranie na czas nieoznaczony.<br/> 10.9. Walne Zebranie mo\\u017ce utworzy\\u0107 JT na wniosek co najmniej 3 cz\\u0142onk\\u00f3w  Zwi\\u0105zku, b\\u0119d\\u0105cych osobami fizycznymi, zwanych dalej \\u201cInicjatorami JT\\u201d.\\u00a0<br/> 10.10. W celu utworzenia JT, Inicjatorzy JT sk\\u0142adaj\\u0105 do Walnego Zebrania  za po\\u015brednictwem Zarz\\u0105du Zwi\\u0105zku wniosek o utworzenie JT wraz z  projektem regulaminu JT.<br/> 10.11. Ka\\u017cda JT dzia\\u0142a na podstawie statutu Zwi\\u0105zku oraz w\\u0142asnego regulaminu JT.<br/></p><p>    </p><h2>Rozdzia\\u0142 11 - Rady Jednostek Terenowych</h2><p>1.1. Ka\\u017cda JT posiada kolektywny organ najwy\\u017cszy - Rad\\u0119 Jednostki Terenowej, zwan\\u0105 dalej \\u201eRad\\u0105 JT\\u201d.\\u00a0<br/> 11.2. Rada JT decyduje o wszelkich sprawach dotycz\\u0105cych JT.<br/> 11.3. Pierwszy sk\\u0142ad Rady JT powo\\u0142ywany jest przez Walne Zebranie wraz z  utworzeniem JT i zatwierdzeniem regulaminu JT. W sk\\u0142ad pierwszej Rady  JT wchodz\\u0105 Inicjatorzy JT.<br/> 11.4. Wszyscy stali mieszka\\u0144cy nieruchomo\\u015bci oddanej do u\\u017cytkowania dla AJT maj\\u0105 prawo bycia cz\\u0142onkami Rady tej AJT.\\u00a0<br/> 11.5. Nowi cz\\u0142onkowie Rady JT przyjmowani s\\u0105 przez Rad\\u0119 JT w drodze konsensusu na zasadzie przyzwolenia na czas nieoznaczony.<br/> 11.6. Modelem podejmowania decyzji przez Rad\\u0119 JT jest konsensus oparty  na zasadzie przyzwolenia, zgodnie z kt\\u00f3rym decyzje Rady JT mog\\u0105 zosta\\u0107  podj\\u0119te wtedy, gdy \\u017caden ze zgromadzonych na zebraniu cz\\u0142onk\\u00f3w Rady JT  nie zg\\u0142osi swojego sprzeciwu wobec podj\\u0119cia danej decyzji.<br/> 11.7. Osoba zg\\u0142aszaj\\u0105ca sprzeciw powinna poda\\u0107 merytoryczne uzasadnienie  swojego sprzeciwu, a tak\\u017ce argumenty przemawiaj\\u0105ce na rzecz racji tego  sprzeciwu. W przeciwnym razie sprzeciw mo\\u017ce nie zosta\\u0107 uwzgl\\u0119dniony  przez pozosta\\u0142ych cz\\u0142onk\\u00f3w Rady JT.\\u00a0<br/> 11.8. Uzasadnienie sprzeciwu i argumenty przemawiaj\\u0105ce na rzecz racji  sprzeciwu mog\\u0105\\u00a0 zosta\\u0107 poddane dyskusji, w wyniku kt\\u00f3rej osoba, kt\\u00f3ra  zg\\u0142osi\\u0142a sprzeciw, mo\\u017ce go wycofa\\u0107.\\u00a0<br/> 11.9. W przypadku zg\\u0142oszenia sprzeciwu, osoba, kt\\u00f3ra zg\\u0142osi\\u0142a sprzeciw, a  tak\\u017ce inne osoby obecne na zebraniu mog\\u0105 zaproponowa\\u0107 inne rozwi\\u0105zanie,  kt\\u00f3re mo\\u017ce zosta\\u0107 przyj\\u0119te zamiast wcze\\u015bniej proponowanej decyzji.\\u00a0<br/> 11.10. Rada JT dzia\\u0142a zgodnie ze statutem Zwi\\u0105zku, regulaminem JT oraz przepisami powszechnie obowi\\u0105zuj\\u0105cego prawa.\\u00a0<br/> 11.11. Rada JT podejmuje uchwa\\u0142y na zebraniach w obecno\\u015bci przynajmniej  po\\u0142owy swoich cz\\u0142onk\\u00f3w, pod warunkiem \\u017ce wszyscy cz\\u0142onkowie Rady JT  zostali skutecznie zawiadomieni o terminie, miejscu i porz\\u0105dku obrad na  co najmniej 7 dni przed dat\\u0105 zebrania. Je\\u017celi wszyscy cz\\u0142onkowie s\\u0105  obecni na zebraniu, w\\u00f3wczas Rada JT mo\\u017ce obradowa\\u0107 i podejmowa\\u0107 uchwa\\u0142y i  decyzje bez uprzedniego formalnego zwo\\u0142ania.<br/> 11.12. Zebranie Rady JT zwo\\u0142uje Zarz\\u0105d JT z w\\u0142asnej inicjatywy lub na wniosek co najmniej 3 cz\\u0142onk\\u00f3w Rady JT.<br/> 11.13. Wnosz\\u0105cy o zwo\\u0142anie zebrania Rady JT s\\u0105 obowi\\u0105zani z\\u0142o\\u017cy\\u0107  Zarz\\u0105dowi JT wniosek z podaniem proponowanego porz\\u0105dku obrad, kt\\u00f3ry  Zarz\\u0105d JT mo\\u017ce uzupe\\u0142ni\\u0107.<br/> 11.14. Zebrania Rady JT odbywaj\\u0105 si\\u0119 w siedzibie JT lub w innym miejscu znajduj\\u0105cym si\\u0119 na obszarze dzia\\u0142ania JT.<br/> 11.15. Cz\\u0142onkowie Rady JT, kt\\u00f3rzy nie mog\\u0105 by\\u0107 obecni na zebraniu Rady  JT, mog\\u0105 wyra\\u017ca\\u0107 swoj\\u0105 opini\\u0119 na temat ka\\u017cdego punktu porz\\u0105dku obrad w  spos\\u00f3b zdalny (pisemnie, elektronicznie, telefonicznie).<br/> 11.16. Cz\\u0142onkostwo w Radzie JT mo\\u017ce zosta\\u0107 ze skutkiem natychmiastowym  czasowo zawieszone na okres od 6 do 12 miesi\\u0119cy na skutek:<br/> 1. dobrowolnej czasowej rezygnacji z aktywnego udzia\\u0142u w pracach JT zg\\u0142oszonej na pi\\u015bmie Zarz\\u0105dowi JT,<br/> 2. uchwa\\u0142y Rady JT uzasadnionej brakiem dobrowolnego zaanga\\u017cowania  cz\\u0142onka Rady JT w pracach i dzia\\u0142alno\\u015bci JT przez okres minimum roku,<br/> 3. uchwa\\u0142y Rady JT uzasadnionej brakiem fizycznego lub zdalnego uczestnictwa w trzech kolejnych posiedzeniach Rady JT,<br/> 4. uchwa\\u0142y Rady JT uzasadnionej zachowaniem godz\\u0105cym w dobre imi\\u0119 JT lub Zwi\\u0105zku,<br/> 5. uchwa\\u0142y Rady JT uzasadnionej naruszeniem postanowie\\u0144 statutu Zwi\\u0105zku, regulaminu JT lub uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku,<br/> 6. uchwa\\u0142y Rady JT uzasadnionej dzia\\u0142aniem na szkod\\u0119 JT lub Zwi\\u0105zku.<br/> 11.17. Decyzj\\u0119 o zawieszeniu cz\\u0142onkostwa w Radzie JT podejmuje Rada JT  na wniosek co najmniej trzech jej cz\\u0142onk\\u00f3w. Osoba, kt\\u00f3rej dotyczy ta  decyzja, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad Rady JT.\\u00a0<br/> 11.18. Cz\\u0142onek Rady JT, kt\\u00f3rego cz\\u0142onkostwo w Radzie JT zosta\\u0142o czasowo  zawieszone, mo\\u017ce bra\\u0107 udzia\\u0142 w zebraniach Rady JT z g\\u0142osem doradczym.<br/> 11.19. Po up\\u0142ywie okresu zawieszenia, w celu powrotu do aktywnego  uczestnictwa w pracach Rady JT, osoba, kt\\u00f3rej cz\\u0142onkostwo w Radzie JT  zosta\\u0142o zawieszone, sk\\u0142ada Zarz\\u0105dowi JT pisemn\\u0105 deklaracj\\u0119 aktywnego  uczestnictwa w dzia\\u0142alno\\u015bci Rady JT. Z\\u0142o\\u017cenie tej deklaracji jest  niezb\\u0119dne do przywr\\u00f3cenia osobie, kt\\u00f3rej cz\\u0142onkostwo w Radzie JT zosta\\u0142o  zawieszone, pe\\u0142ni praw zwi\\u0105zanych z cz\\u0142onkostwem w Radzie JT.<br/> 11.20. Utrata cz\\u0142onkostwa w Radzie JT nast\\u0119puje na skutek:\\u00a0<br/> 1. pisemnej rezygnacji cz\\u0142onka Rady JT z\\u0142o\\u017conej Zarz\\u0105dowi JT,\\u00a0<br/> 2. \\u015bmierci cz\\u0142onka Rady JT,<br/> 3. wykluczenia z Rady JT z powodu przyczyny okre\\u015blonej w ust. 11.16 pkt 4-6.<br/> 11.21. Decyzj\\u0119 o wykluczeniu z Rady JT podejmuje Rada JT po up\\u0142ywie  okresu zawieszenia cz\\u0142onkostwa. Osoba, kt\\u00f3rej dotyczy ta decyzja, nie ma  prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad Rady JT.<br/> 11.22. Od uchwa\\u0142y Rady JT stwierdzaj\\u0105cej zawieszenie lub utrat\\u0119  cz\\u0142onkostwa w Radzie JT cz\\u0142onkowi, kt\\u00f3rego uchwa\\u0142a dotyczy, przys\\u0142uguje  odwo\\u0142anie do Walnego Zebrania.\\u00a0<br/> 11.23. Odwo\\u0142anie, o kt\\u00f3rym mowa w ust. 11.19, sk\\u0142ada si\\u0119 pisemnie za  po\\u015brednictwem Zarz\\u0105du Zwi\\u0105zku w terminie 30 dni od daty otrzymania  informacji o zawieszeniu lub utracie cz\\u0142onkostwa w Radzie JT. Walne  Zebranie rozpatruje odwo\\u0142anie w czasie najbli\\u017cszych obrad. Decyzja  Walnego Zebrania w tej sprawie jest ostateczna. Cz\\u0142onek Zwi\\u0105zku, kt\\u00f3rego  dotyczy ta decyzja, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie  obrad Walnego Zebrania.<br/></p><p>    </p><h2>Rozdzia\\u0142 12 - Delegaci Autonomicznych Jednostek Terenowych</h2><p>12.1. Ka\\u017cda Rada AJT wybiera ze swego grona  Delegata Autonomicznej Jednostki Terenowej, zwanego dalej \\u201eDelegatem  AJT\\u201d, a tak\\u017ce Zast\\u0119pc\\u0119 Delegata Autonomicznej Jednostki Terenowej,  zwanego dalej \\u201eZast\\u0119pc\\u0105 Delegata AJT\\u201d.<br/> 12.2. Pe\\u0142nienie funkcji przez Delegata AJT lub Zast\\u0119pc\\u0119 Delegata AJT ustaje na skutek:<br/> 1. pisemnej rezygnacji,<br/> 2. odwo\\u0142ania przez Rad\\u0119 AJT,<br/> 3. utraty cz\\u0142onkostwa w Zwi\\u0105zku.<br/> 12.3. Zast\\u0119pca Delegata AJT pe\\u0142ni funkcj\\u0119 Delegata AJT do czasu wyboru  nowego Delegata przez Rad\\u0119 AJT oraz w czasie nieobecno\\u015bci Delegata AJT  na obradach Walnego Zebrania.\\u00a0<br/> 12.4. Zast\\u0119pca Delegata AJT mo\\u017ce uczestniczy\\u0107 z g\\u0142osem doradczym w obradach Walnego Zebrania.\\u00a0<br/> 12.5. Delegat AJT:<br/> 1. staje si\\u0119 w trakcie i na mocy pe\\u0142nienia swej funkcji cz\\u0142onkiem zwyczajnym Zwi\\u0105zku,<br/> 2. jest upowa\\u017cniony do prezentowania woli i stanowiska Rady AJT na Walnym Zebraniu.<br/> 12.6. Delegat AJT i Zast\\u0119pca Delegata AJT s\\u0105 wybierani na czas okre\\u015blony  w regulaminie AJT i mog\\u0105 w ka\\u017cdej chwili zosta\\u0107 odwo\\u0142ani przez Rad\\u0119  AJT.\\u00a0<br/></p><p>    </p><h2>Rozdzia\\u0142 13 - Regulaminy Jednostek Terenowych</h2><p>13.1. Regulamin JT okre\\u015bla szczeg\\u00f3\\u0142ow\\u0105 organizacj\\u0119 JT i spos\\u00f3b jej dzia\\u0142ania. Rada JT mo\\u017ce dokonywa\\u0107 zmian w regulaminie JT.<br/> 13.2. Regulamin JT oraz wszelkie zmiany do tego regulaminu zatwierdzane  s\\u0105 pod rygorem niewa\\u017cno\\u015bci przez Walne Zebranie w drodze uchwa\\u0142y.<br/> 13.3. Regulamin JT okre\\u015bla w szczeg\\u00f3lno\\u015bci:<br/> 1. nazw\\u0119 JT,<br/> 2. siedzib\\u0119 i obszar dzia\\u0142ania JT,<br/> 3. profil JT,\\u00a0<br/> 4. cele JT,\\u00a0<br/> 5. struktur\\u0119 organizacyjn\\u0105 JT,<br/> 6. spos\\u00f3b podejmowania decyzji przez organy JT, zgodny z zasad\\u0105 konsensusu,<br/> 7. szczeg\\u00f3\\u0142owe zasady dzia\\u0142ania organ\\u00f3w JT oraz Delegata i Zast\\u0119pcy Delegata JT.<br/> 13.4. Regulamin AJT, opr\\u00f3cz punkt\\u00f3w wymienionych w ust. 13.3, okre\\u015bla r\\u00f3wnie\\u017c:<br/> 1. zasady gospodarowania nieruchomo\\u015bciami u\\u017cytkowanymi przez AJT,<br/> 2. podstawowe zasady dotycz\\u0105ce mieszka\\u0144c\\u00f3w AJT,<br/> 3. zasady przyjmowania nowych mieszka\\u0144c\\u00f3w AJT,<br/> 4. podstawowe zasady dotycz\\u0105ce go\\u015bci AJT.<br/> 13.5. Do AJT, kt\\u00f3rych celem jest tworzenie i ochrona rezerwat\\u00f3w Wolnej  Ziemi, nie ma zastosowania ust. 13.4. Regulamin tych AJT, opr\\u00f3cz punkt\\u00f3w  wymienionych w ust. 13.3, powinien okre\\u015bla\\u0107 zasady post\\u0119powania na  terenie rezerwat\\u00f3w Wolnej Ziemi chronionych przez te AJT.<br/> 13.6. Walne Zebranie mo\\u017ce uchwali\\u0107 instrukcj\\u0119 opracowywania regulaminu  JT z dok\\u0142adnym wyja\\u015bnieniem i rozszerzeniem element\\u00f3w sk\\u0142adowych  wymienionych w ust. 13.3 -13.5.<br/></p><p>    </p><h2>Rozdzia\\u0142 14 - Zarz\\u0105dy Jednostek Terenowych</h2><p>14.1. Ka\\u017cda JT posiada kolektywny organ wykonawczy \\u2013 Zarz\\u0105d Jednostki Terenowej, zwany dalej \\u201eZarz\\u0105dem JT\\u201d.\\u00a0<br/> 14.2. Zarz\\u0105d JT jest wybierany przez Rad\\u0119 JT na czas okre\\u015blony w regulaminie JT.\\u00a0<br/> 14.3. Zarz\\u0105d JT mo\\u017ce by\\u0107 w dowolnym czasie odwo\\u0142any przez Rad\\u0119 JT.\\u00a0<br/> 14.4. Zarz\\u0105d JT wykonuje uchwa\\u0142y Rady JT i reprezentuje JT na zewn\\u0105trz.<br/> 14.5. Do reprezentowania JT na zewn\\u0105trz i dzia\\u0142ania w jej imieniu, w tym  do sk\\u0142adania o\\u015bwiadcze\\u0144 woli w imieniu JT, uprawniony jest ka\\u017cdy  cz\\u0142onek Zarz\\u0105du JT dzia\\u0142aj\\u0105cy samodzielnie. Uprawnienie to nie obejmuje  prawa do reprezentowania AJT w czasie obrad Walnego Zebrania.\\u00a0<br/> 14.6. Do obowi\\u0105zk\\u00f3w Zarz\\u0105du JT nale\\u017c\\u0105:<br/> 1. przesy\\u0142anie do Zarz\\u0105du Zwi\\u0105zku kopii protoko\\u0142\\u00f3w z zebra\\u0144 Rady JT wraz  z kopiami wszystkich uchwa\\u0142 i za\\u0142\\u0105cznik\\u00f3w, w terminie miesi\\u0105ca od daty  zebrania,<br/> 2. prowadzenie i aktualizowanie listy cz\\u0142onk\\u00f3w Rady JT, a tak\\u017ce  przesy\\u0142anie tej listy do Zarz\\u0105du Zwi\\u0105zku po ka\\u017cdorazowej aktualizacji w  terminie 30 dni od wprowadzenia zmian,<br/> 3. przesy\\u0142anie do Zarz\\u0105du Zwi\\u0105zku corocznych sprawozda\\u0144 z dzia\\u0142alno\\u015bci JT do 31 marca\\u00a0 nast\\u0119pnego roku.<br/> 14.7. Do obowi\\u0105zk\\u00f3w Zarz\\u0105du AJT opr\\u00f3cz tych wymienionych w ust. 14.6.  nale\\u017cy r\\u00f3wnie\\u017c prowadzenie i aktualizowanie listy mieszka\\u0144c\\u00f3w AJT, a  tak\\u017ce przesy\\u0142anie tej listy do Zarz\\u0105du Zwi\\u0105zku po ka\\u017cdorazowej  aktualizacji w terminie 30 dni od wprowadzenia zmian.<br/> 14.8. Pe\\u0142nienie funkcji cz\\u0142onka Zarz\\u0105du JT ustaje na skutek:<br/> 1. pisemnej rezygnacji,<br/> 2. odwo\\u0142ania przez Rad\\u0119 AJT,<br/> 3. utraty cz\\u0142onkostwa w Zwi\\u0105zku.<br/></p><p>    </p><h2>Rozdzia\\u0142 15 - Przepisy ko\\u0144cowe dotycz\\u0105ce Jednostek Terenowych</h2><p>15.1. Komisja Rewizyjna mo\\u017ce kontrolowa\\u0107  ca\\u0142okszta\\u0142t dzia\\u0142alno\\u015bci JT. Ma ona prawo do pe\\u0142nej informacji o  dzia\\u0142alno\\u015bci JT, wgl\\u0105du do dokumentacji oraz \\u017c\\u0105dania udzielenia  wyja\\u015bnie\\u0144 i informacji przez Zarz\\u0105d JT oraz osoby zaanga\\u017cowane w  dzia\\u0142alno\\u015b\\u0107 w imieniu lub na rzecz JT.<br/> 15.2. Komisja Rewizyjna mo\\u017ce przekaza\\u0107 Radzie JT, Zarz\\u0105dowi JT, Walnemu  Zebraniu lub Zarz\\u0105dowi Zwi\\u0105zku wnioski lub uwagi dotycz\\u0105ce dzia\\u0142alno\\u015bci  JT.\\u00a0<br/> 15.3. W przypadku gdy dzia\\u0142alno\\u015b\\u0107 JT jest sprzeczna ze statutem Zwi\\u0105zku  lub z powszechnie obowi\\u0105zuj\\u0105cym prawem, Komisja Rewizyjna mo\\u017ce wyda\\u0107  zalecenia maj\\u0105ce na celu przywr\\u00f3cenie zgodno\\u015bci dzia\\u0142a\\u0144 JT ze statutem  Zwi\\u0105zku lub z powszechnie obowi\\u0105zuj\\u0105cym prawem. Zalecenia te s\\u0105 wi\\u0105\\u017c\\u0105ce  dla organ\\u00f3w JT i powinny zosta\\u0107 wykonane w terminie okre\\u015blonym przez  Komisj\\u0119 Rewizyjn\\u0105.\\u00a0<br/> 15.4. Organ JT mo\\u017ce odwo\\u0142a\\u0107 si\\u0119 od zalece\\u0144 Komisji Rewizyjnej do Walnego  Zebrania. Wobec uchwa\\u0142 Walnego Zebrania w tej sprawie nie mog\\u0105 wnie\\u015b\\u0107  sprzeciwu cz\\u0142onkowie Zwi\\u0105zku b\\u0119d\\u0105cy jednocze\\u015bnie cz\\u0142onkami Rady lub  Zarz\\u0105du danej JT.<br/> 15.5. W przypadku powa\\u017cnego lub uporczywego naruszania postanowie\\u0144  statutu Zwi\\u0105zku lub powszechnie obowi\\u0105zuj\\u0105cego prawa i niewykonywania  zalece\\u0144 Komisji Rewizyjnej maj\\u0105cych na celu przywr\\u00f3cenie zgodno\\u015bci  dzia\\u0142a\\u0144 JT ze statutem Zwi\\u0105zku lub z powszechnie obowi\\u0105zuj\\u0105cym prawem,  Walne Zebranie mo\\u017ce na wniosek Komisji Rewizyjnej zdecydowa\\u0107 o  zawieszeniu dzia\\u0142alno\\u015bci Rady JT oraz powo\\u0142aniu Rady Naprawczej JT,  kt\\u00f3ra przejmuje wszystkie funkcje Rady JT. Cz\\u0142onk\\u00f3w Rady Naprawczej JT  powo\\u0142uje i odwo\\u0142uje Komisja Rewizyjna. Walne Zebranie na wniosek Komisji  Rewizyjnej rozwi\\u0105zuje Rad\\u0119 Naprawcz\\u0105 JT i przywraca Radzie JT mo\\u017cliwo\\u015b\\u0107  pe\\u0142nienia przez ni\\u0105 swoich funkcji w przypadku gdy przywr\\u00f3cona zostanie  zgodno\\u015b\\u0107 dzia\\u0142alno\\u015bci JT z postanowieniami statutu Zwi\\u0105zku oraz  powszechnie obowi\\u0105zuj\\u0105cym prawem. Wobec uchwa\\u0142 Walnego Zebrania w tych  sprawach nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu cz\\u0142onkowie Zwi\\u0105zku b\\u0119d\\u0105cy  jednocze\\u015bnie cz\\u0142onkami Rady lub Rady Naprawczej danej JT.<br/> 15.6. W sytuacjach szczeg\\u00f3lnie uzasadnionych, na wniosek co najmniej 5  os\\u00f3b mieszkaj\\u0105cych przynajmniej od roku na terenie nieruchomo\\u015bci  oddanych do u\\u017cytkowania AJT, Walne Zebranie mo\\u017ce rozwi\\u0105za\\u0107 dotychczasow\\u0105  Rad\\u0119 AJT i powo\\u0142a\\u0107 now\\u0105 Rad\\u0119 AJT, sk\\u0142adaj\\u0105c\\u0105 si\\u0119 ze wszystkich sta\\u0142ych  mieszka\\u0144c\\u00f3w nieruchomo\\u015bci oddanych do u\\u017cytkowania tej AJT. Wobec uchwa\\u0142y  Walnego Zebrania w tej sprawie nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu cz\\u0142onkowie  Zwi\\u0105zku b\\u0119d\\u0105cy jednocze\\u015bnie cz\\u0142onkami Rady danej AJT.<br/> 15.7. JT mo\\u017ce zosta\\u0107 rozwi\\u0105zana uchwa\\u0142\\u0105 Rady JT podj\\u0119t\\u0105 w drodze  konsensusu na zasadzie przyzwolenia w obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w Rady  JT. Uchwa\\u0142a ta wchodzi w \\u017cycie po zatwierdzeniu jej przez Walne  Zebranie.<br/> 15.8. PJT mo\\u017ce zosta\\u0107 rozwi\\u0105zana uchwa\\u0142\\u0105 Walnego Zebrania w przypadku  ponad rocznego braku aktywno\\u015bci Zarz\\u0105du PJT i Rady PJT, s\\u0142u\\u017c\\u0105cej  realizacji cel\\u00f3w, dla kt\\u00f3rych zosta\\u0142a powo\\u0142ana.<br/></p><p>    </p><h2>Rozdzia\\u0142 16 - Zmiana statutu Zwi\\u0105zku</h2><p>116.1. Zmiana statutu Zwi\\u0105zku nast\\u0119puje na  podstawie uchwa\\u0142y Walnego Zebrania, podj\\u0119tej w drodze konsensusu na  zasadzie przyzwolenia w obecno\\u015bci przynajmniej 2/3 cz\\u0142onk\\u00f3w zwyczajnych  Zwi\\u0105zku, z zastrze\\u017ceniem ust. 16.3, przy czym informacja o porz\\u0105dku  obrad Walnego Zebrania powinna wyra\\u017anie wskazywa\\u0107, kt\\u00f3re postanowienia  statutu maj\\u0105 ulec zmianie.<br/> 16.2. Zmiana statutu Zwi\\u0105zku nie mo\\u017ce w istotny spos\\u00f3b naruszy\\u0107  podstawowego celu realizowanego przez Zwi\\u0105zek oraz konsensualnego modelu  podejmowania decyzji przez wszystkie organy Zwi\\u0105zku oraz JT.<br/> 16.3. Zmiana rozdzia\\u0142\\u00f3w 10 - 17, opr\\u00f3cz warunku wymienionego w ust.  16.1, wymaga zgody wszystkich Rad JT w formie uchwa\\u0142 podj\\u0119tych przy  udziale wszystkich uprawnionych do decydowania cz\\u0142onk\\u00f3w tych Rad.<br/></p><p>    </p><h2>Rozdzia\\u0142 17 - Przepisy ko\\u0144cowe</h2><p>17.1. Rozwi\\u0105zanie Zwi\\u0105zku mo\\u017ce nast\\u0105pi\\u0107 tylko w przypadku braku AJT lub po ich uprzednim rozwi\\u0105zaniu zgodnie z ust. 15.7.<br/> 17.2. Walne Zebranie mo\\u017ce w obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w Zwi\\u0105zku  zdecydowa\\u0107 o rozwi\\u0105zaniu Zwi\\u0105zku, okre\\u015blaj\\u0105c przeznaczenie sk\\u0142adnik\\u00f3w  maj\\u0105tku pozosta\\u0142ego po likwidacji Zwi\\u0105zku oraz powo\\u0142uj\\u0105c Komisj\\u0119  Likwidacyjn\\u0105.<br/> 17.3. Zadaniem Komisji Likwidacyjnej jest przeprowadzenie likwidacji  Zwi\\u0105zku, w tym zako\\u0144czenie jego spraw maj\\u0105tkowych i uregulowanie jego  zobowi\\u0105za\\u0144. Komisja Likwidacyjna podejmuje decyzje w drodze konsensusu  opartego na zasadzie przyzwolenia. Do reprezentowania Zwi\\u0105zku uprawnieni  s\\u0105 wszyscy cz\\u0142onkowie Komisji Likwidacyjnej dzia\\u0142aj\\u0105cy \\u0142\\u0105cznie.<br/> 17.4. Nieruchomo\\u015bci nale\\u017c\\u0105ce do Zwi\\u0105zku nie mog\\u0105 zosta\\u0107 sprzedane w  trakcie likwidacji Zwi\\u0105zku. Powinny one zosta\\u0107 przekazane w ca\\u0142o\\u015bci  podmiotom zapewniaj\\u0105cym kontynuacj\\u0119 realizacji przez te nieruchomo\\u015bci  cel\\u00f3w, do kt\\u00f3rych zosta\\u0142y przeznaczone.\\u00a0<br/> 17.5. Maj\\u0105tek pozosta\\u0142y po likwidacji Zwi\\u0105zku przekazuje si\\u0119  organizacjom pozarz\\u0105dowym, w pierwszej kolejno\\u015bci tym, kt\\u00f3rych  dzia\\u0142alno\\u015b\\u0107 jest zbie\\u017cna z celami Zwi\\u0105zku.<br/> 17.6. W sprawach nieuregulowanych niniejszym statutem maj\\u0105 zastosowanie przepisy obowi\\u0105zuj\\u0105cego prawa.</p>", "link_text": "", "link": ""}	\N	11	1
12	f	2021-02-21 02:05:29.671106+01	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04", "locale": 1, "title": "Misja", "draft_title": "Misja", "slug": "misja", "content_type": 42, "live": true, "has_unpublished_changes": false, "url_path": "/home/misja/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "opis": "<h2>Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka. Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.</h2>", "objasnienie": "<p>Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie. W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci. Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy. To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. \\u015awiat konsumpcji doprowadzi\\u0142 nawet do sytuacji, gdzie mo\\u017cemy konsumowa\\u0107 czas i \\u017cycie innych ludzi wyznaczaj\\u0105c za nie cen\\u0119. Demokracja daje r\\u00f3wne prawa r\\u00f3wnie\\u017c g\\u0142upocie, je\\u015bli tylko da si\\u0119 j\\u0105 sprzeda\\u0107. Kiedy od dziecka motywacj\\u0119 wyznaczaj\\u0105 dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzeda\\u017c tworzymy \\u015bwiat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na w\\u0142adz\\u0119. Jest to upadek poni\\u017cej normalno\\u015bci, a prawda o tym mo\\u017ce wystraszy\\u0107. Dlatego boimy si\\u0119 jej i ukrywamy swoj\\u0105 natur\\u0119 wci\\u0105\\u017c nie mog\\u0105c jej odkry\\u0107. Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Kiedy przemieniamy stare systemy warto\\u015bciowania w nowe, nie potrzebujemy ju\\u017c buntu. Nasze dzia\\u0142ania wywodz\\u0105 si\\u0119 z ekofilozofii i g\\u0142\\u0119bokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie by\\u0142a w\\u0142asno\\u015bci\\u0105 cz\\u0142owieka. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 w spos\\u00f3b naturalny r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Na tym poziomie r\\u00f3\\u017cnice miedzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny.</p>", "komentarz_1": "<p>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Zak\\u0142adaj\\u0105c, \\u017ce dane miejsce ma w\\u0142a\\u015bciciela, to w\\u0142a\\u015bnie owy w\\u0142a\\u015bciciel mo\\u017ce zawsze zdecydowa\\u0107 ostatecznie i to jego decyzje s\\u0105 egzekwowane przez oficjalne i funkcjonuj\\u0105ce we wsp\\u00f3\\u0142czesnym spo\\u0142ecze\\u0144stwie prawo. W zwi\\u0105zku z tym, wszyscy inni ludzie znajduj\\u0105cy si\\u0119 w tym w\\u0142a\\u015bnie miejscu, niestety podlegaj\\u0105 decyzj\\u0105 jednej osoby: w\\u0142a\\u015bciciela. Ta sama w\\u0142adza, jest przekazywana z pokolenia na pokolenie za pomoc\\u0105 tak prostego narz\\u0119dzia jak dziedziczenie maj\\u0105tku -czyli posiadania terytorium. Jedn\\u0105 z g\\u0142\\u00f3wnych przyczyn powstania Ruchu Wolnej Ziemi jest przerwanie \\u0142a\\u0144cucha dziedziczenia i przekazywania sobie w\\u0142adzy i tym samym nap\\u0119dzania w ten spos\\u00f3b konsumpcjonizmu.</p>", "komentarz_2": "<p>U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra eliminuje z naszego \\u017cycia konsumpcjonizm jako warto\\u015b\\u0107. Jakakolwiek forma posiadania Ziemi, oparta o struktury w\\u0142adzy cz\\u0142owieka nad cz\\u0142owiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ide\\u0119 przestrzeni, gdzie ka\\u017cdy mo\\u017ce by\\u0107 r\\u00f3wny, zar\\u00f3wno wobec miejsca w kt\\u00f3rym \\u017cyje, jak i wobec innych ludzi.</p>", "komentarz_3": "<p>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. Jeste\\u015bmy dzie\\u0107mi tej Planety i mo\\u017cemy bawi\\u0107 si\\u0119 w co chcemy i z kim chcemy, a kto chce mo\\u017ce bawi\\u0107 si\\u0119 z nami. Dlatego \\u017ceby unikn\\u0105\\u0107 przypadkowo\\u015bci ludzi bior\\u0105cych udzia\\u0142 we wsp\\u00f3lnym prze\\u017cywaniu, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 wzi\\u0105\\u0107 udzia\\u0142 w tworzeniu rodziny opartej na plemiennym kr\\u0119gu. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam na przeciw przeszkodom i problemom, \\u0142atwiej jest pokonywa\\u0107 je razem. Nie mo\\u017cna ju\\u017c zmieni\\u0107 przesz\\u0142o\\u015bci, jednak po tylu latach eko i ludob\\u00f3jstwa, nadszed\\u0142 ju\\u017c czas, by zacz\\u0105\\u0107 spe\\u0142nia\\u0107 marzenia. Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.</p>", "podsumowanie": "<p>Tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych. Ruch Wolnej Ziemi jest inicjatyw\\u0105 spo\\u0142eczn\\u0105 skupion\\u0105 na wdra\\u017caniu w \\u017cycie sprawdzonych rozwi\\u0105za\\u0144 prawnych i organizacyjnych w celu \\u201euwalniania Ziemi\\u201d spod w\\u0142asno\\u015bci prywatnej. Zale\\u017cy nam na tworzeniu i rozwoju intencjonalnych spo\\u0142eczno\\u015bci wiejskich (tzw. ekowiosek, ekoosad), w kt\\u00f3rych decyzje dotycz\\u0105ce wszystkich podejmowane s\\u0105 wsp\\u00f3lnie (konsensus), i w kt\\u00f3rych my, ludzie, posiadamy r\\u00f3wne prawa zar\\u00f3wno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia. Uczestnikiem Ruchu mo\\u017ce by\\u0107 ka\\u017cda osoba, kt\\u00f3ra rozumie nasze za\\u0142o\\u017cenia i zgadza si\\u0119 z nimi. Ruch Wolnej Ziemi nie jest organizacj\\u0105 i nie prowadzi \\u017cadnej ewidencji przynale\\u017cno\\u015bci. Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144. Jednym z g\\u0142\\u00f3wnych za\\u0142o\\u017ce\\u0144 jest wsp\\u00f3lne decydowanie w sprawach, kt\\u00f3re dotycz\\u0105 Ruchu. Pozwala to miejscom w kt\\u00f3rych \\u017cyjemy, jak r\\u00f3wnie\\u017c nam wszystkim na rozw\\u00f3j i ewoluowanie zgodnie z jednog\\u0142o\\u015bnie ustalanym kierunkiem. Decyzje takie, mog\\u0105 zapada\\u0107 jedynie w kontakcie osobistym w kr\\u0119gu. Jedn\\u0105 z organizacji, kt\\u00f3re za\\u0142o\\u017cyli\\u015bmy, jest Zwi\\u0105zek Wolnej Ziemi. Oto jego podstawowe za\\u0142o\\u017cenia : . My, ludzie tworz\\u0105cy Zwi\\u0105zek Wolnej Ziemi, uznajemy si\\u0119 za opiekun\\u00f3w i stra\\u017cnik\\u00f3w Ziemi, a w szczeg\\u00f3lno\\u015bci teren\\u00f3w, na kt\\u00f3rych \\u017cyjemy. D\\u0105\\u017cymy do rozwoju \\u015bwiadomo\\u015bci poprzez odtworzenie naturalnej relacji cz\\u0142owieka z nasz\\u0105 Planet\\u0105. Przyjmujemy, \\u017ce b\\u0119d\\u0105c r\\u00f3wnymi wobec Ziemi, na kt\\u00f3rej \\u017cyjemy, jeste\\u015bmy r\\u00f3wnie\\u017c r\\u00f3wni wobec siebie i ca\\u0142ej Przyrody. O\\u015bwiadczamy, \\u017ce Ziemia i ca\\u0142e \\u017cycie na Ziemi stanowi\\u0105 dla nas najwi\\u0119ksz\\u0105 warto\\u015b\\u0107 przez sam fakt swego istnienia. Uznajemy, \\u017ce naszym zadaniem jest ochrona Ziemi, naszego Domu i Miejsca w Kosmosie. Uznajemy, \\u017ce to my, ludzie, nale\\u017cymy do Ziemi, a nie odwrotnie. Uznajemy, \\u017ce Ziemia ma takie samo prawo do istnienia i uszanowania jej bytu, jakie maj\\u0105 wszyscy ludzie. Pragniemy tworzy\\u0107 wsp\\u00f3lnoty, w kt\\u00f3rych b\\u0119dziemy razem \\u017cyli, wsp\\u00f3\\u0142pracowali ze sob\\u0105 i uczyli si\\u0119 od siebie dla dobra nas samych i ca\\u0142ego \\u017bycia. Pragniemy, aby wszyscy ludzie \\u017cyli w harmonii ze sob\\u0105 i z ca\\u0142\\u0105 Przyrod\\u0105, szanuj\\u0105c i chroni\\u0105c Ziemi\\u0119. Wszystkie decyzje podejmujemy przez consensus (jednog\\u0142o\\u015bnie), czyli sposoby \\u017cycia, ochrony ziemi i dalsze dzia\\u0142ania na terenie fundacji podlegaj\\u0105 decyzji kr\\u0119gu. Dzi\\u0119ki temu ka\\u017cdy, kto pojawi si\\u0119 u nas, b\\u0119dzie m\\u00f3g\\u0142 mie\\u0107 poczucie, \\u017ce ziemia jest naszym wsp\\u00f3lnym domem i razem mo\\u017cemy w tym uczestniczy\\u0107.</p>"}	\N	7	1
14	f	2021-02-21 02:35:56.701499+01	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "9f495cdd-69e2-4634-a111-b3c6ffc99ed9", "locale": 1, "title": "Ruch Wolnej Ziemi", "draft_title": "Ruch Wolnej Ziemi", "slug": "ruch-wolnej-ziemi", "content_type": 44, "live": true, "has_unpublished_changes": false, "url_path": "/home/ruch-wolnej-ziemi/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "opis": "<h2>Ruch Wolnej Ziemi jest inicjatyw\\u0105 spo\\u0142eczn\\u0105 skupion\\u0105 na wdra\\u017caniu w \\u017cycie sprawdzonych rozwi\\u0105za\\u0144 prawnych i organizacyjnych w celu \\u201euwalniania Ziemi\\u201d spod w\\u0142asno\\u015bci prywatnej. Zale\\u017cy nam na tworzeniu i rozwoju intencjonalnych spo\\u0142eczno\\u015bci wiejskich (tzw. ekowiosek, ekoosad), w kt\\u00f3rych decyzje dotycz\\u0105ce wszystkich podejmowane s\\u0105 wsp\\u00f3lnie (konsensus), i w kt\\u00f3rych my, ludzie, posiadamy r\\u00f3wne prawa zar\\u00f3wno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia.</h2>", "objasnienie": "<p>Uczestnikiem Ruchu mo\\u017ce by\\u0107 ka\\u017cda osoba, kt\\u00f3ra rozumie nasze za\\u0142o\\u017cenia i zgadza si\\u0119 z nimi. Ruch Wolnej Ziemi nie jest organizacj\\u0105 i nie prowadzi \\u017cadnej ewidencji przynale\\u017cno\\u015bci. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra w ten spos\\u00f3b eliminuje z naszego \\u017cycia podstawy konsumpcjonizmu.</p>", "komentarz": "<p>Zal\\u0105\\u017cki Ruchu Wolnej Ziemi, istniej\\u0105ce w spos\\u00f3b faktyczny na terenie Polski zainicjowa\\u0142 Henry Schumacher, tworz\\u0105c w 2000 r w Bieszczadach Fundacj\\u0119 Plemi\\u0119 Sanu. Henry przyjecha\\u0142 do Polski w 1991 r odkrywaj\\u0105c przysz\\u0142e miejsce do \\u017cycia z grup\\u0105 skautingow\\u0105 Rodziny T\\u0119czy. W tamtym czasie szukali oni miejsca na europejskie Zgromadzenie Rainbow Family, kt\\u00f3re odby\\u0142o si\\u0119 w 1991 r w dolinie Tworylne. W 2001 r\\u00f3wnie\\u017c w Bieszczadach w Koma\\u0144czy pojawi\\u0142a si\\u0119 te\\u017c o\\u015bmioosobowa grupa T\\u0119czowy Kr\\u0105g, kt\\u00f3ra za cel postawi\\u0142a sobie za\\u0142o\\u017cenie organizacji, umo\\u017cliwiaj\\u0105cej posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci. Dzi\\u0119ki temu w 2004 r w Grab\\u00f3wce uda\\u0142o si\\u0119 zarejestrowa\\u0107 Stowarzyszenie Arte Unite, kt\\u00f3re w 2012 r otrzyma\\u0142o na wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107 budynek gospodarczy. T\\u0119czowy Kr\\u0105g zosta\\u0142 za\\u0142o\\u017cony pod Bydgoszcz\\u0105 przez ludzi z mi\\u0119dzynarodowego posthipisowskiego ruchu Rainbow Family - Rodzina T\\u0119czy. W tym samym czasie dzi\\u0119ki Arturowi Milickiemu powsta\\u0142a Fundacja dla Ziemi i Ludzi za\\u0142o\\u017cona w roku 2011. R\\u00f3wnie\\u017c dzi\\u0119ki Arturowi, powy\\u017csze inicjatywy uda\\u0142o si\\u0119 zebra\\u0107 i uruchomi\\u0107 jako Ruch Wolnej Ziemi. Wszystkie wymienione tutaj organizacje, mo\\u017cna uzna\\u0107 za inicjuj\\u0105ce Ruch Wolnej Ziemi ze wzgl\\u0119du na szczeg\\u00f3lne uwzgl\\u0119dnienie podejmowania w nich decyzji przez kosensus, czyli jednog\\u0142o\\u015bnie.</p>"}	\N	9	1
43	f	2021-03-07 10:31:03.997552+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 8, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-07T09:23:07.728Z", "latest_revision_created_at": "2021-03-07T09:23:07.622Z", "live_revision": 42, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.", "earth": "<p><br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci, a przede wszystkim stworzenie podstaw do tego, by ka\\u017cdy m\\u00f3g\\u0142 mie\\u0107 r\\u00f3wne prawa do decydowania o swoim \\u017cyciu.<br/></p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/> Si\\u0142a umys\\u0142\\u00f3w wypranych przez propagand\\u0119 chaosu wsp\\u00f3\\u0142czesnej kultury, operuj\\u0105c strachem i przywi\\u0105zaniem prowadzi cz\\u0119sto do tego, \\u017ce za cen\\u0119 prze\\u017cycia, b\\u0105d\\u017a obietnicy raju, kupujemy pogl\\u0105dy kt\\u00f3re tworz\\u0105 nasz\\u0105 \\u015bwiadomo\\u015b\\u0107 i stajemy si\\u0119 w ten spos\\u00f3b niewolnikami system\\u00f3w ekonomicznych, spo\\u0142ecznych, politycznych i religijnych.<br/> Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra w ten spos\\u00f3b eliminuje z naszego \\u017cycia podstawy konsumpcjonizmu.<br/></p>", "wolna_ziemia": "<p>Inicjatywa maj\\u0105ca na celu zorganizowanie wsp\\u00f3lnego miejsca, gdzie da\\u0142o by si\\u0119 tworzy\\u0107 \\u017cycie w oparciu o mo\\u017cliwo\\u015bci, kt\\u00f3re mo\\u017cemy stwarza\\u0107 sami dla siebie, rozpocz\\u0119\\u0142a si\\u0119 wiele lat temu, w wypo\\u017cyczonym domu pod Bydgoszcz\\u0105. Tam po raz pierwszy w par\\u0119 os\\u00f3b postanowili\\u015bmy spr\\u00f3bowa\\u0107 \\u017cy\\u0107 razem. Ju\\u017c na samym pocz\\u0105tku potrzebne wsp\\u00f3lne decyzje by\\u0142y podejmowane w kr\\u0119gu jednog\\u0142o\\u015bnie za pomoc\\u0105 konsensusu.<br/>Plan by\\u0142 taki, by najpierw stworzy\\u0107 faktycznie istniej\\u0105c\\u0105 wsp\\u00f3lnot\\u0119, a potem w oparciu o to za\\u0142o\\u017cy\\u0107 fundacj\\u0119 lub stowarzyszenie.<br/>Formalnie istniej\\u0105ca organizacja by\\u0142a nam niezb\\u0119dna do tego, \\u017ceby da\\u0142o si\\u0119 zrealizowa\\u0107 plan posiadania wsp\\u00f3lnej przestrzeni do \\u017cycia, w taki spos\\u00f3b, by nie by\\u0142o jednego w\\u0142a\\u015bciciela. Od tamtego czasu, jednym z g\\u0142\\u00f3wnych za\\u0142o\\u017ce\\u0144 jest  r\\u00f3wno\\u015b\\u0107 wszystkich uczestnik\\u00f3w wobec podejmowanych wsp\\u00f3lnie decyzji, dotycz\\u0105cych tego co robimy razem.<br/>Na tych w\\u0142a\\u015bnie zasadach powsta\\u0142 obecnie istniej\\u0105cy statut stowarzyszenia Arte Unite. <br/>Nasz\\u0105 organizacj\\u0119 uda\\u0142o si\\u0119 za\\u0142o\\u017cy\\u0107 na wsi, kilka lat po tych wydarzeniach i w du\\u017cej cz\\u0119\\u015bci w oparciu ju\\u017c o innych nowych ludzi. Jednak wtedy ,wci\\u0105\\u017c nie mieli\\u015bmy swojego kawa\\u0142ka Ziemi, mimo tego, \\u017ce udawa\\u0142o nam si\\u0119 \\u017cy\\u0107 wsp\\u00f3lnie z dala od miasta. Dzia\\u0142o si\\u0119 du\\u017co, w pewnym okresie pojawi\\u0142y si\\u0119 nawet cztery konie. Grab\\u00f3wka, bo tak nazywa\\u0142a si\\u0119 wioska, w kt\\u00f3rej mieszkali\\u015bmy dzia\\u0142a\\u0142a ponad 10 lat. Samo stowarzyszenie Arte Unite z czasem, zosta\\u0142o przeniesione do Dziadowic, natomiast wiejska chata, \\u017cy\\u0142a nadal swoim w\\u0142asnym \\u017cyciem.<br/>Wtedy w Dziadowicach pojawi\\u0142 si\\u0119 Andrzej, weteran z Zieben Linden. Zaproponowa\\u0142 jeden budynek gospodarczy, kt\\u00f3ry da\\u0142oby si\\u0119 przerobi\\u0107 na dom, -no i spodoba\\u0142a mu si\\u0119 idea tworzenia miejsca w oparciu o wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107.<br/>Tak powsta\\u0142 Lubliniec.<br/>Z tym miejscem wi\\u0105\\u017cemy plany wsp\\u00f3lnego \\u017cycia w wi\\u0119kszej grupie os\\u00f3b. Dwa budynki i potencjalny domek na wielkim d\\u0119bie, daj\\u0105 nam mo\\u017cliwo\\u015b\\u0107 zaproszenia do tej inicjatywy jeszcze oko\\u0142o siedmiu os\\u00f3b<br/>Za\\u0142o\\u017cenia s\\u0105 takie, by by\\u0142 to dom jak najbardziej ekonomiczny z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalny. Nie mamy jeszcze takiej wiedzy i do\\u015bwiadczenia, by to zrealizowa\\u0107 w stu procentach, jednak jest to g\\u0142\\u00f3wny kierunek naszych dzia\\u0142a\\u0144 budowlanych.<br/>W tym budynku w niedalekiej przysz\\u0142o\\u015bci, chcemy tworzy\\u0107 r\\u00f3\\u017cne warsztaty. Na pocz\\u0105tku w oparciu o nasze umiej\\u0119tno\\u015bci : Joga, ceramika, rze\\u017aba w drewnie, Mo\\u017cliwe \\u017ce b\\u0119d\\u0105 te\\u017c zaj\\u0119cia z zakresu terapii ruchem, nauki \\u017cycia na wsi w spos\\u00f3b zmierzaj\\u0105cy do jak najwi\\u0119kszej niezale\\u017cno\\u015bci. Chcieliby\\u015bmy te\\u017c tworzy\\u0107 kolejne miejsca na terenach nie nale\\u017c\\u0105cych do prywatnych os\\u00f3b w oparciu o nasze pomys\\u0142y i nasz\\u0105 organizacj\\u0119.<br/></p><p>Wci\\u0105\\u017c szukamy ludzi, kt\\u00f3rzy czuli by si\\u0119 z nami dobrze i mieli na uwadze to, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci z tym zwi\\u0105zanej.<br/></p><p></p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": "", "spis_title": "", "spis": "<p></p><p>Oto szczeg\\u00f3\\u0142y prac z mocno szacunkow\\u0105 wycen\\u0105, w kolejno\\u015bci takiej, jak powinny by\\u0107 wykonane :<br/></p><p>Okna i drzwi 8000 z\\u0142 do 12 000 z\\u0142 w zale\\u017cno\\u015bci od materia\\u0142\\u00f3w.<br/></p><p>budowa \\u015bciany szklanej, wymiana okien 2 x w tym jedno dachowe, wymiana szyb 2 x wstawienie okien 4 x + drzwi 6 x<br/></p><p>(5 x drzwi + 7 okien ju\\u017c s\\u0105 wstawione)<br/></p><p>budowa schod\\u00f3w drewnianych 4000 z\\u0142 i ewentualnie schod\\u00f3w dodatkowych przeciwpo\\u017carowych z metalu w szklarni + 4000 z\\u0142<br/></p><p>Po\\u0142o\\u017cenie legar\\u00f3w na dolnej pod\\u0142odze + deski od spodu i od g\\u00f3ry na g\\u00f3rnej i dolnej pod\\u0142odze (materia\\u0142 i praca 8000 z\\u0142 )<br/></p><p>izolacje poziome na dw\\u00f3ch poziomach pod\\u0142ogi + izolacje niekt\\u00f3rych \\u015bcian z perlito betonu<br/></p><p>W oparciu o nasz\\u0105 maszyn\\u0119 do pianobetonu - 40 roboczogodzin dla dw\\u00f3ch os\\u00f3b + materia\\u0142 2000 zl (transport cementu i perlitu)<br/></p><p>8000 z\\u0142 - 12000 z\\u0142 Doko\\u0144czenie hydrauliki :<br/></p><p>zbudowanie grzejnik\\u00f3w p\\u0142aszczyznowych i pod\\u0142\\u0105czenie do systemu / parter i pi\\u0119tro<br/></p><p>pod\\u0142\\u0105czenie warsztatu (zlew do prac ceramicznych - zimna woda i odp\\u0142yw)<br/></p><p>Opcjonalnie - zamontowanie na dachu i pod\\u0142\\u0105czenie baterii solarnych na glikol do zbiornika (mo\\u017cna to zrobi\\u0107 r\\u00f3wnie\\u017c na drugim etapie budowy)<br/></p><p>rozdzielnia cieplej wody<br/></p><p>W razie konieczno\\u015bci / wymaga\\u0144 - opis projektowy ca\\u0142ego systemu.<br/></p><p>budowa i pod\\u0142\\u0105czenie suszarni do systemu (suszarnia jest na wod\\u0119)<br/></p><p>pod\\u0142\\u0105czenie grzejnika &quot;kurtyna powietrzna&quot; + grzejnik do suszenia drzewa<br/></p><p>Rynny i zabezpieczenia przeciw spadaj\\u0105cemu lodowi z dachu 3000 z\\u0142 razem z prac\\u0105. (tu opcjonalnie w gr\\u0119 wchodzi firma, kt\\u00f3ra si\\u0119 tym zajmuje)<br/></p><p>Wentylacja 3000 z\\u0142 (cz\\u0119\\u015bciowo jest ju\\u017c gotowa)<br/></p><p>Budowa \\u015bcianek dzia\\u0142owych 15 000 z\\u0142<br/></p><p>(kafelki w dw\\u00f3ch \\u0142azienkach i kuchni, lekkie \\u015bcianki z itongu + izolacja zbiornika, tynki gliniane wewn\\u0105trz budynku) po\\u0142ow\\u0119 kafelk\\u00f3w mamy.<br/></p><p>Elektryka 5000 z\\u0142 - 6000 z\\u0142<br/></p><p>po\\u0142o\\u017cenie kabli, gniazdek w 11stu pomieszczeniach (piwnica, szklarnia, antresole, pompy i grza\\u0142ki do hydrauliki) i pod\\u0142\\u0105czenie kabla 3 fazy do warsztatu<br/></p><p>W razie konieczno\\u015bci zrobienie projektu instalacji.<br/></p><p>Budowa kominka 4000 z\\u0142 praca i materia\\u0142y. Kominek jest spory - w pomieszczeniu g\\u0142\\u00f3wnym warsztatowym. (cz\\u0119\\u015b\\u0107 materia\\u0142\\u00f3w jest)<br/></p><p>barierka drewniana do balkonu 500 z\\u0142 (jest materia\\u0142 )<br/></p><p>Doko\\u0144czenie tynk\\u00f3w zewn\\u0119trznych i izolacji ze s\\u0142omy w dachu + tynk na tej izolacji 6000 z\\u0142<br/></p><p>W drugim etapie mo\\u017cna doda\\u0107 budow\\u0119 szklarni i studni g\\u0142\\u0119binowej jak r\\u00f3wnie\\u017c baterii solarnych\\u00a0<br/>szklarnia z przebudow\\u0105 stropu i wzmocnieniem konstrukcji oko\\u0142o 15000 z\\u0142<br/><br/> Kolektory s\\u0142oneczne na glikol 6000 z\\u0142\\u00a0<br/><br/><br/><br/>Studnia g\\u0142\\u0119binowa oko\\u0142o 5000 z\\u0142</p>", "spis_link": ""}	\N	3	2
31	f	2021-03-05 20:56:53.556184+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 6, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-05T18:18:46.014Z", "latest_revision_created_at": "2021-03-05T18:18:45.878Z", "live_revision": 28, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.", "earth": "<p><br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci, a przede wszystkim stworzenie podstaw do tego, by ka\\u017cdy m\\u00f3g\\u0142 mie\\u0107 r\\u00f3wne prawa do decydowania o swoim \\u017cyciu.<br/></p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/> Si\\u0142a umys\\u0142\\u00f3w wypranych przez propagand\\u0119 chaosu wsp\\u00f3\\u0142czesnej kultury, operuj\\u0105c strachem i przywi\\u0105zaniem prowadzi cz\\u0119sto do tego, \\u017ce za cen\\u0119 prze\\u017cycia, b\\u0105d\\u017a obietnicy raju, kupujemy pogl\\u0105dy kt\\u00f3re tworz\\u0105 nasz\\u0105 \\u015bwiadomo\\u015b\\u0107 i stajemy si\\u0119 w ten spos\\u00f3b niewolnikami system\\u00f3w ekonomicznych, spo\\u0142ecznych, politycznych i religijnych.<br/> Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra w ten spos\\u00f3b eliminuje z naszego \\u017cycia podstawy konsumpcjonizmu.<br/></p>", "wolna_ziemia": "<p> Nasza inicjatywa rozpocz\\u0119\\u0142a si\\u0119 wiele lat temu, w wypo\\u017cyczonym domu pod Bydgoszcz\\u0105, gdzie w par\\u0119 os\\u00f3b postanowili\\u015bmy spr\\u00f3bowa\\u0107 \\u017cy\\u0107 razem. Ju\\u017c na samym pocz\\u0105tku potrzebne wsp\\u00f3lne decyzje by\\u0142y podejmowane w kr\\u0119gu jednog\\u0142o\\u015bnie za pomoc\\u0105 konsensusu.<br/>Plan by\\u0142 taki, by najpierw stworzy\\u0107 faktycznie istniej\\u0105c\\u0105 wsp\\u00f3lnot\\u0119, a potem w oparciu o to za\\u0142o\\u017cy\\u0107 organizacj\\u0119.<br/>Organizacja by\\u0142a nam niezb\\u0119dna do tego, by da\\u0142o si\\u0119 zrealizowa\\u0107 plan posiadania wsp\\u00f3lnego domu, w taki spos\\u00f3b, by nie mia\\u0142 on jednego w\\u0142a\\u015bciciela. Za\\u0142o\\u017ceniem by\\u0142o r\\u00f3wnie\\u017c to, by wszyscy byli r\\u00f3wni wobec podejmowanych wsp\\u00f3lnie decyzji dotycz\\u0105cych tego, co robimy razem.<br/></p><p>Na tych w\\u0142a\\u015bnie zasadach powsta\\u0142 ju\\u017c istniej\\u0105cy statut stowarzyszenia Arte Unite. Nasz\\u0105 organizacj\\u0119 uda\\u0142o si\\u0119 za\\u0142o\\u017cy\\u0107 kilka lat po tych wydarzeniach i w du\\u017cej cz\\u0119\\u015bci w oparciu ju\\u017c o innych, nowych ludzi. Jednak wci\\u0105\\u017c nie mieli\\u015bmy swojego kawa\\u0142ka Ziemi, mimo tego, \\u017ce udawa\\u0142o nam si\\u0119 \\u017cy\\u0107 wsp\\u00f3lnie z dala od miasta.  Dzia\\u0142o si\\u0119 du\\u017co, w pewnym okresie pojawi\\u0142y si\\u0119 nawet cztery konie. Grab\\u00f3wka, bo tak nazywa\\u0142a si\\u0119 wioska, w kt\\u00f3rej mieszkali\\u015bmy dzia\\u0142a\\u0142a ponad 10 lat. Samo stowarzyszenie Arte Unite zosta\\u0142o przeniesione do Dziadowic, natomiast chata \\u017cy\\u0142a nadal swoim w\\u0142asnym \\u017cyciem.<br/>Wtedy pojawi\\u0142 si\\u0119 Andrzej, weteran z Zieben Linden. Zaproponowa\\u0142 jeden budynek gospodarczy, kt\\u00f3ry da\\u0142oby si\\u0119 przerobi\\u0107 na dom.. no i spodoba\\u0142a mu si\\u0119 idea tworzenia miejsca w oparciu o wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107.<br/>Tak powsta\\u0142 Lubliniec.<br/>Z tym miejscem wi\\u0105\\u017cemy plany wsp\\u00f3lnego \\u017cycia w wi\\u0119kszej grupie os\\u00f3b. Dwa budynki i potencjalny domek na wielkim d\\u0119bie, daj\\u0105 nam mo\\u017cliwo\\u015b\\u0107 zaproszenia do tej inicjatywy jeszcze oko\\u0142o siedmiu os\\u00f3b<br/>Za\\u0142o\\u017cenia s\\u0105 takie, by by\\u0142 to dom jak najbardziej ekonomiczny z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalny. Nie mamy jeszcze takiej wiedzy i do\\u015bwiadczenia, by to zrealizowa\\u0107 w stu procentach, jednak jest to g\\u0142\\u00f3wny kierunek naszych dzia\\u0142a\\u0144 budowlanych.<br/>W tym budynku w niedalekiej przysz\\u0142o\\u015bci, chcemy tworzy\\u0107 r\\u00f3\\u017cne warsztaty. Na pocz\\u0105tku w oparciu o nasze umiej\\u0119tno\\u015bci : Joga, ceramika, rze\\u017aba w drewnie, Mo\\u017cliwe \\u017ce b\\u0119d\\u0105 te\\u017c zaj\\u0119cia z zakresu terapii ruchem, nauki \\u017cycia na wsi w spos\\u00f3b zmierzaj\\u0105cy do jak najwi\\u0119kszej niezale\\u017cno\\u015bci. Chcieliby\\u015bmy te\\u017c tworzy\\u0107 kolejne miejsca na terenach nie nale\\u017c\\u0105cych do prywatnych os\\u00f3b w oparciu o nasze pomys\\u0142y i nasz\\u0105 organizacj\\u0119.<br/></p><p>Wci\\u0105\\u017c szukamy ludzi, kt\\u00f3rzy czuli by si\\u0119 z nami dobrze i mieli na uwadze to, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci z tym zwi\\u0105zanej.<br/></p><p></p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": ""}	\N	3	2
1	f	2021-02-07 07:27:14.685056+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "body": "<p>Ala ma kota</p>"}	\N	3	1
4	f	2021-02-07 15:10:58.225814+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-07T06:38:02.740Z", "latest_revision_created_at": "2021-02-07T06:38:02.722Z", "live_revision": 3, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "<p>Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.</p>", "quote_author": "<p>Henryk Skolimowski</p>", "earth_head": "<p>Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.</p>", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/>   <br/>Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "<p>Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.</p>", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "<p>Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.</p>", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>"}	\N	3	1
8	f	2021-02-14 23:14:00.145636+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-14T22:05:22.804Z", "latest_revision_created_at": "2021-02-14T22:05:22.729Z", "live_revision": 7, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	1
22	f	2021-03-05 14:08:16.198184+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 6, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-05T12:56:01.101Z", "latest_revision_created_at": "2021-03-05T12:56:00.969Z", "live_revision": 21, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, ale tylko tam, gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/></p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": ""}	\N	3	2
23	f	2021-03-05 18:53:43.081264+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 6, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-05T13:08:16.277Z", "latest_revision_created_at": "2021-03-05T13:08:16.198Z", "live_revision": 22, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi. <br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji, w kt\\u00f3rych wszyscy jeste\\u015bmy r\\u00f3wni wobec siebie, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, ale tylko tam, gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/></p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": ""}	\N	3	2
26	f	2021-03-05 19:00:35.109234+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 6, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-05T17:56:04.425Z", "latest_revision_created_at": "2021-03-05T17:56:04.345Z", "live_revision": 24, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.", "earth": "<p><br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci, a przede wszystkim stworzenie podstaw do tego, by ka\\u017cdy m\\u00f3g\\u0142 mie\\u0107 r\\u00f3wne prawa do decydowania o swoim \\u017cyciu.<br/></p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/></p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": ""}	\N	3	2
34	f	2021-03-06 11:33:48.210507+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 8, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-05T19:56:53.666Z", "latest_revision_created_at": "2021-03-05T19:56:53.556Z", "live_revision": 31, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.", "earth": "<p><br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci, a przede wszystkim stworzenie podstaw do tego, by ka\\u017cdy m\\u00f3g\\u0142 mie\\u0107 r\\u00f3wne prawa do decydowania o swoim \\u017cyciu.<br/></p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/> Si\\u0142a umys\\u0142\\u00f3w wypranych przez propagand\\u0119 chaosu wsp\\u00f3\\u0142czesnej kultury, operuj\\u0105c strachem i przywi\\u0105zaniem prowadzi cz\\u0119sto do tego, \\u017ce za cen\\u0119 prze\\u017cycia, b\\u0105d\\u017a obietnicy raju, kupujemy pogl\\u0105dy kt\\u00f3re tworz\\u0105 nasz\\u0105 \\u015bwiadomo\\u015b\\u0107 i stajemy si\\u0119 w ten spos\\u00f3b niewolnikami system\\u00f3w ekonomicznych, spo\\u0142ecznych, politycznych i religijnych.<br/> Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra w ten spos\\u00f3b eliminuje z naszego \\u017cycia podstawy konsumpcjonizmu.<br/></p>", "wolna_ziemia": "<p>Nasza inicjatywa rozpocz\\u0119\\u0142a si\\u0119 wiele lat temu, w wypo\\u017cyczonym domu pod Bydgoszcz\\u0105, gdzie w par\\u0119 os\\u00f3b postanowili\\u015bmy spr\\u00f3bowa\\u0107 \\u017cy\\u0107 razem. Ju\\u017c na samym pocz\\u0105tku potrzebne wsp\\u00f3lne decyzje by\\u0142y podejmowane w kr\\u0119gu jednog\\u0142o\\u015bnie za pomoc\\u0105 konsensusu.<br/>Plan by\\u0142 taki, by najpierw stworzy\\u0107 faktycznie istniej\\u0105c\\u0105 wsp\\u00f3lnot\\u0119, a potem w oparciu o to za\\u0142o\\u017cy\\u0107 organizacj\\u0119.<br/>Organizacja by\\u0142a nam niezb\\u0119dna do tego, by da\\u0142o si\\u0119 zrealizowa\\u0107 plan posiadania wsp\\u00f3lnego domu, w taki spos\\u00f3b, by nie mia\\u0142 on jednego w\\u0142a\\u015bciciela. Za\\u0142o\\u017ceniem by\\u0142o r\\u00f3wnie\\u017c to, by wszyscy byli r\\u00f3wni wobec podejmowanych wsp\\u00f3lnie decyzji dotycz\\u0105cych tego, co robimy razem.<br/></p><p>Na tych w\\u0142a\\u015bnie zasadach powsta\\u0142 ju\\u017c istniej\\u0105cy statut stowarzyszenia Arte Unite. Nasz\\u0105 organizacj\\u0119 uda\\u0142o si\\u0119 za\\u0142o\\u017cy\\u0107 kilka lat po tych wydarzeniach i w du\\u017cej cz\\u0119\\u015bci w oparciu ju\\u017c o innych, nowych ludzi. Jednak wci\\u0105\\u017c nie mieli\\u015bmy swojego kawa\\u0142ka Ziemi, mimo tego, \\u017ce udawa\\u0142o nam si\\u0119 \\u017cy\\u0107 wsp\\u00f3lnie z dala od miasta. Dzia\\u0142o si\\u0119 du\\u017co, w pewnym okresie pojawi\\u0142y si\\u0119 nawet cztery konie. Grab\\u00f3wka, bo tak nazywa\\u0142a si\\u0119 wioska, w kt\\u00f3rej mieszkali\\u015bmy dzia\\u0142a\\u0142a ponad 10 lat. Samo stowarzyszenie Arte Unite zosta\\u0142o przeniesione do Dziadowic, natomiast chata \\u017cy\\u0142a nadal swoim w\\u0142asnym \\u017cyciem.<br/>Wtedy pojawi\\u0142 si\\u0119 Andrzej, weteran z Zieben Linden. Zaproponowa\\u0142 jeden budynek gospodarczy, kt\\u00f3ry da\\u0142oby si\\u0119 przerobi\\u0107 na dom.. no i spodoba\\u0142a mu si\\u0119 idea tworzenia miejsca w oparciu o wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107.<br/>Tak powsta\\u0142 Lubliniec.<br/>Z tym miejscem wi\\u0105\\u017cemy plany wsp\\u00f3lnego \\u017cycia w wi\\u0119kszej grupie os\\u00f3b. Dwa budynki i potencjalny domek na wielkim d\\u0119bie, daj\\u0105 nam mo\\u017cliwo\\u015b\\u0107 zaproszenia do tej inicjatywy jeszcze oko\\u0142o siedmiu os\\u00f3b<br/>Za\\u0142o\\u017cenia s\\u0105 takie, by by\\u0142 to dom jak najbardziej ekonomiczny z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalny. Nie mamy jeszcze takiej wiedzy i do\\u015bwiadczenia, by to zrealizowa\\u0107 w stu procentach, jednak jest to g\\u0142\\u00f3wny kierunek naszych dzia\\u0142a\\u0144 budowlanych.<br/>W tym budynku w niedalekiej przysz\\u0142o\\u015bci, chcemy tworzy\\u0107 r\\u00f3\\u017cne warsztaty. Na pocz\\u0105tku w oparciu o nasze umiej\\u0119tno\\u015bci : Joga, ceramika, rze\\u017aba w drewnie, Mo\\u017cliwe \\u017ce b\\u0119d\\u0105 te\\u017c zaj\\u0119cia z zakresu terapii ruchem, nauki \\u017cycia na wsi w spos\\u00f3b zmierzaj\\u0105cy do jak najwi\\u0119kszej niezale\\u017cno\\u015bci. Chcieliby\\u015bmy te\\u017c tworzy\\u0107 kolejne miejsca na terenach nie nale\\u017c\\u0105cych do prywatnych os\\u00f3b w oparciu o nasze pomys\\u0142y i nasz\\u0105 organizacj\\u0119.<br/></p><p>Wci\\u0105\\u017c szukamy ludzi, kt\\u00f3rzy czuli by si\\u0119 z nami dobrze i mieli na uwadze to, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci z tym zwi\\u0105zanej.<br/></p><p></p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": "", "spis_title": "", "spis": "<p> </p><p>Oto szczeg\\u00f3\\u0142y prac z mocno szacunkow\\u0105 wycen\\u0105, w kolejno\\u015bci takiej, jak powinny by\\u0107 wykonane :<br/></p><p>Okna i drzwi 8000 z\\u0142 do 12 000 z\\u0142 w zale\\u017cno\\u015bci od materia\\u0142\\u00f3w.<br/></p><p>budowa \\u015bciany szklanej, wymiana okien 2 x w tym jedno dachowe, wymiana szyb 2 x wstawienie okien 4 x + drzwi 6 x<br/></p><p>(5 x drzwi + 7 okien ju\\u017c s\\u0105 wstawione)<br/></p><p>budowa schod\\u00f3w drewnianych 4000 z\\u0142 i ewentualnie schod\\u00f3w dodatkowych przeciwpo\\u017carowych z metalu w szklarni + 4000 z\\u0142<br/></p><p>Po\\u0142o\\u017cenie legar\\u00f3w na dolnej pod\\u0142odze + deski od spodu i od g\\u00f3ry na g\\u00f3rnej i dolnej pod\\u0142odze (materia\\u0142 i praca 8000 z\\u0142 )<br/></p><p>izolacje poziome na dw\\u00f3ch poziomach pod\\u0142ogi + izolacje niekt\\u00f3rych \\u015bcian z perlito betonu<br/></p><p>W oparciu o nasz\\u0105 maszyn\\u0119 do pianobetonu - 40 roboczogodzin dla dw\\u00f3ch os\\u00f3b + materia\\u0142 2000 zl (transport cementu i perlitu)<br/></p><p>8000 z\\u0142 - 12000 z\\u0142 Doko\\u0144czenie hydrauliki :<br/></p><p>zbudowanie grzejnik\\u00f3w p\\u0142aszczyznowych i pod\\u0142\\u0105czenie do systemu / parter i pi\\u0119tro<br/></p><p>pod\\u0142\\u0105czenie warsztatu (zlew do prac ceramicznych - zimna woda i odp\\u0142yw)<br/></p><p>Opcjonalnie - zamontowanie na dachu i pod\\u0142\\u0105czenie baterii solarnych na glikol do zbiornika (mo\\u017cna to zrobi\\u0107 r\\u00f3wnie\\u017c na drugim etapie budowy)<br/></p><p>rozdzielnia cieplej wody<br/></p><p>W razie konieczno\\u015bci / wymaga\\u0144 - opis projektowy ca\\u0142ego systemu.<br/></p><p>budowa i pod\\u0142\\u0105czenie suszarni do systemu (suszarnia jest na wod\\u0119)<br/></p><p>pod\\u0142\\u0105czenie grzejnika &quot;kurtyna powietrzna&quot; + grzejnik do suszenia drzewa<br/></p><p>Rynny i zabezpieczenia przeciw spadaj\\u0105cemu lodowi z dachu 3000 z\\u0142 razem z prac\\u0105. (tu opcjonalnie w gr\\u0119 wchodzi firma, kt\\u00f3ra si\\u0119 tym zajmuje)<br/></p><p>Wentylacja 3000 z\\u0142 (cz\\u0119\\u015bciowo jest ju\\u017c gotowa)<br/></p><p>Budowa \\u015bcianek dzia\\u0142owych 15 000 z\\u0142<br/></p><p>(kafelki w dw\\u00f3ch \\u0142azienkach i kuchni, lekkie \\u015bcianki z itongu + izolacja zbiornika, tynki gliniane wewn\\u0105trz budynku) po\\u0142ow\\u0119 kafelk\\u00f3w mamy.<br/></p><p>Elektryka 5000 z\\u0142 - 6000 z\\u0142<br/></p><p>po\\u0142o\\u017cenie kabli, gniazdek w 11stu pomieszczeniach (piwnica, szklarnia, antresole, pompy i grza\\u0142ki do hydrauliki) i pod\\u0142\\u0105czenie kabla 3 fazy do warsztatu<br/></p><p>W razie konieczno\\u015bci zrobienie projektu instalacji.<br/></p><p>Budowa kominka 4000 z\\u0142 praca i materia\\u0142y. Kominek jest spory - w pomieszczeniu g\\u0142\\u00f3wnym warsztatowym. (cz\\u0119\\u015b\\u0107 materia\\u0142\\u00f3w jest)<br/></p><p>barierka drewniana do balkonu 500 z\\u0142 (jest materia\\u0142 )<br/></p><p>Doko\\u0144czenie tynk\\u00f3w zewn\\u0119trznych i izolacji ze s\\u0142omy w dachu + tynk na tej izolacji 6000 z\\u0142<br/></p><p>W drugim etapie mo\\u017cna doda\\u0107 budow\\u0119 szklarni i studni g\\u0142\\u0119binowej jak r\\u00f3wnie\\u017c baterii solarnych\\u00a0<br/>szklarnia z przebudow\\u0105 stropu i wzmocnieniem konstrukcji oko\\u0142o 15000 z\\u0142<br/> <br/>Kolektory s\\u0142oneczne na glikol 6000 z\\u0142\\u00a0<br/><br/><br/><br/>Studnia g\\u0142\\u0119binowa oko\\u0142o 5000 z\\u0142</p>", "spis_link": ""}	\N	3	2
38	f	2021-03-06 12:24:30.692309+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 8, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-06T11:06:44.589Z", "latest_revision_created_at": "2021-03-06T11:06:44.474Z", "live_revision": 37, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.", "earth": "<p><br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci, a przede wszystkim stworzenie podstaw do tego, by ka\\u017cdy m\\u00f3g\\u0142 mie\\u0107 r\\u00f3wne prawa do decydowania o swoim \\u017cyciu.<br/></p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/> Si\\u0142a umys\\u0142\\u00f3w wypranych przez propagand\\u0119 chaosu wsp\\u00f3\\u0142czesnej kultury, operuj\\u0105c strachem i przywi\\u0105zaniem prowadzi cz\\u0119sto do tego, \\u017ce za cen\\u0119 prze\\u017cycia, b\\u0105d\\u017a obietnicy raju, kupujemy pogl\\u0105dy kt\\u00f3re tworz\\u0105 nasz\\u0105 \\u015bwiadomo\\u015b\\u0107 i stajemy si\\u0119 w ten spos\\u00f3b niewolnikami system\\u00f3w ekonomicznych, spo\\u0142ecznych, politycznych i religijnych.<br/> Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra w ten spos\\u00f3b eliminuje z naszego \\u017cycia podstawy konsumpcjonizmu.<br/></p>", "wolna_ziemia": "<p>Inicjatywa maj\\u0105ca na celu zorganizowanie wsp\\u00f3lnego miejsca, w kt\\u00f3rym da\\u0142o by si\\u0119 tworzy\\u0107 \\u017cycie w oparciu o mo\\u017cliwo\\u015bci, kt\\u00f3re mo\\u017cemy stwarza\\u0107 sami dla siebie, rozpocz\\u0119\\u0142a si\\u0119 wiele lat temu, w wypo\\u017cyczonym domu pod Bydgoszcz\\u0105, gdzie w par\\u0119 os\\u00f3b postanowili\\u015bmy spr\\u00f3bowa\\u0107 \\u017cy\\u0107 razem. Ju\\u017c na samym pocz\\u0105tku potrzebne wsp\\u00f3lne decyzje by\\u0142y podejmowane w kr\\u0119gu jednog\\u0142o\\u015bnie za pomoc\\u0105 konsensusu.<br/>Plan by\\u0142 taki, by najpierw stworzy\\u0107 faktycznie istniej\\u0105c\\u0105 wsp\\u00f3lnot\\u0119, a potem w oparciu o to za\\u0142o\\u017cy\\u0107 organizacj\\u0119.<br/>Organizacja by\\u0142a nam niezb\\u0119dna do tego, by da\\u0142o si\\u0119 zrealizowa\\u0107 plan posiadania wsp\\u00f3lnej przestrzeni do \\u017cycia, w taki spos\\u00f3b, by nie by\\u0142o jednego w\\u0142a\\u015bciciela. Od tamtego czasu, za\\u0142o\\u017ceniem jest r\\u00f3wnie\\u017c to, by wszyscy byli r\\u00f3wni wobec podejmowanych wsp\\u00f3lnie decyzji dotycz\\u0105cych tego, co robimy razem.<br/></p><p>Na tych w\\u0142a\\u015bnie zasadach powsta\\u0142 ju\\u017c istniej\\u0105cy statut stowarzyszenia Arte Unite. Nasz\\u0105 organizacj\\u0119 uda\\u0142o si\\u0119 za\\u0142o\\u017cy\\u0107 kilka lat po tych wydarzeniach i w du\\u017cej cz\\u0119\\u015bci w oparciu ju\\u017c o innych, nowych ludzi. Jednak wci\\u0105\\u017c nie mieli\\u015bmy swojego kawa\\u0142ka Ziemi, mimo tego, \\u017ce udawa\\u0142o nam si\\u0119 \\u017cy\\u0107 wsp\\u00f3lnie z dala od miasta. Dzia\\u0142o si\\u0119 du\\u017co, w pewnym okresie pojawi\\u0142y si\\u0119 nawet cztery konie. Grab\\u00f3wka, bo tak nazywa\\u0142a si\\u0119 wioska, w kt\\u00f3rej mieszkali\\u015bmy dzia\\u0142a\\u0142a ponad 10 lat. Samo stowarzyszenie Arte Unite zosta\\u0142o przeniesione do Dziadowic, natomiast chata \\u017cy\\u0142a nadal swoim w\\u0142asnym \\u017cyciem.<br/>Wtedy pojawi\\u0142 si\\u0119 Andrzej, weteran z Zieben Linden. Zaproponowa\\u0142 jeden budynek gospodarczy, kt\\u00f3ry da\\u0142oby si\\u0119 przerobi\\u0107 na dom.. no i spodoba\\u0142a mu si\\u0119 idea tworzenia miejsca w oparciu o wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107.<br/>Tak powsta\\u0142 Lubliniec.<br/>Z tym miejscem wi\\u0105\\u017cemy plany wsp\\u00f3lnego \\u017cycia w wi\\u0119kszej grupie os\\u00f3b. Dwa budynki i potencjalny domek na wielkim d\\u0119bie, daj\\u0105 nam mo\\u017cliwo\\u015b\\u0107 zaproszenia do tej inicjatywy jeszcze oko\\u0142o siedmiu os\\u00f3b<br/>Za\\u0142o\\u017cenia s\\u0105 takie, by by\\u0142 to dom jak najbardziej ekonomiczny z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalny. Nie mamy jeszcze takiej wiedzy i do\\u015bwiadczenia, by to zrealizowa\\u0107 w stu procentach, jednak jest to g\\u0142\\u00f3wny kierunek naszych dzia\\u0142a\\u0144 budowlanych.<br/>W tym budynku w niedalekiej przysz\\u0142o\\u015bci, chcemy tworzy\\u0107 r\\u00f3\\u017cne warsztaty. Na pocz\\u0105tku w oparciu o nasze umiej\\u0119tno\\u015bci : Joga, ceramika, rze\\u017aba w drewnie, Mo\\u017cliwe \\u017ce b\\u0119d\\u0105 te\\u017c zaj\\u0119cia z zakresu terapii ruchem, nauki \\u017cycia na wsi w spos\\u00f3b zmierzaj\\u0105cy do jak najwi\\u0119kszej niezale\\u017cno\\u015bci. Chcieliby\\u015bmy te\\u017c tworzy\\u0107 kolejne miejsca na terenach nie nale\\u017c\\u0105cych do prywatnych os\\u00f3b w oparciu o nasze pomys\\u0142y i nasz\\u0105 organizacj\\u0119.<br/></p><p>Wci\\u0105\\u017c szukamy ludzi, kt\\u00f3rzy czuli by si\\u0119 z nami dobrze i mieli na uwadze to, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci z tym zwi\\u0105zanej.<br/></p><p></p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": "", "spis_title": "", "spis": "<p></p><p>Oto szczeg\\u00f3\\u0142y prac z mocno szacunkow\\u0105 wycen\\u0105, w kolejno\\u015bci takiej, jak powinny by\\u0107 wykonane :<br/></p><p>Okna i drzwi 8000 z\\u0142 do 12 000 z\\u0142 w zale\\u017cno\\u015bci od materia\\u0142\\u00f3w.<br/></p><p>budowa \\u015bciany szklanej, wymiana okien 2 x w tym jedno dachowe, wymiana szyb 2 x wstawienie okien 4 x + drzwi 6 x<br/></p><p>(5 x drzwi + 7 okien ju\\u017c s\\u0105 wstawione)<br/></p><p>budowa schod\\u00f3w drewnianych 4000 z\\u0142 i ewentualnie schod\\u00f3w dodatkowych przeciwpo\\u017carowych z metalu w szklarni + 4000 z\\u0142<br/></p><p>Po\\u0142o\\u017cenie legar\\u00f3w na dolnej pod\\u0142odze + deski od spodu i od g\\u00f3ry na g\\u00f3rnej i dolnej pod\\u0142odze (materia\\u0142 i praca 8000 z\\u0142 )<br/></p><p>izolacje poziome na dw\\u00f3ch poziomach pod\\u0142ogi + izolacje niekt\\u00f3rych \\u015bcian z perlito betonu<br/></p><p>W oparciu o nasz\\u0105 maszyn\\u0119 do pianobetonu - 40 roboczogodzin dla dw\\u00f3ch os\\u00f3b + materia\\u0142 2000 zl (transport cementu i perlitu)<br/></p><p>8000 z\\u0142 - 12000 z\\u0142 Doko\\u0144czenie hydrauliki :<br/></p><p>zbudowanie grzejnik\\u00f3w p\\u0142aszczyznowych i pod\\u0142\\u0105czenie do systemu / parter i pi\\u0119tro<br/></p><p>pod\\u0142\\u0105czenie warsztatu (zlew do prac ceramicznych - zimna woda i odp\\u0142yw)<br/></p><p>Opcjonalnie - zamontowanie na dachu i pod\\u0142\\u0105czenie baterii solarnych na glikol do zbiornika (mo\\u017cna to zrobi\\u0107 r\\u00f3wnie\\u017c na drugim etapie budowy)<br/></p><p>rozdzielnia cieplej wody<br/></p><p>W razie konieczno\\u015bci / wymaga\\u0144 - opis projektowy ca\\u0142ego systemu.<br/></p><p>budowa i pod\\u0142\\u0105czenie suszarni do systemu (suszarnia jest na wod\\u0119)<br/></p><p>pod\\u0142\\u0105czenie grzejnika &quot;kurtyna powietrzna&quot; + grzejnik do suszenia drzewa<br/></p><p>Rynny i zabezpieczenia przeciw spadaj\\u0105cemu lodowi z dachu 3000 z\\u0142 razem z prac\\u0105. (tu opcjonalnie w gr\\u0119 wchodzi firma, kt\\u00f3ra si\\u0119 tym zajmuje)<br/></p><p>Wentylacja 3000 z\\u0142 (cz\\u0119\\u015bciowo jest ju\\u017c gotowa)<br/></p><p>Budowa \\u015bcianek dzia\\u0142owych 15 000 z\\u0142<br/></p><p>(kafelki w dw\\u00f3ch \\u0142azienkach i kuchni, lekkie \\u015bcianki z itongu + izolacja zbiornika, tynki gliniane wewn\\u0105trz budynku) po\\u0142ow\\u0119 kafelk\\u00f3w mamy.<br/></p><p>Elektryka 5000 z\\u0142 - 6000 z\\u0142<br/></p><p>po\\u0142o\\u017cenie kabli, gniazdek w 11stu pomieszczeniach (piwnica, szklarnia, antresole, pompy i grza\\u0142ki do hydrauliki) i pod\\u0142\\u0105czenie kabla 3 fazy do warsztatu<br/></p><p>W razie konieczno\\u015bci zrobienie projektu instalacji.<br/></p><p>Budowa kominka 4000 z\\u0142 praca i materia\\u0142y. Kominek jest spory - w pomieszczeniu g\\u0142\\u00f3wnym warsztatowym. (cz\\u0119\\u015b\\u0107 materia\\u0142\\u00f3w jest)<br/></p><p>barierka drewniana do balkonu 500 z\\u0142 (jest materia\\u0142 )<br/></p><p>Doko\\u0144czenie tynk\\u00f3w zewn\\u0119trznych i izolacji ze s\\u0142omy w dachu + tynk na tej izolacji 6000 z\\u0142<br/></p><p>W drugim etapie mo\\u017cna doda\\u0107 budow\\u0119 szklarni i studni g\\u0142\\u0119binowej jak r\\u00f3wnie\\u017c baterii solarnych\\u00a0<br/>szklarnia z przebudow\\u0105 stropu i wzmocnieniem konstrukcji oko\\u0142o 15000 z\\u0142<br/><br/> Kolektory s\\u0142oneczne na glikol 6000 z\\u0142\\u00a0<br/><br/><br/><br/>Studnia g\\u0142\\u0119binowa oko\\u0142o 5000 z\\u0142</p>", "spis_link": ""}	\N	3	2
11	f	2021-02-21 01:20:43.778304+01	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "af663334-acac-4c96-9aa7-48db95a271d6", "locale": 1, "title": "Warsztaty", "draft_title": "Warsztaty", "slug": "warsztaty", "content_type": 41, "live": true, "has_unpublished_changes": false, "url_path": "/home/warsztaty/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "opis": "<h2>Po ca\\u0142kowitym sko\\u0144czeniu Stodo\\u0142y, b\\u0119dziemy dysponowali -warsztatem ceramicznym (mamy ko\\u0142o garncarskie, szkliwa i piec gazowy do wypalania) - warsztatem rze\\u017aby w drewnie, szklarni\\u0105 i suszarni\\u0105 do warzyw (nie tylko produkowanych przez nas, ale r\\u00f3wnie\\u017c z zaprzyja\\u017anionych gospodarstw, o kt\\u00f3rych wiemy, \\u017ce uprawia si\\u0119 tam ro\\u015bliny w spos\\u00f3b ekologiczny) B\\u0119dziemy mogli si\\u0119 te\\u017c zaj\\u0105\\u0107 pakowaniem tych warzyw. - sal\\u0105 do spotka\\u0144 na oko\\u0142o 20 os\\u00f3b, jak r\\u00f3wnie\\u017c zapleczem umo\\u017cliwiaj\\u0105cym, \\u017ceby takie osoby mog\\u0142y mieszka\\u0107 w Stodole przez tydzie\\u0144 lub dwa. (Nie s\\u0105 to warunki hotelowe, poniewa\\u017c spa\\u0107 mo\\u017cna na drewnianej pod\\u0142odze i na antresoli, na karimatach.)</h2>", "zaproszenie": "<p>Zapraszamy do wsp\\u00f3\\u0142pracy osoby, kt\\u00f3re chcia\\u0142y by si\\u0119 zajmowa\\u0107 alternatywnymi rozwi\\u0105zaniami, dotycz\\u0105cymi struktur spo\\u0142ecznych. B\\u0119dziemy te\\u017c dysponowa\\u0107 tzw. biurem, gdzie mo\\u017cna gromadzi\\u0107 i udost\\u0119pnia\\u0107 przez internet gotowe projekty.</p>", "milicki": "<p><b>Artur Milicki</b> jest konstruktorem, zdunem i nauczycielem zdu\\u0144stwa specjalizuj\\u0105cym si\\u0119 w projektowaniu i budowie wydajnych piec\\u00f3w akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji s\\u0142u\\u017c\\u0105cych do ogrzewania pomieszcze\\u0144 mieszkalnych i u\\u017cytkowych. Ponadto projektuje on i buduje r\\u00f3wnie\\u017c trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, w\\u0119dzarnie, grille.</p><h3><b>Kurs projektowania i budowy piec\\u00f3w (Kurs Zdu\\u0144ski - edycja VI - 2021)</b></h3><h3><b>Proces Integracji Emocjonalnej (9-tygodniowy kurs online).</b></h3>", "beret": "<p><b>Adam Ma\\u0144czuk</b> is a programmer with over 20 years of experience all over the world (Silicon Valley included). He specializes in Python and Django. He worked as programming lector on Warsaw University. Adam is also a poet and sailor (skipper)</p>", "monika": "<p><b>Monika Matis</b>  \\u017begluje od pi\\u0119tnastego roku \\u017cycia, zwykle na jachtach znajomych i przyjaci\\u00f3\\u0142, gdy potrzebowali kogo\\u015b znaj\\u0105cego si\\u0119 na rzeczy i do\\u015bwiadczonego aby pop\\u0142yn\\u0105\\u0107 gdzie\\u015b dalej. Prowadzi\\u0142a jachty na Ba\\u0142tyku, Morzu P\\u00f3\\u0142nocnym i \\u015ar\\u00f3dziemnym, Atlantyku, od Afryki po dalek\\u0105 Arktyk\\u0119. \\u017beglowa\\u0142a r\\u00f3wnie\\u017c samotnie i w ma\\u0142ych za\\u0142ogach. Pracuje jako publicystka, t\\u0142umaczka, autorka tekst\\u00f3w \\u017ceglarskich oraz piel\\u0119gniarka.  Posiada r\\u00f3\\u017cnorodne do\\u015bwiadczenia akademickie (od informatyki i mechaniki po studia medyczne) i z zami\\u0142owania zajmuje si\\u0119 nawigacj\\u0105 tradycyjn\\u0105 (lub jak si\\u0119 j\\u0105 teraz okre\\u015bla \\u201cawaryjn\\u0105\\u201d). Monika jest naszym Skipperem, czyli osob\\u0105 pierwsz\\u0105 po Bogu na pok\\u0142adzie naszego jachtu.</p>", "comment": ""}	\N	6	1
41	f	2021-03-06 12:41:46.703032+01	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "af663334-acac-4c96-9aa7-48db95a271d6", "locale": 1, "title": "Warsztaty", "draft_title": "Warsztaty", "slug": "warsztaty", "content_type": 41, "live": true, "has_unpublished_changes": false, "url_path": "/home/warsztaty/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T00:20:43.836Z", "last_published_at": "2021-02-21T00:20:43.836Z", "latest_revision_created_at": "2021-02-21T00:20:43.778Z", "live_revision": 11, "alias_of": null, "opis": "<h2>Po ca\\u0142kowitym sko\\u0144czeniu Stodo\\u0142y, b\\u0119dziemy dysponowali:<br/>-Warsztatem ceramicznym (mamy ko\\u0142o garncarskie, szkliwa i piec gazowy do wypalania)<br/><br/> - Warsztatem rze\\u017aby w drewnie, szklarni\\u0105 i suszarni\\u0105 do warzyw, nie tylko produkowanych przez nas, ale r\\u00f3wnie\\u017c z zaprzyja\\u017anionych gospodarstw, o kt\\u00f3rych wiemy, \\u017ce uprawia si\\u0119 tam ro\\u015bliny w spos\\u00f3b ekologiczny. B\\u0119dziemy mogli si\\u0119 te\\u017c zaj\\u0105\\u0107 pakowaniem tych warzyw.<br/> - Sal\\u0105 do spotka\\u0144 na oko\\u0142o 20 os\\u00f3b, jak r\\u00f3wnie\\u017c zapleczem umo\\u017cliwiaj\\u0105cym, \\u017ceby takie osoby mog\\u0142y mieszka\\u0107 w Stodole przez tydzie\\u0144 lub dwa. Nie s\\u0105 to warunki hotelowe, poniewa\\u017c spa\\u0107 mo\\u017cna na drewnianej pod\\u0142odze i na antresoli, na materacach lub karimatach.</h2>", "zaproszenie": "<p> Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.\\u00a0<br/>Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.\\u00a0<br/>Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.\\u00a0<br/>Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.\\u00a0<br/>Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.\\u00a0 </p>", "milicki": "<p><b>Artur Milicki</b><br/> (ur. 1976) \\u2013 jest praktykiem, nauczycielem rozwoju wewn\\u0119trznego i autoterapii. Studiowa\\u0142 zarz\\u0105dzanie i informatyk\\u0119 na UWM w Olsztynie (1996-2002) oraz kulturoznawstwo na UJ w Krakowie (1997-1998). By\\u0142 mnichem w tradycji wisznuizmu gaudia (1999-2004). Po zdj\\u0119ciu szafranu rozpocz\\u0105\\u0142 proces w\\u0142asnej psychoedukacji i autoterapii. Zosta\\u0142 wolnomy\\u015blicielem i aktywist\\u0105 spo\\u0142ecznym dzia\\u0142aj\\u0105cym na rzecz ruchu ekowioskowego. Wsp\\u00f3\\u0142tworzy\\u0142 \\u201cAkademi\\u0119 Bosej Stopy\\u201d (2012) oraz \\u201cRuch Wolnej Ziemi\\u201d (2017). Napisa\\u0142 ksi\\u0105\\u017ck\\u0119 \\u201cCz\\u0142owiek na Ziemi\\u201d (2014). Jest tat\\u0105 Lubomira (2008) i Anastazji (2009). Opr\\u00f3cz dzia\\u0142alno\\u015bci psychoedukacyjnej i spo\\u0142ecznej, zawodowo zajmuje si\\u0119 projektowaniem piec\\u00f3w i nauczaniem rzemios\\u0142a zdu\\u0144skiego.<br/>Jest konstruktorem, zdunem i nauczycielem zdu\\u0144stwa specjalizuj\\u0105cym si\\u0119 w projektowaniu i budowie wydajnych piec\\u00f3w akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji s\\u0142u\\u017c\\u0105cych do ogrzewania pomieszcze\\u0144 mieszkalnych i u\\u017cytkowych. Ponadto projektuje on i buduje r\\u00f3wnie\\u017c trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, w\\u0119dzarnie, grille.</p><h3><b>Kurs projektowania i budowy piec\\u00f3w (Kurs Zdu\\u0144ski - edycja VI - 2021)<br/><br/></b> Strona z opisem kursu: <a href=\\"https://pieceartura.pl/kurs-zdunski/\\">https://pieceartura.pl/kurs-zdunski/</a></h3><p>Umiej\\u0119tno\\u015bci jakie zdob\\u0119dzie osoba uczestnicz\\u0105ca</p><p>Po uko\\u0144czeniu tego kursu:</p><p>- b\\u0119dziesz dysponowa\\u0142 specjalistyczn\\u0105 wiedz\\u0119 z zakresu zdu\\u0144stwa, kt\\u00f3r\\u0105</p><p>mo\\u017cesz natychmiast wykorzysta\\u0107 w swojej praktyce budowy piec\\u00f3w,</p><p>- b\\u0119dziesz dysponowa\\u0142 wszystkimi narz\\u0119dziami (wzory, arkusze</p><p>kalkulacyjne, oprogramowanie) niezb\\u0119dnymi do samodzielnego</p><p>projektowania r\\u00f3\\u017cnych piec\\u00f3w,</p><p>- b\\u0119dziesz mia\\u0142 sta\\u0142\\u0105 mo\\u017cliwo\\u015b\\u0107 uczestniczenia w praktycznych</p><p>zdu\\u0144skich warsztatach szkoleniowych na kt\\u00f3rych od pocz\\u0105tku do ko\\u0144ca</p><p>budowane s\\u0105 r\\u00f3\\u017cnego rodzaju piece (opcjonalnie, na oddzielnie</p><p>okre\\u015blonych warunkach),</p><p>- b\\u0119dziesz m\\u00f3g\\u0142 odby\\u0107 praktyk\\u0119 i uczestniczy\\u0107 w realizacjach zlece\\u0144</p><p>jako pomocnik zduna, lub zdun (opcjonalnie, na indywidualnie</p><p>ustalonych warunkach).</p><h3><b><br/><br/></b>Proces Integracji Emocjonalnej jest metod\\u0105 samopoznania i autoterapii<br/><b> (9-tygodniowy kurs online)</b></h3><p>kt\\u00f3ra gwa\\u0142townie poszerza \\u015bwiadomo\\u015b\\u0107 w\\u0142asnych emocji, uczu\\u0107, my\\u015bli i</p><p>przekona\\u0144. W sk\\u0142ad Procesu wchodz\\u0105 specjalnie dobrane techniki</p><p>percepcyjno-wgl\\u0105dowe, s\\u0142u\\u017c\\u0105ce do intencjonalnej zmiany lub korekty</p><p>oprogramowania naszej pod\\u015bwiadomo\\u015bci, w taki spos\\u00f3b, aby nasze</p><p>wewn\\u0119trzne i zewn\\u0119trzne \\u017cycie przyj\\u0119\\u0142o jak najbardziej \\u017cyczliwy</p><p>wymiar, dla nas samych, dla naszych bliskich i dla ca\\u0142ego otoczenia, w</p><p>kt\\u00f3rym \\u017cyjemy.</p><p>umiej\\u0119tno\\u015bci jakie zdob\\u0119dzie osoba uczestnicz\\u0105ca</p><p>Wraz z post\\u0119pem w praktyce Procesu Integracji Emocjonalnej mo\\u017cemy</p><p>do\\u015bwiadczy\\u0107 nast\\u0119puj\\u0105cych przeobra\\u017ce\\u0144 i trwa\\u0142ych wewn\\u0119trznych</p><p>wzrost\\u00f3w:</p><p>wzrost poczucia pewno\\u015bci wobec w\\u0142asnych \\u017cyciowych priorytet\\u00f3w, cel\\u00f3w i wybor\\u00f3w,</p><p>wzrost \\u015bwiadomo\\u015bci i umiej\\u0119tno\\u015bci dostrzegania i do\\u015bwiadczania \\u017ar\\u00f3d\\u0142a</p><p>szcz\\u0119\\u015bcia i spe\\u0142nienia w sobie i zmniejszenie tym samym zale\\u017cno\\u015bci od</p><p>\\u015bwiata zewn\\u0119trznego, jako \\u017ar\\u00f3d\\u0142a satysfakcji,</p><p>wzrost mo\\u017cliwo\\u015bci stania si\\u0119 osob\\u0105 bardziej wspieraj\\u0105c\\u0105, wsp\\u00f3\\u0142czuj\\u0105c\\u0105,</p><p>motywuj\\u0105c\\u0105, cierpliw\\u0105, tolerancyjn\\u0105 i autentyczn\\u0105 wobec samej /samego</p><p>siebie oraz wobec innych,</p><p>wzrost umiej\\u0119tno\\u015bci do\\u015bwiadczania \\u017cycia w chwili obecnej poprzez</p><p>zmniejszenie negatywnego zaabsorbowania przesz\\u0142o\\u015bci\\u0105 lub przysz\\u0142o\\u015bci\\u0105,</p><p>wzrost w odczuwaniu wewn\\u0119trznej mocy sprawczej, kt\\u00f3r\\u0105 wcze\\u015bniej</p><p>projektowali\\u015bmy na \\u015bwiat,</p><p>wzrost wewn\\u0119trznej si\\u0142y, odporno\\u015bci na zranienie, poczucia w\\u0142asnej</p><p>warto\\u015bci, wewn\\u0119trznego spokoju, rado\\u015bci, spe\\u0142nienia i og\\u00f3lnego poziomu</p><p>\\u015bwiadomo\\u015bci.</p>", "beret": "<p><b>Adam Ma\\u0144czuk</b><br/> Jest programist\\u0105 z ponad 20-letnim do\\u015bwiadczeniem na ca\\u0142ym \\u015bwiecie (w tym w Dolinie Krzemowej). Specjalizuje si\\u0119 w Pythonie i Django. Pracowa\\u0142 jako lektor programowania na Uniwersytecie Warszawskim. Adam jest tak\\u017ce poet\\u0105 i \\u017ceglarzem.</p>", "monika": "<p><b>Monika Matis</b><br/><br/> Pracuje jako publicystka, t\\u0142umaczka, autorka tekst\\u00f3w \\u017ceglarskich oraz piel\\u0119gniarka. Posiada r\\u00f3\\u017cnorodne do\\u015bwiadczenia akademickie, od informatyki i mechaniki po studia medyczne. Z zami\\u0142owania zajmuje si\\u0119 nawigacj\\u0105 tradycyjn\\u0105, lub jak si\\u0119 j\\u0105 teraz okre\\u015bla \\u201cawaryjn\\u0105\\u201d. \\u017begluje od pi\\u0119tnastego roku \\u017cycia, zwykle na jachtach znajomych i przyjaci\\u00f3\\u0142, gdy potrzebowali kogo\\u015b znaj\\u0105cego si\\u0119 na rzeczy i do\\u015bwiadczonego aby pop\\u0142yn\\u0105\\u0107 gdzie\\u015b dalej. Prowadzi\\u0142a jachty na Ba\\u0142tyku, Morzu P\\u00f3\\u0142nocnym i \\u015ar\\u00f3dziemnym, Atlantyku, od Afryki po dalek\\u0105 Arktyk\\u0119. \\u017beglowa\\u0142a r\\u00f3wnie\\u017c samotnie i w ma\\u0142ych za\\u0142ogach.</p>", "comment": "<p><br/></p><p>Kuba Ferenczak<br/> Uczy\\u0142em si\\u0119 w Liceum Sztuk Plastycznych w Zakopanem w klasie o profilu rze\\u017abiarstwo w drewnie, zaj\\u0119cia jednak r\\u00f3wnie\\u017c obejmowa\\u0142y rze\\u017ab\\u0119 w glinie. Z ceramik\\u0105 i jej wypalaniem w piecu gazowym mia\\u0142em do czynienia w Grab\\u00f3wce, gdzie eksperymentowa\\u0142em z lokaln\\u0105 glin\\u0105. Dla kilku os\\u00f3b, wsp\\u00f3lnie z Ann\\u0105 Ovalle Correa prowadzi\\u0142em zaj\\u0119cia z ceramiki we wsi Dziadowice.<br/><br/>Warsztat ceramiczny dla os\\u00f3b doros\\u0142ych w oparciu o prac\\u0119 w glinie z pobliskich cegielni Panosz\\u00f3w i Gwo\\u017adziany.\\u00a0<br/>Obejmuje wiedz\\u0119, dotycz\\u0105c\\u0105 przygotowania gliny i podstawowych technik tworzenia prostych przedmiot\\u00f3w u\\u017cytkowych jak i podstaw rze\\u017aby w glinie.\\u00a0<br/></p><p>Po warsztatach, ka\\u017cdy b\\u0119dzie w stanie zrobi\\u0107 samodzielnie szkliwione naczynie, prost\\u0105 form\\u0119 w postaci rze\\u017aby, zabawk\\u0119, ozdob\\u0119 na prezent, lub inne przedmioty wg pomys\\u0142u uczestnika.\\u00a0<br/>Zdobyta wiedza, b\\u0119dzie dotyczy\\u0107 tego, jak przystosowa\\u0107 dowolny kszta\\u0142t do materia\\u0142u, z kt\\u00f3rego ma by\\u0107 zrobiony, czyli gliny. B\\u0119dziemy te\\u017c robi\\u0107 proste narz\\u0119dzia do kszta\\u0142towania form, kt\\u00f3re chcemy uzyska\\u0107.</p>"}	\N	6	2
13	f	2021-02-21 02:30:25.103087+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "opis": "<h2>Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku. Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "", "zaproszenie": "<h2>Zasady/Zwyczaje (zaproszenie)</h2><p>\\u017beby unikn\\u0105\\u0107 \\u201cprzypadkowo\\u015bci\\u201d ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie. Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wni ze wszystkimi. Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a Tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>"}	\N	8	1
46	f	2021-03-07 13:30:49.674727+01	{"pk": 8, "path": "000100010003", "depth": 3, "numchild": 0, "translation_key": "9337acdf-56ac-42a5-aacb-5ea59c83aa6f", "locale": 1, "title": "Stodo\\u0142a Wymy\\u015blacz", "draft_title": "Stodo\\u0142a Wymy\\u015blacz", "slug": "stodo\\u0142a-wymy\\u015blacz", "content_type": 43, "live": true, "has_unpublished_changes": false, "url_path": "/home/stodo\\u0142a-wymy\\u015blacz/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:30:25.139Z", "last_published_at": "2021-02-21T01:30:25.139Z", "latest_revision_created_at": "2021-02-21T01:30:25.103Z", "live_revision": 13, "alias_of": null, "opis": "<h2><br/>Chcemy by to miejsce by\\u0142o tworzeniem wsp\\u00f3lnej przestrzeni, kt\\u00f3r\\u0105 mo\\u017cemy razem kszta\\u0142towa\\u0107 dla naszych pasji i potrzeb.<br/>Bardzo wa\\u017cne dla nas jest r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.<br/>Nasza wsp\\u00f3lnota, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105.<br/><br/></h2>", "objasnienie": "<p>Stodo\\u0142a Wymy\\u015blacz jest na obrze\\u017cach Lubli\\u0144ca, blisko trasy nr 11 \\u0142\\u0105cz\\u0105cej Katowice z Poznaniem. Nasze miasteczko le\\u017cy 30 km na zach\\u00f3d od Cz\\u0119stochowy. Oddzielone jest od aglomeracji \\u015bl\\u0105skiej du\\u017cym kompleksem las\\u00f3w, kt\\u00f3ry rozpoczyna si\\u0119 kilkaset metr\\u00f3w od naszego budynku.<br/> Jest to gospodarczy budynek z ceg\\u0142y na wapiennej zaprawie. Przebudowa na obiekt mieszkalny, polega na \\u0142\\u0105czeniu technologii nowoczesnych z tradycyjnymi.\\u00a0\\u00a0<br/><br/>Ogrzewanie ca\\u0142ego budynku b\\u0119dzie oparte o zbiornik akumulacyjny, a ciep\\u0142o rozprowadzane za pomoc\\u0105 wody do grzejnik\\u00f3w p\\u0142aszczyznowych zrobionych z gliny i kruszywa akumulacyjnego. Sam zbiornik b\\u0119dzie zasilany z dw\\u00f3ch podk\\u00f3w, baterii s\\u0142onecznych, solarnej i fotowoltaicznej.<br/>Budynek ma dwa pi\\u0119tra. Na parterze mie\\u015bci si\\u0119 sala wyk\\u0142adowa z ma\\u0142\\u0105 scen\\u0105, kuchnia, \\u0142azienka, biuro, warsztat, a za nim cz\\u0119\\u015b\\u0107 szklarni i piwnica z suszarni\\u0105 do warzyw. Na pi\\u0119trze s\\u0105 cztery niewielkie pokoje mieszkalne, szklarnia dzia\\u0142aj\\u0105ca r\\u00f3wnie\\u017c zim\\u0105, balkon i z niego most prowadz\\u0105cy do domku na drzewie.\\u00a0<br/></p><p>Budynek s\\u0105siaduje jednym podw\\u00f3rkiem z glinianym domem Andrzeja. Oba domy tworz\\u0105 jedn\\u0105 wsp\\u00f3lnot\\u0119.\\u00a0<br/> Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.</p>", "komentarz": "<p> Zapraszamy do wsp\\u00f3\\u0142pracy osoby, kt\\u00f3re chcia\\u0142y by si\\u0119 zajmowa\\u0107 alternatywnymi rozwi\\u0105zaniami, dotycz\\u0105cymi                 struktur spo\\u0142ecznych. B\\u0119dziemy te\\u017c dysponowa\\u0107 tzw. biurem, gdzie mo\\u017cna gromadzi\\u0107 i udost\\u0119pnia\\u0107 przez internet gotowe  projekty. </p>", "zaproszenie": "<h2>Nasze zwyczaje<br/> -zaproszenie<br/><br/></h2><p>\\u017beby unikn\\u0105\\u0107 przypadkowo\\u015bci ludzi bior\\u0105cych udzia\\u0142 w naszym projekcie, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 z nami wsp\\u00f3\\u0142tworzy\\u0107 rodzin\\u0119 opart\\u0105 na plemiennym kr\\u0119gu. Mamy na uwadze stwarzanie mi\\u0119dzy nami relacji, w kt\\u00f3rej uczymy si\\u0119 nawzajem nie dla samej wiedzy, a dla harmonii ze sob\\u0105 i z ca\\u0142ym \\u017cyciem. Na tym poziomie r\\u00f3\\u017cnice mi\\u0119dzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam naprzeciw przeszkodom i problemom - \\u0142atwiej jest pokonywa\\u0107 je razem. U nas nikt nie jest u kogo\\u015b, wszyscy jeste\\u015bmy u siebie.<br/> Organizacja pozarz\\u0105dowa, gdzie zarz\\u0105d jest wy\\u0142\\u0105cznie w\\u0142adz\\u0105 wykonawcz\\u0105 jednog\\u0142o\\u015bnych decyzji daje nam tak\\u0105 mo\\u017cliwo\\u015b\\u0107 r\\u00f3wnie\\u017c na poziomie prawnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce jego udzia\\u0142 w tym przedsi\\u0119wzi\\u0119ciu jest na r\\u00f3wni ze wszystkimi.<br/> Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107 mi\\u0119dzy sob\\u0105, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Wsp\\u00f3lnie nie uto\\u017csamiamy si\\u0119 z \\u017cadn\\u0105 religi\\u0105, ani jej nie tworzymy. Jest to koniecznym warunkiem na \\u015bcie\\u017cce \\u017cycia kt\\u00f3r\\u0105 idziemy, w taki spos\\u00f3b chcemy zachowa\\u0107 mo\\u017cliwo\\u015b\\u0107 kontynuacji tego kim jeste\\u015bmy jako ludzie tutaj na Ziemi. Nasz\\u0105 odpowiedzi\\u0105 jest utworzenie kr\\u0119gu, w kt\\u00f3rym mog\\u0105 uczestniczy\\u0107 wyznawcy wielu religii, jednak \\u017cadnej z nich nie stawiamy w centrum. Zdajemy sobie spraw\\u0119, \\u017ce wiara jest cz\\u0119\\u015bci\\u0105 anatomii naszych uczu\\u0107 i nadaje moc tworzenia wszystkiemu, co jeste\\u015bmy w stanie uzna\\u0107 za prawdziwe. Kiedy nie jest w sprzeczno\\u015bci z naszym rozumieniem, faktycznie staje si\\u0119 coraz bardziej skuteczna w kreowaniu rzeczywisto\\u015bci. \\u017beby to widzie\\u0107, nie potrzebujemy \\u017cadnych \\u201cpo\\u015brednik\\u00f3w\\u201d pomi\\u0119dzy cz\\u0142owiekiem a tym wszystkim czego manifestacj\\u0105 jeste\\u015bmy. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami.</p>"}	\N	8	2
36	f	2021-03-06 11:55:09.285952+01	{"pk": 11, "path": "000100010006", "depth": 3, "numchild": 0, "translation_key": "f21449e8-dcf9-4b32-9694-5464f37a5d5f", "locale": 1, "title": "Statut Zwi\\u0105zku Wolnej Ziemi", "draft_title": "Statut Zwi\\u0105zku Wolnej Ziemi", "slug": "statut-zwi\\u0105zku-wolnej-ziemi", "content_type": 45, "live": true, "has_unpublished_changes": false, "url_path": "/home/statut-zwi\\u0105zku-wolnej-ziemi/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-03-03T07:13:01.983Z", "last_published_at": "2021-03-06T10:53:50.538Z", "latest_revision_created_at": "2021-03-06T10:53:50.419Z", "live_revision": 35, "alias_of": null, "statut": "<p></p><h2>Preambu\\u0142a</h2><p>My, ludzie tworz\\u0105cy Zwi\\u0105zek Wolnej Ziemi, uznajemy si\\u0119 za opiekun\\u00f3w i stra\\u017cnik\\u00f3w Ziemi, a w szczeg\\u00f3lno\\u015bci teren\\u00f3w, na kt\\u00f3rych \\u017cyjemy. D\\u0105\\u017cymy do rozwoju \\u015bwiadomo\\u015bci poprzez odtworzenie naturalnej relacji cz\\u0142owieka z nasz\\u0105 Planet\\u0105. <br/><br/>Przyjmujemy, \\u017ce b\\u0119d\\u0105c r\\u00f3wnymi wobec Ziemi, na kt\\u00f3rej \\u017cyjemy, jeste\\u015bmy r\\u00f3wnie\\u017c r\\u00f3wni wobec siebie i ca\\u0142ej Przyrody. <br/><br/>O\\u015bwiadczamy, \\u017ce Ziemia i ca\\u0142e \\u017cycie na Ziemi stanowi\\u0105 dla nas wielk\\u0105 warto\\u015b\\u0107 przez sam fakt swego istnienia. <br/><br/>Uznajemy, \\u017ce naszym zadaniem jest ochrona Ziemi, naszego Domu i Miejsca w Kosmosie.<br/><br/> Uznajemy, \\u017ce Ziemia ma takie samo prawo do istnienia i uszanowania jej bytu, jakie maj\\u0105 wszystkie istoty.<br/><br/> Pragniemy tworzy\\u0107 wsp\\u00f3lnoty, w kt\\u00f3rych b\\u0119dziemy razem \\u017cyli, wsp\\u00f3\\u0142pracowali ze sob\\u0105 i uczyli si\\u0119 od siebie dla dobra nas samych i ca\\u0142ego \\u017bycia.<br/>Pragniemy, aby wszyscy ludzie \\u017cyli w harmonii ze sob\\u0105 i z ca\\u0142\\u0105 Przyrod\\u0105, szanuj\\u0105c i chroni\\u0105c Ziemi\\u0119.</p><p></p><h2>Rozdzia\\u0142 1 - Postanowienia og\\u00f3lne</h2><p>1.1.\\u00a0 Zwi\\u0105zek Wolnej Ziemi, zwany dalej \\u201eZwi\\u0105zkiem\\u201d, jest stowarzyszeniem dzia\\u0142aj\\u0105cym w oparciu o przepisy powszechnie obowi\\u0105zuj\\u0105cego prawa oraz postanowienia niniejszego statutu.<br/> 1.2. Zwi\\u0105zek jest dobrowolnym, trwa\\u0142ym zrzeszeniem o celach niezarobkowych.<br/> 1.3. Zwi\\u0105zek mo\\u017ce pos\\u0142ugiwa\\u0107 si\\u0119 skr\\u00f3tem: \\u201eZWZ\\u201d, a tak\\u017ce t\\u0142umaczeniem swojej nazwy na j\\u0119zyki obce.<br/> 1.4. Siedzib\\u0105 Zwi\\u0105zku jest miasto Lubliniec\\u00a0<br/> 1.5. Zwi\\u0105zek prowadzi dzia\\u0142alno\\u015b\\u0107 na terenie ca\\u0142ej Polski i poza jej granicami.<br/> 1.6. Zwi\\u0105zek opiera swoj\\u0105 dzia\\u0142alno\\u015b\\u0107 na pracy spo\\u0142ecznej cz\\u0142onk\\u00f3w.<br/> 1.7. Zwi\\u0105zek mo\\u017ce nale\\u017ce\\u0107 do organizacji mi\\u0119dzynarodowych, je\\u017celi przynale\\u017cno\\u015b\\u0107 taka nie narusza zobowi\\u0105za\\u0144 wynikaj\\u0105cych z um\\u00f3w mi\\u0119dzynarodowych, kt\\u00f3rych Rzeczpospolita Polska jest stron\\u0105, oraz przyst\\u0119powa\\u0107 do zwi\\u0105zk\\u00f3w stowarzysze\\u0144.<br/> 1.8. Zwi\\u0105zek mo\\u017ce posiada\\u0107 terenowe jednostki organizacyjne.<br/> 1.9. Zwi\\u0105zek jest zawi\\u0105zany na czas nieograniczony.\\u00a0<br/></p><p></p><h2>Rozdzia\\u0142 2 - Cele i zasady dzia\\u0142ania</h2><p>2.1. Podstawowym celem Zwi\\u0105zku jest dzia\\u0142anie dla dobra Ziemi i wszystkich mieszkaj\\u0105cych na niej istot poprzez tworzenie obszar\\u00f3w Wolnej Ziemi oraz zak\\u0142adanie i rozw\\u00f3j wsp\\u00f3lnot intencjonalnych \\u017cyj\\u0105cych w harmonii z Natur\\u0105.<br/> 2.2 Celami szczeg\\u00f3\\u0142owymi Zwi\\u0105zku s\\u0105:<br/> 1. inicjowanie, promocja i rozw\\u00f3j wsp\\u00f3lnot intencjonalnych, spo\\u0142eczno\\u015bci lokalnych i kooperatyw d\\u0105\\u017c\\u0105cych do zwi\\u0119kszenia stopnia swej samowystarczalno\\u015bci oraz minimalizacji w\\u0142asnego \\u015bladu ekologicznego, w spos\\u00f3b umo\\u017cliwiaj\\u0105cy trwanie i rozw\\u00f3j powy\\u017cszych inicjatyw przez wiele pokole\\u0144,<br/> 2. tworzenie, poszukiwanie, testowanie, wdra\\u017canie i promocja rozwi\\u0105za\\u0144 i technologii u\\u0142atwiaj\\u0105cych wsp\\u00f3lnotom intencjonalnym, spo\\u0142eczno\\u015bciom lokalnym i kooperatywom osi\\u0105gni\\u0119cie samowystarczalno\\u015bci we wszelkich mo\\u017cliwych aspektach,<br/> 3. tworzenie wsp\\u00f3\\u0142pracuj\\u0105cej sieci miejsc Wolnej Ziemi,<br/> 4. dzia\\u0142anie na rzecz kszta\\u0142towania stanu prawnego korzystnego dla tworzenia i rozwoju wsp\\u00f3lnot intencjonalnych, spo\\u0142eczno\\u015bci lokalnych i kooperatyw,<br/> 5. ochrona i odtwarzanie \\u015brodowiska przyrodniczego, siedlisk ro\\u015blin i zwierz\\u0105t oraz bior\\u00f3\\u017cnorodno\\u015bci,<br/> 6. tworzenie rezerwat\\u00f3w Wolnej Ziemi oraz miejsc bogatych przyrodniczo, w kt\\u00f3rych ludzie nie ingeruj\\u0105 w Ziemi\\u0119 i zasiedlaj\\u0105c\\u0105 j\\u0105 Przyrod\\u0119,<br/> 7. tworzenie i wspieranie inicjatyw i program\\u00f3w spo\\u0142ecznych maj\\u0105cych na celu rozwi\\u0105zanie egzystencjalnych, ekonomicznych, socjalnych, ekologicznych i zdrowotnych problem\\u00f3w wsp\\u00f3\\u0142czesnego spo\\u0142ecze\\u0144stwa,<br/> 8. tworzenie i wdra\\u017canie ekologicznych rozwi\\u0105za\\u0144 poprawiaj\\u0105cych efektywno\\u015b\\u0107 ogrodnicz\\u0105 i rolnicz\\u0105,<br/> 9. wspieranie i promocja\\u00a0 zr\\u00f3wnowa\\u017conego rozwoju, gospodarki ekologicznej, kooperatyzmu, ekonomii wsp\\u00f3\\u0142dzielenia,<br/> 10. promowanie idei i warto\\u015bci Zwi\\u0105zku w\\u015br\\u00f3d og\\u00f3\\u0142u spo\\u0142ecze\\u0144stwa,<br/> 11. wsp\\u00f3\\u0142praca z innymi organizacjami o podobnych celach dzia\\u0142ania.<br/> 2.3. Zwi\\u0105zek mo\\u017ce realizowa\\u0107 swoje cele poprzez:<br/> 1. dzia\\u0142alno\\u015b\\u0107 informacyjn\\u0105,<br/> 2. tworzenie i prowadzenie stron internetowych,<br/> 3. organizacj\\u0119 spotka\\u0144, wyk\\u0142ad\\u00f3w i prelekcji,<br/> 4. opracowywanie materia\\u0142\\u00f3w edukacyjnych, r\\u00f3wnie\\u017c w wersji elektronicznej,<br/> 5. pozyskiwanie nieruchomo\\u015bci,\\u00a0<br/> 6. gospodarowanie nieruchomo\\u015bciami nale\\u017c\\u0105cymi do Zwi\\u0105zku lub przez niego zarz\\u0105dzanymi, zgodnie z zasadami zr\\u00f3wnowa\\u017conego rozwoju, bez zagro\\u017cenia dla \\u015brodowiska naturalnego i zaburzania r\\u00f3wnowagi ekosystemu,<br/> 7. preferowanie i promowanie na terenie nieruchomo\\u015bci u\\u017cytkowanych przez Zwi\\u0105zek i poza nimi technik budownictwa tradycyjnego i naturalnego z u\\u017cyciem materia\\u0142\\u00f3w przyjaznych dla \\u015brodowiska,<br/> 8. wsp\\u00f3\\u0142prac\\u0119 z organami pa\\u0144stwowymi, organizacjami pozarz\\u0105dowymi i innymi osobami prawnymi lub fizycznymi; wsp\\u00f3\\u0142praca ta mo\\u017ce mie\\u0107 charakter wsp\\u00f3\\u0142dzia\\u0142ania, wsparcia organizacyjnego, informacyjnego, finansowego, rzeczowego lub inny,<br/> 9. rzecznictwo, organizowanie konsultacji spo\\u0142ecznych, petycji i interwencji, a tak\\u017ce sk\\u0142adanie wniosk\\u00f3w i skarg do instytucji publicznych,<br/> 10. prowadzenie program\\u00f3w i akcji spo\\u0142eczno\\u015bciowego zbierania pieni\\u0119dzy, a tak\\u017ce innych dzia\\u0142a\\u0144 maj\\u0105cych na celu zbieranie \\u015brodk\\u00f3w finansowych,<br/> 11. wspieranie wsp\\u00f3\\u0142pracy mi\\u0119dzy wsp\\u00f3lnotami intencjonalnymi<br/>, 12. gromadzenie i udost\\u0119pnianie informacji na temat wsp\\u00f3lnot intencjonalnych i ich dzia\\u0142a\\u0144, a tak\\u017ce informacji przydatnych w tworzeniu i rozwoju wsp\\u00f3lnot intencjonalnych,<br/> 13. tworzenie przestrzeni dla dialogu i wymiany do\\u015bwiadcze\\u0144 mi\\u0119dzy wsp\\u00f3lnotami intencjonalnymi,<br/> 14. prowadzenie dzia\\u0142alno\\u015bci rolniczej i ogrodniczej w spos\\u00f3b jak najbardziej zgodny z Natur\\u0105, w tym upraw\\u0119 ziemi, tworzenie ogrod\\u00f3w, sianie i sadzenie ro\\u015blin,<br/> 15. stosowanie naturalnych \\u015brodk\\u00f3w i metod poprawiaj\\u0105cych sk\\u0142ad i kondycj\\u0119 gleby, a tak\\u017ce chroni\\u0105cych zdrowie ro\\u015blin.<br/> 2.4. Zwi\\u0105zek kieruje si\\u0119 w swojej dzia\\u0142alno\\u015bci otwarto\\u015bci\\u0105 na wsp\\u00f3\\u0142prac\\u0119 z innymi podmiotami, w tym z organizacjami pozarz\\u0105dowymi i instytucjami publicznymi.<br/> 2.5. Zwi\\u0105zek mo\\u017ce zak\\u0142ada\\u0107 i uczestniczy\\u0107 w sp\\u00f3\\u0142kach polskich lub zagranicznych.<br/> 2.6. Ca\\u0142o\\u015b\\u0107 dochod\\u00f3w uzyskiwanych przez Zwi\\u0105zek jest przeznaczana wy\\u0142\\u0105cznie na dzia\\u0142alno\\u015b\\u0107 statutow\\u0105.<br/> 2.7. Zwi\\u0105zek nie prowadzi dzia\\u0142alno\\u015bci gospodarczej.<br/> 2.8. Zwi\\u0105zek nie prowadzi odp\\u0142atnej dzia\\u0142alno\\u015bci po\\u017cytku publicznego.<br/></p><p></p><h2>Rozdzia\\u0142 3 - Cz\\u0142onkowie Zwi\\u0105zku</h2><p>3.1. Cz\\u0142onkowie Zwi\\u0105zku dziel\\u0105 si\\u0119 na:<br/> 1. cz\\u0142onk\\u00f3w zwyczajnych,<br/> 2. cz\\u0142onk\\u00f3w wspieraj\\u0105cych.<br/> 3.2. Cz\\u0142onkiem zwyczajnym Zwi\\u0105zku mo\\u017ce by\\u0107 osoba fizyczna posiadaj\\u0105ca pe\\u0142n\\u0105 zdolno\\u015b\\u0107 do czynno\\u015bci prawnych, kt\\u00f3ra:<br/> 1. w swoim \\u017cyciu codziennym kieruje si\\u0119 warto\\u015bciami Zwi\\u0105zku,<br/> 2. przez ci\\u0105g\\u0142y okres przynajmniej roku aktywnie uczestniczy\\u0142a w dzia\\u0142alno\\u015bci Zwi\\u0105zku jako cz\\u0142onek wspieraj\\u0105cy,<br/> 3. z\\u0142o\\u017cy\\u0142a Zarz\\u0105dowi deklaracj\\u0119 cz\\u0142onkowsk\\u0105 wraz z pisemnymi rekomendacjami zawieraj\\u0105cymi por\\u0119czenie za t\\u0119 osob\\u0119, udzielonymi przez przynajmniej dw\\u00f3ch cz\\u0142onk\\u00f3w zwyczajnych.<br/> 3.3. Przyj\\u0119cia nowych cz\\u0142onk\\u00f3w zwyczajnych dokonuje Walne Zebranie w drodze konsensusu na zasadzie przyzwolenia.<br/> 3.4. Delegaci Autonomicznych Jednostek Terenowych, kt\\u00f3rzy nie zostali uprzednio przyj\\u0119ci do grona cz\\u0142onk\\u00f3w zwyczajnych, staj\\u0105 si\\u0119 cz\\u0142onkami zwyczajnymi tylko i wy\\u0142\\u0105cznie na czas pe\\u0142nienia przez ka\\u017cdego z nich funkcji Delegata Autonomicznej Jednostki Terenowej.<br/> 3.5. Cz\\u0142onkiem wspieraj\\u0105cym Zwi\\u0105zku mo\\u017ce by\\u0107 osoba fizyczna lub prawna zainteresowana dzia\\u0142alno\\u015bci\\u0105 Zwi\\u0105zku, kt\\u00f3ra:<br/> 1. zadeklarowa\\u0142a na rzecz Zwi\\u0105zku pomoc materialn\\u0105, intelektualn\\u0105, fizyczn\\u0105 lub inn\\u0105,<br/> 2. z\\u0142o\\u017cy\\u0142a Zarz\\u0105dowi deklaracj\\u0119 cz\\u0142onkowsk\\u0105.<br/> 3.6. Osoba prawna b\\u0119d\\u0105ca cz\\u0142onkiem wspieraj\\u0105cym Zwi\\u0105zku dzia\\u0142a w nim przez swojego przedstawiciela.<br/> 3.7. Przyj\\u0119cia nowych cz\\u0142onk\\u00f3w wspieraj\\u0105cych dokonuje Zarz\\u0105d uchwa\\u0142\\u0105 podj\\u0119t\\u0105 w ci\\u0105gu dw\\u00f3ch miesi\\u0119cy od daty z\\u0142o\\u017cenia deklaracji.<br/> 3.8. Cz\\u0142onek zwyczajny ma prawo:<br/> 1. wybiera\\u0107 i by\\u0107 wybieranym do organ\\u00f3w Zwi\\u0105zku,<br/> 2. uczestniczy\\u0107 z g\\u0142osem stanowi\\u0105cym w Walnym Zebraniu,<br/> 3. uzyskiwa\\u0107 pe\\u0142n\\u0105 informacj\\u0119 na temat dzia\\u0142alno\\u015bci organ\\u00f3w Zwi\\u0105zku,<br/> 4. zg\\u0142asza\\u0107 Walnemu Zebraniu, Zarz\\u0105dowi i Komisji Rewizyjnej wnioski, zapytania i postulaty dotycz\\u0105ce dzia\\u0142alno\\u015bci Zwi\\u0105zku,<br/> 5. korzysta\\u0107 z pomocy i zaplecza Zwi\\u0105zku w podejmowanych dzia\\u0142aniach zgodnych z celami statutowymi Zwi\\u0105zku,<br/> 6. korzysta\\u0107 z maj\\u0105tku Zwi\\u0105zku wed\\u0142ug zasad opisanych w wewn\\u0119trznych regulaminach,<br/> 7. bra\\u0107 udzia\\u0142 w pracach i przedsi\\u0119wzi\\u0119ciach Zwi\\u0105zku.<br/> 3.9. Cz\\u0142onek zwyczajny obowi\\u0105zany jest do:<br/> 1. udzia\\u0142u w dzia\\u0142alno\\u015bci Zwi\\u0105zku i realizacji jego cel\\u00f3w,<br/> 2. podejmowania decyzji w sprawach Zwi\\u0105zku,\\u00a0<br/> 3. przestrzegania powszechnie obowi\\u0105zuj\\u0105cych przepis\\u00f3w prawa zwi\\u0105zanych z dzia\\u0142alno\\u015bci\\u0105 Zwi\\u0105zku, a tak\\u017ce statutu Zwi\\u0105zku, uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku oraz regulamin\\u00f3w Jednostek Terenowych na terenach u\\u017cytkowanych przez te Jednostki,\\u00a0<br/> 4. uczestnictwa w miar\\u0119 mo\\u017cliwo\\u015bci w ka\\u017cdym Walnym Zebraniu,<br/> 5. regularnego wspierania Zwi\\u0105zku poprzez op\\u0142acanie sk\\u0142adek lub w innej dobrowolnie uzgodnionej z Zarz\\u0105dem formie pomocy materialnej, intelektualnej lub fizycznej,<br/> 6. dbania o mienie Zwi\\u0105zku.<br/> 3.10. Cz\\u0142onek wspieraj\\u0105cy ma prawo:<br/> 1. uczestniczy\\u0107 z g\\u0142osem doradczym w Walnym Zebraniu,<br/> 2. uzyskiwa\\u0107 pe\\u0142n\\u0105 informacj\\u0119 na temat dzia\\u0142alno\\u015bci organ\\u00f3w Zwi\\u0105zku,<br/> 3. zg\\u0142asza\\u0107 Walnemu Zebraniu, Zarz\\u0105dowi i Komisji Rewizyjnej wnioski, zapytania i postulaty dotycz\\u0105ce dzia\\u0142alno\\u015bci Zwi\\u0105zku,<br/> 4. korzysta\\u0107 z pomocy i zaplecza Zwi\\u0105zku w podejmowanych dzia\\u0142aniach zgodnych z celami statutowymi Zwi\\u0105zku,<br/> 5. korzysta\\u0107 z maj\\u0105tku Zwi\\u0105zku wed\\u0142ug zasad opisanych w regulaminach wewn\\u0119trznych,<br/> 6. bra\\u0107 udzia\\u0142 w pracach i przedsi\\u0119wzi\\u0119ciach Zwi\\u0105zku.<br/> 3.11. Cz\\u0142onek wspieraj\\u0105cy obowi\\u0105zany jest do:<br/> 1. przestrzegania powszechnie obowi\\u0105zuj\\u0105cych przepis\\u00f3w prawa zwi\\u0105zanych z dzia\\u0142alno\\u015bci\\u0105 Zwi\\u0105zku, a tak\\u017ce statutu Zwi\\u0105zku, uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku oraz regulamin\\u00f3w Jednostek Terenowych na terenach u\\u017cytkowanych przez te Jednostki.<br/> 2. regularnego wspierania Zwi\\u0105zku poprzez op\\u0142acanie sk\\u0142adek lub w innej dobrowolnie uzgodnionej z Zarz\\u0105dem formie pomocy materialnej, intelektualnej lub fizycznej,<br/> 3. dbania o mienie Zwi\\u0105zku.<br/> 3.12. Zarz\\u0105d drog\\u0105 uchwa\\u0142y mo\\u017ce okresowo lub trwale zmieni\\u0107 status cz\\u0142onka zwyczajnego na status cz\\u0142onka wspieraj\\u0105cego, wy\\u0142\\u0105cznie na pro\\u015bb\\u0119 osoby zainteresowanej zmian\\u0105 swojego statusu.<br/></p><p></p><h2>Rozdzia\\u0142 4 - Zawieszenie i utrata cz\\u0142onkostwa\\u00a0</h2><p>4.1. Zawieszenie cz\\u0142onkostwa skutkuje:<br/> 1. brakiem mo\\u017cliwo\\u015bci uczestniczenia z g\\u0142osem stanowi\\u0105cym w Walnym Zebraniu,<br/> 2. brakiem mo\\u017cliwo\\u015bci wybierania i bycia wybieranym do organ\\u00f3w Zwi\\u0105zku.\\u00a0<br/> 4.2. Cz\\u0142onkostwo w Zwi\\u0105zku mo\\u017ce w drodze uchwa\\u0142y Zarz\\u0105du lub Walnego Zebrania zosta\\u0107 ze skutkiem natychmiastowym czasowo zawieszone na okres od 6 do 12 miesi\\u0119cy na skutek:\\u00a0<br/> 1. dobrowolnej czasowej rezygnacji z aktywnego udzia\\u0142u w pracach Zwi\\u0105zku, zg\\u0142oszonej Zarz\\u0105dowi na pi\\u015bmie,<br/> 2. braku dobrowolnego zaanga\\u017cowania w pracach i dzia\\u0142alno\\u015bci Zwi\\u0105zku przez okres minimum roku,<br/> 3. naruszenia postanowie\\u0144 statutu Zwi\\u0105zku, uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku lub regulamin\\u00f3w Jednostek Terenowych na terenach u\\u017cytkowanych przez te Jednostki,<br/> 4. dzia\\u0142ania na szkod\\u0119 Zwi\\u0105zku,<br/> 5. zachowania godz\\u0105cego w dobre imi\\u0119 Zwi\\u0105zku.<br/> 4.3. Po up\\u0142ywie okre\\u015blonego w uchwale okresu zawieszenia cz\\u0142onkostwa w Zwi\\u0105zku, Zarz\\u0105d lub Walne Zebranie mo\\u017ce w przypadku dalszego istnienia przyczyny okre\\u015blonej w ust. 4.2. pkt. 1-5 podj\\u0105\\u0107 decyzj\\u0119 o przed\\u0142u\\u017ceniu okresu zawieszenia cz\\u0142onkostwa w Zwi\\u0105zku o dalszy okres od 6 do 12 miesi\\u0119cy. W przypadku gdy przyczyna zawieszenia cz\\u0142onkostwa w Zwi\\u0105zku przestanie istnie\\u0107, Zarz\\u0105d lub Walne Zebranie mo\\u017ce z w\\u0142asnej inicjatywy lub na wniosek osoby, kt\\u00f3rej cz\\u0142onkostwo w Zwi\\u0105zku zosta\\u0142o zawieszone, skr\\u00f3ci\\u0107 okres zawieszenia cz\\u0142onkostwa w Zwi\\u0105zku.\\u00a0<br/> 4.4. Od uchwa\\u0142y Zarz\\u0105du stwierdzaj\\u0105cej zawieszenie cz\\u0142onkostwa w Zwi\\u0105zku lub przed\\u0142u\\u017cenie okresu zawieszenia cz\\u0142onkowi, kt\\u00f3rego uchwa\\u0142a dotyczy, przys\\u0142uguje odwo\\u0142anie do Walnego Zebrania. Od uchwa\\u0142y Walnego Zebrania stwierdzaj\\u0105cej zawieszenie cz\\u0142onkostwa w Zwi\\u0105zku lub przed\\u0142u\\u017cenie okresu zawieszenia cz\\u0142onkowi, kt\\u00f3rego uchwa\\u0142a dotyczy, przys\\u0142uguje wniosek o ponowne rozpatrzenie sprawy przez Walne Zebranie.<br/> 4.5. Odwo\\u0142anie oraz wniosek o ponowne rozpatrzenie sprawy, o kt\\u00f3rych mowa w ust. 4.4, sk\\u0142ada si\\u0119 pisemnie za po\\u015brednictwem Zarz\\u0105du w terminie miesi\\u0105ca od daty otrzymania informacji o zawieszeniu. Walne Zebranie rozpatruje odwo\\u0142anie w czasie najbli\\u017cszych obrad, a wniosek o ponowne rozpatrzenie sprawy - w czasie najbli\\u017cszych obrad odbywaj\\u0105cych si\\u0119 po obradach, w czasie kt\\u00f3rych zosta\\u0142a podj\\u0119ta decyzja o zawieszeniu cz\\u0142onkostwa w Zwi\\u0105zku lub przed\\u0142u\\u017ceniu okresu zawieszenia. Decyzja Walnego Zebrania w tej sprawie jest ostateczna. Cz\\u0142onek Zwi\\u0105zku, kt\\u00f3rego dotyczy decyzja w sprawie zawieszenia cz\\u0142onkostwa lub przed\\u0142u\\u017cenia okresu zawieszenia, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad Walnego Zebrania.\\u00a0<br/> 4.6. Utrata cz\\u0142onkostwa w Zwi\\u0105zku nast\\u0119puje na skutek:\\u00a0<br/> 1. pisemnej rezygnacji cz\\u0142onka Zwi\\u0105zku z\\u0142o\\u017conej Zarz\\u0105dowi,\\u00a0<br/> 2. \\u015bmierci cz\\u0142onka Zwi\\u0105zku,<br/> 3. utraty osobowo\\u015bci prawnej przez osob\\u0119 prawn\\u0105 b\\u0119d\\u0105c\\u0105 cz\\u0142onkiem wspieraj\\u0105cym Zwi\\u0105zku,<br/> 4. wykluczenia ze Zwi\\u0105zku z przyczyn okre\\u015blonych w ust. 4.2 pkt. 2-5.<br/> 4.7. Wykluczenie ze Zwi\\u0105zku nast\\u0119puje w drodze uchwa\\u0142y Walnego Zebrania podj\\u0119tej po minimum rocznym okresie zawieszenia cz\\u0142onka, kt\\u00f3rego dotyczy.<br/></p><p></p><h2>Rozdzia\\u0142 5 - Organy Zwi\\u0105zku\\u00a0</h2><p>5.1. Organami Zwi\\u0105zku s\\u0105:\\u00a0<br/> 1. Walne Zebranie,\\u00a0<br/> 2. Zarz\\u0105d,\\u00a0<br/> 3. Komisja Rewizyjna.<br/> 5.2. Cz\\u0142onkowie organ\\u00f3w Zwi\\u0105zku pe\\u0142ni\\u0105 swoje funkcje bezp\\u0142atnie.<br/> 5.3. Osoba pe\\u0142ni\\u0105ca funkcj\\u0119 cz\\u0142onka Zarz\\u0105du lub cz\\u0142onka Komisji Rewizyjnej mo\\u017ce by\\u0107 pracownikiem lub wsp\\u00f3\\u0142pracownikiem Zwi\\u0105zku, je\\u015bli zakres \\u015bwiadczonych przez ni\\u0105 odp\\u0142atnie us\\u0142ug lub pracy nie wkracza w oczywisty spos\\u00f3b w zakres funkcji cz\\u0142onka Zarz\\u0105du lub cz\\u0142onka Komisji Rewizyjnej.<br/> 5.4. Podstawowym modelem podejmowania decyzji realizowanym przez organy Zwi\\u0105zku jest konsensus oparty na zasadzie przyzwolenia, zgodnie z kt\\u00f3rym decyzje organ\\u00f3w Zwi\\u0105zku mog\\u0105 zosta\\u0107 podj\\u0119te wtedy, gdy \\u017caden ze zgromadzonych na zebraniu cz\\u0142onk\\u00f3w organu nie zg\\u0142osi swojego sprzeciwu wobec podj\\u0119cia danej decyzji.\\u00a0<br/> 5.5. Osoba zg\\u0142aszaj\\u0105ca sprzeciw powinna poda\\u0107 merytoryczne uzasadnienie swojego sprzeciwu, a tak\\u017ce argumenty przemawiaj\\u0105ce na rzecz racji tego sprzeciwu. W przeciwnym razie sprzeciw mo\\u017ce nie zosta\\u0107 uwzgl\\u0119dniony przez pozosta\\u0142ych cz\\u0142onk\\u00f3w organu.\\u00a0<br/> 5.6. Uzasadnienie sprzeciwu i argumenty przemawiaj\\u0105ce na rzecz racji sprzeciwu mog\\u0105\\u00a0 zosta\\u0107 poddane dyskusji, w wyniku kt\\u00f3rej osoba, kt\\u00f3ra zg\\u0142osi\\u0142a sprzeciw, mo\\u017ce go wycofa\\u0107.\\u00a0<br/> 5.7. W przypadku zg\\u0142oszenia sprzeciwu osoba, kt\\u00f3ra zg\\u0142osi\\u0142a sprzeciw, a tak\\u017ce inne osoby obecne na zebraniu mog\\u0105 zaproponowa\\u0107 inne rozwi\\u0105zanie, kt\\u00f3re mo\\u017ce zosta\\u0107 przyj\\u0119te zamiast wcze\\u015bniej proponowanej decyzji.\\u00a0<br/> 5.8. W przypadku przyj\\u0119cia przez organy Zwi\\u0105zku zasad umo\\u017cliwiaj\\u0105cych bezpieczny i gwarantuj\\u0105cy zachowanie bezpiecze\\u0144stwa i integralno\\u015bci danych spos\\u00f3b podejmowania decyzji przez Internet, wszelkie decyzje mog\\u0105 by\\u0107 podejmowane tak\\u017ce drog\\u0105 elektroniczn\\u0105.<br/> 5.9. Cz\\u0142onkowie organ\\u00f3w Zwi\\u0105zku s\\u0105 wybierani i odwo\\u0142ywani przez Walne Zebranie.<br/> 5.10. Cz\\u0142onkowie organ\\u00f3w Zwi\\u0105zku trac\\u0105 mandat w przypadku:<br/> 1. z\\u0142o\\u017cenia rezygnacji,<br/> 2. odwo\\u0142ania przez Walne Zebranie,<br/> 3. utraty pe\\u0142nej zdolno\\u015bci do czynno\\u015bci prawnych,<br/> 4. \\u015bmierci,<br/> 5. zawieszenia lub pozbawienia cz\\u0142onkostwa w Zwi\\u0105zku, w przypadkach okre\\u015blonych w niniejszym statucie.<br/> 5.11. Uzupe\\u0142nienia sk\\u0142adu osobowego organ\\u00f3w Zwi\\u0105zku dokonuje si\\u0119 w drodze wyboru przez Walne Zebranie lub poprzez kooptacj\\u0119 z grona cz\\u0142onk\\u00f3w zwyczajnych lub wspieraj\\u0105cych Zwi\\u0105zku i za ich zgod\\u0105. Walne Zebranie dokonuje weryfikacji decyzji o kooptacji w czasie swoich najbli\\u017cszych obrad. W przypadku niezaakceptowania tej decyzji, Walne Zebranie mo\\u017ce samemu uzupe\\u0142ni\\u0107 sk\\u0142ad osobowy organu.\\u00a0<br/> 5.12. W przypadku sporu pomi\\u0119dzy cz\\u0142onkami, organami, Jednostkami Terenowymi lub organami Jednostek Terenowych Zwi\\u0105zku, obie strony sporu mog\\u0105 zwr\\u00f3ci\\u0107 si\\u0119 do wsp\\u00f3lnie wybranego mediatora o pomoc w rozwi\\u0105zaniu sporu. Zarz\\u0105d mo\\u017ce prowadzi\\u0107 list\\u0119 os\\u00f3b, kt\\u00f3re oferuj\\u0105 swoj\\u0105 pomoc w rozwi\\u0105zywaniu spor\\u00f3w. Je\\u017celi pomoc mediatora nie przyczyni si\\u0119 do rozwi\\u0105zania sporu w odpowiednim czasie, ka\\u017cda ze stron mo\\u017ce zwr\\u00f3ci\\u0107 si\\u0119 do Walnego Zebrania o pomoc w rozwi\\u0105zaniu sporu. W takim przypadku Walne Zebranie mo\\u017ce podj\\u0105\\u0107 uchwa\\u0142\\u0119 rozstrzygaj\\u0105c\\u0105 sp\\u00f3r, kt\\u00f3ra obowi\\u0105zuje obie strony. Strony nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu wobec uchwa\\u0142y Walnego Zebrania rozstrzygaj\\u0105cej sp\\u00f3r.<br/></p><p></p><h2>Rozdzia\\u0142 6 - Walne Zebranie</h2><p>6.1. Walne Zebranie jest najwy\\u017cszym organem Zwi\\u0105zku.<br/> 6.2. W Walnym Zebraniu bior\\u0105 udzia\\u0142 cz\\u0142onkowie zwyczajni z g\\u0142osem stanowi\\u0105cym oraz cz\\u0142onkowie wspieraj\\u0105cy z g\\u0142osem doradczym.<br/> 6.3. Walne Zebranie obraduje wed\\u0142ug uchwalonego przez siebie porz\\u0105dku obrad.<br/> 6.4. Walne Zebranie mo\\u017ce uchwala\\u0107 sw\\u00f3j regulamin dotycz\\u0105cy obrad.<br/> 6.5. Walne Zebranie mo\\u017ce by\\u0107 zwyczajne lub nadzwyczajne.<br/> 6.6. Zwyczajne Walne Zebranie zwo\\u0142uje Zarz\\u0105d przynajmniej raz w roku jako zebranie sprawozdawcze, tak aby mog\\u0142o si\\u0119 ono odby\\u0107 do ko\\u0144ca czerwca danego roku.\\u00a0<br/> 6.7. Nadzwyczajne Walne Zebranie zwo\\u0142uje Zarz\\u0105d z w\\u0142asnej inicjatywy, na wniosek Komisji Rewizyjnej lub na wniosek co najmniej 1/3 og\\u00f3lnej liczby cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku.<br/> 6.8. Wnosz\\u0105cy o zwo\\u0142anie Nadzwyczajnego Walnego Zebrania s\\u0105 obowi\\u0105zani z\\u0142o\\u017cy\\u0107 Zarz\\u0105dowi wniosek z podaniem proponowanego porz\\u0105dku obrad, kt\\u00f3ry Zarz\\u0105d mo\\u017ce uzupe\\u0142ni\\u0107.<br/> 6.9. Nadzwyczajne Walne Zebranie powinno by\\u0107 zwo\\u0142ane w terminie umo\\u017cliwiaj\\u0105cym odbycie si\\u0119 Walnego Zebrania, nie p\\u00f3\\u017aniej jednak ni\\u017c w terminie 2 miesi\\u0119cy od dnia otrzymania przez Zarz\\u0105d stosownego wniosku.<br/> 6.10. W przypadku niezwo\\u0142ania Walnego Zebrania w terminach okre\\u015blonych w ust. 6.6 i 6.9 niniejszego rozdzia\\u0142u Walne Zebranie mo\\u017ce r\\u00f3wnie\\u017c zwo\\u0142a\\u0107 Komisja Rewizyjna.<br/> 6.11. Organ zwo\\u0142uj\\u0105cy Walne Zebranie zawiadamia wszystkich cz\\u0142onk\\u00f3w Zwi\\u0105zku o jego terminie, miejscu i proponowanym porz\\u0105dku obrad co najmniej na 14 dni przed terminem Walnego Zebrania przy wykorzystaniu przynajmniej 2 \\u015brodk\\u00f3w porozumiewania si\\u0119 na odleg\\u0142o\\u015b\\u0107 (w tym mailowo).<br/> 6.12. Obrady Walnego Zebrania mog\\u0105 by\\u0107 prowadzone przez koordynatora Walnego Zebrania, wybieranego i odwo\\u0142ywanego przez Walne Zebranie w drodze konsensusu na uzasadniony wniosek jednego z cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku. Koordynator Walnego Zebrania mo\\u017ce dba\\u0107 o przestrzeganie ustalonego porz\\u0105dku obrad i kolejno\\u015bci zabierania g\\u0142osu, a tak\\u017ce o to, aby wypowiedzi uczestnik\\u00f3w Walnego Zebrania mie\\u015bci\\u0142y si\\u0119 w ustalonych tematach i ramach czasowych.\\u00a0<br/> 6.13. Walne Zebranie mo\\u017ce podejmowa\\u0107 uchwa\\u0142y w obecno\\u015bci co najmniej \\u2153 cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku.<br/> 6.14. W przypadku braku kworum Walne Zebranie jest zwo\\u0142ywane w drugim terminie, nie p\\u00f3\\u017aniej ni\\u017c miesi\\u0105c po terminie pierwszym. W takim wypadku uchwa\\u0142y mog\\u0105 by\\u0107 podejmowane w obecno\\u015bci co najmniej trzech cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku. Powy\\u017csze postanowienie nie odnosi si\\u0119 do uchwa\\u0142, o kt\\u00f3rych mowa w rozdzia\\u0142ach 16 i 17.<br/> 6.15. Proponowany porz\\u0105dek obrad Walnego Zebrania ustala organ zwo\\u0142uj\\u0105cy to zebranie.<br/> 6.16. Cz\\u0142onkowie Zwi\\u0105zku mog\\u0105 bra\\u0107 udzia\\u0142 w Walnym Zebraniu osobi\\u015bcie. Niedopuszczalny jest udzia\\u0142 przez pe\\u0142nomocnika lub przy u\\u017cyciu pe\\u0142nomocnictwa do wykonywania prawa g\\u0142osu.<br/> 6.17. W Walnym Zebraniu mog\\u0105 bra\\u0107 udzia\\u0142 z g\\u0142osem doradczym osoby zaproszone przez co najmniej jednego z cz\\u0142onk\\u00f3w Zwi\\u0105zku.<br/> 6.18. Do kompetencji Walnego Zebrania nale\\u017c\\u0105:<br/> 1. uchwalanie kierunk\\u00f3w i program\\u00f3w dzia\\u0142alno\\u015bci Zwi\\u0105zku,<br/> 2. decydowanie o zmianie statutu Zwi\\u0105zku,<br/> 3. zatwierdzanie regulamin\\u00f3w organ\\u00f3w Zwi\\u0105zku i Jednostek Terenowych,<br/> 4. powo\\u0142ywanie Jednostek Terenowych,<br/> 5. wyb\\u00f3r i odwo\\u0142ywanie cz\\u0142onk\\u00f3w Zarz\\u0105du i Komisji Rewizyjnej,<br/> 6. ocena dzia\\u0142alno\\u015bci organ\\u00f3w Zwi\\u0105zku,<br/> 7. zatwierdzanie sprawozda\\u0144 finansowych i merytorycznych Zarz\\u0105du oraz sprawozda\\u0144 Komisji Rewizyjnej,\\u00a0<br/> 8. podejmowanie uchwa\\u0142 w sprawach wniesionych pod obrady przez Zarz\\u0105d, Komisj\\u0119 Rewizyjn\\u0105 lub cz\\u0142onka Zwi\\u0105zku, o ile nie s\\u0105 one zastrze\\u017cone do kompetencji innych organ\\u00f3w Zwi\\u0105zku postanowieniami niniejszego statutu lub przepisami powszechnie obowi\\u0105zuj\\u0105cego prawa,<br/> 9. rozpatrywanie odwo\\u0142a\\u0144 od uchwa\\u0142 Zarz\\u0105du,<br/> 10. podejmowanie uchwa\\u0142 w sprawie przyst\\u0119powania Zwi\\u0105zku do organizacji krajowych lub mi\\u0119dzynarodowych,<br/> 11. podejmowanie uchwa\\u0142 w sprawie rozwi\\u0105zania Zwi\\u0105zku i przeznaczenia jego maj\\u0105tku,<br/> 12. ustalanie zasad p\\u0142atno\\u015bci oraz wysoko\\u015bci sk\\u0142adek cz\\u0142onkowskich,<br/> 13. podejmowanie uchwa\\u0142 w innych sprawach zastrze\\u017conych do kompetencji Walnego Zebrania postanowieniami niniejszego statutu lub przepisami powszechnie obowi\\u0105zuj\\u0105cego prawa.<br/></p><p></p><h2>Rozdzia\\u0142 7 - Zarz\\u0105d</h2><p>7.1. Zarz\\u0105d kieruje dzia\\u0142aniami Zwi\\u0105zku w oparciu o uchwa\\u0142y Walnego Zebrania i reprezentuje Zwi\\u0105zek na zewn\\u0105trz.<br/> 7.2. Sk\\u0142ad Zarz\\u0105du stanowi\\u0105 cz\\u0142onkowie Zarz\\u0105du w nieparzystej liczbie 3, 5 lub 7, powo\\u0142ani przez Walne Zebranie na czas nieoznaczony.<br/> 7.3. Cz\\u0142onkami Zarz\\u0105du nie mog\\u0105 by\\u0107 osoby, kt\\u00f3re by\\u0142y skazane prawomocnym wyrokiem za przest\\u0119pstwo umy\\u015blne \\u015bcigane z oskar\\u017cenia publicznego lub przest\\u0119pstwo skarbowe.<br/> 7.4. Zebrania Zarz\\u0105du odbywaj\\u0105 si\\u0119 w miar\\u0119 potrzeb, jednak nie rzadziej ni\\u017c raz w roku.\\u00a0<br/> 7.5. Zebranie Zarz\\u0105du mo\\u017ce zwo\\u0142a\\u0107 ka\\u017cdy cz\\u0142onek Zarz\\u0105du. Powinien powiadomi\\u0107 o tym pozosta\\u0142ych cz\\u0142onk\\u00f3w Zarz\\u0105du ze stosownym wyprzedzeniem (nie p\\u00f3\\u017aniej ni\\u017c 7 dni przed terminem zebrania) umo\\u017cliwiaj\\u0105cym ich udzia\\u0142, przy wykorzystaniu przynajmniej 2 \\u015brodk\\u00f3w porozumiewania si\\u0119 na odleg\\u0142o\\u015b\\u0107 (w tym mailowo). Je\\u017celi wszyscy cz\\u0142onkowie Zarz\\u0105du s\\u0105 obecni na zebraniu, w\\u00f3wczas Zarz\\u0105d mo\\u017ce obradowa\\u0107 i podejmowa\\u0107 uchwa\\u0142y i decyzje bez uprzedniego formalnego zwo\\u0142ania.<br/> 7.6. Cz\\u0142onkowie Zarz\\u0105du, na pocz\\u0105tku ka\\u017cdego zebrania, mog\\u0105 w drodze konsensusu wybra\\u0107 spo\\u015br\\u00f3d siebie koordynatora zebrania.<br/> 7.7. Zarz\\u0105d mo\\u017ce podejmowa\\u0107 uchwa\\u0142y w sprawach nale\\u017c\\u0105cych do jego kompetencji w obecno\\u015bci co najmniej po\\u0142owy swych cz\\u0142onk\\u00f3w.\\u00a0<br/> 7.8. W zebraniu Zarz\\u0105du mog\\u0105 uczestniczy\\u0107 z g\\u0142osem doradczym eksperci lub inne osoby zaproszone przez co najmniej jednego z cz\\u0142onk\\u00f3w Zarz\\u0105du.<br/> 7.9. Cz\\u0142onkostwo w Zarz\\u0105dzie ustaje na skutek:<br/> 1. z\\u0142o\\u017cenia pisemnej rezygnacji,<br/> 2. odwo\\u0142ania przez Walne Zebranie,<br/> 3. \\u015bmierci cz\\u0142onka Zarz\\u0105du,\\u00a0<br/> 4. utraty praw obywatelskich na skutek skazania prawomocnym wyrokiem s\\u0105du za przest\\u0119pstwo pope\\u0142nione z winy umy\\u015blnej,<br/> 5. skazania prawomocnym wyrokiem za przest\\u0119pstwo umy\\u015blne \\u015bcigane z oskar\\u017cenia publicznego lub przest\\u0119pstwo skarbowe.<br/> 7.10. Zarz\\u0105d Zwi\\u0105zku w ca\\u0142o\\u015bci lub poszczeg\\u00f3lni cz\\u0142onkowie Zarz\\u0105du mog\\u0105 by\\u0107 odwo\\u0142ani w dowolnym czasie przez Walne Zebranie w drodze uchwa\\u0142y. Cz\\u0142onkowie Zarz\\u0105du, kt\\u00f3rych dotyczy wniosek o odwo\\u0142anie, nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu wobec uchwa\\u0142y o odwo\\u0142aniu w czasie obrad Walnego Zebrania.\\u00a0<br/> 7.11. Do kompetencji Zarz\\u0105du nale\\u017c\\u0105:<br/> 1. kierowanie dzia\\u0142aniami Zwi\\u0105zku w oparciu o uchwa\\u0142y Walnego Zebrania,<br/> 2. prowadzenie bie\\u017c\\u0105cych spraw Zwi\\u0105zku,\\u00a0<br/> 3. reprezentowanie Zwi\\u0105zku na zewn\\u0105trz i dzia\\u0142anie w jego imieniu,<br/> 4. wykonywanie uchwa\\u0142 Walnego Zebrania,<br/> 5. prowadzenie gospodarki finansowej Zwi\\u0105zku i zarz\\u0105dzanie jego maj\\u0105tkiem, zgodnie z zasadami ustalonymi przez Walne Zebranie,<br/> 6. sporz\\u0105dzanie sprawozda\\u0144 finansowych i merytorycznych Zwi\\u0105zku,<br/> 7. sk\\u0142adanie Walnemu Zebraniu sprawozda\\u0144 z dzia\\u0142alno\\u015bci Zarz\\u0105du,<br/> 8. uchwalanie regulaminu Zarz\\u0105du, zatwierdzanego przez Walne Zebranie,<br/> 9. podejmowanie uchwa\\u0142 w sprawie przyjmowania cz\\u0142onk\\u00f3w wspieraj\\u0105cych,\\u00a0<br/> 10. podejmowanie uchwa\\u0142 w sprawie zawieszania cz\\u0142onk\\u00f3w Zwi\\u0105zku,\\u00a0\\u00a0<br/> 11. pobieranie sk\\u0142adek cz\\u0142onkowskich i uzgadnianie wsp\\u00f3lnie z cz\\u0142onkami Zwi\\u0105zku innych form \\u015bwiadczonej przez nich pomocy,<br/> 12. prowadzenie rejestru cz\\u0142onk\\u00f3w Zwi\\u0105zku.<br/> 7.12. Reprezentowa\\u0107 Zwi\\u0105zek na zewn\\u0105trz oraz wykonywa\\u0107 czynno\\u015bci w ramach prowadzenia spraw Zwi\\u0105zku mo\\u017ce ka\\u017cdy cz\\u0142onek Zarz\\u0105du samodzielnie, z zastrze\\u017ceniem ust. 7.13.<br/> 7.13. Do sk\\u0142adania w imieniu Zwi\\u0105zku o\\u015bwiadcze\\u0144 woli w sprawach maj\\u0105tkowych oraz wyznaczania pe\\u0142nomocnictw wymagane jest wsp\\u00f3\\u0142dzia\\u0142anie co najmniej dw\\u00f3ch cz\\u0142onk\\u00f3w Zarz\\u0105du.<br/> 7.14. Do z\\u0142o\\u017cenia przez Zarz\\u0105d o\\u015bwiadczenia woli w sprawie maj\\u0105tkowej o warto\\u015bci przekraczaj\\u0105cej 100000 PLN (s\\u0142ownie: sto tysi\\u0119cy z\\u0142otych) wymagane jest pe\\u0142nomocnictwo udzielone przez Walne Zebranie w formie uchwa\\u0142y.\\u00a0<br/> 7.15. Zarz\\u0105d nie ma prawa zaci\\u0105gania zobowi\\u0105za\\u0144, kt\\u00f3re:<br/> 1. wymagaj\\u0105 zabezpieczenia maj\\u0105tkiem trwa\\u0142ym Zwi\\u0105zku, 2. obci\\u0105\\u017cone s\\u0105 odsetkami.<br/> 7.16. Do z\\u0142o\\u017cenia przez Zarz\\u0105d o\\u015bwiadczenia woli w sprawie sk\\u0142adnik\\u00f3w maj\\u0105tkowych przypisanych do u\\u017cytkowania przez Autonomiczn\\u0105 Jednostk\\u0119 Terenow\\u0105 wymagane jest pe\\u0142nomocnictwo udzielone przez Rad\\u0119 danej Autonomicznej Jednostki Terenowej w formie uchwa\\u0142y, z zastrze\\u017ceniem ust. 7.17.<br/> 7.17. Do z\\u0142o\\u017cenia przez Zarz\\u0105d o\\u015bwiadczenia woli w sprawie zbycia nieruchomo\\u015bci gruntowej wymagane jest pe\\u0142nomocnictwo udzielone przez Walne Zebranie w formie uchwa\\u0142y podj\\u0119tej w drodze konsensusu na zasadzie przyzwolenia w obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku, a w przypadku gdy przedmiotowa nieruchomo\\u015b\\u0107 jest w u\\u017cytkowaniu Autonomicznej Jednostki Terenowej, wymagane jest r\\u00f3wnie\\u017c pe\\u0142nomocnictwo udzielone przez Rad\\u0119 danej Autonomicznej Jednostki Terenowej w formie uchwa\\u0142y podj\\u0119tej w drodze konsensusu na zasadzie przyzwolenia w obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w tego organu.<br/></p><p></p><h2>Rozdzia\\u0142 8 - Komisja Rewizyjna</h2><p>8.1. Komisja Rewizyjna sprawuje nadz\\u00f3r nad ca\\u0142okszta\\u0142tem dzia\\u0142alno\\u015bci statutowej i finansowej Zwi\\u0105zku. W ramach czynno\\u015bci nadzorczych ma ona prawo do pe\\u0142nej informacji o dzia\\u0142alno\\u015bci Zwi\\u0105zku, wgl\\u0105du do dokumentacji oraz \\u017c\\u0105dania udzielenia wyja\\u015bnie\\u0144 i informacji przez Zarz\\u0105d oraz osoby zaanga\\u017cowane w dzia\\u0142alno\\u015b\\u0107 w imieniu lub na rzecz Zwi\\u0105zku.<br/> 8.2. Komisja Rewizyjna sk\\u0142ada si\\u0119 z od 3 do 5 cz\\u0142onk\\u00f3w wybranych przez Walne Zebranie na czas nieoznaczony.<br/> 8.3. Zebrania Komisji Rewizyjnej odbywaj\\u0105 si\\u0119 w miar\\u0119 potrzeb, jednak nie rzadziej ni\\u017c raz w roku.<br/> 8.4. Komisja Rewizyjna mo\\u017ce podejmowa\\u0107 uchwa\\u0142y oraz wykonywa\\u0107 inne czynno\\u015bci w sprawach nale\\u017c\\u0105cych do jej kompetencji w obecno\\u015bci co najmniej po\\u0142owy swych cz\\u0142onk\\u00f3w.<br/> 8.5. Zebranie Komisji Rewizyjnej mo\\u017ce zwo\\u0142a\\u0107 ka\\u017cdy cz\\u0142onek Komisji Rewizyjnej. Powinien powiadomi\\u0107 o tym pozosta\\u0142ych cz\\u0142onk\\u00f3w Komisji Rewizyjnej ze stosownym wyprzedzeniem (co najmniej 7 dni przed terminem zebrania) umo\\u017cliwiaj\\u0105cym ich udzia\\u0142, przy wykorzystaniu przynajmniej 2 \\u015brodk\\u00f3w porozumiewania si\\u0119 na odleg\\u0142o\\u015b\\u0107 (w tym mailowo). Je\\u017celi wszyscy cz\\u0142onkowie s\\u0105 obecni na zebraniu, w\\u00f3wczas Komisja Rewizyjna mo\\u017ce obradowa\\u0107 i podejmowa\\u0107 uchwa\\u0142y i decyzje bez uprzedniego formalnego zwo\\u0142ania.<br/> 8.6. Komisja Rewizyjna mo\\u017ce upowa\\u017cni\\u0107 niekt\\u00f3rych spo\\u015br\\u00f3d swoich cz\\u0142onk\\u00f3w do wykonywania w jej imieniu okre\\u015blonych czynno\\u015bci nadzorczych.<br/> 8.7. W zebraniu Komisji Rewizyjnej mog\\u0105 uczestniczy\\u0107 z g\\u0142osem doradczym osoby zaproszone przez co najmniej jednego z cz\\u0142onk\\u00f3w Komisji Rewizyjnej.<br/> 8.8. Komisja Rewizyjna jest niezale\\u017cna od Zarz\\u0105du, a jej cz\\u0142onkami nie mog\\u0105 by\\u0107:<br/> 1. cz\\u0142onkowie Zarz\\u0105du ani osoby pozostaj\\u0105ce z cz\\u0142onkami Zarz\\u0105du w zwi\\u0105zku ma\\u0142\\u017ce\\u0144skim, we wsp\\u00f3lnym po\\u017cyciu, w stosunku pokrewie\\u0144stwa, powinowactwa lub podleg\\u0142o\\u015bci s\\u0142u\\u017cbowej,<br/> 2. osoby skazane prawomocnym wyrokiem za przest\\u0119pstwo \\u015bcigane z oskar\\u017cenia publicznego lub przest\\u0119pstwo skarbowe.<br/> 8.9. Szczeg\\u00f3\\u0142owy tryb i zasady dzia\\u0142ania Komisji Rewizyjnej mo\\u017ce okre\\u015bla\\u0107 regulamin Komisji Rewizyjnej uchwalony przez ten organ i zatwierdzony przez Walne Zebranie.<br/> 8.10. Cz\\u0142onkostwo w Komisji Rewizyjnej ustaje na skutek:<br/> 1. z\\u0142o\\u017cenia pisemnej rezygnacji,<br/> 2. odwo\\u0142ania przez Walne Zebranie,<br/> 3. \\u015bmierci cz\\u0142onka Komisji Rewizyjnej,<br/> 4. utraty praw obywatelskich na skutek skazania prawomocnym wyrokiem s\\u0105du za przest\\u0119pstwo pope\\u0142nione z winy umy\\u015blnej,<br/> 5. skazania prawomocnym wyrokiem za przest\\u0119pstwo umy\\u015blne \\u015bcigane z oskar\\u017cenia publicznego lub przest\\u0119pstwo skarbowe.\\u00a0<br/> 8.11. Komisja Rewizyjna w ca\\u0142o\\u015bci lub poszczeg\\u00f3lni cz\\u0142onkowie Komisji Rewizyjnej mog\\u0105 by\\u0107 odwo\\u0142ani w dowolnym czasie przez Walne Zebranie. Cz\\u0142onkowie Komisji Rewizyjnej, kt\\u00f3rych dotyczy wniosek o odwo\\u0142anie, nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu wobec uchwa\\u0142y o odwo\\u0142aniu w czasie obrad Walnego Zebrania.\\u00a0<br/> 8.12. Do obowi\\u0105zk\\u00f3w Komisji Rewizyjnej nale\\u017c\\u0105:<br/> 1. kontrolowanie co najmniej raz w roku dzia\\u0142alno\\u015bci statutowej i gospodarki finansowej<br/> Zwi\\u0105zku oraz przedstawianie Walnemu Zebraniu oraz Zarz\\u0105dowi wniosk\\u00f3w i uwag z ka\\u017cdej kontroli,<br/> 2. opiniowanie sprawozda\\u0144 finansowych i merytorycznych Zarz\\u0105du,<br/> 3. dokonywanie oceny dzia\\u0142alno\\u015bci Zarz\\u0105du i przedstawianie jej Walnemu Zebraniu,<br/> 4. sk\\u0142adanie sprawozda\\u0144 ze swej dzia\\u0142alno\\u015bci Walnemu Zebraniu.<br/> 8.13. Do kompetencji Komisji Rewizyjnej nale\\u017c\\u0105:<br/> 1. wybieranie podmiotu maj\\u0105cego zbada\\u0107 sprawozdania finansowe Zwi\\u0105zku,<br/> 2. \\u017c\\u0105danie od Zarz\\u0105du udost\\u0119pnienia dokument\\u00f3w zwi\\u0105zanych z dzia\\u0142alno\\u015bci\\u0105 Zwi\\u0105zku z mo\\u017cliwo\\u015bci\\u0105 ich kopiowania,<br/> 3. \\u017c\\u0105danie udzielenia informacji lub wyja\\u015bnie\\u0144 na temat dzia\\u0142alno\\u015bci Zwi\\u0105zku od Zarz\\u0105du i os\\u00f3b zaanga\\u017cowanych w dzia\\u0142alno\\u015b\\u0107 w imieniu lub na rzecz Zwi\\u0105zku,<br/> 4. uchwalanie regulaminu Komisji Rewizyjnej, zatwierdzanego przez Walne Zebranie,<br/> 5. sk\\u0142adanie wniosk\\u00f3w o zwo\\u0142anie Nadzwyczajnego Walnego Zebrania,<br/> 6. zwo\\u0142ywanie Walnego Zebrania w przypadku okre\\u015blonym w ust. 6.10.<br/> 8.14. Komisja Rewizyjna mo\\u017ce ze skutkiem natychmiastowym zawiesi\\u0107 cz\\u0142onkostwo osoby w Zarz\\u0105dzie w przypadku:<br/> 1. naruszenia przez t\\u0119 osob\\u0119 postanowie\\u0144 statutu Zwi\\u0105zku, uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku lub regulamin\\u00f3w Jednostek Terenowych na terenach u\\u017cytkowanych przez te Jednostki,<br/> 2. dzia\\u0142ania na szkod\\u0119 Zwi\\u0105zku,<br/> 3. zachowania godz\\u0105cego w dobre imi\\u0119 Zwi\\u0105zku.<br/> 8.15. Od uchwa\\u0142y Komisji Rewizyjnej stwierdzaj\\u0105cej zawieszenie cz\\u0142onkostwa w Zarz\\u0105dzie cz\\u0142onkowi Zarz\\u0105du, kt\\u00f3rego uchwa\\u0142a dotyczy, przys\\u0142uguje odwo\\u0142anie do Walnego Zebrania.\\u00a0<br/> 8.16. Odwo\\u0142anie, o kt\\u00f3rym mowa w ust. 8.15., sk\\u0142ada si\\u0119 pisemnie za po\\u015brednictwem Komisji Rewizyjnej w terminie miesi\\u0105ca od daty otrzymania informacji o zawieszeniu. Walne Zebranie rozpatruje odwo\\u0142anie w czasie najbli\\u017cszych obrad. Decyzja Walnego Zebrania w tej sprawie jest ostateczna. Cz\\u0142onek Zarz\\u0105du, kt\\u00f3rego dotyczy decyzja w sprawie zawieszenia cz\\u0142onkostwa w Zarz\\u0105dzie, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad Walnego Zebrania.\\u00a0\\u00a0<br/> 8.17. Do reprezentowania Komisji Rewizyjnej na zewn\\u0105trz i dzia\\u0142ania w jej imieniu, w tym do wykonywania w jej imieniu czynno\\u015bci kontrolnych, uprawniony jest ka\\u017cdy z cz\\u0142onk\\u00f3w Komisji Rewizyjnej.<br/></p><p></p><h2>Rozdzia\\u0142 9 - Maj\\u0105tek i gospodarka finansowa</h2><p>9.1. Maj\\u0105tek Zwi\\u0105zku mo\\u017ce powstawa\\u0107:\\u00a0<br/> 1. ze sk\\u0142adek cz\\u0142onkowskich,<br/> 2. z zapis\\u00f3w, darowizn, spadk\\u00f3w i ofiarno\\u015bci publicznej,<br/> 3. z dotacji,<br/> 4. z dochod\\u00f3w z maj\\u0105tku Zwi\\u0105zku.<br/> 9.2. Funduszami i maj\\u0105tkiem Zwi\\u0105zku zarz\\u0105dza Zarz\\u0105d.<br/> 9.3. W Zwi\\u0105zku zabronione jest:<br/> 1. udzielanie po\\u017cyczek lub zabezpieczanie zobowi\\u0105za\\u0144 maj\\u0105tkiem Zwi\\u0105zku,<br/> 2. przekazywanie maj\\u0105tku Zwi\\u0105zku na rzecz jego cz\\u0142onk\\u00f3w, cz\\u0142onk\\u00f3w organ\\u00f3w lub pracownik\\u00f3w oraz os\\u00f3b, z kt\\u00f3rymi cz\\u0142onkowie, cz\\u0142onkowie organ\\u00f3w oraz pracownicy Zwi\\u0105zku pozostaj\\u0105 w zwi\\u0105zku ma\\u0142\\u017ce\\u0144skim, we wsp\\u00f3lnym po\\u017cyciu albo w stosunku pokrewie\\u0144stwa lub powinowactwa w linii prostej, pokrewie\\u0144stwa lub powinowactwa w linii bocznej do drugiego stopnia albo s\\u0105 zwi\\u0105zani z tytu\\u0142u przysposobienia, opieki lub kurateli, zwanych dalej \\u201eosobami bliskimi\\u201d, na zasadach innych ni\\u017c w stosunku do os\\u00f3b trzecich, w szczeg\\u00f3lno\\u015bci, je\\u017celi przekazanie to nast\\u0119puje bezp\\u0142atnie lub na preferencyjnych warunkach,<br/> 3. wykorzystywanie maj\\u0105tku na rzecz cz\\u0142onk\\u00f3w, cz\\u0142onk\\u00f3w organ\\u00f3w lub pracownik\\u00f3w Zwi\\u0105zku oraz ich os\\u00f3b bliskich na zasadach innych ni\\u017c w stosunku do os\\u00f3b trzecich, chyba \\u017ce to wykorzystanie bezpo\\u015brednio wynika ze statutowego celu Zwi\\u0105zku,<br/> 4. zakup towar\\u00f3w lub us\\u0142ug od podmiot\\u00f3w, w kt\\u00f3rych uczestnicz\\u0105 cz\\u0142onkowie, cz\\u0142onkowie organ\\u00f3w lub pracownicy Zwi\\u0105zku oraz ich os\\u00f3b bliskich, na zasadach innych ni\\u017c w stosunku do os\\u00f3b trzecich lub po cenach wy\\u017cszych ni\\u017c rynkowe.<br/> 9.4. W przypadku powo\\u0142ania Zwi\\u0105zku do spadku Zarz\\u0105d sk\\u0142ada o\\u015bwiadczenie o przyj\\u0119ciu spadku z dobrodziejstwem inwentarza i to tylko w\\u00f3wczas, gdy w chwili sk\\u0142adania tego o\\u015bwiadczenia oczywistym jest, \\u017ce stan czynny spadku znacznie przewy\\u017csza d\\u0142ugi spadkowe.<br/> 9.5. Zwi\\u0105zek mo\\u017ce tworzy\\u0107 fundusze, w tym fundusze celowe. Fundusze Zwi\\u0105zku s\\u0105 tworzone i likwidowane przez Walne Zebranie, kt\\u00f3re ustala zasady gromadzenia w nich \\u015brodk\\u00f3w i dysponowania nimi. Zarz\\u0105d Zwi\\u0105zku oraz Zarz\\u0105dy Jednostek Terenowych mog\\u0105 dysponowa\\u0107 \\u015brodkami zgromadzonymi w funduszach Zwi\\u0105zku w oparciu o zasady ustalone przez Walne Zebranie.<br/></p><p></p><h2>Rozdzia\\u0142 10 - Jednostki Terenowe</h2><p>10.1. Jednostki Terenowe, zwane dalej \\u201cJT\\u201d, dziel\\u0105 si\\u0119 na dwa rodzaje:<br/> 1. Podstawowe Jednostki Terenowe, zwane dalej \\u201cPJT\\u201d,<br/> 2. Autonomiczne Jednostki Terenowe, zwane dalej \\u201cAJT\\u201d.<br/> 10.2. AJT s\\u0105 takimi Jednostkami Terenowymi, kt\\u00f3rym powierzono do gospodarowania nieruchomo\\u015bci gruntowe nale\\u017c\\u0105ce do Zwi\\u0105zku w celu tworzenia, utrzymania i rozwoju wsp\\u00f3lnot intencjonalnych b\\u0105d\\u017a tworzenia i ochrony rezerwat\\u00f3w Wolnej Ziemi.<br/> 10.3. PJT s\\u0105 wszystkie Jednostki Terenowe nieb\\u0119d\\u0105ce AJT.<br/> 10.4. PJT zostaj\\u0105 przekszta\\u0142cone w AJT z chwil\\u0105 spe\\u0142nienia warunku okre\\u015blonego w ust. 10.2.\\u00a0<br/> 10.5. JT powinny gospodarowa\\u0107 oddanymi im do u\\u017cytkowania nieruchomo\\u015bciami w spos\\u00f3b korzystny dla Ziemi, Przyrody oraz ludzi, a tak\\u017ce zgodny z celami Zwi\\u0105zku.\\u00a0<br/> 10.6. Zarz\\u0105d Zwi\\u0105zku podejmuje wszelkie dzia\\u0142ania potrzebne do samodzielnego funkcjonowania JT zgodnego z ich regulaminami, w tym udziela organom JT potrzebnych pe\\u0142nomocnictw. W przypadku gdy dzia\\u0142anie organu JT na podstawie pe\\u0142nomocnictwa udzielonego przez Zarz\\u0105d Zwi\\u0105zku jest niemo\\u017cliwe lub niecelowe, Zarz\\u0105d Zwi\\u0105zku na wniosek organu JT dzia\\u0142a na rzecz JT wobec innych podmiot\\u00f3w.\\u00a0<br/> 10.7. JT nie posiadaj\\u0105 osobowo\\u015bci prawnej.<br/> 10.8. JT powo\\u0142ywane s\\u0105 przez Walne Zebranie na czas nieoznaczony.<br/> 10.9. Walne Zebranie mo\\u017ce utworzy\\u0107 JT na wniosek co najmniej 3 cz\\u0142onk\\u00f3w Zwi\\u0105zku, b\\u0119d\\u0105cych osobami fizycznymi, zwanych dalej \\u201cInicjatorami JT\\u201d.\\u00a0<br/> 10.10. W celu utworzenia JT, Inicjatorzy JT sk\\u0142adaj\\u0105 do Walnego Zebrania za po\\u015brednictwem Zarz\\u0105du Zwi\\u0105zku wniosek o utworzenie JT wraz z projektem regulaminu JT.<br/> 10.11. Ka\\u017cda JT dzia\\u0142a na podstawie statutu Zwi\\u0105zku oraz w\\u0142asnego regulaminu JT.<br/></p><p></p><h2>Rozdzia\\u0142 11 - Rady Jednostek Terenowych</h2><p>1.1. Ka\\u017cda JT posiada kolektywny organ najwy\\u017cszy - Rad\\u0119 Jednostki Terenowej, zwan\\u0105 dalej \\u201eRad\\u0105 JT\\u201d.\\u00a0<br/> 11.2. Rada JT decyduje o wszelkich sprawach dotycz\\u0105cych JT.<br/> 11.3. Pierwszy sk\\u0142ad Rady JT powo\\u0142ywany jest przez Walne Zebranie wraz z utworzeniem JT i zatwierdzeniem regulaminu JT. W sk\\u0142ad pierwszej Rady JT wchodz\\u0105 Inicjatorzy JT.<br/> 11.4. Wszyscy stali mieszka\\u0144cy nieruchomo\\u015bci oddanej do u\\u017cytkowania dla AJT maj\\u0105 prawo bycia cz\\u0142onkami Rady tej AJT.\\u00a0<br/> 11.5. Nowi cz\\u0142onkowie Rady JT przyjmowani s\\u0105 przez Rad\\u0119 JT w drodze konsensusu na zasadzie przyzwolenia na czas nieoznaczony.<br/> 11.6. Modelem podejmowania decyzji przez Rad\\u0119 JT jest konsensus oparty na zasadzie przyzwolenia, zgodnie z kt\\u00f3rym decyzje Rady JT mog\\u0105 zosta\\u0107 podj\\u0119te wtedy, gdy \\u017caden ze zgromadzonych na zebraniu cz\\u0142onk\\u00f3w Rady JT nie zg\\u0142osi swojego sprzeciwu wobec podj\\u0119cia danej decyzji.<br/> 11.7. Osoba zg\\u0142aszaj\\u0105ca sprzeciw powinna poda\\u0107 merytoryczne uzasadnienie swojego sprzeciwu, a tak\\u017ce argumenty przemawiaj\\u0105ce na rzecz racji tego sprzeciwu. W przeciwnym razie sprzeciw mo\\u017ce nie zosta\\u0107 uwzgl\\u0119dniony przez pozosta\\u0142ych cz\\u0142onk\\u00f3w Rady JT.\\u00a0<br/> 11.8. Uzasadnienie sprzeciwu i argumenty przemawiaj\\u0105ce na rzecz racji sprzeciwu mog\\u0105\\u00a0 zosta\\u0107 poddane dyskusji, w wyniku kt\\u00f3rej osoba, kt\\u00f3ra zg\\u0142osi\\u0142a sprzeciw, mo\\u017ce go wycofa\\u0107.\\u00a0<br/> 11.9. W przypadku zg\\u0142oszenia sprzeciwu, osoba, kt\\u00f3ra zg\\u0142osi\\u0142a sprzeciw, a tak\\u017ce inne osoby obecne na zebraniu mog\\u0105 zaproponowa\\u0107 inne rozwi\\u0105zanie, kt\\u00f3re mo\\u017ce zosta\\u0107 przyj\\u0119te zamiast wcze\\u015bniej proponowanej decyzji.\\u00a0<br/> 11.10. Rada JT dzia\\u0142a zgodnie ze statutem Zwi\\u0105zku, regulaminem JT oraz przepisami powszechnie obowi\\u0105zuj\\u0105cego prawa.\\u00a0<br/> 11.11. Rada JT podejmuje uchwa\\u0142y na zebraniach w obecno\\u015bci przynajmniej po\\u0142owy swoich cz\\u0142onk\\u00f3w, pod warunkiem \\u017ce wszyscy cz\\u0142onkowie Rady JT zostali skutecznie zawiadomieni o terminie, miejscu i porz\\u0105dku obrad na co najmniej 7 dni przed dat\\u0105 zebrania. Je\\u017celi wszyscy cz\\u0142onkowie s\\u0105 obecni na zebraniu, w\\u00f3wczas Rada JT mo\\u017ce obradowa\\u0107 i podejmowa\\u0107 uchwa\\u0142y i decyzje bez uprzedniego formalnego zwo\\u0142ania.<br/> 11.12. Zebranie Rady JT zwo\\u0142uje Zarz\\u0105d JT z w\\u0142asnej inicjatywy lub na wniosek co najmniej 3 cz\\u0142onk\\u00f3w Rady JT.<br/> 11.13. Wnosz\\u0105cy o zwo\\u0142anie zebrania Rady JT s\\u0105 obowi\\u0105zani z\\u0142o\\u017cy\\u0107 Zarz\\u0105dowi JT wniosek z podaniem proponowanego porz\\u0105dku obrad, kt\\u00f3ry Zarz\\u0105d JT mo\\u017ce uzupe\\u0142ni\\u0107.<br/> 11.14. Zebrania Rady JT odbywaj\\u0105 si\\u0119 w siedzibie JT lub w innym miejscu znajduj\\u0105cym si\\u0119 na obszarze dzia\\u0142ania JT.<br/> 11.15. Cz\\u0142onkowie Rady JT, kt\\u00f3rzy nie mog\\u0105 by\\u0107 obecni na zebraniu Rady JT, mog\\u0105 wyra\\u017ca\\u0107 swoj\\u0105 opini\\u0119 na temat ka\\u017cdego punktu porz\\u0105dku obrad w spos\\u00f3b zdalny (pisemnie, elektronicznie, telefonicznie).<br/> 11.16. Cz\\u0142onkostwo w Radzie JT mo\\u017ce zosta\\u0107 ze skutkiem natychmiastowym czasowo zawieszone na okres od 6 do 12 miesi\\u0119cy na skutek:<br/> 1. dobrowolnej czasowej rezygnacji z aktywnego udzia\\u0142u w pracach JT zg\\u0142oszonej na pi\\u015bmie Zarz\\u0105dowi JT,<br/> 2. uchwa\\u0142y Rady JT uzasadnionej brakiem dobrowolnego zaanga\\u017cowania cz\\u0142onka Rady JT w pracach i dzia\\u0142alno\\u015bci JT przez okres minimum roku,<br/> 3. uchwa\\u0142y Rady JT uzasadnionej brakiem fizycznego lub zdalnego uczestnictwa w trzech kolejnych posiedzeniach Rady JT,<br/> 4. uchwa\\u0142y Rady JT uzasadnionej zachowaniem godz\\u0105cym w dobre imi\\u0119 JT lub Zwi\\u0105zku,<br/> 5. uchwa\\u0142y Rady JT uzasadnionej naruszeniem postanowie\\u0144 statutu Zwi\\u0105zku, regulaminu JT lub uchwa\\u0142 organ\\u00f3w Zwi\\u0105zku,<br/> 6. uchwa\\u0142y Rady JT uzasadnionej dzia\\u0142aniem na szkod\\u0119 JT lub Zwi\\u0105zku.<br/> 11.17. Decyzj\\u0119 o zawieszeniu cz\\u0142onkostwa w Radzie JT podejmuje Rada JT na wniosek co najmniej trzech jej cz\\u0142onk\\u00f3w. Osoba, kt\\u00f3rej dotyczy ta decyzja, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad Rady JT.\\u00a0<br/> 11.18. Cz\\u0142onek Rady JT, kt\\u00f3rego cz\\u0142onkostwo w Radzie JT zosta\\u0142o czasowo zawieszone, mo\\u017ce bra\\u0107 udzia\\u0142 w zebraniach Rady JT z g\\u0142osem doradczym.<br/> 11.19. Po up\\u0142ywie okresu zawieszenia, w celu powrotu do aktywnego uczestnictwa w pracach Rady JT, osoba, kt\\u00f3rej cz\\u0142onkostwo w Radzie JT zosta\\u0142o zawieszone, sk\\u0142ada Zarz\\u0105dowi JT pisemn\\u0105 deklaracj\\u0119 aktywnego uczestnictwa w dzia\\u0142alno\\u015bci Rady JT. Z\\u0142o\\u017cenie tej deklaracji jest niezb\\u0119dne do przywr\\u00f3cenia osobie, kt\\u00f3rej cz\\u0142onkostwo w Radzie JT zosta\\u0142o zawieszone, pe\\u0142ni praw zwi\\u0105zanych z cz\\u0142onkostwem w Radzie JT.<br/> 11.20. Utrata cz\\u0142onkostwa w Radzie JT nast\\u0119puje na skutek:\\u00a0<br/> 1. pisemnej rezygnacji cz\\u0142onka Rady JT z\\u0142o\\u017conej Zarz\\u0105dowi JT,\\u00a0<br/> 2. \\u015bmierci cz\\u0142onka Rady JT,<br/> 3. wykluczenia z Rady JT z powodu przyczyny okre\\u015blonej w ust. 11.16 pkt 4-6.<br/> 11.21. Decyzj\\u0119 o wykluczeniu z Rady JT podejmuje Rada JT po up\\u0142ywie okresu zawieszenia cz\\u0142onkostwa. Osoba, kt\\u00f3rej dotyczy ta decyzja, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad Rady JT.<br/> 11.22. Od uchwa\\u0142y Rady JT stwierdzaj\\u0105cej zawieszenie lub utrat\\u0119 cz\\u0142onkostwa w Radzie JT cz\\u0142onkowi, kt\\u00f3rego uchwa\\u0142a dotyczy, przys\\u0142uguje odwo\\u0142anie do Walnego Zebrania.\\u00a0<br/> 11.23. Odwo\\u0142anie, o kt\\u00f3rym mowa w ust. 11.19, sk\\u0142ada si\\u0119 pisemnie za po\\u015brednictwem Zarz\\u0105du Zwi\\u0105zku w terminie 30 dni od daty otrzymania informacji o zawieszeniu lub utracie cz\\u0142onkostwa w Radzie JT. Walne Zebranie rozpatruje odwo\\u0142anie w czasie najbli\\u017cszych obrad. Decyzja Walnego Zebrania w tej sprawie jest ostateczna. Cz\\u0142onek Zwi\\u0105zku, kt\\u00f3rego dotyczy ta decyzja, nie ma prawa wnie\\u015b\\u0107 do niej sprzeciwu w czasie obrad Walnego Zebrania.<br/></p><p></p><h2>Rozdzia\\u0142 12 - Delegaci Autonomicznych Jednostek Terenowych</h2><p>12.1. Ka\\u017cda Rada AJT wybiera ze swego grona Delegata Autonomicznej Jednostki Terenowej, zwanego dalej \\u201eDelegatem AJT\\u201d, a tak\\u017ce Zast\\u0119pc\\u0119 Delegata Autonomicznej Jednostki Terenowej, zwanego dalej \\u201eZast\\u0119pc\\u0105 Delegata AJT\\u201d.<br/> 12.2. Pe\\u0142nienie funkcji przez Delegata AJT lub Zast\\u0119pc\\u0119 Delegata AJT ustaje na skutek:<br/> 1. pisemnej rezygnacji,<br/> 2. odwo\\u0142ania przez Rad\\u0119 AJT,<br/> 3. utraty cz\\u0142onkostwa w Zwi\\u0105zku.<br/> 12.3. Zast\\u0119pca Delegata AJT pe\\u0142ni funkcj\\u0119 Delegata AJT do czasu wyboru nowego Delegata przez Rad\\u0119 AJT oraz w czasie nieobecno\\u015bci Delegata AJT na obradach Walnego Zebrania.\\u00a0<br/> 12.4. Zast\\u0119pca Delegata AJT mo\\u017ce uczestniczy\\u0107 z g\\u0142osem doradczym w obradach Walnego Zebrania.\\u00a0<br/> 12.5. Delegat AJT:<br/> 1. staje si\\u0119 w trakcie i na mocy pe\\u0142nienia swej funkcji cz\\u0142onkiem zwyczajnym Zwi\\u0105zku,<br/> 2. jest upowa\\u017cniony do prezentowania woli i stanowiska Rady AJT na Walnym Zebraniu.<br/> 12.6. Delegat AJT i Zast\\u0119pca Delegata AJT s\\u0105 wybierani na czas okre\\u015blony w regulaminie AJT i mog\\u0105 w ka\\u017cdej chwili zosta\\u0107 odwo\\u0142ani przez Rad\\u0119 AJT.\\u00a0<br/></p><p></p><h2>Rozdzia\\u0142 13 - Regulaminy Jednostek Terenowych</h2><p>13.1. Regulamin JT okre\\u015bla szczeg\\u00f3\\u0142ow\\u0105 organizacj\\u0119 JT i spos\\u00f3b jej dzia\\u0142ania. Rada JT mo\\u017ce dokonywa\\u0107 zmian w regulaminie JT.<br/> 13.2. Regulamin JT oraz wszelkie zmiany do tego regulaminu zatwierdzane s\\u0105 pod rygorem niewa\\u017cno\\u015bci przez Walne Zebranie w drodze uchwa\\u0142y.<br/> 13.3. Regulamin JT okre\\u015bla w szczeg\\u00f3lno\\u015bci:<br/> 1. nazw\\u0119 JT,<br/> 2. siedzib\\u0119 i obszar dzia\\u0142ania JT,<br/> 3. profil JT,\\u00a0<br/> 4. cele JT,\\u00a0<br/> 5. struktur\\u0119 organizacyjn\\u0105 JT,<br/> 6. spos\\u00f3b podejmowania decyzji przez organy JT, zgodny z zasad\\u0105 konsensusu,<br/> 7. szczeg\\u00f3\\u0142owe zasady dzia\\u0142ania organ\\u00f3w JT oraz Delegata i Zast\\u0119pcy Delegata JT.<br/> 13.4. Regulamin AJT, opr\\u00f3cz punkt\\u00f3w wymienionych w ust. 13.3, okre\\u015bla r\\u00f3wnie\\u017c:<br/> 1. zasady gospodarowania nieruchomo\\u015bciami u\\u017cytkowanymi przez AJT,<br/> 2. podstawowe zasady dotycz\\u0105ce mieszka\\u0144c\\u00f3w AJT,<br/> 3. zasady przyjmowania nowych mieszka\\u0144c\\u00f3w AJT,<br/> 4. podstawowe zasady dotycz\\u0105ce go\\u015bci AJT.<br/> 13.5. Do AJT, kt\\u00f3rych celem jest tworzenie i ochrona rezerwat\\u00f3w Wolnej Ziemi, nie ma zastosowania ust. 13.4. Regulamin tych AJT, opr\\u00f3cz punkt\\u00f3w wymienionych w ust. 13.3, powinien okre\\u015bla\\u0107 zasady post\\u0119powania na terenie rezerwat\\u00f3w Wolnej Ziemi chronionych przez te AJT.<br/> 13.6. Walne Zebranie mo\\u017ce uchwali\\u0107 instrukcj\\u0119 opracowywania regulaminu JT z dok\\u0142adnym wyja\\u015bnieniem i rozszerzeniem element\\u00f3w sk\\u0142adowych wymienionych w ust. 13.3 -13.5.<br/></p><p></p><h2>Rozdzia\\u0142 14 - Zarz\\u0105dy Jednostek Terenowych</h2><p>14.1. Ka\\u017cda JT posiada kolektywny organ wykonawczy \\u2013 Zarz\\u0105d Jednostki Terenowej, zwany dalej \\u201eZarz\\u0105dem JT\\u201d.\\u00a0<br/> 14.2. Zarz\\u0105d JT jest wybierany przez Rad\\u0119 JT na czas okre\\u015blony w regulaminie JT.\\u00a0<br/> 14.3. Zarz\\u0105d JT mo\\u017ce by\\u0107 w dowolnym czasie odwo\\u0142any przez Rad\\u0119 JT.\\u00a0<br/> 14.4. Zarz\\u0105d JT wykonuje uchwa\\u0142y Rady JT i reprezentuje JT na zewn\\u0105trz.<br/> 14.5. Do reprezentowania JT na zewn\\u0105trz i dzia\\u0142ania w jej imieniu, w tym do sk\\u0142adania o\\u015bwiadcze\\u0144 woli w imieniu JT, uprawniony jest ka\\u017cdy cz\\u0142onek Zarz\\u0105du JT dzia\\u0142aj\\u0105cy samodzielnie. Uprawnienie to nie obejmuje prawa do reprezentowania AJT w czasie obrad Walnego Zebrania.\\u00a0<br/> 14.6. Do obowi\\u0105zk\\u00f3w Zarz\\u0105du JT nale\\u017c\\u0105:<br/> 1. przesy\\u0142anie do Zarz\\u0105du Zwi\\u0105zku kopii protoko\\u0142\\u00f3w z zebra\\u0144 Rady JT wraz z kopiami wszystkich uchwa\\u0142 i za\\u0142\\u0105cznik\\u00f3w, w terminie miesi\\u0105ca od daty zebrania,<br/> 2. prowadzenie i aktualizowanie listy cz\\u0142onk\\u00f3w Rady JT, a tak\\u017ce przesy\\u0142anie tej listy do Zarz\\u0105du Zwi\\u0105zku po ka\\u017cdorazowej aktualizacji w terminie 30 dni od wprowadzenia zmian,<br/> 3. przesy\\u0142anie do Zarz\\u0105du Zwi\\u0105zku corocznych sprawozda\\u0144 z dzia\\u0142alno\\u015bci JT do 31 marca\\u00a0 nast\\u0119pnego roku.<br/> 14.7. Do obowi\\u0105zk\\u00f3w Zarz\\u0105du AJT opr\\u00f3cz tych wymienionych w ust. 14.6. nale\\u017cy r\\u00f3wnie\\u017c prowadzenie i aktualizowanie listy mieszka\\u0144c\\u00f3w AJT, a tak\\u017ce przesy\\u0142anie tej listy do Zarz\\u0105du Zwi\\u0105zku po ka\\u017cdorazowej aktualizacji w terminie 30 dni od wprowadzenia zmian.<br/> 14.8. Pe\\u0142nienie funkcji cz\\u0142onka Zarz\\u0105du JT ustaje na skutek:<br/> 1. pisemnej rezygnacji,<br/> 2. odwo\\u0142ania przez Rad\\u0119 AJT,<br/> 3. utraty cz\\u0142onkostwa w Zwi\\u0105zku.<br/></p><p></p><h2>Rozdzia\\u0142 15 - Przepisy ko\\u0144cowe dotycz\\u0105ce Jednostek Terenowych</h2><p>15.1. Komisja Rewizyjna mo\\u017ce kontrolowa\\u0107 ca\\u0142okszta\\u0142t dzia\\u0142alno\\u015bci JT. Ma ona prawo do pe\\u0142nej informacji o dzia\\u0142alno\\u015bci JT, wgl\\u0105du do dokumentacji oraz \\u017c\\u0105dania udzielenia wyja\\u015bnie\\u0144 i informacji przez Zarz\\u0105d JT oraz osoby zaanga\\u017cowane w dzia\\u0142alno\\u015b\\u0107 w imieniu lub na rzecz JT.<br/> 15.2. Komisja Rewizyjna mo\\u017ce przekaza\\u0107 Radzie JT, Zarz\\u0105dowi JT, Walnemu Zebraniu lub Zarz\\u0105dowi Zwi\\u0105zku wnioski lub uwagi dotycz\\u0105ce dzia\\u0142alno\\u015bci JT.\\u00a0<br/> 15.3. W przypadku gdy dzia\\u0142alno\\u015b\\u0107 JT jest sprzeczna ze statutem Zwi\\u0105zku lub z powszechnie obowi\\u0105zuj\\u0105cym prawem, Komisja Rewizyjna mo\\u017ce wyda\\u0107 zalecenia maj\\u0105ce na celu przywr\\u00f3cenie zgodno\\u015bci dzia\\u0142a\\u0144 JT ze statutem Zwi\\u0105zku lub z powszechnie obowi\\u0105zuj\\u0105cym prawem. Zalecenia te s\\u0105 wi\\u0105\\u017c\\u0105ce dla organ\\u00f3w JT i powinny zosta\\u0107 wykonane w terminie okre\\u015blonym przez Komisj\\u0119 Rewizyjn\\u0105.\\u00a0<br/> 15.4. Organ JT mo\\u017ce odwo\\u0142a\\u0107 si\\u0119 od zalece\\u0144 Komisji Rewizyjnej do Walnego Zebrania. Wobec uchwa\\u0142 Walnego Zebrania w tej sprawie nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu cz\\u0142onkowie Zwi\\u0105zku b\\u0119d\\u0105cy jednocze\\u015bnie cz\\u0142onkami Rady lub Zarz\\u0105du danej JT.<br/> 15.5. W przypadku powa\\u017cnego lub uporczywego naruszania postanowie\\u0144 statutu Zwi\\u0105zku lub powszechnie obowi\\u0105zuj\\u0105cego prawa i niewykonywania zalece\\u0144 Komisji Rewizyjnej maj\\u0105cych na celu przywr\\u00f3cenie zgodno\\u015bci dzia\\u0142a\\u0144 JT ze statutem Zwi\\u0105zku lub z powszechnie obowi\\u0105zuj\\u0105cym prawem, Walne Zebranie mo\\u017ce na wniosek Komisji Rewizyjnej zdecydowa\\u0107 o zawieszeniu dzia\\u0142alno\\u015bci Rady JT oraz powo\\u0142aniu Rady Naprawczej JT, kt\\u00f3ra przejmuje wszystkie funkcje Rady JT. Cz\\u0142onk\\u00f3w Rady Naprawczej JT powo\\u0142uje i odwo\\u0142uje Komisja Rewizyjna. Walne Zebranie na wniosek Komisji Rewizyjnej rozwi\\u0105zuje Rad\\u0119 Naprawcz\\u0105 JT i przywraca Radzie JT mo\\u017cliwo\\u015b\\u0107 pe\\u0142nienia przez ni\\u0105 swoich funkcji w przypadku gdy przywr\\u00f3cona zostanie zgodno\\u015b\\u0107 dzia\\u0142alno\\u015bci JT z postanowieniami statutu Zwi\\u0105zku oraz powszechnie obowi\\u0105zuj\\u0105cym prawem. Wobec uchwa\\u0142 Walnego Zebrania w tych sprawach nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu cz\\u0142onkowie Zwi\\u0105zku b\\u0119d\\u0105cy jednocze\\u015bnie cz\\u0142onkami Rady lub Rady Naprawczej danej JT.<br/> 15.6. W sytuacjach szczeg\\u00f3lnie uzasadnionych, na wniosek co najmniej 5 os\\u00f3b mieszkaj\\u0105cych przynajmniej od roku na terenie nieruchomo\\u015bci oddanych do u\\u017cytkowania AJT, Walne Zebranie mo\\u017ce rozwi\\u0105za\\u0107 dotychczasow\\u0105 Rad\\u0119 AJT i powo\\u0142a\\u0107 now\\u0105 Rad\\u0119 AJT, sk\\u0142adaj\\u0105c\\u0105 si\\u0119 ze wszystkich sta\\u0142ych mieszka\\u0144c\\u00f3w nieruchomo\\u015bci oddanych do u\\u017cytkowania tej AJT. Wobec uchwa\\u0142y Walnego Zebrania w tej sprawie nie mog\\u0105 wnie\\u015b\\u0107 sprzeciwu cz\\u0142onkowie Zwi\\u0105zku b\\u0119d\\u0105cy jednocze\\u015bnie cz\\u0142onkami Rady danej AJT.<br/> 15.7. JT mo\\u017ce zosta\\u0107 rozwi\\u0105zana uchwa\\u0142\\u0105 Rady JT podj\\u0119t\\u0105 w drodze konsensusu na zasadzie przyzwolenia w obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w Rady JT. Uchwa\\u0142a ta wchodzi w \\u017cycie po zatwierdzeniu jej przez Walne Zebranie.<br/> 15.8. PJT mo\\u017ce zosta\\u0107 rozwi\\u0105zana uchwa\\u0142\\u0105 Walnego Zebrania w przypadku ponad rocznego braku aktywno\\u015bci Zarz\\u0105du PJT i Rady PJT, s\\u0142u\\u017c\\u0105cej realizacji cel\\u00f3w, dla kt\\u00f3rych zosta\\u0142a powo\\u0142ana.<br/></p><p></p><h2>Rozdzia\\u0142 16 - Zmiana statutu Zwi\\u0105zku</h2><p>116.1. Zmiana statutu Zwi\\u0105zku nast\\u0119puje na podstawie uchwa\\u0142y Walnego Zebrania, podj\\u0119tej w drodze konsensusu na zasadzie przyzwolenia w obecno\\u015bci przynajmniej 2/3 cz\\u0142onk\\u00f3w zwyczajnych Zwi\\u0105zku, z zastrze\\u017ceniem ust. 16.3, przy czym informacja o porz\\u0105dku obrad Walnego Zebrania powinna wyra\\u017anie wskazywa\\u0107, kt\\u00f3re postanowienia statutu maj\\u0105 ulec zmianie.<br/> 16.2. Zmiana statutu Zwi\\u0105zku nie mo\\u017ce w istotny spos\\u00f3b naruszy\\u0107 podstawowego celu realizowanego przez Zwi\\u0105zek oraz konsensualnego modelu podejmowania decyzji przez wszystkie organy Zwi\\u0105zku oraz JT.<br/> 16.3. Zmiana rozdzia\\u0142\\u00f3w 10 - 17, opr\\u00f3cz warunku wymienionego w ust. 16.1, wymaga zgody wszystkich Rad JT w formie uchwa\\u0142 podj\\u0119tych przy udziale wszystkich uprawnionych do decydowania cz\\u0142onk\\u00f3w tych Rad.<br/></p><p></p><h2>Rozdzia\\u0142 17 - Przepisy ko\\u0144cowe</h2><p>17.1. Rozwi\\u0105zanie Zwi\\u0105zku mo\\u017ce nast\\u0105pi\\u0107 tylko w przypadku braku AJT lub po ich uprzednim rozwi\\u0105zaniu zgodnie z ust. 15.7.<br/> 17.2. Walne Zebranie mo\\u017ce w obecno\\u015bci wszystkich cz\\u0142onk\\u00f3w Zwi\\u0105zku zdecydowa\\u0107 o rozwi\\u0105zaniu Zwi\\u0105zku, okre\\u015blaj\\u0105c przeznaczenie sk\\u0142adnik\\u00f3w maj\\u0105tku pozosta\\u0142ego po likwidacji Zwi\\u0105zku oraz powo\\u0142uj\\u0105c Komisj\\u0119 Likwidacyjn\\u0105.<br/> 17.3. Zadaniem Komisji Likwidacyjnej jest przeprowadzenie likwidacji Zwi\\u0105zku, w tym zako\\u0144czenie jego spraw maj\\u0105tkowych i uregulowanie jego zobowi\\u0105za\\u0144. Komisja Likwidacyjna podejmuje decyzje w drodze konsensusu opartego na zasadzie przyzwolenia. Do reprezentowania Zwi\\u0105zku uprawnieni s\\u0105 wszyscy cz\\u0142onkowie Komisji Likwidacyjnej dzia\\u0142aj\\u0105cy \\u0142\\u0105cznie.<br/> 17.4. Nieruchomo\\u015bci nale\\u017c\\u0105ce do Zwi\\u0105zku nie mog\\u0105 zosta\\u0107 sprzedane w trakcie likwidacji Zwi\\u0105zku. Powinny one zosta\\u0107 przekazane w ca\\u0142o\\u015bci podmiotom zapewniaj\\u0105cym kontynuacj\\u0119 realizacji przez te nieruchomo\\u015bci cel\\u00f3w, do kt\\u00f3rych zosta\\u0142y przeznaczone.\\u00a0<br/> 17.5. Maj\\u0105tek pozosta\\u0142y po likwidacji Zwi\\u0105zku przekazuje si\\u0119 organizacjom pozarz\\u0105dowym, w pierwszej kolejno\\u015bci tym, kt\\u00f3rych dzia\\u0142alno\\u015b\\u0107 jest zbie\\u017cna z celami Zwi\\u0105zku.<br/> 17.6. W sprawach nieuregulowanych niniejszym statutem maj\\u0105 zastosowanie przepisy obowi\\u0105zuj\\u0105cego prawa.</p>", "link_text": "", "link": ""}	\N	11	2
42	f	2021-03-07 10:23:07.622003+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 8, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-06T11:33:15.997Z", "latest_revision_created_at": "2021-03-06T11:33:15.896Z", "live_revision": 40, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.", "earth": "<p><br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci, a przede wszystkim stworzenie podstaw do tego, by ka\\u017cdy m\\u00f3g\\u0142 mie\\u0107 r\\u00f3wne prawa do decydowania o swoim \\u017cyciu.<br/></p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/> Si\\u0142a umys\\u0142\\u00f3w wypranych przez propagand\\u0119 chaosu wsp\\u00f3\\u0142czesnej kultury, operuj\\u0105c strachem i przywi\\u0105zaniem prowadzi cz\\u0119sto do tego, \\u017ce za cen\\u0119 prze\\u017cycia, b\\u0105d\\u017a obietnicy raju, kupujemy pogl\\u0105dy kt\\u00f3re tworz\\u0105 nasz\\u0105 \\u015bwiadomo\\u015b\\u0107 i stajemy si\\u0119 w ten spos\\u00f3b niewolnikami system\\u00f3w ekonomicznych, spo\\u0142ecznych, politycznych i religijnych.<br/> Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra w ten spos\\u00f3b eliminuje z naszego \\u017cycia podstawy konsumpcjonizmu.<br/></p>", "wolna_ziemia": "<p>Inicjatywa maj\\u0105ca na celu zorganizowanie wsp\\u00f3lnego miejsca, gdzie da\\u0142o by si\\u0119 tworzy\\u0107 \\u017cycie w oparciu o mo\\u017cliwo\\u015bci, kt\\u00f3re mo\\u017cemy stwarza\\u0107 sami dla siebie, rozpocz\\u0119\\u0142a si\\u0119 wiele lat temu, w wypo\\u017cyczonym domu pod Bydgoszcz\\u0105. Tam po raz pierwszy w par\\u0119 os\\u00f3b postanowili\\u015bmy spr\\u00f3bowa\\u0107 \\u017cy\\u0107 razem. Ju\\u017c na samym pocz\\u0105tku potrzebne wsp\\u00f3lne decyzje by\\u0142y podejmowane w kr\\u0119gu jednog\\u0142o\\u015bnie za pomoc\\u0105 konsensusu.<br/>Plan by\\u0142 taki, by najpierw stworzy\\u0107 faktycznie istniej\\u0105c\\u0105 wsp\\u00f3lnot\\u0119, a potem w oparciu o to za\\u0142o\\u017cy\\u0107 organizacj\\u0119.<br/>Organizacja by\\u0142a nam niezb\\u0119dna do tego, by da\\u0142o si\\u0119 zrealizowa\\u0107 plan posiadania wsp\\u00f3lnej przestrzeni do \\u017cycia, w taki spos\\u00f3b, by nie by\\u0142o jednego w\\u0142a\\u015bciciela. Od tamtego czasu, jednym z g\\u0142\\u00f3wnych za\\u0142o\\u017ce\\u0144 jest \\u017c to, by wszyscy byli r\\u00f3wni wobec podejmowanych wsp\\u00f3lnie decyzji dotycz\\u0105cych tego, co robimy razem.<br/></p><p>Na tych w\\u0142a\\u015bnie zasadach powsta\\u0142 ju\\u017c istniej\\u0105cy statut stowarzyszenia Arte Unite. Nasz\\u0105 organizacj\\u0119 uda\\u0142o si\\u0119 za\\u0142o\\u017cy\\u0107 na wsi, kilka lat po tych wydarzeniach i w du\\u017cej cz\\u0119\\u015bci w oparciu ju\\u017c o innych nowych ludzi. Jednak wci\\u0105\\u017c nie mieli\\u015bmy swojego kawa\\u0142ka Ziemi, mimo tego, \\u017ce udawa\\u0142o nam si\\u0119 \\u017cy\\u0107 wsp\\u00f3lnie z dala od miasta. Dzia\\u0142o si\\u0119 du\\u017co, w pewnym okresie pojawi\\u0142y si\\u0119 nawet cztery konie. Grab\\u00f3wka, bo tak nazywa\\u0142a si\\u0119 wioska, w kt\\u00f3rej mieszkali\\u015bmy dzia\\u0142a\\u0142a ponad 10 lat. Samo stowarzyszenie Arte Unite z czasem, zosta\\u0142o przeniesione do Dziadowic, natomiast wiejska chata, \\u017cy\\u0142a nadal swoim w\\u0142asnym \\u017cyciem.<br/>Wtedy pojawi\\u0142 si\\u0119 Andrzej, weteran z Zieben Linden. Zaproponowa\\u0142 jeden budynek gospodarczy, kt\\u00f3ry da\\u0142oby si\\u0119 przerobi\\u0107 na dom, -no i spodoba\\u0142a mu si\\u0119 idea tworzenia miejsca w oparciu o wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107.<br/>Tak powsta\\u0142 Lubliniec.<br/>Z tym miejscem wi\\u0105\\u017cemy plany wsp\\u00f3lnego \\u017cycia w wi\\u0119kszej grupie os\\u00f3b. Dwa budynki i potencjalny domek na wielkim d\\u0119bie, daj\\u0105 nam mo\\u017cliwo\\u015b\\u0107 zaproszenia do tej inicjatywy jeszcze oko\\u0142o siedmiu os\\u00f3b<br/>Za\\u0142o\\u017cenia s\\u0105 takie, by by\\u0142 to dom jak najbardziej ekonomiczny z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalny. Nie mamy jeszcze takiej wiedzy i do\\u015bwiadczenia, by to zrealizowa\\u0107 w stu procentach, jednak jest to g\\u0142\\u00f3wny kierunek naszych dzia\\u0142a\\u0144 budowlanych.<br/>W tym budynku w niedalekiej przysz\\u0142o\\u015bci, chcemy tworzy\\u0107 r\\u00f3\\u017cne warsztaty. Na pocz\\u0105tku w oparciu o nasze umiej\\u0119tno\\u015bci : Joga, ceramika, rze\\u017aba w drewnie, Mo\\u017cliwe \\u017ce b\\u0119d\\u0105 te\\u017c zaj\\u0119cia z zakresu terapii ruchem, nauki \\u017cycia na wsi w spos\\u00f3b zmierzaj\\u0105cy do jak najwi\\u0119kszej niezale\\u017cno\\u015bci. Chcieliby\\u015bmy te\\u017c tworzy\\u0107 kolejne miejsca na terenach nie nale\\u017c\\u0105cych do prywatnych os\\u00f3b w oparciu o nasze pomys\\u0142y i nasz\\u0105 organizacj\\u0119.<br/></p><p>Wci\\u0105\\u017c szukamy ludzi, kt\\u00f3rzy czuli by si\\u0119 z nami dobrze i mieli na uwadze to, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci z tym zwi\\u0105zanej.<br/></p><p></p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": "", "spis_title": "", "spis": "<p></p><p>Oto szczeg\\u00f3\\u0142y prac z mocno szacunkow\\u0105 wycen\\u0105, w kolejno\\u015bci takiej, jak powinny by\\u0107 wykonane :<br/></p><p>Okna i drzwi 8000 z\\u0142 do 12 000 z\\u0142 w zale\\u017cno\\u015bci od materia\\u0142\\u00f3w.<br/></p><p>budowa \\u015bciany szklanej, wymiana okien 2 x w tym jedno dachowe, wymiana szyb 2 x wstawienie okien 4 x + drzwi 6 x<br/></p><p>(5 x drzwi + 7 okien ju\\u017c s\\u0105 wstawione)<br/></p><p>budowa schod\\u00f3w drewnianych 4000 z\\u0142 i ewentualnie schod\\u00f3w dodatkowych przeciwpo\\u017carowych z metalu w szklarni + 4000 z\\u0142<br/></p><p>Po\\u0142o\\u017cenie legar\\u00f3w na dolnej pod\\u0142odze + deski od spodu i od g\\u00f3ry na g\\u00f3rnej i dolnej pod\\u0142odze (materia\\u0142 i praca 8000 z\\u0142 )<br/></p><p>izolacje poziome na dw\\u00f3ch poziomach pod\\u0142ogi + izolacje niekt\\u00f3rych \\u015bcian z perlito betonu<br/></p><p>W oparciu o nasz\\u0105 maszyn\\u0119 do pianobetonu - 40 roboczogodzin dla dw\\u00f3ch os\\u00f3b + materia\\u0142 2000 zl (transport cementu i perlitu)<br/></p><p>8000 z\\u0142 - 12000 z\\u0142 Doko\\u0144czenie hydrauliki :<br/></p><p>zbudowanie grzejnik\\u00f3w p\\u0142aszczyznowych i pod\\u0142\\u0105czenie do systemu / parter i pi\\u0119tro<br/></p><p>pod\\u0142\\u0105czenie warsztatu (zlew do prac ceramicznych - zimna woda i odp\\u0142yw)<br/></p><p>Opcjonalnie - zamontowanie na dachu i pod\\u0142\\u0105czenie baterii solarnych na glikol do zbiornika (mo\\u017cna to zrobi\\u0107 r\\u00f3wnie\\u017c na drugim etapie budowy)<br/></p><p>rozdzielnia cieplej wody<br/></p><p>W razie konieczno\\u015bci / wymaga\\u0144 - opis projektowy ca\\u0142ego systemu.<br/></p><p>budowa i pod\\u0142\\u0105czenie suszarni do systemu (suszarnia jest na wod\\u0119)<br/></p><p>pod\\u0142\\u0105czenie grzejnika &quot;kurtyna powietrzna&quot; + grzejnik do suszenia drzewa<br/></p><p>Rynny i zabezpieczenia przeciw spadaj\\u0105cemu lodowi z dachu 3000 z\\u0142 razem z prac\\u0105. (tu opcjonalnie w gr\\u0119 wchodzi firma, kt\\u00f3ra si\\u0119 tym zajmuje)<br/></p><p>Wentylacja 3000 z\\u0142 (cz\\u0119\\u015bciowo jest ju\\u017c gotowa)<br/></p><p>Budowa \\u015bcianek dzia\\u0142owych 15 000 z\\u0142<br/></p><p>(kafelki w dw\\u00f3ch \\u0142azienkach i kuchni, lekkie \\u015bcianki z itongu + izolacja zbiornika, tynki gliniane wewn\\u0105trz budynku) po\\u0142ow\\u0119 kafelk\\u00f3w mamy.<br/></p><p>Elektryka 5000 z\\u0142 - 6000 z\\u0142<br/></p><p>po\\u0142o\\u017cenie kabli, gniazdek w 11stu pomieszczeniach (piwnica, szklarnia, antresole, pompy i grza\\u0142ki do hydrauliki) i pod\\u0142\\u0105czenie kabla 3 fazy do warsztatu<br/></p><p>W razie konieczno\\u015bci zrobienie projektu instalacji.<br/></p><p>Budowa kominka 4000 z\\u0142 praca i materia\\u0142y. Kominek jest spory - w pomieszczeniu g\\u0142\\u00f3wnym warsztatowym. (cz\\u0119\\u015b\\u0107 materia\\u0142\\u00f3w jest)<br/></p><p>barierka drewniana do balkonu 500 z\\u0142 (jest materia\\u0142 )<br/></p><p>Doko\\u0144czenie tynk\\u00f3w zewn\\u0119trznych i izolacji ze s\\u0142omy w dachu + tynk na tej izolacji 6000 z\\u0142<br/></p><p>W drugim etapie mo\\u017cna doda\\u0107 budow\\u0119 szklarni i studni g\\u0142\\u0119binowej jak r\\u00f3wnie\\u017c baterii solarnych\\u00a0<br/>szklarnia z przebudow\\u0105 stropu i wzmocnieniem konstrukcji oko\\u0142o 15000 z\\u0142<br/><br/> Kolektory s\\u0142oneczne na glikol 6000 z\\u0142\\u00a0<br/><br/><br/><br/>Studnia g\\u0142\\u0119binowa oko\\u0142o 5000 z\\u0142</p>", "spis_link": ""}	\N	3	2
39	f	2021-03-06 12:30:05.648164+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 8, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-06T11:24:30.775Z", "latest_revision_created_at": "2021-03-06T11:24:30.692Z", "live_revision": 38, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.", "earth": "<p><br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci, a przede wszystkim stworzenie podstaw do tego, by ka\\u017cdy m\\u00f3g\\u0142 mie\\u0107 r\\u00f3wne prawa do decydowania o swoim \\u017cyciu.<br/></p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/> Si\\u0142a umys\\u0142\\u00f3w wypranych przez propagand\\u0119 chaosu wsp\\u00f3\\u0142czesnej kultury, operuj\\u0105c strachem i przywi\\u0105zaniem prowadzi cz\\u0119sto do tego, \\u017ce za cen\\u0119 prze\\u017cycia, b\\u0105d\\u017a obietnicy raju, kupujemy pogl\\u0105dy kt\\u00f3re tworz\\u0105 nasz\\u0105 \\u015bwiadomo\\u015b\\u0107 i stajemy si\\u0119 w ten spos\\u00f3b niewolnikami system\\u00f3w ekonomicznych, spo\\u0142ecznych, politycznych i religijnych.<br/> Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra w ten spos\\u00f3b eliminuje z naszego \\u017cycia podstawy konsumpcjonizmu.<br/></p>", "wolna_ziemia": "<p>Inicjatywa maj\\u0105ca na celu zorganizowanie wsp\\u00f3lnego miejsca, w kt\\u00f3rym da\\u0142o by si\\u0119 tworzy\\u0107 \\u017cycie w oparciu o mo\\u017cliwo\\u015bci, kt\\u00f3re mo\\u017cemy stwarza\\u0107 sami dla siebie, rozpocz\\u0119\\u0142a si\\u0119 wiele lat temu, w wypo\\u017cyczonym domu pod Bydgoszcz\\u0105, gdzie w par\\u0119 os\\u00f3b postanowili\\u015bmy spr\\u00f3bowa\\u0107 \\u017cy\\u0107 razem. Ju\\u017c na samym pocz\\u0105tku potrzebne wsp\\u00f3lne decyzje by\\u0142y podejmowane w kr\\u0119gu jednog\\u0142o\\u015bnie za pomoc\\u0105 konsensusu.<br/>Plan by\\u0142 taki, by najpierw stworzy\\u0107 faktycznie istniej\\u0105c\\u0105 wsp\\u00f3lnot\\u0119, a potem w oparciu o to za\\u0142o\\u017cy\\u0107 organizacj\\u0119.<br/>Organizacja by\\u0142a nam niezb\\u0119dna do tego, by da\\u0142o si\\u0119 zrealizowa\\u0107 plan posiadania wsp\\u00f3lnej przestrzeni do \\u017cycia, w taki spos\\u00f3b, by nie by\\u0142o jednego w\\u0142a\\u015bciciela. Od tamtego czasu, za\\u0142o\\u017ceniem jest r\\u00f3wnie\\u017c to, by wszyscy byli r\\u00f3wni wobec podejmowanych wsp\\u00f3lnie decyzji dotycz\\u0105cych tego, co robimy razem.<br/></p><p>Na tych w\\u0142a\\u015bnie zasadach powsta\\u0142 ju\\u017c istniej\\u0105cy statut stowarzyszenia Arte Unite. Nasz\\u0105 organizacj\\u0119 uda\\u0142o si\\u0119 za\\u0142o\\u017cy\\u0107 na wsi, kilka lat po tych wydarzeniach i w du\\u017cej cz\\u0119\\u015bci w oparciu ju\\u017c o innych nowych ludzi. Jednak wci\\u0105\\u017c nie mieli\\u015bmy swojego kawa\\u0142ka Ziemi, mimo tego, \\u017ce udawa\\u0142o nam si\\u0119 \\u017cy\\u0107 wsp\\u00f3lnie z dala od miasta. Dzia\\u0142o si\\u0119 du\\u017co, w pewnym okresie pojawi\\u0142y si\\u0119 nawet cztery konie. Grab\\u00f3wka, bo tak nazywa\\u0142a si\\u0119 wioska, w kt\\u00f3rej mieszkali\\u015bmy dzia\\u0142a\\u0142a ponad 10 lat. Samo stowarzyszenie Arte Unite z czasem, zosta\\u0142o przeniesione do Dziadowic, natomiast wiejska chata, \\u017cy\\u0142a nadal swoim w\\u0142asnym \\u017cyciem.<br/>Wtedy pojawi\\u0142 si\\u0119 Andrzej, weteran z Zieben Linden. Zaproponowa\\u0142 jeden budynek gospodarczy, kt\\u00f3ry da\\u0142oby si\\u0119 przerobi\\u0107 na dom,  -no i spodoba\\u0142a mu si\\u0119 idea tworzenia miejsca w oparciu o wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107.<br/>Tak powsta\\u0142 Lubliniec.<br/>Z tym miejscem wi\\u0105\\u017cemy plany wsp\\u00f3lnego \\u017cycia w wi\\u0119kszej grupie os\\u00f3b. Dwa budynki i potencjalny domek na wielkim d\\u0119bie, daj\\u0105 nam mo\\u017cliwo\\u015b\\u0107 zaproszenia do tej inicjatywy jeszcze oko\\u0142o siedmiu os\\u00f3b<br/>Za\\u0142o\\u017cenia s\\u0105 takie, by by\\u0142 to dom jak najbardziej ekonomiczny z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalny. Nie mamy jeszcze takiej wiedzy i do\\u015bwiadczenia, by to zrealizowa\\u0107 w stu procentach, jednak jest to g\\u0142\\u00f3wny kierunek naszych dzia\\u0142a\\u0144 budowlanych.<br/>W tym budynku w niedalekiej przysz\\u0142o\\u015bci, chcemy tworzy\\u0107 r\\u00f3\\u017cne warsztaty. Na pocz\\u0105tku w oparciu o nasze umiej\\u0119tno\\u015bci : Joga, ceramika, rze\\u017aba w drewnie, Mo\\u017cliwe \\u017ce b\\u0119d\\u0105 te\\u017c zaj\\u0119cia z zakresu terapii ruchem, nauki \\u017cycia na wsi w spos\\u00f3b zmierzaj\\u0105cy do jak najwi\\u0119kszej niezale\\u017cno\\u015bci. Chcieliby\\u015bmy te\\u017c tworzy\\u0107 kolejne miejsca na terenach nie nale\\u017c\\u0105cych do prywatnych os\\u00f3b w oparciu o nasze pomys\\u0142y i nasz\\u0105 organizacj\\u0119.<br/></p><p>Wci\\u0105\\u017c szukamy ludzi, kt\\u00f3rzy czuli by si\\u0119 z nami dobrze i mieli na uwadze to, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci z tym zwi\\u0105zanej.<br/></p><p></p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": "", "spis_title": "", "spis": "<p></p><p>Oto szczeg\\u00f3\\u0142y prac z mocno szacunkow\\u0105 wycen\\u0105, w kolejno\\u015bci takiej, jak powinny by\\u0107 wykonane :<br/></p><p>Okna i drzwi 8000 z\\u0142 do 12 000 z\\u0142 w zale\\u017cno\\u015bci od materia\\u0142\\u00f3w.<br/></p><p>budowa \\u015bciany szklanej, wymiana okien 2 x w tym jedno dachowe, wymiana szyb 2 x wstawienie okien 4 x + drzwi 6 x<br/></p><p>(5 x drzwi + 7 okien ju\\u017c s\\u0105 wstawione)<br/></p><p>budowa schod\\u00f3w drewnianych 4000 z\\u0142 i ewentualnie schod\\u00f3w dodatkowych przeciwpo\\u017carowych z metalu w szklarni + 4000 z\\u0142<br/></p><p>Po\\u0142o\\u017cenie legar\\u00f3w na dolnej pod\\u0142odze + deski od spodu i od g\\u00f3ry na g\\u00f3rnej i dolnej pod\\u0142odze (materia\\u0142 i praca 8000 z\\u0142 )<br/></p><p>izolacje poziome na dw\\u00f3ch poziomach pod\\u0142ogi + izolacje niekt\\u00f3rych \\u015bcian z perlito betonu<br/></p><p>W oparciu o nasz\\u0105 maszyn\\u0119 do pianobetonu - 40 roboczogodzin dla dw\\u00f3ch os\\u00f3b + materia\\u0142 2000 zl (transport cementu i perlitu)<br/></p><p>8000 z\\u0142 - 12000 z\\u0142 Doko\\u0144czenie hydrauliki :<br/></p><p>zbudowanie grzejnik\\u00f3w p\\u0142aszczyznowych i pod\\u0142\\u0105czenie do systemu / parter i pi\\u0119tro<br/></p><p>pod\\u0142\\u0105czenie warsztatu (zlew do prac ceramicznych - zimna woda i odp\\u0142yw)<br/></p><p>Opcjonalnie - zamontowanie na dachu i pod\\u0142\\u0105czenie baterii solarnych na glikol do zbiornika (mo\\u017cna to zrobi\\u0107 r\\u00f3wnie\\u017c na drugim etapie budowy)<br/></p><p>rozdzielnia cieplej wody<br/></p><p>W razie konieczno\\u015bci / wymaga\\u0144 - opis projektowy ca\\u0142ego systemu.<br/></p><p>budowa i pod\\u0142\\u0105czenie suszarni do systemu (suszarnia jest na wod\\u0119)<br/></p><p>pod\\u0142\\u0105czenie grzejnika &quot;kurtyna powietrzna&quot; + grzejnik do suszenia drzewa<br/></p><p>Rynny i zabezpieczenia przeciw spadaj\\u0105cemu lodowi z dachu 3000 z\\u0142 razem z prac\\u0105. (tu opcjonalnie w gr\\u0119 wchodzi firma, kt\\u00f3ra si\\u0119 tym zajmuje)<br/></p><p>Wentylacja 3000 z\\u0142 (cz\\u0119\\u015bciowo jest ju\\u017c gotowa)<br/></p><p>Budowa \\u015bcianek dzia\\u0142owych 15 000 z\\u0142<br/></p><p>(kafelki w dw\\u00f3ch \\u0142azienkach i kuchni, lekkie \\u015bcianki z itongu + izolacja zbiornika, tynki gliniane wewn\\u0105trz budynku) po\\u0142ow\\u0119 kafelk\\u00f3w mamy.<br/></p><p>Elektryka 5000 z\\u0142 - 6000 z\\u0142<br/></p><p>po\\u0142o\\u017cenie kabli, gniazdek w 11stu pomieszczeniach (piwnica, szklarnia, antresole, pompy i grza\\u0142ki do hydrauliki) i pod\\u0142\\u0105czenie kabla 3 fazy do warsztatu<br/></p><p>W razie konieczno\\u015bci zrobienie projektu instalacji.<br/></p><p>Budowa kominka 4000 z\\u0142 praca i materia\\u0142y. Kominek jest spory - w pomieszczeniu g\\u0142\\u00f3wnym warsztatowym. (cz\\u0119\\u015b\\u0107 materia\\u0142\\u00f3w jest)<br/></p><p>barierka drewniana do balkonu 500 z\\u0142 (jest materia\\u0142 )<br/></p><p>Doko\\u0144czenie tynk\\u00f3w zewn\\u0119trznych i izolacji ze s\\u0142omy w dachu + tynk na tej izolacji 6000 z\\u0142<br/></p><p>W drugim etapie mo\\u017cna doda\\u0107 budow\\u0119 szklarni i studni g\\u0142\\u0119binowej jak r\\u00f3wnie\\u017c baterii solarnych\\u00a0<br/>szklarnia z przebudow\\u0105 stropu i wzmocnieniem konstrukcji oko\\u0142o 15000 z\\u0142<br/><br/> Kolektory s\\u0142oneczne na glikol 6000 z\\u0142\\u00a0<br/><br/><br/><br/>Studnia g\\u0142\\u0119binowa oko\\u0142o 5000 z\\u0142</p>", "spis_link": ""}	\N	3	2
2	f	2021-02-07 07:37:51.915945+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": true, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": "2021-02-07T06:27:14.685Z", "live_revision": null, "alias_of": null, "body": "<p>Ala ma kota</p><p>a kota ma al\\u0119...</p>"}	\N	3	1
24	f	2021-03-05 18:56:04.345209+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 6, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-05T17:53:43.144Z", "latest_revision_created_at": "2021-03-05T17:53:43.081Z", "live_revision": 23, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.", "earth": "<p><br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji, w kt\\u00f3rych wszyscy jeste\\u015bmy r\\u00f3wni wobec siebie, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, ale tylko tam, gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/></p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": ""}	\N	3	2
5	f	2021-02-07 15:16:55.14025+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-07T14:10:58.304Z", "latest_revision_created_at": "2021-02-07T14:10:58.225Z", "live_revision": 4, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>"}	\N	3	1
6	f	2021-02-07 15:24:43.009281+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-07T14:16:55.208Z", "latest_revision_created_at": "2021-02-07T14:16:55.140Z", "live_revision": 5, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>"}	\N	3	1
7	f	2021-02-14 23:05:22.729116+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-07T14:24:43.085Z", "latest_revision_created_at": "2021-02-07T14:24:43.009Z", "live_revision": 6, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p><b>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</b></p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach. <br/>Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych. <br/>Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze. <br/>Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107. <br/>Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>"}	\N	3	1
19	f	2021-03-05 13:47:57.204155+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 6, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-14T22:14:00.204Z", "latest_revision_created_at": "2021-02-14T22:14:00.145Z", "live_revision": 8, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": ""}	\N	3	2
32	f	2021-03-06 04:43:27.040379+01	{"pk": 12, "path": "000100010007", "depth": 3, "numchild": 0, "translation_key": "6cc979d2-c869-485e-8b7d-ac03371cacbf", "locale": 1, "title": "Do\\u0142\\u0105cz do nas", "draft_title": "Do\\u0142\\u0105cz do nas", "slug": "do\\u0142\\u0105cz-do-nas", "content_type": 46, "live": true, "has_unpublished_changes": false, "url_path": "/home/do\\u0142\\u0105cz-do-nas/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "opis": "<p>B\\u0105d\\u017amy w kontakcie. Wy\\u015blij nam sw\\u00f3j email a b\\u0119dziesz dostawia\\u0107 na bierz\\u0105co najnowsze wie\\u015bci.</p>", "link_text": "", "link": "", "pokaz_imie": false, "pokaz_email": true, "pokaz_jak_sie_dowiedziales": true, "pokaz_newsletter": true, "pokaz_napisz_do_nas": false}	\N	12	1
44	f	2021-03-07 12:33:46.274412+01	{"pk": 14, "path": "000100010009", "depth": 3, "numchild": 0, "translation_key": "7107f06c-87b8-403c-81f3-0a47265d680b", "locale": 1, "title": "Spis prac", "draft_title": "Spis prac", "slug": "spis-prac", "content_type": 48, "live": true, "has_unpublished_changes": false, "url_path": "/home/spis-prac/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "opis": "<p>Oto szczeg\\u00f3\\u0142y prac z mocno szacunkow\\u0105 wycen\\u0105, w kolejno\\u015bci takiej, jak powinny by\\u0107 wykonane :<br/></p><p>Okna i drzwi 8000 z\\u0142 do 12 000 z\\u0142 w zale\\u017cno\\u015bci od materia\\u0142\\u00f3w.<br/></p><p>budowa \\u015bciany szklanej, wymiana okien 2 x w tym jedno dachowe, wymiana szyb 2 x wstawienie okien 4 x + drzwi 6 x<br/></p><p>(5 x drzwi + 7 okien ju\\u017c s\\u0105 wstawione)<br/></p><p>budowa schod\\u00f3w drewnianych 4000 z\\u0142 i ewentualnie schod\\u00f3w dodatkowych przeciwpo\\u017carowych z metalu w szklarni + 4000 z\\u0142<br/></p><p>Po\\u0142o\\u017cenie legar\\u00f3w na dolnej pod\\u0142odze + deski od spodu i od g\\u00f3ry na g\\u00f3rnej i dolnej pod\\u0142odze (materia\\u0142 i praca 8000 z\\u0142 )<br/></p><p>izolacje poziome na dw\\u00f3ch poziomach pod\\u0142ogi + izolacje niekt\\u00f3rych \\u015bcian z perlito betonu<br/></p><p>W oparciu o nasz\\u0105 maszyn\\u0119 do pianobetonu - 40 roboczogodzin dla dw\\u00f3ch os\\u00f3b + materia\\u0142 2000 zl (transport cementu i perlitu)<br/></p><p>8000 z\\u0142 - 12000 z\\u0142 Doko\\u0144czenie hydrauliki :<br/></p><p>zbudowanie grzejnik\\u00f3w p\\u0142aszczyznowych i pod\\u0142\\u0105czenie do systemu / parter i pi\\u0119tro<br/></p><p>pod\\u0142\\u0105czenie warsztatu (zlew do prac ceramicznych - zimna woda i odp\\u0142yw)<br/></p><p>Opcjonalnie - zamontowanie na dachu i pod\\u0142\\u0105czenie baterii solarnych na glikol do zbiornika (mo\\u017cna to zrobi\\u0107 r\\u00f3wnie\\u017c na drugim etapie budowy)<br/></p><p>rozdzielnia cieplej wody<br/></p><p>W razie konieczno\\u015bci / wymaga\\u0144 - opis projektowy ca\\u0142ego systemu.<br/></p><p>budowa i pod\\u0142\\u0105czenie suszarni do systemu (suszarnia jest na wod\\u0119)<br/></p><p>pod\\u0142\\u0105czenie grzejnika &quot;kurtyna powietrzna&quot; + grzejnik do suszenia drzewa<br/></p><p>Rynny i zabezpieczenia przeciw spadaj\\u0105cemu lodowi z dachu 3000 z\\u0142 razem z prac\\u0105. (tu opcjonalnie w gr\\u0119 wchodzi firma, kt\\u00f3ra si\\u0119 tym zajmuje)<br/></p><p>Wentylacja 3000 z\\u0142 (cz\\u0119\\u015bciowo jest ju\\u017c gotowa)<br/></p><p>Budowa \\u015bcianek dzia\\u0142owych 15 000 z\\u0142<br/></p><p>(kafelki w dw\\u00f3ch \\u0142azienkach i kuchni, lekkie \\u015bcianki z itongu + izolacja zbiornika, tynki gliniane wewn\\u0105trz budynku) po\\u0142ow\\u0119 kafelk\\u00f3w mamy.<br/></p><p>Elektryka 5000 z\\u0142 - 6000 z\\u0142<br/></p><p>po\\u0142o\\u017cenie kabli, gniazdek w 11stu pomieszczeniach (piwnica, szklarnia, antresole, pompy i grza\\u0142ki do hydrauliki) i pod\\u0142\\u0105czenie kabla 3 fazy do warsztatu<br/></p><p>W razie konieczno\\u015bci zrobienie projektu instalacji.<br/></p><p>Budowa kominka 4000 z\\u0142 praca i materia\\u0142y. Kominek jest spory - w pomieszczeniu g\\u0142\\u00f3wnym warsztatowym. (cz\\u0119\\u015b\\u0107 materia\\u0142\\u00f3w jest)<br/></p><p>barierka drewniana do balkonu 500 z\\u0142 (jest materia\\u0142 )<br/></p><p>Doko\\u0144czenie tynk\\u00f3w zewn\\u0119trznych i izolacji ze s\\u0142omy w dachu + tynk na tej izolacji 6000 z\\u0142<br/></p><p>W drugim etapie mo\\u017cna doda\\u0107 budow\\u0119 szklarni i studni g\\u0142\\u0119binowej jak r\\u00f3wnie\\u017c baterii solarnych\\u00a0<br/>szklarnia z przebudow\\u0105 stropu i wzmocnieniem konstrukcji oko\\u0142o 15000 z\\u0142<br/><br/> Kolektory s\\u0142oneczne na glikol 6000 z\\u0142\\u00a0<br/><br/><br/><br/>Studnia g\\u0142\\u0119binowa oko\\u0142o 5000 z\\u0142</p>", "link_text": "", "link": ""}	\N	14	1
25	f	2021-03-05 18:59:00.332414+01	{"pk": 7, "path": "000100010002", "depth": 3, "numchild": 0, "translation_key": "ad7d4a29-49cc-4bbc-9cd5-a8fbeaaa3b04", "locale": 1, "title": "Misja", "draft_title": "Misja", "slug": "misja", "content_type": 42, "live": true, "has_unpublished_changes": false, "url_path": "/home/misja/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:05:29.731Z", "last_published_at": "2021-02-21T01:05:29.731Z", "latest_revision_created_at": "2021-02-21T01:05:29.671Z", "live_revision": 12, "alias_of": null, "opis": "<h2>Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka. Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.</h2>", "objasnienie": "<p>Ka\\u017cdy cz\\u0142owiek marzy o tym, by kszta\\u0142towa\\u0107 swoje \\u017cycie zgodnie z tym, co dla niego dobre. Jednak r\\u00f3\\u017cnorodno\\u015b\\u0107 pomys\\u0142\\u00f3w i rozwi\\u0105za\\u0144 na \\u015bwiecie, wci\\u0105\\u017c k\\u0142\\u00f3ci si\\u0119 ze sob\\u0105 i sobie zaprzecza. Mimo to, jako ludzie wci\\u0105\\u017c zmieniamy \\u015bwiat. Ka\\u017cdy z nas pragnie si\\u0119 tym zaj\\u0105\\u0107 jak najlepiej. Problem w tym, \\u017ce wci\\u0105\\u017c nie wiemy co to znaczy lepiej, a zw\\u0142aszcza lepiej dla ca\\u0142ego \\u017cycia na Ziemi, kt\\u00f3rego jeste\\u015bmy cz\\u0119\\u015bci\\u0105.<br/> Ewolucja dotar\\u0142a ju\\u017c do punktu, gdzie zmiana musi dotyczy\\u0107 nas samych. \\u015awiadomo\\u015b\\u0107, kt\\u00f3r\\u0105 zyskali\\u015bmy w ci\\u0105gu wiek\\u00f3w, pokazuje nam wyra\\u017anie, \\u017ce nie mo\\u017cemy ju\\u017c planowa\\u0107 i dzia\\u0142a\\u0107 w zakresie jednego pokolenia, a tym bardziej jednostkowo.<br/> Nasza organizacja ma na celu stwarzanie godnych warunk\\u00f3w do \\u017cycia i do samostanowienia o nim. Chcemy zmienia\\u0107 \\u015bwiat i relacje mi\\u0119dzy lud\\u017ami w nim panuj\\u0105ce. Dlatego do naszych projekt\\u00f3w, zapraszamy ludzi \\u015bwiadomych zagro\\u017cenia, jakie niesie obecny kierunek rozwoju cywilizacji.<br/><br/>  Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy. To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia. \\u015awiat konsumpcji doprowadzi\\u0142 nawet do sytuacji, gdzie mo\\u017cemy konsumowa\\u0107 czas i \\u017cycie innych ludzi wyznaczaj\\u0105c za nie cen\\u0119. Demokracja daje r\\u00f3wne prawa r\\u00f3wnie\\u017c g\\u0142upocie, je\\u015bli tylko da si\\u0119 j\\u0105 sprzeda\\u0107. Kiedy od dziecka motywacj\\u0119 wyznaczaj\\u0105 dwa bieguny: kara i nagroda, zysk i strata, kupno i sprzeda\\u017c, tworzymy \\u015bwiat rywalizacji i kariery, ludzi coraz bardziej sobie obcych i podatnych na w\\u0142adz\\u0119. Jest to upadek poni\\u017cej normalno\\u015bci, a prawda o tym mo\\u017ce wystraszy\\u0107. Dlatego boimy si\\u0119 jej i ukrywamy swoj\\u0105 natur\\u0119 wci\\u0105\\u017c nie mog\\u0105c jej odkry\\u0107.<br/><br/> Nie mamy potrzeby przeciwstawiania si\\u0119 jakiejkolwiek w\\u0142adzy, ale te\\u017c nie mamy potrzeby jej tworzy\\u0107, ani uczestniczy\\u0107 w przekazywaniu sobie tej zb\\u0119dnej dla wolno\\u015bci tradycji. Kiedy przemieniamy stare systemy warto\\u015bciowania w nowe, nie potrzebujemy ju\\u017c buntu. Nasze dzia\\u0142ania wywodz\\u0105 si\\u0119 z ekofilozofii i g\\u0142\\u0119bokiej ekologii oraz kultur plemiennych, gdzie Ziemia nigdy nie by\\u0142a w\\u0142asno\\u015bci\\u0105 cz\\u0142owieka. To my nale\\u017cymy do tej Planety. Jeste\\u015bmy jej opiekunami i stra\\u017cnikami. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 w spos\\u00f3b naturalny r\\u00f3wni wobec siebie. Dzi\\u0119ki temu ka\\u017cdy, kto pojawia si\\u0119 u nas, mo\\u017ce mie\\u0107 poczucie, \\u017ce uczestniczy w tym na r\\u00f3wnych prawach ze wszystkimi. Na tym poziomie r\\u00f3\\u017cnice miedzy nami staj\\u0105 si\\u0119 inspiracj\\u0105 do \\u0142\\u0105czenia r\\u00f3\\u017cnorodno\\u015bci w funkcjonalny zesp\\u00f3\\u0142, wtedy ka\\u017cdy staje si\\u0119 jednakowo potrzebny.<br/>U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie.<br/> W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra eliminuje z naszego \\u017cycia konsumpcjonizm jako warto\\u015b\\u0107. Jakakolwiek forma posiadania Ziemi, oparta o struktury w\\u0142adzy cz\\u0142owieka nad cz\\u0142owiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ide\\u0119 przestrzeni, gdzie ka\\u017cdy mo\\u017ce by\\u0107 r\\u00f3wny, zar\\u00f3wno wobec miejsca w kt\\u00f3rym \\u017cyje, jak i wobec innych ludzi.</p>", "komentarz_1": "<p>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Zak\\u0142adaj\\u0105c, \\u017ce dane miejsce ma w\\u0142a\\u015bciciela, to w\\u0142a\\u015bnie owy w\\u0142a\\u015bciciel mo\\u017ce zawsze zdecydowa\\u0107 ostatecznie i to jego decyzje s\\u0105 egzekwowane przez oficjalne i funkcjonuj\\u0105ce we wsp\\u00f3\\u0142czesnym spo\\u0142ecze\\u0144stwie prawo. W zwi\\u0105zku z tym, wszyscy inni ludzie znajduj\\u0105cy si\\u0119 w tym w\\u0142a\\u015bnie miejscu, niestety podlegaj\\u0105 decyzj\\u0105 jednej osoby: w\\u0142a\\u015bciciela. Ta sama w\\u0142adza, jest przekazywana z pokolenia na pokolenie za pomoc\\u0105 tak prostego narz\\u0119dzia jak dziedziczenie maj\\u0105tku -czyli posiadania terytorium. Jedn\\u0105 z g\\u0142\\u00f3wnych przyczyn powstania Ruchu Wolnej Ziemi jest przerwanie \\u0142a\\u0144cucha dziedziczenia i przekazywania sobie w\\u0142adzy i tym samym nap\\u0119dzania w ten spos\\u00f3b konsumpcjonizmu.</p>", "komentarz_2": "<p>U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra eliminuje z naszego \\u017cycia konsumpcjonizm jako warto\\u015b\\u0107. Jakakolwiek forma posiadania Ziemi, oparta o struktury w\\u0142adzy cz\\u0142owieka nad cz\\u0142owiekiem, lub jednych ludzi nad drugimi, z naszego punktu widzenia eliminuje ide\\u0119 przestrzeni, gdzie ka\\u017cdy mo\\u017ce by\\u0107 r\\u00f3wny, zar\\u00f3wno wobec miejsca w kt\\u00f3rym \\u017cyje, jak i wobec innych ludzi.</p>", "komentarz_3": "<p>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. Jeste\\u015bmy dzie\\u0107mi tej Planety i mo\\u017cemy bawi\\u0107 si\\u0119 w co chcemy i z kim chcemy, a kto chce mo\\u017ce bawi\\u0107 si\\u0119 z nami. Dlatego \\u017ceby unikn\\u0105\\u0107 przypadkowo\\u015bci ludzi bior\\u0105cych udzia\\u0142 we wsp\\u00f3lnym prze\\u017cywaniu, jeste\\u015bmy w mocy zaprosi\\u0107 wszystkich, kt\\u00f3rzy nie uto\\u017csamiaj\\u0105 si\\u0119 z \\u017cadnymi dogmatami, nie potrzebuj\\u0105 przyw\\u00f3dc\\u00f3w i chc\\u0105 wzi\\u0105\\u0107 udzia\\u0142 w tworzeniu rodziny opartej na plemiennym kr\\u0119gu. Kiedy rywalizacja zmienia si\\u0119 we wsp\\u00f3\\u0142prac\\u0119, nikt nie pod\\u0105\\u017ca ju\\u017c sam na przeciw przeszkodom i problemom, \\u0142atwiej jest pokonywa\\u0107 je razem. Nie mo\\u017cna ju\\u017c zmieni\\u0107 przesz\\u0142o\\u015bci, jednak po tylu latach eko i ludob\\u00f3jstwa, nadszed\\u0142 ju\\u017c czas, by zacz\\u0105\\u0107 spe\\u0142nia\\u0107 marzenia. Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.</p>", "podsumowanie": "<p>Tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych. Ruch Wolnej Ziemi jest inicjatyw\\u0105 spo\\u0142eczn\\u0105 skupion\\u0105 na wdra\\u017caniu w \\u017cycie sprawdzonych rozwi\\u0105za\\u0144 prawnych i organizacyjnych w celu \\u201euwalniania Ziemi\\u201d spod w\\u0142asno\\u015bci prywatnej. Zale\\u017cy nam na tworzeniu i rozwoju intencjonalnych spo\\u0142eczno\\u015bci wiejskich (tzw. ekowiosek, ekoosad), w kt\\u00f3rych decyzje dotycz\\u0105ce wszystkich podejmowane s\\u0105 wsp\\u00f3lnie (konsensus), i w kt\\u00f3rych my, ludzie, posiadamy r\\u00f3wne prawa zar\\u00f3wno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia. Uczestnikiem Ruchu mo\\u017ce by\\u0107 ka\\u017cda osoba, kt\\u00f3ra rozumie nasze za\\u0142o\\u017cenia i zgadza si\\u0119 z nimi. Ruch Wolnej Ziemi nie jest organizacj\\u0105 i nie prowadzi \\u017cadnej ewidencji przynale\\u017cno\\u015bci. Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144. Jednym z g\\u0142\\u00f3wnych za\\u0142o\\u017ce\\u0144 jest wsp\\u00f3lne decydowanie w sprawach, kt\\u00f3re dotycz\\u0105 Ruchu. Pozwala to miejscom w kt\\u00f3rych \\u017cyjemy, jak r\\u00f3wnie\\u017c nam wszystkim na rozw\\u00f3j i ewoluowanie zgodnie z jednog\\u0142o\\u015bnie ustalanym kierunkiem. Decyzje takie, mog\\u0105 zapada\\u0107 jedynie w kontakcie osobistym w kr\\u0119gu. Jedn\\u0105 z organizacji, kt\\u00f3re za\\u0142o\\u017cyli\\u015bmy, jest Zwi\\u0105zek Wolnej Ziemi. Oto jego podstawowe za\\u0142o\\u017cenia : . My, ludzie tworz\\u0105cy Zwi\\u0105zek Wolnej Ziemi, uznajemy si\\u0119 za opiekun\\u00f3w i stra\\u017cnik\\u00f3w Ziemi, a w szczeg\\u00f3lno\\u015bci teren\\u00f3w, na kt\\u00f3rych \\u017cyjemy. D\\u0105\\u017cymy do rozwoju \\u015bwiadomo\\u015bci poprzez odtworzenie naturalnej relacji cz\\u0142owieka z nasz\\u0105 Planet\\u0105. Przyjmujemy, \\u017ce b\\u0119d\\u0105c r\\u00f3wnymi wobec Ziemi, na kt\\u00f3rej \\u017cyjemy, jeste\\u015bmy r\\u00f3wnie\\u017c r\\u00f3wni wobec siebie i ca\\u0142ej Przyrody. O\\u015bwiadczamy, \\u017ce Ziemia i ca\\u0142e \\u017cycie na Ziemi stanowi\\u0105 dla nas najwi\\u0119ksz\\u0105 warto\\u015b\\u0107 przez sam fakt swego istnienia. Uznajemy, \\u017ce naszym zadaniem jest ochrona Ziemi, naszego Domu i Miejsca w Kosmosie. Uznajemy, \\u017ce to my, ludzie, nale\\u017cymy do Ziemi, a nie odwrotnie. Uznajemy, \\u017ce Ziemia ma takie samo prawo do istnienia i uszanowania jej bytu, jakie maj\\u0105 wszyscy ludzie. Pragniemy tworzy\\u0107 wsp\\u00f3lnoty, w kt\\u00f3rych b\\u0119dziemy razem \\u017cyli, wsp\\u00f3\\u0142pracowali ze sob\\u0105 i uczyli si\\u0119 od siebie dla dobra nas samych i ca\\u0142ego \\u017bycia. Pragniemy, aby wszyscy ludzie \\u017cyli w harmonii ze sob\\u0105 i z ca\\u0142\\u0105 Przyrod\\u0105, szanuj\\u0105c i chroni\\u0105c Ziemi\\u0119. Wszystkie decyzje podejmujemy przez consensus (jednog\\u0142o\\u015bnie), czyli sposoby \\u017cycia, ochrony ziemi i dalsze dzia\\u0142ania na terenie fundacji podlegaj\\u0105 decyzji kr\\u0119gu. Dzi\\u0119ki temu ka\\u017cdy, kto pojawi si\\u0119 u nas, b\\u0119dzie m\\u00f3g\\u0142 mie\\u0107 poczucie, \\u017ce ziemia jest naszym wsp\\u00f3lnym domem i razem mo\\u017cemy w tym uczestniczy\\u0107.</p>"}	\N	7	2
29	f	2021-03-05 19:24:31.601017+01	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "9f495cdd-69e2-4634-a111-b3c6ffc99ed9", "locale": 1, "title": "Ruch Wolnej Ziemi", "draft_title": "Ruch Wolnej Ziemi", "slug": "ruch-wolnej-ziemi", "content_type": 44, "live": true, "has_unpublished_changes": false, "url_path": "/home/ruch-wolnej-ziemi/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:35:56.738Z", "last_published_at": "2021-02-21T01:35:56.738Z", "latest_revision_created_at": "2021-02-21T01:35:56.701Z", "live_revision": 14, "alias_of": null, "opis": "<h2>Ruch Wolnej Ziemi jest inicjatyw\\u0105 spo\\u0142eczn\\u0105 skupion\\u0105 na wdra\\u017caniu w \\u017cycie sprawdzonych rozwi\\u0105za\\u0144 prawnych i organizacyjnych w celu uwalniania Ziemi spod w\\u0142asno\\u015bci prywatnej. Zale\\u017cy nam na tworzeniu i rozwoju intencjonalnych spo\\u0142eczno\\u015bci wiejskich (tzw. ekowiosek, ekoosad), w kt\\u00f3rych decyzje dotycz\\u0105ce wszystkich podejmowane s\\u0105 wsp\\u00f3lnie (przez konsensus), i w kt\\u00f3rych my ludzie, posiadamy r\\u00f3wne prawa zar\\u00f3wno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia.</h2>", "objasnienie": "<p>Uczestnikiem Ruchu mo\\u017ce by\\u0107 ka\\u017cda osoba, kt\\u00f3ra rozumie nasze za\\u0142o\\u017cenia i zgadza si\\u0119 z nimi. Ruch Wolnej Ziemi nie jest organizacj\\u0105 i nie prowadzi \\u017cadnej ewidencji przynale\\u017cno\\u015bci. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.</p>", "komentarz": "<p>Zal\\u0105\\u017cki Ruchu Wolnej Ziemi, istniej\\u0105ce w spos\\u00f3b faktyczny na terenie Polski zainicjowa\\u0142 Henry Schumacher, tworz\\u0105c w 2000 r w Bieszczadach Fundacj\\u0119 Plemi\\u0119 Sanu. Henry przyjecha\\u0142 do Polski w 1991 r odkrywaj\\u0105c przysz\\u0142e miejsce do \\u017cycia z grup\\u0105 skautingow\\u0105 Rodziny T\\u0119czy. W tamtym czasie szukali oni miejsca na europejskie Zgromadzenie Rainbow Family, kt\\u00f3re odby\\u0142o si\\u0119 w 1991 r w dolinie Tworylne. W 2001 r\\u00f3wnie\\u017c w Bieszczadach w Koma\\u0144czy pojawi\\u0142a si\\u0119 te\\u017c o\\u015bmioosobowa grupa T\\u0119czowy Kr\\u0105g, kt\\u00f3ra za cel postawi\\u0142a sobie za\\u0142o\\u017cenie organizacji, umo\\u017cliwiaj\\u0105cej posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci. Dzi\\u0119ki temu w 2004 r w Grab\\u00f3wce uda\\u0142o si\\u0119 zarejestrowa\\u0107 Stowarzyszenie Arte Unite, kt\\u00f3re w 2012 r otrzyma\\u0142o na wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107 budynek gospodarczy. T\\u0119czowy Kr\\u0105g zosta\\u0142 za\\u0142o\\u017cony pod Bydgoszcz\\u0105 przez ludzi z mi\\u0119dzynarodowego posthipisowskiego ruchu Rainbow Family - Rodzina T\\u0119czy. W tym samym czasie dzi\\u0119ki Arturowi Milickiemu powsta\\u0142a Fundacja dla Ziemi i Ludzi za\\u0142o\\u017cona w roku 2011. R\\u00f3wnie\\u017c dzi\\u0119ki Arturowi, powy\\u017csze inicjatywy uda\\u0142o si\\u0119 zebra\\u0107 i uruchomi\\u0107 jako Ruch Wolnej Ziemi. Wszystkie wymienione tutaj organizacje, mo\\u017cna uzna\\u0107 za inicjuj\\u0105ce Ruch Wolnej Ziemi ze wzgl\\u0119du na szczeg\\u00f3lne uwzgl\\u0119dnienie podejmowania w nich decyzji przez kosensus, czyli jednog\\u0142o\\u015bnie.</p>"}	\N	9	2
30	f	2021-03-05 19:27:47.88123+01	{"pk": 9, "path": "000100010004", "depth": 3, "numchild": 0, "translation_key": "9f495cdd-69e2-4634-a111-b3c6ffc99ed9", "locale": 1, "title": "Ruch Wolnej Ziemi", "draft_title": "Ruch Wolnej Ziemi", "slug": "ruch-wolnej-ziemi", "content_type": 44, "live": true, "has_unpublished_changes": false, "url_path": "/home/ruch-wolnej-ziemi/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T01:35:56.738Z", "last_published_at": "2021-03-05T18:24:31.705Z", "latest_revision_created_at": "2021-03-05T18:24:31.601Z", "live_revision": 29, "alias_of": null, "opis": "<h2>Ruch Wolnej Ziemi jest inicjatyw\\u0105 spo\\u0142eczn\\u0105 skupion\\u0105 na wdra\\u017caniu w \\u017cycie sprawdzonych rozwi\\u0105za\\u0144 prawnych i organizacyjnych w celu uwalniania Ziemi spod w\\u0142asno\\u015bci prywatnej. Zale\\u017cy nam na tworzeniu i rozwoju intencjonalnych spo\\u0142eczno\\u015bci wiejskich (tzw. ekowiosek, ekoosad), w kt\\u00f3rych decyzje dotycz\\u0105ce wszystkich podejmowane s\\u0105 wsp\\u00f3lnie (przez konsensus), i w kt\\u00f3rych my ludzie, posiadamy r\\u00f3wne prawa zar\\u00f3wno wobec Ziemi oraz siebie nawzajem. Tworzymy w tym celu osoby prawne tj. fundacje lub stowarzyszenia.</h2>", "objasnienie": "<p>Uczestnikiem Ruchu mo\\u017ce by\\u0107 ka\\u017cda osoba, kt\\u00f3ra rozumie nasze za\\u0142o\\u017cenia i zgadza si\\u0119 z nimi. Ruch Wolnej Ziemi nie jest organizacj\\u0105 i nie prowadzi \\u017cadnej ewidencji przynale\\u017cno\\u015bci. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.</p>", "komentarz": "<p> </p><p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.  Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/><br/>Zal\\u0105\\u017cki Ruchu Wolnej Ziemi, istniej\\u0105ce w spos\\u00f3b faktyczny na terenie Polski zainicjowa\\u0142 Henry Schumacher, tworz\\u0105c w 2000 r w Bieszczadach Fundacj\\u0119 Plemi\\u0119 Sanu. Henry przyjecha\\u0142 do Polski w 1991 r odkrywaj\\u0105c przysz\\u0142e miejsce do \\u017cycia z grup\\u0105 skautingow\\u0105 Rodziny T\\u0119czy. W tamtym czasie szukali oni miejsca na europejskie Zgromadzenie Rainbow Family, kt\\u00f3re odby\\u0142o si\\u0119 w 1991 r w dolinie Tworylne. W 2001 r\\u00f3wnie\\u017c w Bieszczadach w Koma\\u0144czy pojawi\\u0142a si\\u0119 te\\u017c o\\u015bmioosobowa grupa T\\u0119czowy Kr\\u0105g, kt\\u00f3ra za cel postawi\\u0142a sobie za\\u0142o\\u017cenie organizacji, umo\\u017cliwiaj\\u0105cej posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci. Dzi\\u0119ki temu w 2004 r w Grab\\u00f3wce uda\\u0142o si\\u0119 zarejestrowa\\u0107 Stowarzyszenie Arte Unite, kt\\u00f3re w 2012 r otrzyma\\u0142o na wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107 budynek gospodarczy. T\\u0119czowy Kr\\u0105g zosta\\u0142 za\\u0142o\\u017cony pod Bydgoszcz\\u0105 przez ludzi z mi\\u0119dzynarodowego posthipisowskiego ruchu Rainbow Family - Rodzina T\\u0119czy. W tym samym czasie dzi\\u0119ki Arturowi Milickiemu powsta\\u0142a Fundacja dla Ziemi i Ludzi za\\u0142o\\u017cona w roku 2011. R\\u00f3wnie\\u017c dzi\\u0119ki Arturowi, powy\\u017csze inicjatywy uda\\u0142o si\\u0119 zebra\\u0107 i uruchomi\\u0107 jako Ruch Wolnej Ziemi. Wszystkie wymienione tutaj organizacje, mo\\u017cna uzna\\u0107 za inicjuj\\u0105ce Ruch Wolnej Ziemi ze wzgl\\u0119du na szczeg\\u00f3lne uwzgl\\u0119dnienie podejmowania w nich decyzji przez kosensus, czyli jednog\\u0142o\\u015bnie.</p>"}	\N	9	2
33	f	2021-03-06 04:47:23.638419+01	{"pk": 13, "path": "000100010008", "depth": 3, "numchild": 0, "translation_key": "f62cf826-1c52-4a62-a3f0-9c13994c2655", "locale": 1, "title": "Pom\\u00f3\\u017c nam zmienia\\u0107 \\u015bwiat", "draft_title": "Pom\\u00f3\\u017c nam zmienia\\u0107 \\u015bwiat", "slug": "pom\\u00f3\\u017c-nam-zmienia\\u0107-\\u015bwiat", "content_type": 47, "live": true, "has_unpublished_changes": false, "url_path": "/home/pom\\u00f3\\u017c-nam-zmienia\\u0107-\\u015bwiat/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "alias_of": null, "opis": "", "link_text": "", "link": ""}	\N	13	1
20	f	2021-03-05 13:48:04.381805+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 6, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": true, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-02-14T22:14:00.204Z", "latest_revision_created_at": "2021-03-05T12:47:57.204Z", "live_revision": 8, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.Nasze zaanga\\u017cowanie si\\u0119 jest bardziej autentyczne, kiedy wynika z naturalnej ch\\u0119ci wewn\\u0119trznej realizacji, a nie z na\\u015bladowania, l\\u0119ku, albo pod\\u0105\\u017cania za przewodnikami b\\u0105d\\u017a za kimkolwiek.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/>Mianem \\u201eWolnej Ziemi\\u201d okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.</p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": ""}	\N	3	2
21	f	2021-03-05 13:56:00.969363+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 6, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-05T12:48:04.479Z", "latest_revision_created_at": "2021-03-05T12:48:04.381Z", "live_revision": 20, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Rozw\\u00f3j w kierunku integracji z ca\\u0142ym \\u017cyciem na Ziemi jest naturaln\\u0105 mo\\u017cliwo\\u015bci\\u0105 przetrwania ka\\u017cdego gatunku i wynika bezpo\\u015brednio z ewolucji \\u017cycia, dlatego jest te\\u017c naturalnym kierunkiem ewolucji \\u015bwiadomo\\u015bci cz\\u0142owieka.", "earth": "<p>Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.<br/><br/> Jeste\\u015bmy now\\u0105 spo\\u0142eczno\\u015bci\\u0105 w trakcie powstawania. Naszym celem jest zmienianie \\u015bwiata wsp\\u00f3\\u0142czesnej cywilizacji i panuj\\u0105cych w nim relacji poprzez propozycje odmiennych rozwi\\u0105za\\u0144 na \\u017cycie.<br/><br/>W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne.<br/>Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, ale tylko tam, gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem.</p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia. </p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/></p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": ""}	\N	3	2
27	f	2021-03-05 19:05:58.28394+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 6, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-05T18:00:35.222Z", "latest_revision_created_at": "2021-03-05T18:00:35.109Z", "live_revision": 26, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.", "earth": "<p><br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci, a przede wszystkim stworzenie podstaw do tego, by ka\\u017cdy m\\u00f3g\\u0142 mie\\u0107 r\\u00f3wne prawa do decydowania o swoim \\u017cyciu.<br/></p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/> Si\\u0142a umys\\u0142\\u00f3w wypranych przez propagand\\u0119 chaosu wsp\\u00f3\\u0142czesnej kultury, operuj\\u0105c strachem i przywi\\u0105zaniem prowadzi cz\\u0119sto do tego, \\u017ce za cen\\u0119 prze\\u017cycia, b\\u0105d\\u017a obietnicy raju, kupujemy pogl\\u0105dy kt\\u00f3re tworz\\u0105 nasz\\u0105 \\u015bwiadomo\\u015b\\u0107 i stajemy si\\u0119 w ten spos\\u00f3b niewolnikami system\\u00f3w ekonomicznych, spo\\u0142ecznych, politycznych i religijnych. <br/>Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>Pierwszy raz o tej inicjatywie, mo\\u017cna by\\u0142o si\\u0119 dowiedzie\\u0107 w Zielonych Brygadach (Sierpie\\u0144 2002), jako &quot;Projekt T\\u0119czowy Kr\\u0105g&quot;. Wtedy te\\u017c kontaktowali\\u015bmy si\\u0119 z sieci\\u0105 spo\\u0142eczno\\u015bci WAS (Wiejskie Aktywne Spo\\u0142eczno\\u015bci), z kt\\u00f3rych cz\\u0119\\u015b\\u0107 nale\\u017cy do GEN (Global Ecovillage Network). Jako spo\\u0142eczno\\u015b\\u0107 zg\\u0142osili\\u015bmy do WASu sw\\u00f3j udzia\\u0142 z ch\\u0119ci\\u0105 rozpowszechnienia naszego projektu na szersz\\u0105 skal\\u0119.<br/><br/>Obecnie tworzymy og\\u00f3lnopolski Ruch na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.<br/></p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": ""}	\N	3	2
37	f	2021-03-06 12:06:44.474271+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 8, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-06T10:33:48.323Z", "latest_revision_created_at": "2021-03-06T10:33:48.210Z", "live_revision": 34, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.", "earth": "<p><br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci, a przede wszystkim stworzenie podstaw do tego, by ka\\u017cdy m\\u00f3g\\u0142 mie\\u0107 r\\u00f3wne prawa do decydowania o swoim \\u017cyciu.<br/></p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/> Si\\u0142a umys\\u0142\\u00f3w wypranych przez propagand\\u0119 chaosu wsp\\u00f3\\u0142czesnej kultury, operuj\\u0105c strachem i przywi\\u0105zaniem prowadzi cz\\u0119sto do tego, \\u017ce za cen\\u0119 prze\\u017cycia, b\\u0105d\\u017a obietnicy raju, kupujemy pogl\\u0105dy kt\\u00f3re tworz\\u0105 nasz\\u0105 \\u015bwiadomo\\u015b\\u0107 i stajemy si\\u0119 w ten spos\\u00f3b niewolnikami system\\u00f3w ekonomicznych, spo\\u0142ecznych, politycznych i religijnych.<br/> Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra w ten spos\\u00f3b eliminuje z naszego \\u017cycia podstawy konsumpcjonizmu.<br/></p>", "wolna_ziemia": "<p>Inicjatywa maj\\u0105ca na celu zorganizowanie wsp\\u00f3lnego miejsca, w kt\\u00f3rym da\\u0142o by si\\u0119 tworzy\\u0107 \\u017cycie w oparciu o mo\\u017cliwo\\u015bci, kt\\u00f3re mo\\u017cemy stwarza\\u0107 sami dla siebie, rozpocz\\u0119\\u0142a si\\u0119 wiele lat temu, w wypo\\u017cyczonym domu pod Bydgoszcz\\u0105, gdzie w par\\u0119 os\\u00f3b postanowili\\u015bmy spr\\u00f3bowa\\u0107 \\u017cy\\u0107 razem. Ju\\u017c na samym pocz\\u0105tku potrzebne wsp\\u00f3lne decyzje by\\u0142y podejmowane w kr\\u0119gu jednog\\u0142o\\u015bnie za pomoc\\u0105 konsensusu.<br/>Plan by\\u0142 taki, by najpierw stworzy\\u0107 faktycznie istniej\\u0105c\\u0105 wsp\\u00f3lnot\\u0119, a potem w oparciu o to za\\u0142o\\u017cy\\u0107 organizacj\\u0119.<br/>Organizacja by\\u0142a nam niezb\\u0119dna do tego, by da\\u0142o si\\u0119 zrealizowa\\u0107 plan posiadania wsp\\u00f3lnego domu, w taki spos\\u00f3b, by nie mia\\u0142 on jednego w\\u0142a\\u015bciciela. Za\\u0142o\\u017ceniem by\\u0142o r\\u00f3wnie\\u017c to, by wszyscy byli r\\u00f3wni wobec podejmowanych wsp\\u00f3lnie decyzji dotycz\\u0105cych tego, co robimy razem.<br/></p><p>Na tych w\\u0142a\\u015bnie zasadach powsta\\u0142 ju\\u017c istniej\\u0105cy statut stowarzyszenia Arte Unite. Nasz\\u0105 organizacj\\u0119 uda\\u0142o si\\u0119 za\\u0142o\\u017cy\\u0107 kilka lat po tych wydarzeniach i w du\\u017cej cz\\u0119\\u015bci w oparciu ju\\u017c o innych, nowych ludzi. Jednak wci\\u0105\\u017c nie mieli\\u015bmy swojego kawa\\u0142ka Ziemi, mimo tego, \\u017ce udawa\\u0142o nam si\\u0119 \\u017cy\\u0107 wsp\\u00f3lnie z dala od miasta. Dzia\\u0142o si\\u0119 du\\u017co, w pewnym okresie pojawi\\u0142y si\\u0119 nawet cztery konie. Grab\\u00f3wka, bo tak nazywa\\u0142a si\\u0119 wioska, w kt\\u00f3rej mieszkali\\u015bmy dzia\\u0142a\\u0142a ponad 10 lat. Samo stowarzyszenie Arte Unite zosta\\u0142o przeniesione do Dziadowic, natomiast chata \\u017cy\\u0142a nadal swoim w\\u0142asnym \\u017cyciem.<br/>Wtedy pojawi\\u0142 si\\u0119 Andrzej, weteran z Zieben Linden. Zaproponowa\\u0142 jeden budynek gospodarczy, kt\\u00f3ry da\\u0142oby si\\u0119 przerobi\\u0107 na dom.. no i spodoba\\u0142a mu si\\u0119 idea tworzenia miejsca w oparciu o wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107.<br/>Tak powsta\\u0142 Lubliniec.<br/>Z tym miejscem wi\\u0105\\u017cemy plany wsp\\u00f3lnego \\u017cycia w wi\\u0119kszej grupie os\\u00f3b. Dwa budynki i potencjalny domek na wielkim d\\u0119bie, daj\\u0105 nam mo\\u017cliwo\\u015b\\u0107 zaproszenia do tej inicjatywy jeszcze oko\\u0142o siedmiu os\\u00f3b<br/>Za\\u0142o\\u017cenia s\\u0105 takie, by by\\u0142 to dom jak najbardziej ekonomiczny z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalny. Nie mamy jeszcze takiej wiedzy i do\\u015bwiadczenia, by to zrealizowa\\u0107 w stu procentach, jednak jest to g\\u0142\\u00f3wny kierunek naszych dzia\\u0142a\\u0144 budowlanych.<br/>W tym budynku w niedalekiej przysz\\u0142o\\u015bci, chcemy tworzy\\u0107 r\\u00f3\\u017cne warsztaty. Na pocz\\u0105tku w oparciu o nasze umiej\\u0119tno\\u015bci : Joga, ceramika, rze\\u017aba w drewnie, Mo\\u017cliwe \\u017ce b\\u0119d\\u0105 te\\u017c zaj\\u0119cia z zakresu terapii ruchem, nauki \\u017cycia na wsi w spos\\u00f3b zmierzaj\\u0105cy do jak najwi\\u0119kszej niezale\\u017cno\\u015bci. Chcieliby\\u015bmy te\\u017c tworzy\\u0107 kolejne miejsca na terenach nie nale\\u017c\\u0105cych do prywatnych os\\u00f3b w oparciu o nasze pomys\\u0142y i nasz\\u0105 organizacj\\u0119.<br/></p><p>Wci\\u0105\\u017c szukamy ludzi, kt\\u00f3rzy czuli by si\\u0119 z nami dobrze i mieli na uwadze to, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci z tym zwi\\u0105zanej.<br/></p><p></p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": "", "spis_title": "", "spis": "<p></p><p>Oto szczeg\\u00f3\\u0142y prac z mocno szacunkow\\u0105 wycen\\u0105, w kolejno\\u015bci takiej, jak powinny by\\u0107 wykonane :<br/></p><p>Okna i drzwi 8000 z\\u0142 do 12 000 z\\u0142 w zale\\u017cno\\u015bci od materia\\u0142\\u00f3w.<br/></p><p>budowa \\u015bciany szklanej, wymiana okien 2 x w tym jedno dachowe, wymiana szyb 2 x wstawienie okien 4 x + drzwi 6 x<br/></p><p>(5 x drzwi + 7 okien ju\\u017c s\\u0105 wstawione)<br/></p><p>budowa schod\\u00f3w drewnianych 4000 z\\u0142 i ewentualnie schod\\u00f3w dodatkowych przeciwpo\\u017carowych z metalu w szklarni + 4000 z\\u0142<br/></p><p>Po\\u0142o\\u017cenie legar\\u00f3w na dolnej pod\\u0142odze + deski od spodu i od g\\u00f3ry na g\\u00f3rnej i dolnej pod\\u0142odze (materia\\u0142 i praca 8000 z\\u0142 )<br/></p><p>izolacje poziome na dw\\u00f3ch poziomach pod\\u0142ogi + izolacje niekt\\u00f3rych \\u015bcian z perlito betonu<br/></p><p>W oparciu o nasz\\u0105 maszyn\\u0119 do pianobetonu - 40 roboczogodzin dla dw\\u00f3ch os\\u00f3b + materia\\u0142 2000 zl (transport cementu i perlitu)<br/></p><p>8000 z\\u0142 - 12000 z\\u0142 Doko\\u0144czenie hydrauliki :<br/></p><p>zbudowanie grzejnik\\u00f3w p\\u0142aszczyznowych i pod\\u0142\\u0105czenie do systemu / parter i pi\\u0119tro<br/></p><p>pod\\u0142\\u0105czenie warsztatu (zlew do prac ceramicznych - zimna woda i odp\\u0142yw)<br/></p><p>Opcjonalnie - zamontowanie na dachu i pod\\u0142\\u0105czenie baterii solarnych na glikol do zbiornika (mo\\u017cna to zrobi\\u0107 r\\u00f3wnie\\u017c na drugim etapie budowy)<br/></p><p>rozdzielnia cieplej wody<br/></p><p>W razie konieczno\\u015bci / wymaga\\u0144 - opis projektowy ca\\u0142ego systemu.<br/></p><p>budowa i pod\\u0142\\u0105czenie suszarni do systemu (suszarnia jest na wod\\u0119)<br/></p><p>pod\\u0142\\u0105czenie grzejnika &quot;kurtyna powietrzna&quot; + grzejnik do suszenia drzewa<br/></p><p>Rynny i zabezpieczenia przeciw spadaj\\u0105cemu lodowi z dachu 3000 z\\u0142 razem z prac\\u0105. (tu opcjonalnie w gr\\u0119 wchodzi firma, kt\\u00f3ra si\\u0119 tym zajmuje)<br/></p><p>Wentylacja 3000 z\\u0142 (cz\\u0119\\u015bciowo jest ju\\u017c gotowa)<br/></p><p>Budowa \\u015bcianek dzia\\u0142owych 15 000 z\\u0142<br/></p><p>(kafelki w dw\\u00f3ch \\u0142azienkach i kuchni, lekkie \\u015bcianki z itongu + izolacja zbiornika, tynki gliniane wewn\\u0105trz budynku) po\\u0142ow\\u0119 kafelk\\u00f3w mamy.<br/></p><p>Elektryka 5000 z\\u0142 - 6000 z\\u0142<br/></p><p>po\\u0142o\\u017cenie kabli, gniazdek w 11stu pomieszczeniach (piwnica, szklarnia, antresole, pompy i grza\\u0142ki do hydrauliki) i pod\\u0142\\u0105czenie kabla 3 fazy do warsztatu<br/></p><p>W razie konieczno\\u015bci zrobienie projektu instalacji.<br/></p><p>Budowa kominka 4000 z\\u0142 praca i materia\\u0142y. Kominek jest spory - w pomieszczeniu g\\u0142\\u00f3wnym warsztatowym. (cz\\u0119\\u015b\\u0107 materia\\u0142\\u00f3w jest)<br/></p><p>barierka drewniana do balkonu 500 z\\u0142 (jest materia\\u0142 )<br/></p><p>Doko\\u0144czenie tynk\\u00f3w zewn\\u0119trznych i izolacji ze s\\u0142omy w dachu + tynk na tej izolacji 6000 z\\u0142<br/></p><p>W drugim etapie mo\\u017cna doda\\u0107 budow\\u0119 szklarni i studni g\\u0142\\u0119binowej jak r\\u00f3wnie\\u017c baterii solarnych\\u00a0<br/>szklarnia z przebudow\\u0105 stropu i wzmocnieniem konstrukcji oko\\u0142o 15000 z\\u0142<br/><br/> Kolektory s\\u0142oneczne na glikol 6000 z\\u0142\\u00a0<br/><br/><br/><br/>Studnia g\\u0142\\u0119binowa oko\\u0142o 5000 z\\u0142</p>", "spis_link": ""}	\N	3	2
3	f	2021-02-07 07:38:02.722917+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 0, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": true, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": "2021-02-07T06:37:51.915Z", "live_revision": null, "alias_of": null, "body": "<p>Ala ma kota</p><p>a kota ma al\\u0119...</p>"}	\N	3	1
28	f	2021-03-05 19:18:45.87881+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 6, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-05T18:05:58.340Z", "latest_revision_created_at": "2021-03-05T18:05:58.283Z", "live_revision": 27, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.", "earth": "<p><br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci, a przede wszystkim stworzenie podstaw do tego, by ka\\u017cdy m\\u00f3g\\u0142 mie\\u0107 r\\u00f3wne prawa do decydowania o swoim \\u017cyciu.<br/></p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/> Si\\u0142a umys\\u0142\\u00f3w wypranych przez propagand\\u0119 chaosu wsp\\u00f3\\u0142czesnej kultury, operuj\\u0105c strachem i przywi\\u0105zaniem prowadzi cz\\u0119sto do tego, \\u017ce za cen\\u0119 prze\\u017cycia, b\\u0105d\\u017a obietnicy raju, kupujemy pogl\\u0105dy kt\\u00f3re tworz\\u0105 nasz\\u0105 \\u015bwiadomo\\u015b\\u0107 i stajemy si\\u0119 w ten spos\\u00f3b niewolnikami system\\u00f3w ekonomicznych, spo\\u0142ecznych, politycznych i religijnych.<br/> Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra w ten spos\\u00f3b eliminuje z naszego \\u017cycia podstawy konsumpcjonizmu.<br/></p>", "wolna_ziemia": "<p>Mianem Wolnej Ziemi okre\\u015blamy taki teren, kt\\u00f3ry jest u\\u017cytkowany i zarz\\u0105dzany wsp\\u00f3lnie, spo\\u0142ecznie, przez pewn\\u0105 grup\\u0119 ludzi na zasadach r\\u00f3wno\\u015bci i braterstwa w intencji dobra i korzy\\u015bci zar\\u00f3wno u\\u017cytkownik\\u00f3w tej ziemi, jej s\\u0105siad\\u00f3w, ca\\u0142ej ludzko\\u015bci, przyrody oraz przysz\\u0142ych pokole\\u0144.<br/>Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka. To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy..<br/>a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie.</p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": ""}	\N	3	2
40	f	2021-03-06 12:33:15.89697+01	{"pk": 3, "path": "00010001", "depth": 2, "numchild": 8, "translation_key": "4d760b9f-f4c3-407a-92e4-17f32be77507", "locale": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 3, "live": true, "has_unpublished_changes": false, "url_path": "/home/", "owner": null, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-07T06:38:02.740Z", "last_published_at": "2021-03-06T11:30:05.768Z", "latest_revision_created_at": "2021-03-06T11:30:05.648Z", "live_revision": 39, "alias_of": null, "long_name": "<p>Stowarzyszenie na rzecz uwalniania Ziemi spod w\\u0142asno\\u015bci indywidualnej, dla wsp\\u00f3lnot ekoosadowych.</p>", "quote": "Nasze czasy narzuci\\u0142y, konieczno\\u015b\\u0107 stworzenia filozofii, kt\\u00f3ra mia\\u0142aby charakter globalny i uniwersalny, ca\\u0142o\\u015bciowy i uzdrawiaj\\u0105cy.", "quote_author": "Henryk Skolimowski", "earth_head": "Chcieliby\\u015bmy, \\u017ceby wiedzieli o naszym projekcie wszyscy, kt\\u00f3rzy czuj\\u0105 Ziemi\\u0119 jako wsp\\u00f3lny dom ca\\u0142ej ludzko\\u015bci. Mamy na uwadze odtwarzanie naturalnej relacji mi\\u0119dzy cz\\u0142owiekiem a nasz\\u0105 planet\\u0105. Chcemy pokaza\\u0107, \\u017ce nie potrzebujemy posiada\\u0107 Ziemi, aby na niej \\u017cy\\u0107.", "earth": "<p><br/>B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W ten spos\\u00f3b tworzymy mo\\u017cliwo\\u015b\\u0107 rozbudowywania lokalnej struktury poziomej, z pomini\\u0119ciem w\\u0142adzy jednych ludzi nad drugimi.<br/> W oparciu o udane zapisy bia\\u0142ych plam na mapie prawa i zak\\u0142adanie organizacji o strukturach poziomych, mo\\u017cemy tworzy\\u0107 \\u015bwiat oparty o nasze zwyczaje, wewn\\u0105trz ka\\u017cdego demokratycznego pa\\u0144stwa i to zupe\\u0142nie legalne. Jednym z tych zwyczaj\\u00f3w jest wyeliminowanie w\\u0142asno\\u015bci prywatnej, tam gdzie mog\\u0142a by ona zaistnie\\u0107 jako w\\u0142adza cz\\u0142owieka nad cz\\u0142owiekiem. Umo\\u017cliwi nam to posiadanie ziemi jako wsp\\u00f3lnej i niepodzielnej w\\u0142asno\\u015bci, a przede wszystkim stworzenie podstaw do tego, by ka\\u017cdy m\\u00f3g\\u0142 mie\\u0107 r\\u00f3wne prawa do decydowania o swoim \\u017cyciu.<br/></p>", "star_head": "Krytycznym punktem w hierarchii warto\\u015bci wsp\\u00f3\\u0142czesnej cywilizacji, jest powszechne przekonanie, \\u017ce mo\\u017cemy mie\\u0107 ca\\u0142kowit\\u0105 w\\u0142adz\\u0119 nad tym co posiadamy.", "star": "<p>Opieraj\\u0105c si\\u0119 na tej jednej fa\\u0142szywej warto\\u015bci, ca\\u0142a \\u015bwiatowa ekonomia z koncernami i bankami, prowadzi ludzko\\u015b\\u0107 do samozag\\u0142ady.<br/>To w\\u0142a\\u015bnie z tego powodu, na naszej planecie bez przerwy trwa wojna mi\\u0119dzy cz\\u0142owiekiem a natur\\u0105. Niszcz\\u0105c dla kr\\u00f3tkowzrocznego, wyimaginowanego egoistycznego &quot;zysku&quot; kolejne gatunki i ich \\u015brodowisko, cywilizacja w tej chwili zmierza wprost do samounicestwienia.<br/> Si\\u0142a umys\\u0142\\u00f3w wypranych przez propagand\\u0119 chaosu wsp\\u00f3\\u0142czesnej kultury, operuj\\u0105c strachem i przywi\\u0105zaniem prowadzi cz\\u0119sto do tego, \\u017ce za cen\\u0119 prze\\u017cycia, b\\u0105d\\u017a obietnicy raju, kupujemy pogl\\u0105dy kt\\u00f3re tworz\\u0105 nasz\\u0105 \\u015bwiadomo\\u015b\\u0107 i stajemy si\\u0119 w ten spos\\u00f3b niewolnikami system\\u00f3w ekonomicznych, spo\\u0142ecznych, politycznych i religijnych.<br/> Na poziomie \\u015bwiadomo\\u015bci planetarnej, potrzebujemy zdecydowanego uderzenia w\\u0142a\\u015bnie w ten punkt i pokazania \\u015bwiatu, \\u017ce nie da si\\u0119 decydowa\\u0107 o czyim\\u015b \\u017cyciu, poprzez wymy\\u015blone prawo do jego zaw\\u0142aszczenia.</p>", "flame_head": "Odrzucaj\\u0105c ca\\u0142kowicie tak\\u0105 warto\\u015b\\u0107, jak posiadanie Ziemi, przywracamy jej w naszej \\u015bwiadomo\\u015bci, naturaln\\u0105 funkcj\\u0119 jednego z \\u017cywio\\u0142\\u00f3w. Ziemia, zar\\u00f3wno jako Planeta, jak i ta pod nogami postrzegana jako grunt, kt\\u00f3ry mo\\u017ce by\\u0107 czyj\\u0105\\u015b w\\u0142asno\\u015bci\\u0105, nigdy nie by\\u0142a i nie b\\u0119dzie nale\\u017ca\\u0142a do cz\\u0142owieka.", "flame": "<p>To my ludzie przynale\\u017cymy do Ziemi i odkrywaj\\u0105c to, mo\\u017cemy r\\u00f3wnie\\u017c odkry\\u0107 nasz\\u0105 faktyczn\\u0105 funkcj\\u0119 i misj\\u0119 tu gdzie jeste\\u015bmy.. a jeste\\u015bmy opiekunami i stra\\u017cnikami naszej Planety, naszego Domu i Miejsca w Kosmosie. Jako gatunek, ale r\\u00f3wnie\\u017c indywidualnie. U nas nikt nie jest &quot;u kogo\\u015b&quot;, wszyscy jeste\\u015bmy u siebie. Ziemia jest dla nas dobrem wsp\\u00f3lnym. B\\u0119d\\u0105c r\\u00f3wnymi wobec miejsca, w kt\\u00f3rym \\u017cyjemy, stajemy si\\u0119 r\\u00f3wni wobec siebie. W praktyce oznacza to, \\u017ce wszelkie nieruchomo\\u015bci pozostaj\\u0105ce w zarz\\u0105dzaniu organizacji, kt\\u00f3ra zajmuje si\\u0119 wsp\\u00f3ln\\u0105 Ziemi\\u0105 s\\u0105 od pocz\\u0105tku i na zawsze traktowane jako dobro wsp\\u00f3lne i nie mog\\u0105 by\\u0107 przez nikogo postrzegane jako w\\u0142asno\\u015b\\u0107. Jest to nasz\\u0105 drog\\u0105 do wolno\\u015bci, jak i sam\\u0105 wolno\\u015bci\\u0105, kt\\u00f3ra w ten spos\\u00f3b eliminuje z naszego \\u017cycia podstawy konsumpcjonizmu.<br/></p>", "wolna_ziemia": "<p>Inicjatywa maj\\u0105ca na celu zorganizowanie wsp\\u00f3lnego miejsca, w kt\\u00f3rym da\\u0142o by si\\u0119 tworzy\\u0107 \\u017cycie w oparciu o mo\\u017cliwo\\u015bci, kt\\u00f3re mo\\u017cemy stwarza\\u0107 sami dla siebie, rozpocz\\u0119\\u0142a si\\u0119 wiele lat temu, w wypo\\u017cyczonym domu pod Bydgoszcz\\u0105, gdzie w par\\u0119 os\\u00f3b postanowili\\u015bmy spr\\u00f3bowa\\u0107 \\u017cy\\u0107 razem. Ju\\u017c na samym pocz\\u0105tku potrzebne wsp\\u00f3lne decyzje by\\u0142y podejmowane w kr\\u0119gu jednog\\u0142o\\u015bnie za pomoc\\u0105 konsensusu.<br/>Plan by\\u0142 taki, by najpierw stworzy\\u0107 faktycznie istniej\\u0105c\\u0105 wsp\\u00f3lnot\\u0119, a potem w oparciu o to za\\u0142o\\u017cy\\u0107 organizacj\\u0119.<br/>Organizacja by\\u0142a nam niezb\\u0119dna do tego, by da\\u0142o si\\u0119 zrealizowa\\u0107 plan posiadania wsp\\u00f3lnej przestrzeni do \\u017cycia, w taki spos\\u00f3b, by nie by\\u0142o jednego w\\u0142a\\u015bciciela. Od tamtego czasu, jednym z g\\u0142\\u00f3wnych za\\u0142o\\u017ce\\u0144 jest \\u017c to, by wszyscy byli r\\u00f3wni wobec podejmowanych wsp\\u00f3lnie decyzji dotycz\\u0105cych tego, co robimy razem.<br/></p><p>Na tych w\\u0142a\\u015bnie zasadach powsta\\u0142 ju\\u017c istniej\\u0105cy statut stowarzyszenia Arte Unite. Nasz\\u0105 organizacj\\u0119 uda\\u0142o si\\u0119 za\\u0142o\\u017cy\\u0107 na wsi, kilka lat po tych wydarzeniach i w du\\u017cej cz\\u0119\\u015bci w oparciu ju\\u017c o innych nowych ludzi. Jednak wci\\u0105\\u017c nie mieli\\u015bmy swojego kawa\\u0142ka Ziemi, mimo tego, \\u017ce udawa\\u0142o nam si\\u0119 \\u017cy\\u0107 wsp\\u00f3lnie z dala od miasta. Dzia\\u0142o si\\u0119 du\\u017co, w pewnym okresie pojawi\\u0142y si\\u0119 nawet cztery konie. Grab\\u00f3wka, bo tak nazywa\\u0142a si\\u0119 wioska, w kt\\u00f3rej mieszkali\\u015bmy dzia\\u0142a\\u0142a ponad 10 lat. Samo stowarzyszenie Arte Unite z czasem, zosta\\u0142o przeniesione do Dziadowic, natomiast wiejska chata, \\u017cy\\u0142a nadal swoim w\\u0142asnym \\u017cyciem.<br/>Wtedy pojawi\\u0142 si\\u0119 Andrzej, weteran z Zieben Linden. Zaproponowa\\u0142 jeden budynek gospodarczy, kt\\u00f3ry da\\u0142oby si\\u0119 przerobi\\u0107 na dom, -no i spodoba\\u0142a mu si\\u0119 idea tworzenia miejsca w oparciu o wsp\\u00f3ln\\u0105 w\\u0142asno\\u015b\\u0107.<br/>Tak powsta\\u0142 Lubliniec.<br/>Z tym miejscem wi\\u0105\\u017cemy plany wsp\\u00f3lnego \\u017cycia w wi\\u0119kszej grupie os\\u00f3b. Dwa budynki i potencjalny domek na wielkim d\\u0119bie, daj\\u0105 nam mo\\u017cliwo\\u015b\\u0107 zaproszenia do tej inicjatywy jeszcze oko\\u0142o siedmiu os\\u00f3b<br/>Za\\u0142o\\u017cenia s\\u0105 takie, by by\\u0142 to dom jak najbardziej ekonomiczny z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalny. Nie mamy jeszcze takiej wiedzy i do\\u015bwiadczenia, by to zrealizowa\\u0107 w stu procentach, jednak jest to g\\u0142\\u00f3wny kierunek naszych dzia\\u0142a\\u0144 budowlanych.<br/>W tym budynku w niedalekiej przysz\\u0142o\\u015bci, chcemy tworzy\\u0107 r\\u00f3\\u017cne warsztaty. Na pocz\\u0105tku w oparciu o nasze umiej\\u0119tno\\u015bci : Joga, ceramika, rze\\u017aba w drewnie, Mo\\u017cliwe \\u017ce b\\u0119d\\u0105 te\\u017c zaj\\u0119cia z zakresu terapii ruchem, nauki \\u017cycia na wsi w spos\\u00f3b zmierzaj\\u0105cy do jak najwi\\u0119kszej niezale\\u017cno\\u015bci. Chcieliby\\u015bmy te\\u017c tworzy\\u0107 kolejne miejsca na terenach nie nale\\u017c\\u0105cych do prywatnych os\\u00f3b w oparciu o nasze pomys\\u0142y i nasz\\u0105 organizacj\\u0119.<br/></p><p>Wci\\u0105\\u017c szukamy ludzi, kt\\u00f3rzy czuli by si\\u0119 z nami dobrze i mieli na uwadze to, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci z tym zwi\\u0105zanej.<br/></p><p></p>", "stodola": "<p>Przedsi\\u0119wzi\\u0119cie nasze ma pokazywa\\u0107, \\u017ce da si\\u0119 tworzy\\u0107 wsp\\u00f3lnot\\u0119 na zasadach r\\u00f3wno\\u015bci, bez potrzeby posiadania miejsca w kt\\u00f3rym \\u017cyjemy. Ma to by\\u0107 te\\u017c przyk\\u0142ad, w\\u00a0jaki spos\\u00f3b mo\\u017cna d\\u0105\\u017cy\\u0107 do jak najbardziej ekonomicznego z punktu widzenia zu\\u017cycia energii, oraz jak najbardziej samowystarczalnego stylu \\u017cycia.Miejsce to, ma \\u0142\\u0105czy\\u0107 wszystkich, kt\\u00f3rzy mieli by na uwadze, jak istotna dla \\u017cycia na Ziemi jest idea r\\u00f3wno\\u015bci ludzi wobec miejsca w kt\\u00f3rym si\\u0119 znajduj\\u0105. Jak r\\u00f3wnie\\u017c to, \\u017ce Ziemia nie nale\\u017c\\u0105ca do pojedynczego w\\u0142a\\u015bciciela jest bardzo istotnym aspektem budowania wolno\\u015bci i \\u015bwiadomo\\u015bci b\\u0119d\\u0105cej alternatyw\\u0105 do konsumpcjonizmu i ch\\u0119ci zaw\\u0142aszczania sobie tego, co tak na prawd\\u0119 jest dobrem wsp\\u00f3lnym.</p>", "workshop": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.<br/> Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.<br/> Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.<br/> Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.<br/> Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "filozofia": "", "spis_title": "", "spis": "<p></p><p>Oto szczeg\\u00f3\\u0142y prac z mocno szacunkow\\u0105 wycen\\u0105, w kolejno\\u015bci takiej, jak powinny by\\u0107 wykonane :<br/></p><p>Okna i drzwi 8000 z\\u0142 do 12 000 z\\u0142 w zale\\u017cno\\u015bci od materia\\u0142\\u00f3w.<br/></p><p>budowa \\u015bciany szklanej, wymiana okien 2 x w tym jedno dachowe, wymiana szyb 2 x wstawienie okien 4 x + drzwi 6 x<br/></p><p>(5 x drzwi + 7 okien ju\\u017c s\\u0105 wstawione)<br/></p><p>budowa schod\\u00f3w drewnianych 4000 z\\u0142 i ewentualnie schod\\u00f3w dodatkowych przeciwpo\\u017carowych z metalu w szklarni + 4000 z\\u0142<br/></p><p>Po\\u0142o\\u017cenie legar\\u00f3w na dolnej pod\\u0142odze + deski od spodu i od g\\u00f3ry na g\\u00f3rnej i dolnej pod\\u0142odze (materia\\u0142 i praca 8000 z\\u0142 )<br/></p><p>izolacje poziome na dw\\u00f3ch poziomach pod\\u0142ogi + izolacje niekt\\u00f3rych \\u015bcian z perlito betonu<br/></p><p>W oparciu o nasz\\u0105 maszyn\\u0119 do pianobetonu - 40 roboczogodzin dla dw\\u00f3ch os\\u00f3b + materia\\u0142 2000 zl (transport cementu i perlitu)<br/></p><p>8000 z\\u0142 - 12000 z\\u0142 Doko\\u0144czenie hydrauliki :<br/></p><p>zbudowanie grzejnik\\u00f3w p\\u0142aszczyznowych i pod\\u0142\\u0105czenie do systemu / parter i pi\\u0119tro<br/></p><p>pod\\u0142\\u0105czenie warsztatu (zlew do prac ceramicznych - zimna woda i odp\\u0142yw)<br/></p><p>Opcjonalnie - zamontowanie na dachu i pod\\u0142\\u0105czenie baterii solarnych na glikol do zbiornika (mo\\u017cna to zrobi\\u0107 r\\u00f3wnie\\u017c na drugim etapie budowy)<br/></p><p>rozdzielnia cieplej wody<br/></p><p>W razie konieczno\\u015bci / wymaga\\u0144 - opis projektowy ca\\u0142ego systemu.<br/></p><p>budowa i pod\\u0142\\u0105czenie suszarni do systemu (suszarnia jest na wod\\u0119)<br/></p><p>pod\\u0142\\u0105czenie grzejnika &quot;kurtyna powietrzna&quot; + grzejnik do suszenia drzewa<br/></p><p>Rynny i zabezpieczenia przeciw spadaj\\u0105cemu lodowi z dachu 3000 z\\u0142 razem z prac\\u0105. (tu opcjonalnie w gr\\u0119 wchodzi firma, kt\\u00f3ra si\\u0119 tym zajmuje)<br/></p><p>Wentylacja 3000 z\\u0142 (cz\\u0119\\u015bciowo jest ju\\u017c gotowa)<br/></p><p>Budowa \\u015bcianek dzia\\u0142owych 15 000 z\\u0142<br/></p><p>(kafelki w dw\\u00f3ch \\u0142azienkach i kuchni, lekkie \\u015bcianki z itongu + izolacja zbiornika, tynki gliniane wewn\\u0105trz budynku) po\\u0142ow\\u0119 kafelk\\u00f3w mamy.<br/></p><p>Elektryka 5000 z\\u0142 - 6000 z\\u0142<br/></p><p>po\\u0142o\\u017cenie kabli, gniazdek w 11stu pomieszczeniach (piwnica, szklarnia, antresole, pompy i grza\\u0142ki do hydrauliki) i pod\\u0142\\u0105czenie kabla 3 fazy do warsztatu<br/></p><p>W razie konieczno\\u015bci zrobienie projektu instalacji.<br/></p><p>Budowa kominka 4000 z\\u0142 praca i materia\\u0142y. Kominek jest spory - w pomieszczeniu g\\u0142\\u00f3wnym warsztatowym. (cz\\u0119\\u015b\\u0107 materia\\u0142\\u00f3w jest)<br/></p><p>barierka drewniana do balkonu 500 z\\u0142 (jest materia\\u0142 )<br/></p><p>Doko\\u0144czenie tynk\\u00f3w zewn\\u0119trznych i izolacji ze s\\u0142omy w dachu + tynk na tej izolacji 6000 z\\u0142<br/></p><p>W drugim etapie mo\\u017cna doda\\u0107 budow\\u0119 szklarni i studni g\\u0142\\u0119binowej jak r\\u00f3wnie\\u017c baterii solarnych\\u00a0<br/>szklarnia z przebudow\\u0105 stropu i wzmocnieniem konstrukcji oko\\u0142o 15000 z\\u0142<br/><br/> Kolektory s\\u0142oneczne na glikol 6000 z\\u0142\\u00a0<br/><br/><br/><br/>Studnia g\\u0142\\u0119binowa oko\\u0142o 5000 z\\u0142</p>", "spis_link": ""}	\N	3	2
45	f	2021-03-07 13:14:02.597351+01	{"pk": 6, "path": "000100010001", "depth": 3, "numchild": 0, "translation_key": "af663334-acac-4c96-9aa7-48db95a271d6", "locale": 1, "title": "Warsztaty", "draft_title": "Warsztaty", "slug": "warsztaty", "content_type": 41, "live": true, "has_unpublished_changes": false, "url_path": "/home/warsztaty/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "locked_at": null, "locked_by": null, "first_published_at": "2021-02-21T00:20:43.836Z", "last_published_at": "2021-03-06T11:41:46.800Z", "latest_revision_created_at": "2021-03-06T11:41:46.703Z", "live_revision": 41, "alias_of": null, "opis": "<h2>Po ca\\u0142kowitym sko\\u0144czeniu Stodo\\u0142y, b\\u0119dziemy dysponowali:<br/>-Warsztatem ceramicznym (mamy ko\\u0142o garncarskie, szkliwa i piec gazowy do wypalania)<br/><br/> - Warsztatem rze\\u017aby w drewnie, szklarni\\u0105 i suszarni\\u0105 do warzyw, nie tylko produkowanych przez nas, ale r\\u00f3wnie\\u017c z zaprzyja\\u017anionych gospodarstw, o kt\\u00f3rych wiemy, \\u017ce uprawia si\\u0119 tam ro\\u015bliny w spos\\u00f3b ekologiczny. B\\u0119dziemy mogli si\\u0119 te\\u017c zaj\\u0105\\u0107 pakowaniem tych warzyw.<br/> - Sal\\u0105 do spotka\\u0144 na oko\\u0142o 20 os\\u00f3b, jak r\\u00f3wnie\\u017c zapleczem umo\\u017cliwiaj\\u0105cym, \\u017ceby takie osoby mog\\u0142y mieszka\\u0107 w Stodole przez tydzie\\u0144 lub dwa. Nie s\\u0105 to warunki hotelowe, poniewa\\u017c spa\\u0107 mo\\u017cna na drewnianej pod\\u0142odze i na antresoli, na materacach lub karimatach.</h2>", "zaproszenie": "<p>Z okazji za\\u0142o\\u017cenia przez Stowarzyszenie Arte Unite zbi\\u00f3rki spo\\u0142eczno\\u015bciowej, chcieli by\\u015bmy Was zaprosi\\u0107 do udzia\\u0142u w naszych warsztatach.\\u00a0<br/>Organizowali\\u015bmy ju\\u017c w Lubli\\u0144cu Jog\\u0119 wg Iyengara oraz nauk\\u0119 budowy izolacyjnych mat ze s\\u0142omy, w po\\u0142\\u0105czeniu z tynkowaniem glin\\u0105 \\u015bcian s\\u0142omianych.\\u00a0<br/>Obecnie mamy mo\\u017cliwo\\u015b\\u0107 przeprowadzenia zdalnie kilku ciekawych zaj\\u0119\\u0107, jak r\\u00f3wnie\\u017c ju\\u017c zaplanowanych warsztat\\u00f3w w naszej Stodole, ale dopiero jak sko\\u0144czymy j\\u0105 remontowa\\u0107 za zbierane w tej chwili pieni\\u0105dze.\\u00a0<br/>Uznali\\u015bmy, \\u017ce w tych ci\\u0119\\u017ckich czasach nie mo\\u017cna ju\\u017c na nic czeka\\u0107 i \\u017ce jest to dla nas ostatni moment na to, \\u017ceby by\\u0107 albo nie by\\u0107.\\u00a0<br/>Dlatego zach\\u0119camy serdecznie wszystkich, do aktywnego przy\\u0142\\u0105czenia si\\u0119 materialnie do inicjatywy, kt\\u00f3ra mo\\u017ce sta\\u0107 si\\u0119 nasz\\u0105 wsp\\u00f3ln\\u0105.</p>", "milicki": "<p><b>Artur Milicki</b><br/> (ur. 1976) \\u2013 jest praktykiem, nauczycielem rozwoju wewn\\u0119trznego i autoterapii. Studiowa\\u0142 zarz\\u0105dzanie i informatyk\\u0119 na UWM w Olsztynie (1996-2002) oraz kulturoznawstwo na UJ w Krakowie (1997-1998). By\\u0142 mnichem w tradycji wisznuizmu gaudia (1999-2004). Po zdj\\u0119ciu szafranu rozpocz\\u0105\\u0142 proces w\\u0142asnej psychoedukacji i autoterapii. Zosta\\u0142 wolnomy\\u015blicielem i aktywist\\u0105 spo\\u0142ecznym dzia\\u0142aj\\u0105cym na rzecz ruchu ekowioskowego. Wsp\\u00f3\\u0142tworzy\\u0142 \\u201cAkademi\\u0119 Bosej Stopy\\u201d (2012) oraz \\u201cRuch Wolnej Ziemi\\u201d (2017). Napisa\\u0142 ksi\\u0105\\u017ck\\u0119 \\u201cCz\\u0142owiek na Ziemi\\u201d (2014). Jest tat\\u0105 Lubomira (2008) i Anastazji (2009). Opr\\u00f3cz dzia\\u0142alno\\u015bci psychoedukacyjnej i spo\\u0142ecznej, zawodowo zajmuje si\\u0119 projektowaniem piec\\u00f3w i nauczaniem rzemios\\u0142a zdu\\u0144skiego.<br/>Jest konstruktorem, zdunem i nauczycielem zdu\\u0144stwa specjalizuj\\u0105cym si\\u0119 w projektowaniu i budowie wydajnych piec\\u00f3w akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji s\\u0142u\\u017c\\u0105cych do ogrzewania pomieszcze\\u0144 mieszkalnych i u\\u017cytkowych. Ponadto projektuje on i buduje r\\u00f3wnie\\u017c trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, w\\u0119dzarnie, grille.</p><h3><b>Kurs projektowania i budowy piec\\u00f3w (Kurs Zdu\\u0144ski - edycja VI - 2021)<br/><br/></b> Strona z opisem kursu: <a href=\\"https://pieceartura.pl/kurs-zdunski/\\">https://pieceartura.pl/kurs-zdunski/</a></h3><p>Umiej\\u0119tno\\u015bci jakie zdob\\u0119dzie osoba uczestnicz\\u0105ca</p><p>Po uko\\u0144czeniu tego kursu:</p><p>- b\\u0119dziesz dysponowa\\u0142 specjalistyczn\\u0105 wiedz\\u0119 z zakresu zdu\\u0144stwa, kt\\u00f3r\\u0105</p><p>mo\\u017cesz natychmiast wykorzysta\\u0107 w swojej praktyce budowy piec\\u00f3w,</p><p>- b\\u0119dziesz dysponowa\\u0142 wszystkimi narz\\u0119dziami (wzory, arkusze</p><p>kalkulacyjne, oprogramowanie) niezb\\u0119dnymi do samodzielnego</p><p>projektowania r\\u00f3\\u017cnych piec\\u00f3w,</p><p>- b\\u0119dziesz mia\\u0142 sta\\u0142\\u0105 mo\\u017cliwo\\u015b\\u0107 uczestniczenia w praktycznych</p><p>zdu\\u0144skich warsztatach szkoleniowych na kt\\u00f3rych od pocz\\u0105tku do ko\\u0144ca</p><p>budowane s\\u0105 r\\u00f3\\u017cnego rodzaju piece (opcjonalnie, na oddzielnie</p><p>okre\\u015blonych warunkach),</p><p>- b\\u0119dziesz m\\u00f3g\\u0142 odby\\u0107 praktyk\\u0119 i uczestniczy\\u0107 w realizacjach zlece\\u0144</p><p>jako pomocnik zduna, lub zdun (opcjonalnie, na indywidualnie</p><p>ustalonych warunkach).</p><h3><b><br/><br/></b>Proces Integracji Emocjonalnej jest metod\\u0105 samopoznania i autoterapii<br/><b> (9-tygodniowy kurs online)</b></h3><p>kt\\u00f3ra gwa\\u0142townie poszerza \\u015bwiadomo\\u015b\\u0107 w\\u0142asnych emocji, uczu\\u0107, my\\u015bli i</p><p>przekona\\u0144. W sk\\u0142ad Procesu wchodz\\u0105 specjalnie dobrane techniki</p><p>percepcyjno-wgl\\u0105dowe, s\\u0142u\\u017c\\u0105ce do intencjonalnej zmiany lub korekty</p><p>oprogramowania naszej pod\\u015bwiadomo\\u015bci, w taki spos\\u00f3b, aby nasze</p><p>wewn\\u0119trzne i zewn\\u0119trzne \\u017cycie przyj\\u0119\\u0142o jak najbardziej \\u017cyczliwy</p><p>wymiar, dla nas samych, dla naszych bliskich i dla ca\\u0142ego otoczenia, w</p><p>kt\\u00f3rym \\u017cyjemy.</p><p>umiej\\u0119tno\\u015bci jakie zdob\\u0119dzie osoba uczestnicz\\u0105ca</p><p>Wraz z post\\u0119pem w praktyce Procesu Integracji Emocjonalnej mo\\u017cemy</p><p>do\\u015bwiadczy\\u0107 nast\\u0119puj\\u0105cych przeobra\\u017ce\\u0144 i trwa\\u0142ych wewn\\u0119trznych</p><p>wzrost\\u00f3w:</p><p>wzrost poczucia pewno\\u015bci wobec w\\u0142asnych \\u017cyciowych priorytet\\u00f3w, cel\\u00f3w i wybor\\u00f3w,</p><p>wzrost \\u015bwiadomo\\u015bci i umiej\\u0119tno\\u015bci dostrzegania i do\\u015bwiadczania \\u017ar\\u00f3d\\u0142a</p><p>szcz\\u0119\\u015bcia i spe\\u0142nienia w sobie i zmniejszenie tym samym zale\\u017cno\\u015bci od</p><p>\\u015bwiata zewn\\u0119trznego, jako \\u017ar\\u00f3d\\u0142a satysfakcji,</p><p>wzrost mo\\u017cliwo\\u015bci stania si\\u0119 osob\\u0105 bardziej wspieraj\\u0105c\\u0105, wsp\\u00f3\\u0142czuj\\u0105c\\u0105,</p><p>motywuj\\u0105c\\u0105, cierpliw\\u0105, tolerancyjn\\u0105 i autentyczn\\u0105 wobec samej /samego</p><p>siebie oraz wobec innych,</p><p>wzrost umiej\\u0119tno\\u015bci do\\u015bwiadczania \\u017cycia w chwili obecnej poprzez</p><p>zmniejszenie negatywnego zaabsorbowania przesz\\u0142o\\u015bci\\u0105 lub przysz\\u0142o\\u015bci\\u0105,</p><p>wzrost w odczuwaniu wewn\\u0119trznej mocy sprawczej, kt\\u00f3r\\u0105 wcze\\u015bniej</p><p>projektowali\\u015bmy na \\u015bwiat,</p><p>wzrost wewn\\u0119trznej si\\u0142y, odporno\\u015bci na zranienie, poczucia w\\u0142asnej</p><p>warto\\u015bci, wewn\\u0119trznego spokoju, rado\\u015bci, spe\\u0142nienia i og\\u00f3lnego poziomu</p><p>\\u015bwiadomo\\u015bci.</p>", "beret": "<p><b>Adam Ma\\u0144czuk</b><br/> Jest programist\\u0105 z ponad 20-letnim do\\u015bwiadczeniem na ca\\u0142ym \\u015bwiecie (w tym w Dolinie Krzemowej). Specjalizuje si\\u0119 w Pythonie i Django. Pracowa\\u0142 jako lektor programowania na Uniwersytecie Warszawskim. Adam jest tak\\u017ce poet\\u0105 i \\u017ceglarzem.</p>", "monika": "<p><b>Monika Matis</b><br/><br/> Pracuje jako publicystka, t\\u0142umaczka, autorka tekst\\u00f3w \\u017ceglarskich oraz piel\\u0119gniarka. Posiada r\\u00f3\\u017cnorodne do\\u015bwiadczenia akademickie, od informatyki i mechaniki po studia medyczne. Z zami\\u0142owania zajmuje si\\u0119 nawigacj\\u0105 tradycyjn\\u0105, lub jak si\\u0119 j\\u0105 teraz okre\\u015bla \\u201cawaryjn\\u0105\\u201d. \\u017begluje od pi\\u0119tnastego roku \\u017cycia, zwykle na jachtach znajomych i przyjaci\\u00f3\\u0142, gdy potrzebowali kogo\\u015b znaj\\u0105cego si\\u0119 na rzeczy i do\\u015bwiadczonego aby pop\\u0142yn\\u0105\\u0107 gdzie\\u015b dalej. Prowadzi\\u0142a jachty na Ba\\u0142tyku, Morzu P\\u00f3\\u0142nocnym i \\u015ar\\u00f3dziemnym, Atlantyku, od Afryki po dalek\\u0105 Arktyk\\u0119. \\u017beglowa\\u0142a r\\u00f3wnie\\u017c samotnie i w ma\\u0142ych za\\u0142ogach.</p>", "comment": "<p><br/></p><p>Kuba Ferenczak<br/> Uczy\\u0142em si\\u0119 w Liceum Sztuk Plastycznych w Zakopanem w klasie o profilu rze\\u017abiarstwo w drewnie, zaj\\u0119cia jednak r\\u00f3wnie\\u017c obejmowa\\u0142y rze\\u017ab\\u0119 w glinie. Z ceramik\\u0105 i jej wypalaniem w piecu gazowym mia\\u0142em do czynienia w Grab\\u00f3wce, gdzie eksperymentowa\\u0142em z lokaln\\u0105 glin\\u0105. Dla kilku os\\u00f3b, wsp\\u00f3lnie z Ann\\u0105 Ovalle Correa prowadzi\\u0142em zaj\\u0119cia z ceramiki we wsi Dziadowice.<br/><br/>Warsztat ceramiczny dla os\\u00f3b doros\\u0142ych w oparciu o prac\\u0119 w glinie z pobliskich cegielni Panosz\\u00f3w i Gwo\\u017adziany.\\u00a0<br/>Obejmuje wiedz\\u0119, dotycz\\u0105c\\u0105 przygotowania gliny i podstawowych technik tworzenia prostych przedmiot\\u00f3w u\\u017cytkowych jak i podstaw rze\\u017aby w glinie.\\u00a0<br/></p><p>Po warsztatach, ka\\u017cdy b\\u0119dzie w stanie zrobi\\u0107 samodzielnie szkliwione naczynie, prost\\u0105 form\\u0119 w postaci rze\\u017aby, zabawk\\u0119, ozdob\\u0119 na prezent, lub inne przedmioty wg pomys\\u0142u uczestnika.\\u00a0<br/>Zdobyta wiedza, b\\u0119dzie dotyczy\\u0107 tego, jak przystosowa\\u0107 dowolny kszta\\u0142t do materia\\u0142u, z kt\\u00f3rego ma by\\u0107 zrobiony, czyli gliny. B\\u0119dziemy te\\u017c robi\\u0107 proste narz\\u0119dzia do kszta\\u0142towania form, kt\\u00f3re chcemy uzyska\\u0107.</p>"}	\N	6	2
\.


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_pageviewrestriction (id, password, page_id, restriction_type) FROM stdin;
\.


--
-- Data for Name: wagtailcore_pageviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_pageviewrestriction_groups (id, pageviewrestriction_id, group_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
2	localhost	80	t	3	
\.


--
-- Data for Name: wagtailcore_task; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_task (id, name, active, content_type_id) FROM stdin;
1	Moderators approval	t	2
\.


--
-- Data for Name: wagtailcore_taskstate; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_taskstate (id, status, started_at, finished_at, content_type_id, page_revision_id, task_id, workflow_state_id, finished_by_id, comment) FROM stdin;
\.


--
-- Data for Name: wagtailcore_workflow; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_workflow (id, name, active) FROM stdin;
1	Moderators approval	t
\.


--
-- Data for Name: wagtailcore_workflowpage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_workflowpage (page_id, workflow_id) FROM stdin;
1	1
\.


--
-- Data for Name: wagtailcore_workflowstate; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_workflowstate (id, status, created_at, current_task_state_id, page_id, requested_by_id, workflow_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_workflowtask; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailcore_workflowtask (id, sort_order, task_id, workflow_id) FROM stdin;
1	0	1	1
\.


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id, file_size, file_hash) FROM stdin;
\.


--
-- Data for Name: wagtaildocs_uploadeddocument; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtaildocs_uploadeddocument (id, file, uploaded_by_user_id) FROM stdin;
\.


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated, hash) FROM stdin;
\.


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
\.


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id, file_hash) FROM stdin;
\.


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailimages_rendition (id, file, width, height, focal_point_key, filter_spec, image_id) FROM stdin;
\.


--
-- Data for Name: wagtailimages_uploadedimage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailimages_uploadedimage (id, file, uploaded_by_user_id) FROM stdin;
\.


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id, preferred_language, current_time_zone, avatar) FROM stdin;
1	t	t	t	1			
2	t	t	t	2			
\.


--
-- Data for Name: warsztaty_warsztatypage; Type: TABLE DATA; Schema: public; Owner: beret
--

COPY public.warsztaty_warsztatypage (page_ptr_id, beret, comment, milicki, monika, opis, zaproszenie) FROM stdin;
6	<p><b>Adam Mańczuk</b><br/> Jest programistą z ponad 20-letnim doświadczeniem na całym świecie (w tym w Dolinie Krzemowej). Specjalizuje się w Pythonie i Django. Pracował jako lektor programowania na Uniwersytecie Warszawskim. Adam jest także poetą i żeglarzem.</p>	<p><br/></p><p>Kuba Ferenczak<br/> Uczyłem się w Liceum Sztuk Plastycznych w Zakopanem w klasie o profilu rzeźbiarstwo w drewnie, zajęcia jednak również obejmowały rzeźbę w glinie. Z ceramiką i jej wypalaniem w piecu gazowym miałem do czynienia w Grabówce, gdzie eksperymentowałem z lokalną gliną. Dla kilku osób, wspólnie z Anną Ovalle Correa prowadziłem zajęcia z ceramiki we wsi Dziadowice.<br/><br/>Warsztat ceramiczny dla osób dorosłych w oparciu o pracę w glinie z pobliskich cegielni Panoszów i Gwoździany. <br/>Obejmuje wiedzę, dotyczącą przygotowania gliny i podstawowych technik tworzenia prostych przedmiotów użytkowych jak i podstaw rzeźby w glinie. <br/></p><p>Po warsztatach, każdy będzie w stanie zrobić samodzielnie szkliwione naczynie, prostą formę w postaci rzeźby, zabawkę, ozdobę na prezent, lub inne przedmioty wg pomysłu uczestnika. <br/>Zdobyta wiedza, będzie dotyczyć tego, jak przystosować dowolny kształt do materiału, z którego ma być zrobiony, czyli gliny. Będziemy też robić proste narzędzia do kształtowania form, które chcemy uzyskać.</p>	<p><b>Artur Milicki</b><br/> (ur. 1976) – jest praktykiem, nauczycielem rozwoju wewnętrznego i autoterapii. Studiował zarządzanie i informatykę na UWM w Olsztynie (1996-2002) oraz kulturoznawstwo na UJ w Krakowie (1997-1998). Był mnichem w tradycji wisznuizmu gaudia (1999-2004). Po zdjęciu szafranu rozpoczął proces własnej psychoedukacji i autoterapii. Został wolnomyślicielem i aktywistą społecznym działającym na rzecz ruchu ekowioskowego. Współtworzył “Akademię Bosej Stopy” (2012) oraz “Ruch Wolnej Ziemi” (2017). Napisał książkę “Człowiek na Ziemi” (2014). Jest tatą Lubomira (2008) i Anastazji (2009). Oprócz działalności psychoedukacyjnej i społecznej, zawodowo zajmuje się projektowaniem pieców i nauczaniem rzemiosła zduńskiego.<br/>Jest konstruktorem, zdunem i nauczycielem zduństwa specjalizującym się w projektowaniu i budowie wydajnych pieców akumulacyjnych (rakietowych, komorowych) oraz kompleksowych instalacji służących do ogrzewania pomieszczeń mieszkalnych i użytkowych. Ponadto projektuje on i buduje również trzony kuchenne, piece chlebowe, piece do pizzy, suszarnie, sauny, wędzarnie, grille.</p><h3><b>Kurs projektowania i budowy pieców (Kurs Zduński - edycja VI - 2021)<br/><br/></b> Strona z opisem kursu: <a href="https://pieceartura.pl/kurs-zdunski/">https://pieceartura.pl/kurs-zdunski/</a></h3><p>Umiejętności jakie zdobędzie osoba uczestnicząca</p><p>Po ukończeniu tego kursu:</p><p>- będziesz dysponował specjalistyczną wiedzę z zakresu zduństwa, którą</p><p>możesz natychmiast wykorzystać w swojej praktyce budowy pieców,</p><p>- będziesz dysponował wszystkimi narzędziami (wzory, arkusze</p><p>kalkulacyjne, oprogramowanie) niezbędnymi do samodzielnego</p><p>projektowania różnych pieców,</p><p>- będziesz miał stałą możliwość uczestniczenia w praktycznych</p><p>zduńskich warsztatach szkoleniowych na których od początku do końca</p><p>budowane są różnego rodzaju piece (opcjonalnie, na oddzielnie</p><p>określonych warunkach),</p><p>- będziesz mógł odbyć praktykę i uczestniczyć w realizacjach zleceń</p><p>jako pomocnik zduna, lub zdun (opcjonalnie, na indywidualnie</p><p>ustalonych warunkach).</p><h3><b><br/><br/></b>Proces Integracji Emocjonalnej jest metodą samopoznania i autoterapii<br/><b> (9-tygodniowy kurs online)</b></h3><p>która gwałtownie poszerza świadomość własnych emocji, uczuć, myśli i</p><p>przekonań. W skład Procesu wchodzą specjalnie dobrane techniki</p><p>percepcyjno-wglądowe, służące do intencjonalnej zmiany lub korekty</p><p>oprogramowania naszej podświadomości, w taki sposób, aby nasze</p><p>wewnętrzne i zewnętrzne życie przyjęło jak najbardziej życzliwy</p><p>wymiar, dla nas samych, dla naszych bliskich i dla całego otoczenia, w</p><p>którym żyjemy.</p><p>umiejętności jakie zdobędzie osoba uczestnicząca</p><p>Wraz z postępem w praktyce Procesu Integracji Emocjonalnej możemy</p><p>doświadczyć następujących przeobrażeń i trwałych wewnętrznych</p><p>wzrostów:</p><p>wzrost poczucia pewności wobec własnych życiowych priorytetów, celów i wyborów,</p><p>wzrost świadomości i umiejętności dostrzegania i doświadczania źródła</p><p>szczęścia i spełnienia w sobie i zmniejszenie tym samym zależności od</p><p>świata zewnętrznego, jako źródła satysfakcji,</p><p>wzrost możliwości stania się osobą bardziej wspierającą, współczującą,</p><p>motywującą, cierpliwą, tolerancyjną i autentyczną wobec samej /samego</p><p>siebie oraz wobec innych,</p><p>wzrost umiejętności doświadczania życia w chwili obecnej poprzez</p><p>zmniejszenie negatywnego zaabsorbowania przeszłością lub przyszłością,</p><p>wzrost w odczuwaniu wewnętrznej mocy sprawczej, którą wcześniej</p><p>projektowaliśmy na świat,</p><p>wzrost wewnętrznej siły, odporności na zranienie, poczucia własnej</p><p>wartości, wewnętrznego spokoju, radości, spełnienia i ogólnego poziomu</p><p>świadomości.</p>	<p><b>Monika Matis</b><br/><br/> Pracuje jako publicystka, tłumaczka, autorka tekstów żeglarskich oraz pielęgniarka. Posiada różnorodne doświadczenia akademickie, od informatyki i mechaniki po studia medyczne. Z zamiłowania zajmuje się nawigacją tradycyjną, lub jak się ją teraz określa “awaryjną”. Żegluje od piętnastego roku życia, zwykle na jachtach znajomych i przyjaciół, gdy potrzebowali kogoś znającego się na rzeczy i doświadczonego aby popłynąć gdzieś dalej. Prowadziła jachty na Bałtyku, Morzu Północnym i Śródziemnym, Atlantyku, od Afryki po daleką Arktykę. Żeglowała również samotnie i w małych załogach.</p>	<h2>Po całkowitym skończeniu Stodoły, będziemy dysponowali:<br/>-Warsztatem ceramicznym (mamy koło garncarskie, szkliwa i piec gazowy do wypalania)<br/><br/> - Warsztatem rzeźby w drewnie, szklarnią i suszarnią do warzyw, nie tylko produkowanych przez nas, ale również z zaprzyjaźnionych gospodarstw, o których wiemy, że uprawia się tam rośliny w sposób ekologiczny. Będziemy mogli się też zająć pakowaniem tych warzyw.<br/> - Salą do spotkań na około 20 osób, jak również zapleczem umożliwiającym, żeby takie osoby mogły mieszkać w Stodole przez tydzień lub dwa. Nie są to warunki hotelowe, ponieważ spać można na drewnianej podłodze i na antresoli, na materacach lub karimatach.</h2>	<p>Z okazji założenia przez Stowarzyszenie Arte Unite zbiórki społecznościowej, chcieli byśmy Was zaprosić do udziału w naszych warsztatach. <br/>Organizowaliśmy już w Lublińcu Jogę wg Iyengara oraz naukę budowy izolacyjnych mat ze słomy, w połączeniu z tynkowaniem gliną ścian słomianych. <br/>Obecnie mamy możliwość przeprowadzenia zdalnie kilku ciekawych zajęć, jak również już zaplanowanych warsztatów w naszej Stodole, ale dopiero jak skończymy ją remontować za zbierane w tej chwili pieniądze. <br/>Uznaliśmy, że w tych ciężkich czasach nie można już na nic czekać i że jest to dla nas ostatni moment na to, żeby być albo nie być. <br/>Dlatego zachęcamy serdecznie wszystkich, do aktywnego przyłączenia się materialnie do inicjatywy, która może stać się naszą wspólną.</p>
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 18, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 191, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 2, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 48, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 178, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 1, false);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 1, false);


--
-- Name: wagtailadmin_admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailadmin_admin_id_seq', 1, false);


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_collection_id_seq', 1, true);


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_id_seq', 1, false);


--
-- Name: wagtailcore_groupapprovaltask_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_groupapprovaltask_groups_id_seq', 1, true);


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_groupcollectionpermission_id_seq', 12, true);


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_grouppagepermission_id_seq', 7, true);


--
-- Name: wagtailcore_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_locale_id_seq', 1, true);


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_page_id_seq', 14, true);


--
-- Name: wagtailcore_pagelogentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_pagelogentry_id_seq', 91, true);


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_pagerevision_id_seq', 46, true);


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_id_seq', 1, false);


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_site_id_seq', 2, true);


--
-- Name: wagtailcore_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_task_id_seq', 1, true);


--
-- Name: wagtailcore_taskstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_taskstate_id_seq', 1, false);


--
-- Name: wagtailcore_workflow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_workflow_id_seq', 1, true);


--
-- Name: wagtailcore_workflowstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_workflowstate_id_seq', 1, false);


--
-- Name: wagtailcore_workflowtask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailcore_workflowtask_id_seq', 1, true);


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtaildocs_document_id_seq', 1, false);


--
-- Name: wagtaildocs_uploadeddocument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtaildocs_uploadeddocument_id_seq', 1, false);


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailembeds_embed_id_seq', 1, false);


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailforms_formsubmission_id_seq', 1, false);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailimages_image_id_seq', 1, false);


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailimages_rendition_id_seq', 1, false);


--
-- Name: wagtailimages_uploadedimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailimages_uploadedimage_id_seq', 1, false);


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailredirects_redirect_id_seq', 1, false);


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailsearch_editorspick_id_seq', 1, false);


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailsearch_query_id_seq', 1, false);


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beret
--

SELECT pg_catalog.setval('public.wagtailusers_userprofile_id_seq', 2, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: contact_contactpage contact_contactpage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.contact_contactpage
    ADD CONSTRAINT contact_contactpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: dolacz_dolaczpage dolacz_dolaczpage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.dolacz_dolaczpage
    ADD CONSTRAINT dolacz_dolaczpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: dorzuc_dorzucpage dorzuc_dorzucpage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.dorzuc_dorzucpage
    ADD CONSTRAINT dorzuc_dorzucpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_homepage home_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: miejsca_miejscapage miejsca_miejscapage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.miejsca_miejscapage
    ADD CONSTRAINT miejsca_miejscapage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: misja_misjapage misja_misjapage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.misja_misjapage
    ADD CONSTRAINT misja_misjapage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: rwz_rwzpage rwz_rwzpage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.rwz_rwzpage
    ADD CONSTRAINT rwz_rwzpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: statut_statutpage statut_statutpage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.statut_statutpage
    ADD CONSTRAINT statut_statutpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: strona_stronapage strona_stronapage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.strona_stronapage
    ADD CONSTRAINT strona_stronapage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: wagtailadmin_admin wagtailadmin_admin_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailadmin_admin
    ADD CONSTRAINT wagtailadmin_admin_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collection wagtailcore_collection_path_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);


--
-- Name: wagtailcore_collection wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq UNIQUE (collectionviewrestriction_id, group_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collectionviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq UNIQUE (groupapprovaltask_id, group_id);


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapprovaltask_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapprovaltask_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupapprovaltask wagtailcore_groupapprovaltask_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask
    ADD CONSTRAINT wagtailcore_groupapprovaltask_pkey PRIMARY KEY (task_ptr_id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_locale wagtailcore_locale_language_code_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_locale
    ADD CONSTRAINT wagtailcore_locale_language_code_key UNIQUE (language_code);


--
-- Name: wagtailcore_locale wagtailcore_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_locale
    ADD CONSTRAINT wagtailcore_locale_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);


--
-- Name: wagtailcore_page wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page wagtailcore_page_translation_key_locale_id_9b041bad_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_translation_key_locale_id_9b041bad_uniq UNIQUE (translation_key, locale_id);


--
-- Name: wagtailcore_pagelogentry wagtailcore_pagelogentry_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagelogentry
    ADD CONSTRAINT wagtailcore_pagelogentry_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq UNIQUE (pageviewrestriction_id, group_id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site wagtailcore_site_hostname_port_2c626d70_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq UNIQUE (hostname, port);


--
-- Name: wagtailcore_site wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_task wagtailcore_task_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_task
    ADD CONSTRAINT wagtailcore_task_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflow wagtailcore_workflow_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflow
    ADD CONSTRAINT wagtailcore_workflow_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflowpage wagtailcore_workflowpage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflowpage_pkey PRIMARY KEY (page_id);


--
-- Name: wagtailcore_workflowstate wagtailcore_workflowstate_current_task_state_id_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_current_task_state_id_key UNIQUE (current_task_state_id);


--
-- Name: wagtailcore_workflowstate wagtailcore_workflowstate_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflowtask wagtailcore_workflowtask_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflowtask_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_workflowtask wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq UNIQUE (workflow_id, task_id);


--
-- Name: wagtaildocs_document wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_uploadeddocument wagtaildocs_uploadeddocument_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_uploadeddocument
    ADD CONSTRAINT wagtaildocs_uploadeddocument_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_hash_c9bd8c9a_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_hash_c9bd8c9a_uniq UNIQUE (hash);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailforms_formsubmission wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_image wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq UNIQUE (image_id, filter_spec, focal_point_key);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_uploadedimage wagtailimages_uploadedimage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_uploadedimage
    ADD CONSTRAINT wagtailimages_uploadedimage_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_old_path_site_id_783622d7_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq UNIQUE (old_path, site_id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq UNIQUE (query_id, date);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: warsztaty_warsztatypage warsztaty_warsztatypage_pkey; Type: CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.warsztaty_warsztatypage
    ADD CONSTRAINT warsztaty_warsztatypage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: unique_in_progress_workflow; Type: INDEX; Schema: public; Owner: beret
--

CREATE UNIQUE INDEX unique_in_progress_workflow ON public.wagtailcore_workflowstate USING btree (page_id) WHERE ((status)::text = ANY (ARRAY[('in_progress'::character varying)::text, ('needs_changes'::character varying)::text]));


--
-- Name: wagtailcore_collection_path_d848dc19_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_collection_path_d848dc19_like ON public.wagtailcore_collection USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_collectionview_collectionviewrestriction__47320efd; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_collectionview_collectionviewrestriction__47320efd ON public.wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id);


--
-- Name: wagtailcore_collectionviewrestriction_collection_id_761908ec; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_collectionviewrestriction_collection_id_761908ec ON public.wagtailcore_collectionviewrestriction USING btree (collection_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3 ON public.wagtailcore_collectionviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_groupapprovalt_groupapprovaltask_id_9a9255ea; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_groupapprovalt_groupapprovaltask_id_9a9255ea ON public.wagtailcore_groupapprovaltask_groups USING btree (groupapprovaltask_id);


--
-- Name: wagtailcore_groupapprovaltask_groups_group_id_2e64b61f; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_groupapprovaltask_groups_group_id_2e64b61f ON public.wagtailcore_groupapprovaltask_groups USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_collection_id_5423575a; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_groupcollectionpermission_collection_id_5423575a ON public.wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: wagtailcore_groupcollectionpermission_group_id_05d61460; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_groupcollectionpermission_group_id_05d61460 ON public.wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_permission_id_1b626275; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_groupcollectionpermission_permission_id_1b626275 ON public.wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: wagtailcore_grouppagepermission_group_id_fc07e671; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_grouppagepermission_group_id_fc07e671 ON public.wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: wagtailcore_grouppagepermission_page_id_710b114a; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_grouppagepermission_page_id_710b114a ON public.wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: wagtailcore_locale_language_code_03149338_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_locale_language_code_03149338_like ON public.wagtailcore_locale USING btree (language_code varchar_pattern_ops);


--
-- Name: wagtailcore_page_alias_of_id_12945502; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_alias_of_id_12945502 ON public.wagtailcore_page USING btree (alias_of_id);


--
-- Name: wagtailcore_page_content_type_id_c28424df; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_content_type_id_c28424df ON public.wagtailcore_page USING btree (content_type_id);


--
-- Name: wagtailcore_page_first_published_at_2b5dd637; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_first_published_at_2b5dd637 ON public.wagtailcore_page USING btree (first_published_at);


--
-- Name: wagtailcore_page_live_revision_id_930bd822; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_live_revision_id_930bd822 ON public.wagtailcore_page USING btree (live_revision_id);


--
-- Name: wagtailcore_page_locale_id_3c7e30a6; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_locale_id_3c7e30a6 ON public.wagtailcore_page USING btree (locale_id);


--
-- Name: wagtailcore_page_locked_by_id_bcb86245; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_locked_by_id_bcb86245 ON public.wagtailcore_page USING btree (locked_by_id);


--
-- Name: wagtailcore_page_owner_id_fbf7c332; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_owner_id_fbf7c332 ON public.wagtailcore_page USING btree (owner_id);


--
-- Name: wagtailcore_page_path_98eba2c8_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_path_98eba2c8_like ON public.wagtailcore_page USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_page_slug_e7c11b8f; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f ON public.wagtailcore_page USING btree (slug);


--
-- Name: wagtailcore_page_slug_e7c11b8f_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON public.wagtailcore_page USING btree (slug varchar_pattern_ops);


--
-- Name: wagtailcore_pagelogentry_action_c2408198; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_action_c2408198 ON public.wagtailcore_pagelogentry USING btree (action);


--
-- Name: wagtailcore_pagelogentry_action_c2408198_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_action_c2408198_like ON public.wagtailcore_pagelogentry USING btree (action varchar_pattern_ops);


--
-- Name: wagtailcore_pagelogentry_content_changed_99f27ade; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_content_changed_99f27ade ON public.wagtailcore_pagelogentry USING btree (content_changed);


--
-- Name: wagtailcore_pagelogentry_content_type_id_74e7708a; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_content_type_id_74e7708a ON public.wagtailcore_pagelogentry USING btree (content_type_id);


--
-- Name: wagtailcore_pagelogentry_page_id_8464e327; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_page_id_8464e327 ON public.wagtailcore_pagelogentry USING btree (page_id);


--
-- Name: wagtailcore_pagelogentry_revision_id_8043d103; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_revision_id_8043d103 ON public.wagtailcore_pagelogentry USING btree (revision_id);


--
-- Name: wagtailcore_pagelogentry_user_id_604ccfd8; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagelogentry_user_id_604ccfd8 ON public.wagtailcore_pagelogentry USING btree (user_id);


--
-- Name: wagtailcore_pagerevision_approved_go_live_at_e56afc67; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagerevision_approved_go_live_at_e56afc67 ON public.wagtailcore_pagerevision USING btree (approved_go_live_at);


--
-- Name: wagtailcore_pagerevision_created_at_66954e3b; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagerevision_created_at_66954e3b ON public.wagtailcore_pagerevision USING btree (created_at);


--
-- Name: wagtailcore_pagerevision_page_id_d421cc1d; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagerevision_page_id_d421cc1d ON public.wagtailcore_pagerevision USING btree (page_id);


--
-- Name: wagtailcore_pagerevision_submitted_for_moderation_c682e44c; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c ON public.wagtailcore_pagerevision USING btree (submitted_for_moderation);


--
-- Name: wagtailcore_pagerevision_user_id_2409d2f4; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pagerevision_user_id_2409d2f4 ON public.wagtailcore_pagerevision USING btree (user_id);


--
-- Name: wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a ON public.wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id);


--
-- Name: wagtailcore_pageviewrestriction_groups_group_id_6460f223; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pageviewrestriction_groups_group_id_6460f223 ON public.wagtailcore_pageviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_pageviewrestriction_page_id_15a8bea6; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_pageviewrestriction_page_id_15a8bea6 ON public.wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: wagtailcore_site_hostname_96b20b46; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_site_hostname_96b20b46 ON public.wagtailcore_site USING btree (hostname);


--
-- Name: wagtailcore_site_hostname_96b20b46_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON public.wagtailcore_site USING btree (hostname varchar_pattern_ops);


--
-- Name: wagtailcore_site_root_page_id_e02fb95c; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_site_root_page_id_e02fb95c ON public.wagtailcore_site USING btree (root_page_id);


--
-- Name: wagtailcore_task_content_type_id_249ab8ba; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_task_content_type_id_249ab8ba ON public.wagtailcore_task USING btree (content_type_id);


--
-- Name: wagtailcore_taskstate_content_type_id_0a758fdc; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_taskstate_content_type_id_0a758fdc ON public.wagtailcore_taskstate USING btree (content_type_id);


--
-- Name: wagtailcore_taskstate_finished_by_id_13f98229; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_taskstate_finished_by_id_13f98229 ON public.wagtailcore_taskstate USING btree (finished_by_id);


--
-- Name: wagtailcore_taskstate_page_revision_id_9f52c88e; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_taskstate_page_revision_id_9f52c88e ON public.wagtailcore_taskstate USING btree (page_revision_id);


--
-- Name: wagtailcore_taskstate_task_id_c3677c34; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_taskstate_task_id_c3677c34 ON public.wagtailcore_taskstate USING btree (task_id);


--
-- Name: wagtailcore_taskstate_workflow_state_id_9239a775; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_taskstate_workflow_state_id_9239a775 ON public.wagtailcore_taskstate USING btree (workflow_state_id);


--
-- Name: wagtailcore_workflowpage_workflow_id_56f56ff6; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_workflowpage_workflow_id_56f56ff6 ON public.wagtailcore_workflowpage USING btree (workflow_id);


--
-- Name: wagtailcore_workflowstate_page_id_6c962862; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_workflowstate_page_id_6c962862 ON public.wagtailcore_workflowstate USING btree (page_id);


--
-- Name: wagtailcore_workflowstate_requested_by_id_4090bca3; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_workflowstate_requested_by_id_4090bca3 ON public.wagtailcore_workflowstate USING btree (requested_by_id);


--
-- Name: wagtailcore_workflowstate_workflow_id_1f18378f; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_workflowstate_workflow_id_1f18378f ON public.wagtailcore_workflowstate USING btree (workflow_id);


--
-- Name: wagtailcore_workflowtask_task_id_ce7716fe; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_workflowtask_task_id_ce7716fe ON public.wagtailcore_workflowtask USING btree (task_id);


--
-- Name: wagtailcore_workflowtask_workflow_id_b9717175; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailcore_workflowtask_workflow_id_b9717175 ON public.wagtailcore_workflowtask USING btree (workflow_id);


--
-- Name: wagtaildocs_document_collection_id_23881625; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtaildocs_document_collection_id_23881625 ON public.wagtaildocs_document USING btree (collection_id);


--
-- Name: wagtaildocs_document_uploaded_by_user_id_17258b41; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtaildocs_document_uploaded_by_user_id_17258b41 ON public.wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd61a73; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd61a73 ON public.wagtaildocs_uploadeddocument USING btree (uploaded_by_user_id);


--
-- Name: wagtailembeds_embed_hash_c9bd8c9a_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailembeds_embed_hash_c9bd8c9a_like ON public.wagtailembeds_embed USING btree (hash varchar_pattern_ops);


--
-- Name: wagtailforms_formsubmission_page_id_e48e93e7; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailforms_formsubmission_page_id_e48e93e7 ON public.wagtailforms_formsubmission USING btree (page_id);


--
-- Name: wagtailimages_image_collection_id_c2f8af7e; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_image_collection_id_c2f8af7e ON public.wagtailimages_image USING btree (collection_id);


--
-- Name: wagtailimages_image_created_at_86fa6cd4; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_image_created_at_86fa6cd4 ON public.wagtailimages_image USING btree (created_at);


--
-- Name: wagtailimages_image_uploaded_by_user_id_5d73dc75; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_image_uploaded_by_user_id_5d73dc75 ON public.wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201 ON public.wagtailimages_rendition USING btree (filter_spec);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201_like ON public.wagtailimages_rendition USING btree (filter_spec varchar_pattern_ops);


--
-- Name: wagtailimages_rendition_image_id_3e1fd774; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_rendition_image_id_3e1fd774 ON public.wagtailimages_rendition USING btree (image_id);


--
-- Name: wagtailimages_uploadedimage_uploaded_by_user_id_85921689; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailimages_uploadedimage_uploaded_by_user_id_85921689 ON public.wagtailimages_uploadedimage USING btree (uploaded_by_user_id);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b ON public.wagtailredirects_redirect USING btree (old_path);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON public.wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: wagtailredirects_redirect_redirect_page_id_b5728a8f; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailredirects_redirect_redirect_page_id_b5728a8f ON public.wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: wagtailredirects_redirect_site_id_780a0e1e; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailredirects_redirect_site_id_780a0e1e ON public.wagtailredirects_redirect USING btree (site_id);


--
-- Name: wagtailsearch_editorspick_page_id_28cbc274; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailsearch_editorspick_page_id_28cbc274 ON public.wagtailsearch_editorspick USING btree (page_id);


--
-- Name: wagtailsearch_editorspick_query_id_c6eee4a0; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailsearch_editorspick_query_id_c6eee4a0 ON public.wagtailsearch_editorspick USING btree (query_id);


--
-- Name: wagtailsearch_query_query_string_e785ea07_like; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON public.wagtailsearch_query USING btree (query_string varchar_pattern_ops);


--
-- Name: wagtailsearch_querydailyhits_query_id_2185994b; Type: INDEX; Schema: public; Owner: beret
--

CREATE INDEX wagtailsearch_querydailyhits_query_id_2185994b ON public.wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contact_contactpage contact_contactpage_page_ptr_id_143c93c1_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.contact_contactpage
    ADD CONSTRAINT contact_contactpage_page_ptr_id_143c93c1_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dolacz_dolaczpage dolacz_dolaczpage_page_ptr_id_89aa9ce4_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.dolacz_dolaczpage
    ADD CONSTRAINT dolacz_dolaczpage_page_ptr_id_89aa9ce4_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dorzuc_dorzucpage dorzuc_dorzucpage_page_ptr_id_e4a7c525_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.dorzuc_dorzucpage
    ADD CONSTRAINT dorzuc_dorzucpage_page_ptr_id_e4a7c525_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_homepage home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.home_homepage
    ADD CONSTRAINT home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: miejsca_miejscapage miejsca_miejscapage_page_ptr_id_35a3584d_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.miejsca_miejscapage
    ADD CONSTRAINT miejsca_miejscapage_page_ptr_id_35a3584d_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: misja_misjapage misja_misjapage_page_ptr_id_58c92f38_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.misja_misjapage
    ADD CONSTRAINT misja_misjapage_page_ptr_id_58c92f38_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rwz_rwzpage rwz_rwzpage_page_ptr_id_9d95fd1c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.rwz_rwzpage
    ADD CONSTRAINT rwz_rwzpage_page_ptr_id_9d95fd1c_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: statut_statutpage statut_statutpage_page_ptr_id_364ba3f2_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.statut_statutpage
    ADD CONSTRAINT statut_statutpage_page_ptr_id_364ba3f2_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: strona_stronapage strona_stronapage_page_ptr_id_93295b3a_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.strona_stronapage
    ADD CONSTRAINT strona_stronapage_page_ptr_id_93295b3a_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collecti_collection_id_761908ec_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco FOREIGN KEY (collectionviewrestriction_id) REFERENCES public.wagtailcore_collectionviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupapprovaltask_groups wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco FOREIGN KEY (groupapprovaltask_id) REFERENCES public.wagtailcore_groupapprovaltask(task_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupapprovaltask wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupapprovaltask
    ADD CONSTRAINT wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco FOREIGN KEY (task_ptr_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_group_id_05d61460_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_page_id_710b114a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id FOREIGN KEY (alias_of_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_content_type_id_c28424df_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_live_revision_id_930bd822_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco FOREIGN KEY (live_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id FOREIGN KEY (locale_id) REFERENCES public.wagtailcore_locale(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_locked_by_id_bcb86245_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_locked_by_id_bcb86245_fk_auth_user_id FOREIGN KEY (locked_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagelogentry wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagelogentry
    ADD CONSTRAINT wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_group_id_6460f223_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco FOREIGN KEY (pageviewrestriction_id) REFERENCES public.wagtailcore_pageviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_site wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_task wagtailcore_task_content_type_id_249ab8ba_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_task
    ADD CONSTRAINT wagtailcore_task_content_type_id_249ab8ba_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco FOREIGN KEY (page_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco FOREIGN KEY (workflow_state_id) REFERENCES public.wagtailcore_workflowstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_finished_by_id_13f98229_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_finished_by_id_13f98229_fk_auth_user_id FOREIGN KEY (finished_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_taskstate wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id FOREIGN KEY (task_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowstate wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco FOREIGN KEY (current_task_state_id) REFERENCES public.wagtailcore_taskstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowstate wagtailcore_workflow_page_id_6c962862_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_page_id_6c962862_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowpage wagtailcore_workflow_page_id_81e7bab6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflow_page_id_81e7bab6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowstate wagtailcore_workflow_requested_by_id_4090bca3_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_requested_by_id_4090bca3_fk_auth_user FOREIGN KEY (requested_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowtask wagtailcore_workflow_task_id_ce7716fe_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflow_task_id_ce7716fe_fk_wagtailco FOREIGN KEY (task_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowstate wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowpage wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_workflowtask wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_collection_id_23881625_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_uploadeddocument wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtaildocs_uploadeddocument
    ADD CONSTRAINT wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailforms_formsubmission wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_rendition wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_uploadedimage wagtailimages_upload_uploaded_by_user_id_85921689_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailimages_uploadedimage
    ADD CONSTRAINT wagtailimages_upload_uploaded_by_user_id_85921689_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco FOREIGN KEY (redirect_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_site_id_780a0e1e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_page_id_28cbc274_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_queryd_query_id_2185994b_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: warsztaty_warsztatypage warsztaty_warsztatyp_page_ptr_id_e5a915c4_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: beret
--

ALTER TABLE ONLY public.warsztaty_warsztatypage
    ADD CONSTRAINT warsztaty_warsztatyp_page_ptr_id_e5a915c4_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

