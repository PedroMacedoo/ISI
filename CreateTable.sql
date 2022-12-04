Begin;


create table PESSOA (
    id serial PRIMARY KEY,
    noident char(12) UNIQUE,
    nif char(12) UNIQUE,
    nproprio varchar(10),
    apelido varchar(15),
    morada varchar(150),
    telNumber varchar(15) CHECK ( PESSOA.telNumber ~ '^\+([0-9]{3}\-[0-9]{9})$'),
    localidade varchar(150),
    atrdisc char(2) CHECK (atrdisc = 'P' OR atrdisc = 'C' OR atrdisc = 'CL')
);

create table PROPRIETARIO(
    idpessoa integer PRIMARY KEY ,
    dtnascimento date check ( date_part('year',age(dtnascimento)) >= '18'),
    FOREIGN KEY(idpessoa) REFERENCES PESSOA(id)
    ON DELETE CASCADE
);
create table TIPOVEICULO(
    tipo serial PRIMARY KEY ,
    nlugares integer CHECK (nlugares BETWEEN 1 and 7),
    multiplicador numeric(1),
    designacao char(10) constraint designacao CHECK (designacao = 'Normal' OR designacao = 'XL' OR designacao = 'Luxo')
);

create table VEICULO(
    id serial NOT NULL PRIMARY KEY,
    matricula varchar(10) UNIQUE CHECK ( matricula ~ '^([A-Z]{2}[0-9]{2}[A-Z]{2})$' OR matricula ~'^([0-9]{2}[A-Z]{2}[0-9]{2})$') ,
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
    ncconducao varchar(20) CHECK (ncconducao ~ '^([a-z]{2}\-[0-9]{9})$'),
    dtnascimento date check ( date_part('year',age(dtnascimento)) >= '18'),
    FOREIGN KEY (idpessoa) REFERENCES PESSOA(id)
    ON DELETE CASCADE
);

create table CONDHABILITADO(
    condutor integer references CONDUTOR(idpessoa) ON DELETE CASCADE,
    veiculo integer references VEICULO(id)  ON DELETE CASCADE,
    constraint SuperCondHabilitado PRIMARY KEY (condutor,veiculo)
);

create table CONTACTO(
    idpessoa integer unique references PESSOA(id) ON DELETE CASCADE ,
    ntelefone varchar (15) CHECK ( ntelefone ~ '^(\+[0-9]{1,3}\-[0-9]{9})$'),
    constraint SuperContacto PRIMARY KEY (idpessoa,ntelefone)
);

create table CORVEICULO(
    veiculo integer unique references VEICULO(id) ON DELETE CASCADE,
    cor varchar(10),
    constraint SuperCorVeiculo PRIMARY KEY (veiculo,cor)
);

create table PERIODOACTIVO(
    veiculo integer references VEICULO(id) ON DELETE CASCADE ,
    condutor integer references CONDUTOR(idpessoa) ON DELETE CASCADE ,
    dtinicio timestamp CHECK ( current_timestamp>dtinicio ),
    dtfim timestamp unique CHECK ( dtinicio<dtfim ),
    lat decimal(6,2),
    long decimal(6,2),
    constraint SuperKEY PRIMARY KEY (veiculo,condutor,dtinicio)
);
create table VIAGEM(
    idsistema serial PRIMARY KEY ,
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
    veiculo integer ,
    condutor integer,
    dtinicio timestamp,
    FOREIGN KEY (veiculo,condutor,dtinicio) references PERIODOACTIVO(veiculo, condutor, dtinicio)
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