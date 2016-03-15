-- In pgAdmin, create a new database table
-- Add this SQL to the SQL tab to create the tables and data needed
CREATE TABLE syntax_practice (
    username character varying(12),
    city character varying(128),
    transactions_completed integer,
    transactions_attempted integer,
    account_balance numeric(12,2),
    user_id integer NOT NULL
);


--
-- Name: COLUMN syntax_practice.username; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN syntax_practice.username IS 'uniquely identifies a user';


--
-- Name: COLUMN syntax_practice.city; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN syntax_practice.city IS 'City where username resides';


--
-- Name: COLUMN syntax_practice.transactions_completed; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN syntax_practice.transactions_completed IS 'Number of transactions user made at bank';


--
-- Name: COLUMN syntax_practice.transactions_attempted; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN syntax_practice.transactions_attempted IS 'Number of transactions attempted by user';


--
-- Name: COLUMN syntax_practice.account_balance; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN syntax_practice.account_balance IS 'Amount user has in account';


--
-- Name: syntax_practice_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE syntax_practice_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: syntax_practice_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE syntax_practice_user_id_seq OWNED BY syntax_practice.user_id;


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY syntax_practice ALTER COLUMN user_id SET DEFAULT nextval('syntax_practice_user_id_seq'::regclass);


--
-- Data for Name: syntax_practice; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance, user_id) VALUES ('shawn', 'chicago', 5, 10, 355.80, 1);
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance, user_id) VALUES ('cherise', 'minneapolis', 9, 9, 4000.00, 2);
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance, user_id) VALUES ('larry', 'minneapolis', 3, 4, 77.01, 3);
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance, user_id) VALUES ('dallas', 'new york', 6, 12, 0.99, 4);
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance, user_id) VALUES ('anthony', 'chicago', 0, 0, 0.00, 5);
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance, user_id) VALUES ('travis', 'miami', 1, 100, 500000.34, 6);
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance, user_id) VALUES ('davey', 'chicago', 9, 99, 98.04, 7);
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance, user_id) VALUES ('ora', 'phoenix', 88, 90, 3.33, 8);


--
-- Name: syntax_practice_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('syntax_practice_user_id_seq', 8, true);


--
-- Name: user_id; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY syntax_practice
    ADD CONSTRAINT user_id PRIMARY KEY (user_id);



