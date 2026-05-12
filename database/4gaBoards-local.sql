--
-- PostgreSQL database dump
--

\restrict 4ss1f5f5oh37GksyrdcgyKxYSNyJ5Hz38lEe6pDkoi7k0bkzvR73cdmywX2aYDY

-- Dumped from database version 16.13
-- Dumped by pg_dump version 16.13

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

DROP INDEX IF EXISTS public.task_position_index;
DROP INDEX IF EXISTS public.task_membership_user_id_index;
DROP INDEX IF EXISTS public.task_card_id_index;
DROP INDEX IF EXISTS public.session_user_id_index;
DROP INDEX IF EXISTS public.session_remote_address_index;
DROP INDEX IF EXISTS public.project_membership_user_id_index;
DROP INDEX IF EXISTS public.project_manager_user_id_index;
DROP INDEX IF EXISTS public.notification_user_id_index;
DROP INDEX IF EXISTS public.notification_is_read_index;
DROP INDEX IF EXISTS public.notification_card_id_index;
DROP INDEX IF EXISTS public.notification_action_id_index;
DROP INDEX IF EXISTS public.mail_token_user_id_index;
DROP INDEX IF EXISTS public.mail_token_list_id_index;
DROP INDEX IF EXISTS public.mail_token_board_id_index;
DROP INDEX IF EXISTS public.list_position_index;
DROP INDEX IF EXISTS public.list_board_id_index;
DROP INDEX IF EXISTS public.label_board_id_index;
DROP INDEX IF EXISTS public.failed_auth_created_at_index;
DROP INDEX IF EXISTS public.failed_auth_attempted_identifier_remote_address_created_at_inde;
DROP INDEX IF EXISTS public.comment_card_id_index;
DROP INDEX IF EXISTS public.card_subscription_user_id_index;
DROP INDEX IF EXISTS public.card_position_index;
DROP INDEX IF EXISTS public.card_membership_user_id_index;
DROP INDEX IF EXISTS public.card_list_id_index;
DROP INDEX IF EXISTS public.card_label_label_id_index;
DROP INDEX IF EXISTS public.card_board_id_index;
DROP INDEX IF EXISTS public.board_project_id_index;
DROP INDEX IF EXISTS public.board_position_index;
DROP INDEX IF EXISTS public.board_membership_user_id_index;
DROP INDEX IF EXISTS public.attachment_card_id_index;
DROP INDEX IF EXISTS public.api_client_user_id_index;
DROP INDEX IF EXISTS public.api_client_client_id_index;
DROP INDEX IF EXISTS public.action_type_index;
DROP INDEX IF EXISTS public.action_card_id_index;
ALTER TABLE IF EXISTS ONLY public.user_account DROP CONSTRAINT IF EXISTS user_username_unique;
ALTER TABLE IF EXISTS ONLY public.user_prefs DROP CONSTRAINT IF EXISTS user_prefs_pkey;
ALTER TABLE IF EXISTS ONLY public.user_account DROP CONSTRAINT IF EXISTS user_email_unique;
ALTER TABLE IF EXISTS ONLY public.user_account DROP CONSTRAINT IF EXISTS user_account_pkey;
ALTER TABLE IF EXISTS ONLY public.task DROP CONSTRAINT IF EXISTS task_pkey;
ALTER TABLE IF EXISTS ONLY public.task_membership DROP CONSTRAINT IF EXISTS task_membership_task_id_user_id_unique;
ALTER TABLE IF EXISTS ONLY public.task_membership DROP CONSTRAINT IF EXISTS task_membership_pkey;
ALTER TABLE IF EXISTS ONLY public.session DROP CONSTRAINT IF EXISTS session_pkey;
ALTER TABLE IF EXISTS ONLY public.session DROP CONSTRAINT IF EXISTS session_access_token_unique;
ALTER TABLE IF EXISTS ONLY public.project DROP CONSTRAINT IF EXISTS project_pkey;
ALTER TABLE IF EXISTS ONLY public.project_membership DROP CONSTRAINT IF EXISTS project_membership_project_id_user_id_unique;
ALTER TABLE IF EXISTS ONLY public.project_membership DROP CONSTRAINT IF EXISTS project_membership_pkey;
ALTER TABLE IF EXISTS ONLY public.project_manager DROP CONSTRAINT IF EXISTS project_manager_project_id_user_id_unique;
ALTER TABLE IF EXISTS ONLY public.project_manager DROP CONSTRAINT IF EXISTS project_manager_pkey;
ALTER TABLE IF EXISTS ONLY public.notification DROP CONSTRAINT IF EXISTS notification_pkey;
ALTER TABLE IF EXISTS ONLY public.migration DROP CONSTRAINT IF EXISTS migration_pkey;
ALTER TABLE IF EXISTS ONLY public.migration_lock DROP CONSTRAINT IF EXISTS migration_lock_pkey;
ALTER TABLE IF EXISTS ONLY public.mail_token DROP CONSTRAINT IF EXISTS mail_token_token_unique;
ALTER TABLE IF EXISTS ONLY public.mail_token DROP CONSTRAINT IF EXISTS mail_token_pkey;
ALTER TABLE IF EXISTS ONLY public.list DROP CONSTRAINT IF EXISTS list_pkey;
ALTER TABLE IF EXISTS ONLY public.label DROP CONSTRAINT IF EXISTS label_pkey;
ALTER TABLE IF EXISTS ONLY public.failed_auth DROP CONSTRAINT IF EXISTS failed_auth_pkey;
ALTER TABLE IF EXISTS ONLY public.core DROP CONSTRAINT IF EXISTS core_pkey;
ALTER TABLE IF EXISTS ONLY public.comment DROP CONSTRAINT IF EXISTS comment_pkey;
ALTER TABLE IF EXISTS ONLY public.card_subscription DROP CONSTRAINT IF EXISTS card_subscription_pkey;
ALTER TABLE IF EXISTS ONLY public.card_subscription DROP CONSTRAINT IF EXISTS card_subscription_card_id_user_id_unique;
ALTER TABLE IF EXISTS ONLY public.card DROP CONSTRAINT IF EXISTS card_pkey;
ALTER TABLE IF EXISTS ONLY public.card_membership DROP CONSTRAINT IF EXISTS card_membership_pkey;
ALTER TABLE IF EXISTS ONLY public.card_membership DROP CONSTRAINT IF EXISTS card_membership_card_id_user_id_unique;
ALTER TABLE IF EXISTS ONLY public.card_label DROP CONSTRAINT IF EXISTS card_label_pkey;
ALTER TABLE IF EXISTS ONLY public.card_label DROP CONSTRAINT IF EXISTS card_label_card_id_label_id_unique;
ALTER TABLE IF EXISTS ONLY public.board DROP CONSTRAINT IF EXISTS board_pkey;
ALTER TABLE IF EXISTS ONLY public.board_membership DROP CONSTRAINT IF EXISTS board_membership_pkey;
ALTER TABLE IF EXISTS ONLY public.board_membership DROP CONSTRAINT IF EXISTS board_membership_board_id_user_id_unique;
ALTER TABLE IF EXISTS ONLY public.attachment DROP CONSTRAINT IF EXISTS attachment_pkey;
ALTER TABLE IF EXISTS ONLY public.archive DROP CONSTRAINT IF EXISTS archive_pkey;
ALTER TABLE IF EXISTS ONLY public.archive DROP CONSTRAINT IF EXISTS archive_from_model_original_record_id_unique;
ALTER TABLE IF EXISTS ONLY public.api_client DROP CONSTRAINT IF EXISTS api_client_pkey;
ALTER TABLE IF EXISTS ONLY public.api_client DROP CONSTRAINT IF EXISTS api_client_client_id_unique;
ALTER TABLE IF EXISTS ONLY public.action DROP CONSTRAINT IF EXISTS action_pkey;
ALTER TABLE IF EXISTS public.migration_lock ALTER COLUMN index DROP DEFAULT;
ALTER TABLE IF EXISTS public.migration ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS public.user_prefs;
DROP TABLE IF EXISTS public.user_account;
DROP TABLE IF EXISTS public.task_membership;
DROP TABLE IF EXISTS public.task;
DROP TABLE IF EXISTS public.session;
DROP TABLE IF EXISTS public.project_membership;
DROP TABLE IF EXISTS public.project_manager;
DROP TABLE IF EXISTS public.project;
DROP TABLE IF EXISTS public.notification;
DROP SEQUENCE IF EXISTS public.next_id_seq;
DROP SEQUENCE IF EXISTS public.migration_lock_index_seq;
DROP TABLE IF EXISTS public.migration_lock;
DROP SEQUENCE IF EXISTS public.migration_id_seq;
DROP TABLE IF EXISTS public.migration;
DROP TABLE IF EXISTS public.mail_token;
DROP TABLE IF EXISTS public.list;
DROP TABLE IF EXISTS public.label;
DROP TABLE IF EXISTS public.failed_auth;
DROP TABLE IF EXISTS public.core;
DROP TABLE IF EXISTS public.comment;
DROP TABLE IF EXISTS public.card_subscription;
DROP TABLE IF EXISTS public.card_membership;
DROP TABLE IF EXISTS public.card_label;
DROP TABLE IF EXISTS public.card;
DROP TABLE IF EXISTS public.board_membership;
DROP TABLE IF EXISTS public.board;
DROP TABLE IF EXISTS public.attachment;
DROP TABLE IF EXISTS public.archive;
DROP TABLE IF EXISTS public.api_client;
DROP TABLE IF EXISTS public.action;
DROP FUNCTION IF EXISTS public.next_id(OUT id bigint);
--
-- Name: next_id(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.next_id(OUT id bigint) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
      DECLARE
        shard INT := 1;
        epoch BIGINT := 1567191600000;
        sequence BIGINT;
        milliseconds BIGINT;
      BEGIN
        SELECT nextval('next_id_seq') % 1024 INTO sequence;
        SELECT FLOOR(EXTRACT(EPOCH FROM clock_timestamp()) * 1000) INTO milliseconds;
        id := (milliseconds - epoch) << 23;
        id := id | (shard << 10);
        id := id | (sequence);
      END;
    $$;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: action; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.action (
    id bigint DEFAULT public.next_id() NOT NULL,
    card_id bigint,
    user_id bigint NOT NULL,
    type text NOT NULL,
    data jsonb NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by_id bigint NOT NULL,
    scope character varying(255) DEFAULT 'card'::character varying NOT NULL,
    board_id bigint,
    project_id bigint,
    list_id bigint,
    attachment_id bigint,
    task_id bigint,
    comment_id bigint,
    user_account_id bigint,
    core_id bigint DEFAULT '0'::bigint,
    duplicate_of_id bigint
);


--
-- Name: api_client; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.api_client (
    id bigint DEFAULT public.next_id() NOT NULL,
    name text NOT NULL,
    label text NOT NULL,
    client_id text NOT NULL,
    client_secret text NOT NULL,
    permissions jsonb DEFAULT '[]'::jsonb NOT NULL,
    user_id bigint,
    last_used_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


--
-- Name: archive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.archive (
    id bigint DEFAULT public.next_id() NOT NULL,
    from_model text NOT NULL,
    original_record_id bigint NOT NULL,
    original_record json NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: attachment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.attachment (
    id bigint DEFAULT public.next_id() NOT NULL,
    card_id bigint NOT NULL,
    created_by_id bigint NOT NULL,
    dirname text NOT NULL,
    filename text NOT NULL,
    name text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    image jsonb,
    updated_by_id bigint
);


--
-- Name: board; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.board (
    id bigint DEFAULT public.next_id() NOT NULL,
    project_id bigint NOT NULL,
    "position" double precision NOT NULL,
    name text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    is_github_connected boolean DEFAULT false NOT NULL,
    github_repo text DEFAULT ''::text NOT NULL,
    is_imported_board boolean DEFAULT false,
    created_by_id bigint NOT NULL,
    updated_by_id bigint
);


--
-- Name: board_membership; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.board_membership (
    id bigint DEFAULT public.next_id() NOT NULL,
    board_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    role text NOT NULL,
    can_comment boolean,
    migrate_added_project_managers boolean DEFAULT false,
    created_by_id bigint NOT NULL,
    updated_by_id bigint,
    is_subscribed boolean DEFAULT true
);


--
-- Name: card; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.card (
    id bigint DEFAULT public.next_id() NOT NULL,
    board_id bigint NOT NULL,
    list_id bigint NOT NULL,
    created_by_id bigint NOT NULL,
    cover_attachment_id bigint,
    "position" double precision,
    name text NOT NULL,
    description text,
    due_date timestamp without time zone,
    timer jsonb,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    comment_count integer DEFAULT 0 NOT NULL,
    updated_by_id bigint,
    is_created_via_api boolean DEFAULT false NOT NULL,
    mail_creator_address character varying(255)
);


--
-- Name: card_label; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.card_label (
    id bigint DEFAULT public.next_id() NOT NULL,
    card_id bigint NOT NULL,
    label_id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by_id bigint NOT NULL,
    updated_by_id bigint
);


--
-- Name: card_membership; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.card_membership (
    id bigint DEFAULT public.next_id() NOT NULL,
    card_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by_id bigint NOT NULL,
    updated_by_id bigint
);


--
-- Name: card_subscription; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.card_subscription (
    id bigint DEFAULT public.next_id() NOT NULL,
    card_id bigint NOT NULL,
    user_id bigint NOT NULL,
    is_permanent boolean NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: comment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comment (
    id bigint DEFAULT public.next_id() NOT NULL,
    card_id bigint NOT NULL,
    user_id bigint NOT NULL,
    data jsonb NOT NULL,
    created_at timestamp without time zone,
    created_by_id bigint NOT NULL,
    updated_at timestamp without time zone,
    updated_by_id bigint,
    deleted_at timestamp without time zone,
    deleted_by_id bigint
);


--
-- Name: core; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.core (
    id bigint DEFAULT public.next_id() NOT NULL,
    registration_enabled boolean DEFAULT true,
    local_registration_enabled boolean DEFAULT true,
    sso_registration_enabled boolean DEFAULT true,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    project_creation_all_enabled boolean DEFAULT true,
    created_by_id bigint NOT NULL,
    updated_by_id bigint,
    sync_sso_data_on_auth boolean DEFAULT false,
    sync_sso_admin_on_auth boolean DEFAULT false,
    allowed_register_domains json DEFAULT '[]'::json
);


--
-- Name: failed_auth; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.failed_auth (
    id bigint DEFAULT public.next_id() NOT NULL,
    attempted_identifier text NOT NULL,
    remote_address text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: label; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.label (
    id bigint DEFAULT public.next_id() NOT NULL,
    board_id bigint NOT NULL,
    name text,
    color text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by_id bigint NOT NULL,
    updated_by_id bigint
);


--
-- Name: list; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.list (
    id bigint DEFAULT public.next_id() NOT NULL,
    board_id bigint NOT NULL,
    "position" double precision NOT NULL,
    name text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    is_collapsed boolean DEFAULT false NOT NULL,
    created_by_id bigint NOT NULL,
    updated_by_id bigint
);


--
-- Name: mail_token; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mail_token (
    id bigint DEFAULT public.next_id() NOT NULL,
    token text NOT NULL,
    user_id bigint NOT NULL,
    board_id bigint,
    list_id bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: migration; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.migration (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);


--
-- Name: migration_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.migration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: migration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.migration_id_seq OWNED BY public.migration.id;


--
-- Name: migration_lock; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.migration_lock (
    index integer NOT NULL,
    is_locked integer
);


--
-- Name: migration_lock_index_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.migration_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: migration_lock_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.migration_lock_index_seq OWNED BY public.migration_lock.index;


--
-- Name: next_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.next_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notification; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notification (
    id bigint DEFAULT public.next_id() NOT NULL,
    user_id bigint NOT NULL,
    action_id bigint NOT NULL,
    card_id bigint,
    is_read boolean NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    attachment_id bigint,
    task_id bigint,
    comment_id bigint,
    list_id bigint,
    board_id bigint,
    project_id bigint,
    user_account_id bigint,
    core_id bigint DEFAULT '0'::bigint,
    delivered_at timestamp without time zone,
    scope character varying(255) DEFAULT 'card'::character varying NOT NULL
);


--
-- Name: project; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project (
    id bigint DEFAULT public.next_id() NOT NULL,
    name text NOT NULL,
    background jsonb,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    background_image jsonb,
    created_by_id bigint NOT NULL,
    updated_by_id bigint
);


--
-- Name: project_manager; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_manager (
    id bigint DEFAULT public.next_id() NOT NULL,
    project_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by_id bigint NOT NULL,
    updated_by_id bigint
);


--
-- Name: project_membership; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_membership (
    id bigint DEFAULT public.next_id() NOT NULL,
    project_id bigint NOT NULL,
    user_id bigint NOT NULL,
    is_collapsed boolean DEFAULT false,
    is_subscribed boolean DEFAULT true,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.session (
    id bigint DEFAULT public.next_id() NOT NULL,
    user_id bigint NOT NULL,
    access_token text NOT NULL,
    remote_address text NOT NULL,
    user_agent text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


--
-- Name: task; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.task (
    id bigint DEFAULT public.next_id() NOT NULL,
    card_id bigint NOT NULL,
    name text NOT NULL,
    is_completed boolean NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    "position" double precision NOT NULL,
    due_date timestamp without time zone,
    created_by_id bigint NOT NULL,
    updated_by_id bigint
);


--
-- Name: task_membership; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.task_membership (
    id bigint DEFAULT public.next_id() NOT NULL,
    task_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by_id bigint NOT NULL,
    updated_by_id bigint
);


--
-- Name: user_account; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_account (
    id bigint DEFAULT public.next_id() NOT NULL,
    email text NOT NULL,
    password text,
    is_admin boolean NOT NULL,
    name text NOT NULL,
    username text,
    phone text,
    organization text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    password_changed_at timestamp without time zone,
    avatar jsonb,
    last_login timestamp without time zone,
    sso_google_email text,
    sso_github_id text,
    sso_microsoft_id text,
    sso_google_id text,
    sso_github_username text,
    sso_microsoft_email text,
    created_by_id bigint NOT NULL,
    updated_by_id bigint,
    deleted_by_id bigint,
    sso_oidc_id text,
    sso_oidc_email text,
    sso_github_email text,
    is_verified boolean DEFAULT false NOT NULL,
    last_email_verification_request_at timestamp without time zone
);


--
-- Name: user_prefs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_prefs (
    id bigint DEFAULT public.next_id() NOT NULL,
    subscribe_to_own_cards boolean NOT NULL,
    language text,
    description_mode character varying(255) DEFAULT 'edit'::character varying NOT NULL,
    description_shown boolean DEFAULT true,
    tasks_shown boolean DEFAULT true,
    attachments_shown boolean DEFAULT true,
    comments_shown boolean DEFAULT true,
    comment_mode character varying(255) DEFAULT 'edit'::character varying NOT NULL,
    sidebar_compact boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    default_view character varying(255) DEFAULT 'board'::character varying NOT NULL,
    list_view_style character varying(255) DEFAULT 'compact'::character varying NOT NULL,
    list_view_column_visibility jsonb DEFAULT '{"name": true, "tasks": true, "timer": true, "users": true, "labels": true, "actions": true, "dueDate": true, "coverUrl": false, "listName": true, "createdAt": false, "createdBy": false, "updatedAt": false, "updatedBy": false, "description": false, "commentCount": true, "closestDueDate": true, "hasDescription": true, "attachmentsCount": true, "notificationsCount": true}'::jsonb NOT NULL,
    list_view_fit_screen boolean DEFAULT true,
    list_view_items_per_page character varying(255) DEFAULT 'all'::character varying,
    users_settings_style character varying(255) DEFAULT 'compact'::character varying NOT NULL,
    users_settings_column_visibility jsonb DEFAULT '{"name": true, "email": true, "avatar": true, "actions": true, "username": true, "createdAt": false, "createdBy": false, "lastLogin": true, "updatedAt": false, "updatedBy": false, "ssoOidcEmail": false, "administrator": true, "ssoGithubEmail": false, "ssoGoogleEmail": false, "ssoGithubUsername": false, "ssoMicrosoftEmail": false}'::jsonb NOT NULL,
    users_settings_fit_screen boolean DEFAULT true,
    users_settings_items_per_page character varying(255) DEFAULT 'all'::character varying,
    preferred_details_font character varying(255) DEFAULT 'default'::character varying,
    hide_card_modal_activity boolean DEFAULT false,
    hide_closest_due_date boolean DEFAULT false,
    theme_shape character varying(255) DEFAULT 'default'::character varying,
    theme character varying(255) DEFAULT 'default'::character varying,
    subscribe_to_new_boards boolean DEFAULT true,
    subscribe_to_new_projects boolean DEFAULT true,
    subscribe_to_users boolean DEFAULT false,
    subscribe_to_instance boolean DEFAULT true,
    theme_custom_colors jsonb DEFAULT '{}'::jsonb,
    email_notifications_enabled boolean DEFAULT true NOT NULL,
    email_notifications_types json DEFAULT '["project","board","list","card","task","comment","attachment"]'::json NOT NULL,
    email_notifications_delivery_mode character varying(255) DEFAULT 'instant_then_batched'::character varying NOT NULL,
    email_notifications_mark_read_as_delivered boolean DEFAULT true NOT NULL,
    notification_types json DEFAULT '["project","board","list","card","task","comment","attachment"]'::json NOT NULL
);


--
-- Name: migration id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migration ALTER COLUMN id SET DEFAULT nextval('public.migration_id_seq'::regclass);


--
-- Name: migration_lock index; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migration_lock ALTER COLUMN index SET DEFAULT nextval('public.migration_lock_index_seq'::regclass);


--
-- Data for Name: action; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.action (id, card_id, user_id, type, data, created_at, updated_at, created_by_id, scope, board_id, project_id, list_id, attachment_id, task_id, comment_id, user_account_id, core_id, duplicate_of_id) FROM stdin;
1773223019653628935	\N	1773218417889772545	projectCreate	{"projectId": "1773223017992684548", "projectName": "Getting started"}	2026-05-12 08:57:36	\N	1773218417889772545	project	\N	1773223017992684548	\N	\N	\N	\N	\N	0	\N
1773223034040091689	1773223029694792731	1773218417889772545	cardCreate	{"listId": "1773223029241807887", "cardName": "Useful key combinations", "listName": "Getting Started"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029241807887	\N	\N	\N	\N	0	\N
1773223035130610730	1773223029678015512	1773218417889772545	cardCreate	{"listId": "1773223029275362320", "cardName": "4ga Boards Website", "listName": "Useful Links"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029275362320	\N	\N	\N	\N	0	\N
1773223035172553771	1773223029694792732	1773218417889772545	cardCreate	{"listId": "1773223029275362320", "cardName": "GitHub", "listName": "Useful Links"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029275362320	\N	\N	\N	\N	0	\N
1773223035399046188	1773223029703181343	1773218417889772545	cardCreate	{"listId": "1773223029283750929", "cardName": "Projects/boards filtering", "listName": "Basics"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750929	\N	\N	\N	\N	0	\N
1773223036103689261	1773223029711569952	1773218417889772545	cardCreate	{"listId": "1773223029283750929", "cardName": "Navigating across the board", "listName": "Basics"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750929	\N	\N	\N	\N	0	\N
1773223036774777902	1773223029711569953	1773218417889772545	cardCreate	{"listId": "1773223029283750929", "cardName": "Board menu (filtering, members)", "listName": "Basics"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750929	\N	\N	\N	\N	0	\N
1773223036875441199	1773223029711569954	1773218417889772545	cardCreate	{"listId": "1773223029283750929", "cardName": "Add users to the board", "listName": "Basics"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750929	\N	\N	\N	\N	0	\N
1773223036959327280	1773223029711569955	1773218417889772545	cardCreate	{"listId": "1773223029283750929", "cardName": "Collapse/Expand lists", "listName": "Basics"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750929	\N	\N	\N	\N	0	\N
1773223037043213361	1773223029728347172	1773218417889772545	cardCreate	{"listId": "1773223029283750931", "cardName": "You will see this card only after you expand the list", "listName": "Collapsed list"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750931	\N	\N	\N	\N	0	\N
1773223037127099442	1773223029694792730	1773218417889772545	cardCreate	{"listId": "1773223029275362320", "cardName": "Documentation", "listName": "Useful Links"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029275362320	\N	\N	\N	\N	0	\N
1773223037747856438	1773223029644461079	1773218417889772545	cardCreate	{"listId": "1773223029241807887", "cardName": "Different language of Getting Started?", "listName": "Getting Started"}	2026-05-12 08:57:37	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029241807887	\N	\N	\N	\N	0	\N
1773223038410556485	1773223029694792729	1773218417889772545	cardCreate	{"listId": "1773223029241807887", "cardName": "Getting Started", "listName": "Getting Started"}	2026-05-12 08:57:37	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029241807887	\N	\N	\N	\N	0	\N
1773223041086522453	1773223029694792734	1773218417889772545	cardCreate	{"listId": "1773223029275362320", "cardName": "Enjoying 4ga Boards?", "listName": "Useful Links"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029275362320	\N	\N	\N	\N	0	\N
1773223041648559190	1773223037663970355	1773218417889772545	cardCreate	{"listId": "1773223029283750932", "cardName": "Go to Settings", "listName": "Settings"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750932	\N	\N	\N	\N	0	\N
1773223041698890839	1773223037680747572	1773218417889772545	cardCreate	{"listId": "1773223029283750932", "cardName": "How to change language?", "listName": "Settings"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750932	\N	\N	\N	\N	0	\N
1773223041749222488	1773223037999514679	1773218417889772545	cardCreate	{"listId": "1773223029283750933", "cardName": "Cards", "listName": "Cards"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750933	\N	\N	\N	\N	0	\N
1773223041782776921	1773223038016291896	1773218417889772545	cardCreate	{"listId": "1773223029283750933", "cardName": "Moving cards", "listName": "Cards"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750933	\N	\N	\N	\N	0	\N
1773223041807942746	1773223038016291899	1773218417889772545	cardCreate	{"listId": "1773223029283750933", "cardName": "Due Date", "listName": "Cards"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750933	\N	\N	\N	\N	0	\N
1773223041824719963	1773223038016291900	1773218417889772545	cardCreate	{"listId": "1773223029283750933", "cardName": "Timer", "listName": "Cards"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750933	\N	\N	\N	\N	0	\N
1773223041875051612	1773223038033069117	1773218417889772545	cardCreate	{"listId": "1773223029283750933", "cardName": "Notifications", "listName": "Cards"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750933	\N	\N	\N	\N	0	\N
1773223041967326301	1773223038326670401	1773218417889772545	cardCreate	{"listId": "1773223029283750934", "cardName": "Description: Local changes", "listName": "Description/Comments Text Editor"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750934	\N	\N	\N	\N	0	\N
1773223042160264286	1773223038326670402	1773218417889772545	cardCreate	{"listId": "1773223029283750934", "cardName": "Text editor: View options", "listName": "Description/Comments Text Editor"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750934	\N	\N	\N	\N	0	\N
1773223042319647839	1773223038326670403	1773218417889772545	cardCreate	{"listId": "1773223029283750934", "cardName": "Text editor: Advanced features", "listName": "Description/Comments Text Editor"}	2026-05-12 08:57:38	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750934	\N	\N	\N	\N	0	\N
1773223042512585824	1773223038326670404	1773218417889772545	cardCreate	{"listId": "1773223029283750934", "cardName": "Text editor: GitHub", "listName": "Description/Comments Text Editor"}	2026-05-12 08:57:39	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750934	\N	\N	\N	\N	0	\N
1773223042562917473	1773223037680747573	1773218417889772545	cardCreate	{"listId": "1773223029283750932", "cardName": "Too wide sidebar? Do you want to hide it?", "listName": "Settings"}	2026-05-12 08:57:39	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750932	\N	\N	\N	\N	0	\N
1773223042588083298	1773223029694792733	1773218417889772545	cardCreate	{"listId": "1773223029241807887", "cardName": "Work efficiently", "listName": "Getting Started"}	2026-05-12 08:57:39	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029241807887	\N	\N	\N	\N	0	\N
1773223042630026339	1773223038016291898	1773218417889772545	cardCreate	{"listId": "1773223029283750933", "cardName": "Labels", "listName": "Cards"}	2026-05-12 08:57:39	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750933	\N	\N	\N	\N	0	\N
1773223042646803556	1773223038016291897	1773218417889772545	cardCreate	{"listId": "1773223029283750933", "cardName": "Members", "listName": "Cards"}	2026-05-12 08:57:39	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750933	\N	\N	\N	\N	0	\N
1773223042697135208	1773223038309893184	1773218417889772545	cardCreate	{"listId": "1773223029283750934", "cardName": "Text editor: Description and Comments", "listName": "Description/Comments Text Editor"}	2026-05-12 08:57:39	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750934	\N	\N	\N	\N	0	\N
1773223042797798505	1773223038033069119	1773218417889772545	cardCreate	{"listId": "1773223029283750933", "cardName": "Attachments", "listName": "Cards"}	2026-05-12 08:57:39	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750933	\N	\N	\N	\N	0	\N
1773223042822964330	1773223038033069118	1773218417889772545	cardCreate	{"listId": "1773223029283750933", "cardName": "Tasks", "listName": "Cards"}	2026-05-12 08:57:39	\N	1773218417889772545	card	1773223020987417608	1773223017992684548	1773223029283750933	\N	\N	\N	\N	0	\N
1773223043217228908	\N	1773218417889772545	boardCreate	{"boardId": "1773223020987417608", "boardName": "Learn 4ga Boards", "githubRepo": "", "isImportedBoard": true, "isGithubConnected": false}	2026-05-12 08:57:39	\N	1773218417889772545	board	1773223020987417608	1773223017992684548	\N	\N	\N	\N	\N	0	\N
\.


--
-- Data for Name: api_client; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.api_client (id, name, label, client_id, client_secret, permissions, user_id, last_used_at, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: archive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.archive (id, from_model, original_record_id, original_record, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: attachment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.attachment (id, card_id, created_by_id, dirname, filename, name, created_at, updated_at, image, updated_by_id) FROM stdin;
1773223040675480658	1773223029694792734	1773218417889772545	c977c6ee-ea82-4532-b0af-01c48d409f56	star4gaBoards.png	star4gaBoards.png	2026-05-12 08:57:38	\N	{"width": 257, "height": 65, "thumbnailsExtension": "png"}	\N
1773223042680357990	1773223038033069119	1773218417889772545	a514f2cb-f4d6-4b25-8e1f-f05ee18f0c43	SampleText.txt	SampleText.txt	2026-05-12 08:57:39	\N	\N	\N
1773223042688746599	1773223038033069119	1773218417889772545	9c47ae08-24d4-4a2c-83a5-1ddfaf5dc1cf	4gaboards256w-white.png	4gaboards256w-white.png	2026-05-12 08:57:39	\N	{"width": 256, "height": 100, "thumbnailsExtension": "png"}	\N
\.


--
-- Data for Name: board; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.board (id, project_id, "position", name, created_at, updated_at, is_github_connected, github_repo, is_imported_board, created_by_id, updated_by_id) FROM stdin;
1773223020987417608	1773223017992684548	65535	Learn 4ga Boards	2026-05-12 08:57:36	\N	f		t	1773218417889772545	\N
\.


--
-- Data for Name: board_membership; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.board_membership (id, board_id, user_id, created_at, updated_at, role, can_comment, migrate_added_project_managers, created_by_id, updated_by_id, is_subscribed) FROM stdin;
1773223026322572297	1773223020987417608	1773218417889772545	2026-05-12 08:57:37	\N	editor	\N	f	1773218417889772545	\N	t
\.


--
-- Data for Name: card; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.card (id, board_id, list_id, created_by_id, cover_attachment_id, "position", name, description, due_date, timer, created_at, updated_at, comment_count, updated_by_id, is_created_via_api, mail_creator_address) FROM stdin;
1773223029644461079	1773223020987417608	1773223029241807887	1773218417889772545	\N	32767.5	Different language of Getting Started?	The Getting Started project is available in:\r\n- English - <!--red-->EN<!--red-end-->\r\n- Polish - <!--red-->PL<!--red-end-->\r\n\r\nTo access the Getting Started in different languages:\r\n- Change your display language in 4ga Boards - Go to Settings -> Preferences -> Language\r\n- Re-import Getting Started project - Go to Settings -> About -> Import Getting Started Project	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029678015512	1773223020987417608	1773223029275362320	1773218417889772545	\N	65535	4ga Boards Website	https://4gaboards.com	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029694792729	1773223020987417608	1773223029241807887	1773218417889772545	\N	65535	Getting Started	## Welcome to 4ga Boards!\r\n\r\nThis board is an introduction of how to use 4ga Boards, including some of the basic and unique features. It includes some tips & tricks to help get most of 4ga Boards.\r\n\r\nFor full guide please visit the documentation:\r\nhttps://docs.4gaboards.com	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029694792730	1773223020987417608	1773223029275362320	1773218417889772545	\N	131070	Documentation	https://docs.4gaboards.com	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029694792731	1773223020987417608	1773223029241807887	1773218417889772545	\N	131070	Useful key combinations	## Useful key combinations\r\n\r\n`Ctrl` + `Enter`\r\n\r\nUse it to quickly save various content, e.g. while editing description or adding a task.\r\nIf you use it while creating new card it will automatically open card view.\r\n\r\n`Shift` + `Scroll`\r\n\r\nHold shift to scroll horizontally.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029694792732	1773223020987417608	1773223029275362320	1773218417889772545	\N	196605	GitHub	https://github.com/RARgames/4gaBoards	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029694792733	1773223020987417608	1773223029241807887	1773218417889772545	\N	196605	Work efficiently	## How to work efficiently with 4ga Boards?\r\n\r\n### Simultaneously edit cards and boards\r\n\r\nYou can keep working on the board (edit other cards, move them across lists, review other\r\nchanges) while having an open card view.\r\n\r\n### Don't save description changes everytime you leave the card\r\n\r\nLocal changes are saved even if you switch to another card/board/project/browser tab.\r\n\r\nOn the same device, you can come back to your local changes at anytime, even after closing the browser tab or restarting your device.\r\n\r\n### Remember to save changes!\r\n\r\nSave your changes if you have something important! Other users cannot see them before saving.\r\n\r\n### Efficiently work with collapsed lists\r\n\r\nCluttered workspace? Save space by collapsing some lists. You can still move cards to them.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029703181343	1773223020987417608	1773223029283750929	1773218417889772545	\N	65535	Projects/boards filtering	Use the <!--lime-->Filter...<!--lime-end--> field in the sidebar to filter projects/boards.\r\n\r\nChange filtering type (P - Project, B - Board) by pressing `Tab` or clicking the <!--orange-->Shuffle<!--orange-end--> icon (double arrow).\r\n\r\nRemove filters by pressing `Esc` or clicking the <!--orange-->X<!--orange-end--> icon.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029711569952	1773223020987417608	1773223029283750929	1773218417889772545	\N	131070	Navigating across the board	Most of the board elements can be drag and dropped across the board.\r\n\r\nMove around the list with many cards with mouse `Scroll` or scrollbar.\r\n\r\nMove around the board with many lists by pressing `Shift` + `Scroll` or by clicking on the empty spot and dragging the board.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029711569953	1773223020987417608	1773223029283750929	1773218417889772545	\N	196605	Board menu (filtering, members)	Each board has a board menu, in which you can:\r\n\r\n- See the board name,\r\n- See the number of cards after filtering,\r\n- Manage members of the board (if you are a project manager),\r\n- Filter existing cards by members attached to them,\r\n- Filter cards by labels (also create/edit the labels).\r\n- Set up GitHub integration (WIP - Only linking available).	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029711569954	1773223020987417608	1773223029283750929	1773218417889772545	\N	262140	Add users to the board	Add users to the current board by clicking the <!--orange-->Add User<!--orange-end--> icon (user with a plus).	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029711569955	1773223020987417608	1773223029283750929	1773218417889772545	\N	327675	Collapse/Expand lists	Collapse/Expand lists by clicking the <!--orange-->Triangle<!--orange-end--> icon near the list name.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029728347172	1773223020987417608	1773223029283750931	1773218417889772545	\N	65535	You will see this card only after you expand the list	\N	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223037663970355	1773223020987417608	1773223029283750932	1773218417889772545	\N	65535	Go to Settings	Settings can be accessed by clicking the <!--orange-->Cog<!--orange-end--> icon or your profile picture.\r\n\r\nYou can also go to the project settings directly by clicking the <!--orange-->Boxed Cog<!--orange-end--> icon (visible only if you have project manager permissions).\r\n\r\nMore about settings and permissions:\r\nhttps://docs.4gaboards.com/docs/admin-settings	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223037680747572	1773223020987417608	1773223029283750932	1773218417889772545	\N	131070	How to change language?	Go to Settings -> Preferences -> Language and select appriopriate language from the dropdown list.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223037680747573	1773223020987417608	1773223029283750932	1773218417889772545	\N	196605	Too wide sidebar? Do you want to hide it?	To adjust sidebar width, go to Settings  -> Preferences -> Compact Sidebar.\r\n\r\nHide/show sidebar by clicking the <!--orange-->Minimize Sidebar<!--orange-end--> icon close to 4ga Boards logo.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223037999514679	1773223020987417608	1773223029283750933	1773218417889772545	\N	65535	Cards	If the card view gets cluttered, you can hide certain elements (description, tasks, attachments, comments) by clicking the <!--orange-->Minus<!--orange-end--> icon next to them. Click the <!--orange-->Plus<!--orange-end--> icon to show them again. This is saved across cards.\r\n\r\nCard view menu icons on the top-right corner:\r\n\r\n- Delete card by clicking the <!--orange-->Trash<!--orange-end--> icon (it will open popup to confirm deleting).\r\n- Open card context menu by clicking the <!--orange-->Ellipsis<!--orange-end--> icon (three dots).\r\n- Close card view by clicking the <!--orange-->X<!--orange-end--> icon.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223038016291896	1773223020987417608	1773223029283750933	1773218417889772545	\N	131070	Moving cards	Move cards across lists by dragging and dropping or use dropdown menu below the card's name.\r\n\r\nMove across projects/boards by clicking the <!--orange-->Ellipsis<!--orange-end--> icon and press the <!--lime-->Move Card<!--lime-end--> button from the card context menu.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223038016291897	1773223020987417608	1773223029283750933	1773218417889772545	\N	196605	Members	Manage members of the card by clicking the <!--orange-->Plus<!--orange-end--> icon near Members.\r\n\r\nIf the member is not available and you are the project manager, add the member in board menu by clicking the <!--orange-->Add User<!--orange-end--> icon.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223038016291898	1773223020987417608	1773223029283750933	1773218417889772545	\N	262140	Labels	Manage labels of the card by clicking the <!--orange-->Plus<!--orange-end--> icon.\r\nIn the popup you can also add (<!--lime-->Create new label<!--lime-end--> button) and edit/remove (<!--orange-->Pencil<!--orange-end--> icon) labels for the whole board.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223038016291899	1773223020987417608	1773223029283750933	1773218417889772545	\N	327675	Due Date	Add due date by clicking the <!--orange-->Plus<!--orange-end--> icon.\r\nEdit/remove due date by clicking the <!--orange-->Pencil<!--orange-end--> icon.\r\n\r\nIf the due date is further than two weeks, it will appear <!--grey-->grey<!--grey-end-->;\r\nif it is in the range of two weeks - <!--yellow-->yellow<!--yellow-end-->;\r\nif overdue - <!--red-->red<!--red-end-->.	2024-10-17 10:00:00	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223038016291900	1773223020987417608	1773223029283750933	1773218417889772545	\N	393210	Timer	Start/pause the timer by clicking on it.\r\nReset the timer by clicking the <!--orange-->Pencil<!--orange-end--> icon and then the <!--lime-->Remove<!--lime-end--> button.	\N	{"total": 4325, "startedAt": null}	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223038033069117	1773223020987417608	1773223029283750933	1773218417889772545	\N	458745	Notifications	Subscribe/unsubscribe to card notifications by clicking the <!--lime-->Subscribe/Unsubscribe<!--lime-end--> button to get/stop getting notifications when other board member makes changes to the card, e.g. add a comment.\r\n\r\nCheck notifications by clicking the <!--orange-->Bell<!--orange-end--> icon in the header.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223038033069118	1773223020987417608	1773223029283750933	1773218417889772545	\N	524280	Tasks	Add new task by clicking the <!--lime-->Add Task<!--lime-end--> button or the <!--orange-->Plus<!--orange-end--> icon.\r\n\r\nAdd member/due date to the task by hoverring over the task, clicking the <!--orange-->Ellipsis<!--orange-end--> icon and selecting <!--lime-->Add Members/Add Due Date<!--lime-end-->.\r\nManage task due date/members by clicking the <!--lime-->Member/Due Date<!--lime-end--> next to the task or through the context menu.\r\n\r\nExpand/collapse tasks on the card by clicking the <!--orange-->Triangle<!--orange-end--> icon on the card, near the number of tasks.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223038309893184	1773223020987417608	1773223029283750934	1773218417889772545	\N	32767.5	Text editor: Description and Comments	Both the card description and comments allow the use of Markdown syntax.	\N	\N	2026-05-12 08:57:37	\N	1	\N	f	\N
1773223038326670401	1773223020987417608	1773223029283750934	1773218417889772545	\N	65535	Description: Local changes	The <!--yellow-->Local changes<!--yellow-end--> text indicates that the description is still in the edit mode and the changes are not yet registered on the server.\r\n\r\nTo save them press `Ctrl` + `Enter` or click the <!--lime-->Save<!--lime-end--> button.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223038326670402	1773223020987417608	1773223029283750934	1773218417889772545	\N	131070	Text editor: View options	View options can be changed with icons on the top-right or using shortcuts:\r\n\r\n- Edit code (`Ctrl` + `7`) - shows only the edited text with Markdown syntax.\r\n- Live code (`Ctrl` + `8`) - shows both Markdown syntax (on left) and live text preview (on the right).\r\n- Preview code (`Ctrl` + `9`) - shows just the text preview.\r\n- Toggle fullscreen (`Ctrl` + `0`)	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223038326670403	1773223020987417608	1773223029283750934	1773218417889772545	\N	196605	Text editor: Advanced features	### Check out the Markdown editor in 4ga Boards!\r\n\r\nIn 4ga Boards we are using very powerful Markdown editor.\r\n\r\nChange the size of text editor by clicking the <!--orange-->Ellipsis<!--orange-end--> icon in the bottom-right corner and dragging it.\r\n</br>\r\n\r\n#### Most important Markdown editor features:\r\nOpen description and change the editor view to Live Code (`Ctrl` + `8`) to see Markdown syntax and text preview.\r\n\r\n---\r\n\r\n**This is how you write with bold text.**\r\n*This is how you write with italic text.*\r\n~~This is how you write with strike-through text.~~\r\n\r\n# Use titles for better visibility.\r\n## Use different size of titles.\r\n### There are six title sizes.\r\n#### 4th title\r\n##### 5th title\r\n###### 6th title\r\n\r\nAdd prettier links:\r\n[Documentation link](https://docs.4gaboards.com)\r\nor just:\r\nhttps://docs.4gaboards.com\r\n\r\nAdd quotes:\r\n> Cogito, ergo sum\r\n\r\nInsert code:\r\n`print("Hello world")`\r\n\r\nInsert codeblock:\r\n```js showLineNumbers {1-2, 4}\r\nx = 1\r\nif x == 1:\r\n    print("x is 1")\r\nelse:\r\n    print("x is not 1")\r\n```\r\n\r\n<!-- You can add an invisible comment here -->\r\n\r\nAdd pictures with a link:\r\n![image](https://4gaboards.com/repo/img/4gaboards256w-white.png)\r\n\r\nAdd table:\r\n| Column 1 | Column 2|\r\n|--------|--------|\r\n| 1 | 2 |\r\n| 1 | 2 |\r\n| 1 | 2 |\r\n\r\nAdd bullet list:\r\n- This\r\n- is\r\n- a\r\n- list\r\n\r\nAdd numbered list:\r\n1. This\r\n2. is\r\n3. a\r\n4. list\r\n\r\nAdd task list:\r\n- [ ] Task 1\r\n- [ ] Task 2\r\n\r\nAdd colored text:\r\n<!--red-->Colored<!--red-end--> <!--lime-->text<!--lime-end-->	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223038326670404	1773223020987417608	1773223029283750934	1773218417889772545	\N	262140	Text editor: GitHub	### To use features from this section the board has to be connected with GitHub.\r\n\r\nBy default a board <!--red-->is NOT<!--red-end--> connected to GitHub (use <!--orange-->GitHub<!--orange-end--> icon from the board menu to connect.\r\n\r\nAdd issue link:\r\nClick the <!--lime-->Add issue<!--lime-end--> button and type issue or PR number or write:\r\n`#(number of the issue)`,e.g. `#1`.\r\ninstead of hashtag you can use:\r\n`GH-(number)`, e.g. `GH-1`.\r\nto link issue or PR in fork use:\r\n`(fork name)#(issue number)`, e.g. `samplefork#1`,\r\nto link issue or PR in specific repository use:\r\n`(username or organization name)/(repository name)#(issue number)`, e.g. `RARgames/4gaboards#1`\r\n\r\nAdd commit link:\r\nto link commit use:\r\n`(commit hash)`, e.g. `1d7e95e8d496564ac5f69a06db60df79a6a585c4`\r\nto link commit in fork use:\r\n`(fork name)@(commit hash)`, e.g. `samplefork@1d7e95e8d496564ac5f69a06db60df79a6a585c4`\r\nto link commit in repository use:\r\n`(username)/(repository name)@(commit hash)`, e.g. `RARgames/4gaBoards@1d7e95e8d496564ac5f69a06db60df79a6a585c4`\r\n\r\nAdd mention:\r\nto mention user use:\r\n`@(username)`, e.g. `@RARgames`\r\n\r\nAlternatively you can paste links to link commit, commit comment, issue or PR, issue or PR comment, user.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223029694792734	1773223020987417608	1773223029275362320	1773218417889772545	1773223040675480658	262140	Enjoying 4ga Boards?	Show your appreciation and leave a star on 4ga Boards [GitHub](https://github.com/RARgames/4gaBoards)!	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
1773223038033069119	1773223020987417608	1773223029283750933	1773218417889772545	1773223042688746599	589815	Attachments	### Attachments\r\n\r\nAdd attachments to your card by `CTRL`+`V`, dropping them on the card or clicking the <!--lime-->Add attachment<!--lime-end--> button and selecting from the disc.\r\nRemove the attachment by hovering over it, clicking the <!--orange-->Pencil<!--orange-end--> icon and selecting the <!--lime-->Delete<!--lime-end--> button.\r\n\r\n### Cover image\r\n\r\nIf the attachment is an image, you can use it as a cover that will appear on the card.\r\n\r\nAdd cover image by clicking the <!--lime-->Make Cover<!--lime-end--> button near the desired image.\r\nRemove cover image by clicking the <!--lime-->Remove Cover<!--lime-end--> button.	\N	\N	2026-05-12 08:57:37	\N	0	\N	f	\N
\.


--
-- Data for Name: card_label; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.card_label (id, card_id, label_id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1773223029887730725	1773223029694792731	1773223028411335692	2026-05-12 08:57:37	\N	1773218417889772545	\N
1773223033067013158	1773223029694792730	1773223028428112909	2026-05-12 08:57:37	\N	1773218417889772545	\N
1773223033603884072	1773223029711569955	1773223028411335692	2026-05-12 08:57:38	\N	1773218417889772545	\N
1773223038662214726	1773223037663970355	1773223028428112909	2026-05-12 08:57:38	\N	1773218417889772545	\N
1773223038695769159	1773223037680747573	1773223028411335692	2026-05-12 08:57:38	\N	1773218417889772545	\N
1773223038804821064	1773223029694792733	1773223028411335692	2026-05-12 08:57:37	\N	1773218417889772545	\N
1773223038813209673	1773223029694792733	1773223029124367374	2026-05-12 08:57:37	\N	1773218417889772545	\N
1773223040063112268	1773223038016291898	1773223026934940683	2026-05-12 08:57:38	\N	1773218417889772545	\N
1773223040994247764	1773223038326670404	1773223028411335692	2026-05-12 08:57:38	\N	1773218417889772545	\N
\.


--
-- Data for Name: card_membership; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.card_membership (id, card_id, user_id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1773223040037946442	1773223038016291897	1773218417889772545	2026-05-12 08:57:38	\N	1773218417889772545	\N
\.


--
-- Data for Name: card_subscription; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.card_subscription (id, card_id, user_id, is_permanent, created_at, updated_at) FROM stdin;
1773223033209619495	1773223029694792734	1773218417889772545	t	2026-05-12 08:57:37	\N
1773223040054723659	1773223038016291897	1773218417889772545	f	2026-05-12 08:57:38	\N
1773223040079889485	1773223038033069118	1773218417889772545	f	2026-05-12 08:57:38	\N
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.comment (id, card_id, user_id, data, created_at, created_by_id, updated_at, updated_by_id, deleted_at, deleted_by_id) FROM stdin;
1773223040935527507	1773223038309893184	1773218417889772545	{"text": "Sample comment with **Markdown syntax**.", "userId": "1773218417889772545", "userName": "Demo Demo"}	2026-05-12 08:57:38	1773218417889772545	\N	\N	\N	\N
\.


--
-- Data for Name: core; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.core (id, registration_enabled, local_registration_enabled, sso_registration_enabled, created_at, updated_at, project_creation_all_enabled, created_by_id, updated_by_id, sync_sso_data_on_auth, sync_sso_admin_on_auth, allowed_register_domains) FROM stdin;
0	t	t	t	2026-05-12 08:48:26.967	2026-05-12 08:48:27	t	0	1773218417889772545	f	f	[]
\.


--
-- Data for Name: failed_auth; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.failed_auth (id, attempted_identifier, remote_address, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.label (id, board_id, name, color, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1773223026934940683	1773223020987417608	Sample Label	pink-tulip	2026-05-12 08:57:37	\N	1773218417889772545	\N
1773223028411335692	1773223020987417608	Unique Feature	berry-red	2026-05-12 08:57:37	\N	1773218417889772545	\N
1773223028428112909	1773223020987417608	Docs	light-cocoa	2026-05-12 08:57:37	\N	1773218417889772545	\N
1773223029124367374	1773223020987417608	Best Practices	pumpkin-orange	2026-05-12 08:57:37	\N	1773218417889772545	\N
\.


--
-- Data for Name: list; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.list (id, board_id, "position", name, created_at, updated_at, is_collapsed, created_by_id, updated_by_id) FROM stdin;
1773223029241807887	1773223020987417608	32767.5	Getting Started	2026-05-12 08:57:37	\N	f	1773218417889772545	\N
1773223029275362320	1773223020987417608	65535	Useful Links	2026-05-12 08:57:37	\N	f	1773218417889772545	\N
1773223029283750929	1773223020987417608	131070	Basics	2026-05-12 08:57:37	\N	f	1773218417889772545	\N
1773223029283750930	1773223020987417608	196605	Empty collapsed list	2026-05-12 08:57:37	\N	t	1773218417889772545	\N
1773223029283750931	1773223020987417608	262140	Collapsed list	2026-05-12 08:57:37	\N	t	1773218417889772545	\N
1773223029283750932	1773223020987417608	327675	Settings	2026-05-12 08:57:37	\N	f	1773218417889772545	\N
1773223029283750933	1773223020987417608	393210	Cards	2026-05-12 08:57:37	\N	f	1773218417889772545	\N
1773223029283750934	1773223020987417608	458745	Description/Comments Text editor	2026-05-12 08:57:37	\N	f	1773218417889772545	\N
\.


--
-- Data for Name: mail_token; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mail_token (id, token, user_id, board_id, list_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: migration; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.migration (id, name, batch, migration_time) FROM stdin;
1	20180721020022_create_next_id_function.js	1	2026-05-12 15:48:26.549+07
2	20180721021044_create_archive_table.js	1	2026-05-12 15:48:26.572+07
3	20180721220409_create_user_account_table.js	1	2026-05-12 15:48:26.606+07
4	20180721233450_create_project_table.js	1	2026-05-12 15:48:26.615+07
5	20180721234154_create_project_manager_table.js	1	2026-05-12 15:48:26.624+07
6	20180722000627_create_board_table.js	1	2026-05-12 15:48:26.659+07
7	20180722001747_create_board_membership_table.js	1	2026-05-12 15:48:26.677+07
8	20180722003437_create_label_table.js	1	2026-05-12 15:48:26.692+07
9	20180722003502_create_list_table.js	1	2026-05-12 15:48:26.715+07
10	20180722003614_create_card_table.js	1	2026-05-12 15:48:26.745+07
11	20180722005122_create_card_subscription_table.js	1	2026-05-12 15:48:26.754+07
12	20180722005359_create_card_membership_table.js	1	2026-05-12 15:48:26.764+07
13	20180722005928_create_card_label_table.js	1	2026-05-12 15:48:26.789+07
14	20180722006570_create_task_table.js	1	2026-05-12 15:48:26.799+07
15	20180722006688_create_attachment_table.js	1	2026-05-12 15:48:26.826+07
16	20181024220134_create_action_table.js	1	2026-05-12 15:48:26.84+07
17	20181112104653_create_notification_table.js	1	2026-05-12 15:48:26.861+07
18	20220523131229_add_image_to_attachment_table.js	1	2026-05-12 15:48:26.868+07
19	20220713145452_add_position_to_task_table.js	1	2026-05-12 15:48:26.875+07
20	20220725150723_add_language_to_user_account_table.js	1	2026-05-12 15:48:26.876+07
21	20220729142434_add_index_on_type_to_action_table.js	1	2026-05-12 15:48:26.889+07
22	20220803221221_add_password_changed_at_to_user_account_table.js	1	2026-05-12 15:48:26.891+07
23	20220815155645_add_permissions_to_board_membership_table.js	1	2026-05-12 15:48:26.9+07
24	20220906094517_create_session_table.js	1	2026-05-12 15:48:26.923+07
25	20221003140000_@.js	1	2026-05-12 15:48:26.924+07
26	20221223131625_preserve_original_format_of_images.js	1	2026-05-12 15:48:26.933+07
27	20221225224651_remove_board_types.js.js	1	2026-05-12 15:48:26.936+07
28	20221226210239_improve_quality_of_resized_images.js	1	2026-05-12 15:48:26.938+07
29	20230108213138_labels_reordering.js	1	2026-05-12 15:48:26.947+07
30	20230112022500_add_list_isCollapsed.js	1	2026-05-12 15:48:26.949+07
31	20230708214146_add_connections.js	1	2026-05-12 15:48:26.951+07
32	20231202004233_add_user_prefs.js	1	2026-05-12 15:48:26.953+07
33	20240419152236_fix_default_description_mode.js	1	2026-05-12 15:48:26.958+07
34	20240430181140_add_google_sso_to_user.js	1	2026-05-12 15:48:26.962+07
35	20240509114534_add_core_settings.js	1	2026-05-12 15:48:26.969+07
36	20240626150848_add_comment_mode.js	1	2026-05-12 15:48:26.972+07
37	20240628164756_add_comment_count.js	1	2026-05-12 15:48:26.977+07
38	20240715111755_add_user_projects.js	1	2026-05-12 15:48:27.016+07
39	20240925144806_add_user_prefs_sidebar_compact.js	1	2026-05-12 15:48:27.018+07
40	20241007111435_add_task_details.js	1	2026-05-12 15:48:27.039+07
41	20241109134430_add_is_imported_board.js	1	2026-05-12 15:48:27.042+07
42	20250221010919_add_board_memberships_for_project_managers.js	1	2026-05-12 15:48:27.049+07
43	20250226132508_move_user_preferences.js	1	2026-05-12 15:48:27.064+07
44	20250303171836_add_default_view_to_user_prefs.js	1	2026-05-12 15:48:27.065+07
45	20250331154636_add_list_view_style.js	1	2026-05-12 15:48:27.067+07
46	20250402102913_remove_label_position.js	1	2026-05-12 15:48:27.068+07
47	20250402110252_remove_label_duplicates.js	1	2026-05-12 15:48:27.114+07
48	20250404170705_add_list_view_column_visibility.js	1	2026-05-12 15:48:27.116+07
49	20250408122632_add_list_view_default_fit_screen.js	1	2026-05-12 15:48:27.117+07
50	20250408214826_add_list_view_items_per_page.js	1	2026-05-12 15:48:27.118+07
51	20250416201707_remove_backup_labels.js	1	2026-05-12 15:48:27.12+07
52	20250502174732_add_users_settings_preferences.js	1	2026-05-12 15:48:27.122+07
53	20250507121522_add_sso_github_id_to_user.js	1	2026-05-12 15:48:27.123+07
54	20250508104547_add_sso_microsoft_id_to_user.js	1	2026-05-12 15:48:27.125+07
55	20250510171142_add_sso_fields_to_user.js	1	2026-05-12 15:48:27.128+07
56	20250516101208_add_project_creation_all_enabled_to_core_settings.js	1	2026-05-12 15:48:27.13+07
57	20250524121324_add_created_updated_by.js	1	2026-05-12 15:48:27.186+07
58	20250612192909_add_preferred_details_font_to_user_prefs.js	1	2026-05-12 15:48:27.187+07
59	20250613114558_add_hide_cardmodal_activity_to_user_prefs.js	1	2026-05-12 15:48:27.189+07
60	20250715155016_change_comment_activities.js	1	2026-05-12 15:48:27.196+07
61	20250919102404_change_activities_syntax.js	1	2026-05-12 15:48:27.198+07
62	20250922113800_change_card_comment_actions.js	1	2026-05-12 15:48:27.199+07
63	20250922151726_fix_activities_syntax.js	1	2026-05-12 15:48:27.2+07
64	20250925085253_add_activity_scope.js	1	2026-05-12 15:48:27.201+07
65	20250925094607_add_activity_board_project_ids.js	1	2026-05-12 15:48:27.206+07
66	20250925160234_add_notification_deleted_at2.js	1	2026-05-12 15:48:27.209+07
67	20251009231614_add_hide_closest_due_date.js	1	2026-05-12 15:48:27.21+07
68	20251010141426_add_sso_oidc_to_user.js	1	2026-05-12 15:48:27.211+07
69	20251013185845_add_sync_sso_data_on_auth_to_core.js	1	2026-05-12 15:48:27.212+07
70	20251013210115_add_sync_sso_admin_on_auth_to_core.js	1	2026-05-12 15:48:27.212+07
71	20251014195222_add_allowed_register_domains.js	1	2026-05-12 15:48:27.456+07
72	20251017122457_add_theme_shape_to_user_prefs.js	1	2026-05-12 15:48:27.46+07
73	20251018005900_add_theme_to_user_prefs.js	1	2026-05-12 15:48:27.461+07
74	20251018183654_add_sso_github_email_to_user_account_fix_user_prefs.js	1	2026-05-12 15:48:27.47+07
75	20251119143902_fix_activity_scopes.js	1	2026-05-12 15:48:27.475+07
76	20251119174957_fix_card_comment_create_action_format.js	1	2026-05-12 15:48:27.476+07
77	20251128211159_change_actions_for_projects_boards.js	1	2026-05-12 15:48:27.504+07
78	20251212183143_add_other_notifications.js	1	2026-05-12 15:48:27.508+07
79	20251217164839_separate_comments.js	1	2026-05-12 15:48:27.523+07
80	20251219151855_fix_notification_deleted_at_format.js	1	2026-05-12 15:48:27.526+07
81	20251219155412_add_comment_id_to_actions.js	1	2026-05-12 15:48:27.528+07
82	20251223174016_fix_actions_missing_extra_ids.js	1	2026-05-12 15:48:27.531+07
83	20260113102950_add_subscriptions_for_project_board_user_instance.js	1	2026-05-12 15:48:27.563+07
84	20260120171344_add_core_id_to_actions_and_notifications.js	1	2026-05-12 15:48:27.566+07
85	20260120222218_add_duplicate_of_id_to_action.js	1	2026-05-12 15:48:27.567+07
86	20260129215322_add_theme_custom_colors_to_user_prefs.js	1	2026-05-12 15:48:27.569+07
87	20260221132936_create_mail_token_table.js	1	2026-05-12 15:48:27.602+07
88	20260221132939_create_api_client_table.js	1	2026-05-12 15:48:27.636+07
89	20260224111420_add_notifications_settings_to_user_prefs.js	1	2026-05-12 15:48:27.649+07
90	20260309182733_add_delivered_at_and_scope_to_notification.js	1	2026-05-12 15:48:27.676+07
91	20260325102305_add_notification_types_to_user_prefs.js	1	2026-05-12 15:48:27.681+07
92	20260325132824_add_is_created_via_api_mail_creator_address_to_card.js	1	2026-05-12 15:48:27.685+07
93	20260413224656_add_is_verified_to_user_account.js	1	2026-05-12 15:48:27.686+07
94	20260415170120_add_failed_auth_table.js	1	2026-05-12 15:48:27.715+07
95	20260509172701_add_last_email_verification_request_at_to_user_account.js	1	2026-05-12 15:48:27.717+07
\.


--
-- Data for Name: migration_lock; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.migration_lock (index, is_locked) FROM stdin;
1	0
\.


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.notification (id, user_id, action_id, card_id, is_read, created_at, updated_at, deleted_at, attachment_id, task_id, comment_id, list_id, board_id, project_id, user_account_id, core_id, delivered_at, scope) FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.project (id, name, background, created_at, updated_at, background_image, created_by_id, updated_by_id) FROM stdin;
1773223017992684548	Getting started	\N	2026-05-12 08:57:36	2026-05-12 08:57:39	\N	1773218417889772545	1773218417889772545
\.


--
-- Data for Name: project_manager; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.project_manager (id, project_id, user_id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1773223018277897221	1773223017992684548	1773218417889772545	2026-05-12 08:57:36	\N	1773218417889772545	\N
\.


--
-- Data for Name: project_membership; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.project_membership (id, project_id, user_id, is_collapsed, is_subscribed, created_at, updated_at) FROM stdin;
1773223018957374470	1773223017992684548	1773218417889772545	f	t	2026-05-12 08:57:36	\N
\.


--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.session (id, user_id, access_token, remote_address, user_agent, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.task (id, card_id, name, is_completed, created_at, updated_at, "position", due_date, created_by_id, updated_by_id) FROM stdin;
1773223040096666702	1773223038033069118	Sample task	f	2026-05-12 08:57:38	\N	65535	\N	1773218417889772545	\N
1773223040499319887	1773223038033069118	Finished task	t	2026-05-12 08:57:38	\N	131070	\N	1773218417889772545	\N
1773223040499319888	1773223038033069118	Task with Due Date	f	2026-05-12 08:57:38	\N	196605	2024-10-17 10:00:00	1773218417889772545	\N
1773223040499319889	1773223038033069118	Task with Member	f	2026-05-12 08:57:38	\N	262140	\N	1773218417889772545	\N
\.


--
-- Data for Name: task_membership; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.task_membership (id, task_id, user_id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1773223042663580773	1773223040499319889	1773218417889772545	2026-05-12 08:57:39	\N	1773218417889772545	\N
\.


--
-- Data for Name: user_account; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.user_account (id, email, password, is_admin, name, username, phone, organization, created_at, updated_at, deleted_at, password_changed_at, avatar, last_login, sso_google_email, sso_github_id, sso_microsoft_id, sso_google_id, sso_github_username, sso_microsoft_email, created_by_id, updated_by_id, deleted_by_id, sso_oidc_id, sso_oidc_email, sso_github_email, is_verified, last_email_verification_request_at) FROM stdin;
1773218417889772545	demo@demo.demo	$2b$10$4x6lUcdmLsuO6j0qQLq3BuxI7fBF6l9e/5Htt1wJHCDNMJaSqBSE.	t	Demo Demo	demo	\N	\N	2026-05-12 08:48:27	\N	\N	\N	\N	2026-05-12 08:57:39.235	\N	\N	\N	\N	\N	\N	1773218417889772545	\N	\N	\N	\N	\N	f	\N
\.


--
-- Data for Name: user_prefs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.user_prefs (id, subscribe_to_own_cards, language, description_mode, description_shown, tasks_shown, attachments_shown, comments_shown, comment_mode, sidebar_compact, created_at, updated_at, default_view, list_view_style, list_view_column_visibility, list_view_fit_screen, list_view_items_per_page, users_settings_style, users_settings_column_visibility, users_settings_fit_screen, users_settings_items_per_page, preferred_details_font, hide_card_modal_activity, hide_closest_due_date, theme_shape, theme, subscribe_to_new_boards, subscribe_to_new_projects, subscribe_to_users, subscribe_to_instance, theme_custom_colors, email_notifications_enabled, email_notifications_types, email_notifications_delivery_mode, email_notifications_mark_read_as_delivered, notification_types) FROM stdin;
1773218417889772545	f	\N	edit	t	t	t	t	edit	f	2026-05-12 08:57:35	\N	board	compact	{"name": true, "tasks": true, "timer": true, "users": true, "labels": true, "actions": true, "dueDate": true, "coverUrl": false, "listName": true, "createdAt": false, "createdBy": false, "updatedAt": false, "updatedBy": false, "description": false, "commentCount": true, "closestDueDate": true, "hasDescription": true, "attachmentsCount": true, "notificationsCount": true}	t	all	compact	{"name": true, "email": true, "avatar": true, "actions": true, "username": true, "createdAt": false, "createdBy": false, "lastLogin": true, "updatedAt": false, "updatedBy": false, "ssoOidcEmail": false, "administrator": true, "ssoGithubEmail": false, "ssoGoogleEmail": false, "emailVerification": true, "ssoGithubUsername": false, "ssoMicrosoftEmail": false}	t	all	default	f	f	default	default	t	t	f	t	{}	t	["project","board","list","card","task","comment","attachment"]	instant_then_batched	t	["project","board","list","card","task","comment","attachment"]
\.


--
-- Name: migration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.migration_id_seq', 95, true);


--
-- Name: migration_lock_index_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.migration_lock_index_seq', 1, true);


--
-- Name: next_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.next_id_seq', 115, true);


--
-- Name: action action_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.action
    ADD CONSTRAINT action_pkey PRIMARY KEY (id);


--
-- Name: api_client api_client_client_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.api_client
    ADD CONSTRAINT api_client_client_id_unique UNIQUE (client_id);


--
-- Name: api_client api_client_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.api_client
    ADD CONSTRAINT api_client_pkey PRIMARY KEY (id);


--
-- Name: archive archive_from_model_original_record_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.archive
    ADD CONSTRAINT archive_from_model_original_record_id_unique UNIQUE (from_model, original_record_id);


--
-- Name: archive archive_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.archive
    ADD CONSTRAINT archive_pkey PRIMARY KEY (id);


--
-- Name: attachment attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attachment
    ADD CONSTRAINT attachment_pkey PRIMARY KEY (id);


--
-- Name: board_membership board_membership_board_id_user_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board_membership
    ADD CONSTRAINT board_membership_board_id_user_id_unique UNIQUE (board_id, user_id);


--
-- Name: board_membership board_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board_membership
    ADD CONSTRAINT board_membership_pkey PRIMARY KEY (id);


--
-- Name: board board_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board
    ADD CONSTRAINT board_pkey PRIMARY KEY (id);


--
-- Name: card_label card_label_card_id_label_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card_label
    ADD CONSTRAINT card_label_card_id_label_id_unique UNIQUE (card_id, label_id);


--
-- Name: card_label card_label_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card_label
    ADD CONSTRAINT card_label_pkey PRIMARY KEY (id);


--
-- Name: card_membership card_membership_card_id_user_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card_membership
    ADD CONSTRAINT card_membership_card_id_user_id_unique UNIQUE (card_id, user_id);


--
-- Name: card_membership card_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card_membership
    ADD CONSTRAINT card_membership_pkey PRIMARY KEY (id);


--
-- Name: card card_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (id);


--
-- Name: card_subscription card_subscription_card_id_user_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card_subscription
    ADD CONSTRAINT card_subscription_card_id_user_id_unique UNIQUE (card_id, user_id);


--
-- Name: card_subscription card_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card_subscription
    ADD CONSTRAINT card_subscription_pkey PRIMARY KEY (id);


--
-- Name: comment comment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);


--
-- Name: core core_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core
    ADD CONSTRAINT core_pkey PRIMARY KEY (id);


--
-- Name: failed_auth failed_auth_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_auth
    ADD CONSTRAINT failed_auth_pkey PRIMARY KEY (id);


--
-- Name: label label_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT label_pkey PRIMARY KEY (id);


--
-- Name: list list_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.list
    ADD CONSTRAINT list_pkey PRIMARY KEY (id);


--
-- Name: mail_token mail_token_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mail_token
    ADD CONSTRAINT mail_token_pkey PRIMARY KEY (id);


--
-- Name: mail_token mail_token_token_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mail_token
    ADD CONSTRAINT mail_token_token_unique UNIQUE (token);


--
-- Name: migration_lock migration_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migration_lock
    ADD CONSTRAINT migration_lock_pkey PRIMARY KEY (index);


--
-- Name: migration migration_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migration
    ADD CONSTRAINT migration_pkey PRIMARY KEY (id);


--
-- Name: notification notification_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (id);


--
-- Name: project_manager project_manager_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_manager
    ADD CONSTRAINT project_manager_pkey PRIMARY KEY (id);


--
-- Name: project_manager project_manager_project_id_user_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_manager
    ADD CONSTRAINT project_manager_project_id_user_id_unique UNIQUE (project_id, user_id);


--
-- Name: project_membership project_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_membership
    ADD CONSTRAINT project_membership_pkey PRIMARY KEY (id);


--
-- Name: project_membership project_membership_project_id_user_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_membership
    ADD CONSTRAINT project_membership_project_id_user_id_unique UNIQUE (project_id, user_id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);


--
-- Name: session session_access_token_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_access_token_unique UNIQUE (access_token);


--
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (id);


--
-- Name: task_membership task_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_membership
    ADD CONSTRAINT task_membership_pkey PRIMARY KEY (id);


--
-- Name: task_membership task_membership_task_id_user_id_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_membership
    ADD CONSTRAINT task_membership_task_id_user_id_unique UNIQUE (task_id, user_id);


--
-- Name: task task_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- Name: user_account user_account_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (id);


--
-- Name: user_account user_email_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_email_unique EXCLUDE USING btree (email WITH =) WHERE ((deleted_at IS NULL));


--
-- Name: user_prefs user_prefs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_prefs
    ADD CONSTRAINT user_prefs_pkey PRIMARY KEY (id);


--
-- Name: user_account user_username_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_username_unique EXCLUDE USING btree (username WITH =) WHERE (((username IS NOT NULL) AND (deleted_at IS NULL)));


--
-- Name: action_card_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX action_card_id_index ON public.action USING btree (card_id);


--
-- Name: action_type_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX action_type_index ON public.action USING btree (type);


--
-- Name: api_client_client_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX api_client_client_id_index ON public.api_client USING btree (client_id);


--
-- Name: api_client_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX api_client_user_id_index ON public.api_client USING btree (user_id);


--
-- Name: attachment_card_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX attachment_card_id_index ON public.attachment USING btree (card_id);


--
-- Name: board_membership_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX board_membership_user_id_index ON public.board_membership USING btree (user_id);


--
-- Name: board_position_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX board_position_index ON public.board USING btree ("position");


--
-- Name: board_project_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX board_project_id_index ON public.board USING btree (project_id);


--
-- Name: card_board_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX card_board_id_index ON public.card USING btree (board_id);


--
-- Name: card_label_label_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX card_label_label_id_index ON public.card_label USING btree (label_id);


--
-- Name: card_list_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX card_list_id_index ON public.card USING btree (list_id);


--
-- Name: card_membership_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX card_membership_user_id_index ON public.card_membership USING btree (user_id);


--
-- Name: card_position_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX card_position_index ON public.card USING btree ("position");


--
-- Name: card_subscription_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX card_subscription_user_id_index ON public.card_subscription USING btree (user_id);


--
-- Name: comment_card_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comment_card_id_index ON public.comment USING btree (card_id);


--
-- Name: failed_auth_attempted_identifier_remote_address_created_at_inde; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX failed_auth_attempted_identifier_remote_address_created_at_inde ON public.failed_auth USING btree (attempted_identifier, remote_address, created_at);


--
-- Name: failed_auth_created_at_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX failed_auth_created_at_index ON public.failed_auth USING btree (created_at);


--
-- Name: label_board_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX label_board_id_index ON public.label USING btree (board_id);


--
-- Name: list_board_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX list_board_id_index ON public.list USING btree (board_id);


--
-- Name: list_position_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX list_position_index ON public.list USING btree ("position");


--
-- Name: mail_token_board_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mail_token_board_id_index ON public.mail_token USING btree (board_id);


--
-- Name: mail_token_list_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mail_token_list_id_index ON public.mail_token USING btree (list_id);


--
-- Name: mail_token_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX mail_token_user_id_index ON public.mail_token USING btree (user_id);


--
-- Name: notification_action_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX notification_action_id_index ON public.notification USING btree (action_id);


--
-- Name: notification_card_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX notification_card_id_index ON public.notification USING btree (card_id);


--
-- Name: notification_is_read_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX notification_is_read_index ON public.notification USING btree (is_read);


--
-- Name: notification_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX notification_user_id_index ON public.notification USING btree (user_id);


--
-- Name: project_manager_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX project_manager_user_id_index ON public.project_manager USING btree (user_id);


--
-- Name: project_membership_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX project_membership_user_id_index ON public.project_membership USING btree (user_id);


--
-- Name: session_remote_address_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX session_remote_address_index ON public.session USING btree (remote_address);


--
-- Name: session_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX session_user_id_index ON public.session USING btree (user_id);


--
-- Name: task_card_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_card_id_index ON public.task USING btree (card_id);


--
-- Name: task_membership_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_membership_user_id_index ON public.task_membership USING btree (user_id);


--
-- Name: task_position_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_position_index ON public.task USING btree ("position");


--
-- PostgreSQL database dump complete
--

\unrestrict 4ss1f5f5oh37GksyrdcgyKxYSNyJ5Hz38lEe6pDkoi7k0bkzvR73cdmywX2aYDY

