Begin;


create table PESSOA (
    id integer PRIMARY KEY,
    noident char(12) UNIQUE,
    nif char(12) UNIQUE,
    nproprio varchar(10),
    apelido varchar(15),
    morada varchar(150),
    numtelef varchar(15),
    localidade varchar(150),
    atrdisc char(2) CHECK (atrdisc = 'P' OR atrdisc = 'C' OR atrdisc = 'CL')
);

create table PROPRIETARIO(
    idpessoa integer PRIMARY KEY ,
    dtnascimento date,
    FOREIGN KEY(idpessoa) REFERENCES PESSOA(id)
    ON DELETE CASCADE
);
create table TIPOVEICULO(
    tipo integer UNIQUE,
    nlugares integer CHECK (nlugares BETWEEN 1 and 7),
    multiplicador numeric(1),
    designacao char(10) CHECK (designacao = 'Normal' OR designacao = 'XL' OR designacao = 'Luxo')
);

create table VEICULO(
    id integer NOT NULL PRIMARY KEY,
    matricula varchar(10) UNIQUE CHECK ( matricula ~ '^([0-9][0-9][A-Z][A-Z][0-9][0-9]) | ([A-Z][A-Z][0-9][0-9][A-Z][A-Z])$') ,
    tipo integer,
    modelo varchar(10),
    marca varchar(10),
    ano integer CHECK (date_part('year',current_date)-ano <= 5),
    proprietario integer CHECK ( NOT NULL),
    FOREIGN KEY (tipo) REFERENCES TIPOVEICULO(tipo),
    FOREIGN KEY (proprietario) REFERENCES PROPRIETARIO(idpessoa)
    ON DELETE CASCADE
);

create table CONDUTOR(
    idpessoa integer UNIQUE ,
    ncconducao varchar(20) CHECK (ncconducao ~ '^([a-z][a-z]\-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9])$'),
    dtnascimento date CHECK (date_part('year',current_date)-date_part('year',dtnascimento) >= 18),
    FOREIGN KEY (idpessoa) REFERENCES PESSOA(id)
    ON DELETE CASCADE
);

create table CONDHABILITADO(
    condutor integer,
    veiculo integer,
    FOREIGN KEY (condutor) REFERENCES CONDUTOR(idpessoa),
    FOREIGN KEY (veiculo) REFERENCES VEICULO(id)
    ON DELETE CASCADE
);

create table CONTACTO(
    idpessoa integer UNIQUE ,
    ntelefone varchar (15) CHECK ( ntelefone ~ '^(\+[0-9]{1,3}\-[0-9]{9})$'),
    FOREIGN KEY (idpessoa) REFERENCES PESSOA(id)
    ON DELETE CASCADE
);

create table CORVEICULO(
    veiculo integer,
    cor varchar(10),
    FOREIGN KEY (veiculo) REFERENCES VEICULO(id)
    ON DELETE CASCADE
);

create table PERIODOACTIVO(
    veiculo integer UNIQUE ,
    condutor integer UNIQUE ,
    dtinicio timestamp UNIQUE CHECK ( current_timestamp>dtinicio ),
    dtfim timestamp CHECK ( dtinicio<current_timestamp ),
    lat decimal(6,2),
    long decimal(6,2),
    FOREIGN KEY (veiculo) REFERENCES VEICULO(id),
    FOREIGN KEY (condutor) REFERENCES CONDUTOR(idpessoa)
    ON DELETE CASCADE
);
create table VIAGEM(
    idsistema integer PRIMARY KEY ,
    hinicio time ,
    hfim time CHECK ( (hfim > hinicio) ),
    dtviagem date,
    valestimado decimal(5,2),
    valfinal decimal(5,2),
    latinicio decimal(6,2),
    longinicio decimal(6,2),
    latfim decimal(6,2) CHECK (latfim != latinicio),
    longfim decimal(6,2) CHECK (longfim != longinicio),
    classificacao integer CHECK (classificacao IN (1,2,3,4,5)),
    veiculo integer,
    condutor integer,
    dtinicio timestamp,
    FOREIGN KEY (veiculo) REFERENCES PERIODOACTIVO(veiculo),
    FOREIGN KEY (condutor) REFERENCES PERIODOACTIVO(condutor),
    FOREIGN KEY (dtinicio) REFERENCES PERIODOACTIVO(dtinicio)
    ON DELETE CASCADE
);

create table CLIENTEVIAGEM(
    idpessoa integer,
    viagem integer,
    FOREIGN KEY (idpessoa) REFERENCES PESSOA(id),
    FOREIGN KEY (viagem) REFERENCES VIAGEM(idsistema)
    ON DELETE CASCADE
);



COMMIT ;