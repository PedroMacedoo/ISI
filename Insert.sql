insert into pessoa(id,noident,nif,nproprio,apelido,morada,codpostal,localidade,atrdisc)Values
(1,'304578910567','123456789123','Carlos','Alberto','Rua dos pinheiros 3,','2234-723','Lisboa','CL'),
(2,'123456789123','723718467261','Bruno','Ferreira','Rua das Flores','2215-712','Sintra','P'),
(3,'246756980178','087886243591','Carlos','Brito','Rua Candido Oliveira','2001-567','Caldas da Rainha','P'),
(4,'145768439087','907786654801','Antonio','Silva','Praça Francisco Sá Carneiro ','2050-702','Porto','CL'),
(5,'103454729021','182356766910','Maria','Dias','Rua Escadinhas da Alba Longa','2710-785','Aveiro','CL'),
(6,'097888554601','009376855791','João','Luis','Rua 1º de Maio','2610-100','Viseu','C'),
(7,'184666578902','098456789102','Rute','Machado','Travessa Jogo da Bola','2110-223','Mafra','CL'),
(8,'234567890912','469386529628','Alberto','Macedo','Rua Parque dos Domingos','2610-232','Viseu','C'),
(9,'456564356437','456754754675','Vasco','Corolla','Rua Torga','2610-151','Castelo Branco','CL'),
(10,'234567865432','458656548654','Pedro','Dinis','Rua Manuelino','1251-987','Coimbra','P'),
(11,'530238503203','345656434644','Cristão','Datsun','Rua Zécafonso','2612-643','Santarém','C'),
(12,'238059350235','866786766866','Guilherme','Toyota','Rua Guilhermino','2608-434','Algarve','CL'),
(13,'358092835804','356653656577','Xavier','San','Rua 2º de Maio','2610-246','Faro','P'),
(14,'197297428375','564794679657','Miguel','Aveiro','Rua 25 de Abril','2642-876','Bragança','P'),
(15,'809123023412','478578647967','Gaspar','Londrino','Rua São Batista de Ajudá','2623-678','Viana do Castelo','C'),
(16,'234870928342','596479567867','Hugo','Telheiras','Rua 1º de Junho','7699-353','Coimbra','CL');

insert into proprietario(idpessoa, dtnascimento)Values
(2,'29/07/1989'),
(3,'03/04/1975');

insert into tipoveiculo(tipo, nlugares, multiplicador, designacao)Values
(1,5,1,'Normal'),
(2,7,1,'XL'),
(3,5,1,'Luxo');

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


insert into condutor(idpessoa, ncconducao, dtnascimento)Values
(6,'cd-182456908','1980-01-01'),
(7,'pn-453806579','2000/10/25');

insert into condhabilitado(condutor, veiculo)Values
(6,1),
(7,2);

insert into contacto(idpessoa, ntelefone)Values
(1,'+351-289732295'),
(2,'+344-123732257'),
(3,'+212-896458672'),
(4,'+127-099847685'),
(5,'+244-956450923'),
(6,'+544-576435098'),
(7,'+567-876134289');

insert into corveiculo(veiculo, cor)Values
(1, 'Preto'),
(2, 'Amarelo'),
(3, 'Vermelho'),
(4, 'Cor de Rosa'),
(5, 'Laranja'),
(6, 'Castanho'),
(7, 'Mostarda'),
(8, 'Salmão');


insert into periodoactivo(veiculo, condutor, dtinicio, dtfim, lat, long)
values(1,);
insert into periodoactivo(veiculo, condutor, dtinicio, dtfim, lat, long)
values(2);
insert into periodoactivo(veiculo, condutor, dtinicio, dtfim, lat, long)
values(3);

insert into viagem()