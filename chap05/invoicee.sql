#初期化
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS jobs;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS works;
DROP TABLE IF EXISTS contents;
DROP TABLE IF EXISTS tax;

#テーブル作成
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE clients (
        id INTEGER NOT NULL,
        client_name VARCHAR,
        PRIMARY KEY (id)
);
CREATE TABLE tax (
    id INTEGER NOT NULL,
    rate NUMERIC(4,2) NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE tools (
    id INTEGER NOT NULL,
    tool_type VARCHAR,
    price INTEGER,
    tax_rate_id INTEGER NOT NULL,

    FOREIGN KEY (tax_rate_id) REFERENCES tax (id),
    PRIMARY KEY(id)
);
CREATE TABLE works (
    id INTEGER NOT NULL,
    work_type VARCHAR,
    price INTEGER,
    tax_rate_id INTEGER NOT NULL,

    FOREIGN KEY (tax_rate_id) REFERENCES tax (id),
    PRIMARY KEY(id)
);
CREATE TABLE jobs(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    created DATE NOT NULL,
    tool_type_id INTEGER NOT NULL,
    client_id INTEGER NOT NULL,
    price INTEGER NOT NULL,
    invoiced INTEGER NOT NULL,

    FOREIGN KEY (tool_type_id) REFERENCES tools (id),
    FOREIGN KEY (client_id) REFERENCES clients (id)
);

CREATE TABLE contents (
    id SERIAL PRIMARY KEY,
    created DATE NOT NULL,
    job_id INTEGER NOT NULL,
    work_id INTEGER NOT NULL,
    work_content TEXT NOT NULL,
    tax_rate_id INTEGER NOT NULL,

    FOREIGN KEY (job_id) REFERENCES jobs (id),
    FOREIGN KEY (work_id) REFERENCES works (id),
    FOREIGN KEY (tax_rate_id) REFERENCES tax (id)
);

