insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (1,'304578910567','123456789123','Carlos','Alberto','Rua dos pinheiros 3,','2234-723','Lisboa','CL');

insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (2,'123456789123','723718467261','Bruno','Ferreira','Rua das Flores','2215-712','Sintra','P');

insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (3,'246756980178','087886243591','Carlos','Brito','Rua Candido Oliveira','2001-567','Caldas da Rainha','P');

insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (4,'145768439087','907786654801','Antonio','Silva','Praça Francisco Sá Carneiro ','2050-702','Porto','CL');

insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (5,'10345472901','182356766910','Pedro','Macedo','Rua Escadinhas da Alba Longa','2710-785','Aveiro','CL');

insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (6,'097888554601','009376855791','Pedro','Macedo','Rua 1º de Maio','2610-100','Viseu','C');

insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)
values (7,'184666578902','098456789102','Pedro','Macedo','Travessa Jogo da Bola','2110-223','Mafra','C');


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



insert into veiculo(id, matricula, tipo, modelo, marca, ano, proprietario)
values(1,'CC13DD',1,'Cabrio','BMW',2020,2);
insert into veiculo(id, matricula, tipo, modelo, marca, ano, proprietario)
values(2,'EF25RX',3,'Macan','Porsche',2019,2);

insert into veiculo(id, matricula, tipo, modelo, marca, ano, proprietario)
values(3,'15CX76',1,'Fiesta','Ford',2020,3);
insert into veiculo(id, matricula, tipo, modelo, marca, ano, proprietario)
values(4,'88MN01',2,'HB20','Hyundai',2018,3);



