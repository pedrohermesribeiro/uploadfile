create database uploadfile;
use uploadfile;

CREATE TABLE arquivos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    dados LONGBLOB NOT NULL  -- Use "LONGBLOB" para MySQL
);
