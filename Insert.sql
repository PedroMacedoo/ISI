insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (1,'304578910567','123456789123','Carlos','Alberto','Rua dos pinheiros 3,','2234-723','Lisboa','CL');
insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (2,'123456789123','723718467261','Bruno','Ferreira','Rua das Flores','2215-712','Sintra','P');
insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (3,'246756980178','087886243591','Carlos','Brito','Rua Candido Oliveira','2001-567','Caldas da Rainha','P');
insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (4,'145768439087','907786654801','Antonio','Silva','Praça Francisco Sá Carneiro ','2050-702','Porto','CL');
insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (5,'10345472901','182356766910','Maria','Dias','Rua Escadinhas da Alba Longa','2710-785','Aveiro','CL');
insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (6,'097888554601','009376855791','João','luis','Rua 1º de Maio','2610-100','Viseu','C');
insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (7,'184666578902','098456789102','Rute','Machado','Travessa Jogo da Bola','2110-223','Mafra','C');

insert into proprietario(idpessoa, dtnascimento)
values(2,'29/07/1989');
insert into proprietario(idpessoa, dtnascimento)
values(3,'03/04/1975');

insert into tipoveiculo(tipo, nlugares, multiplicador, designacao)
values(1,5,1,'Normal');
insert into tipoveiculo(tipo, nlugares, multiplicador, designacao)
values(2,7,1,'XL');
insert into tipoveiculo(tipo, nlugares, multiplicador, designacao)
values(3,5,1,'Luxo');

insert into veiculo(id, matricula, tipo, modelo, marca, ano, proprietario) Values
(1,'CC13DD',1,'Cabrio','BMW',2020,2),
(2,'EF25RX',3,'Macan','Porsche',2019,2),

(3,'15CX76',1,'Fiesta','Ford',2020,3),
(4,'88MN01',2,'HB20','Hyundai',2018,3),

(5,'XX77ZZ',1,'Corolla','Toyota',2020,1),
(6,'01DD22',3,'Mustang','Ford',2019,4),

(7,'44CC22',1,'Wagoneer','Jeep',2020,3),
(8,'00NN00',2,'CRV','Honda',2018,2),
(9,'CC13DD',1,'Cabrio','BMW',2020,2),
(10,'EF25RX',3,'Macan','Porsche',2019,2),
(11,'CX15DF',1,'Fiesta','Ford',2020,3);


insert into condutor(idpessoa, ncconducao, dtnascimento)
values(6,'cd-182456908','1980-01-01');
insert into condutor(idpessoa, ncconducao, dtnascimento)
values(7,'pn-453806579','2000/10/25');

insert into condhabilitado(condutor, veiculo)
values(6,1);
insert into condhabilitado(condutor, veiculo)
values(7,2);

insert into contacto(idpessoa, ntelefone)
values(1,'+351-289732295');
insert into contacto(idpessoa, ntelefone)
values(2,'+344-123732257');
insert into contacto(idpessoa, ntelefone)
values(3,'+212-896458672');
insert into contacto(idpessoa, ntelefone)
values(4,'+127-099847685');
insert into contacto(idpessoa, ntelefone)
values(5,'+244-956450923');
insert into contacto(idpessoa, ntelefone)
values(6,'+544-576435098');
insert into contacto(idpessoa, ntelefone)
values(7,'+567-876134289');

insert into periodoactivo(veiculo, condutor, dtinicio, dtfim, lat, long)
values(1,);
insert into periodoactivo(veiculo, condutor, dtinicio, dtfim, lat, long)
values(2);
insert into periodoactivo(veiculo, condutor, dtinicio, dtfim, lat, long)
values(3);
