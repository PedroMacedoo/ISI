insert into pessoa(noident,nif,nproprio,apelido,morada,telNumber,localidade,atrdisc)
Values
('304578910567','123456789123','Carlos','Alberto','Rua dos pinheiros 3,','+312-915717521','Lisboa','CL'),
('123456789123','723718467261','Bruno','Ferreira','Rua das Flores','+698-023780900','Sintra','P'),
('246756980178','087886243591','Carlos','Brito','Rua Candido Oliveira','+985-150074658','Caldas da Rainha','P'),
('145768439087','907786654801','Antonio','Silva','Praça Francisco Sá Carneiro ','+146-012647843','Porto','CL'),
('103454729021','182356766910','Maria','Dias','Rua Escadinhas da Alba Longa','+746-745145369','Aveiro','CL'),
('097888554601','009376855791','João','Luis','Rua 1º de Maio','+458-369452016','Viseu','C'),
('184666578902','098456789102','Rute','Machado','Travessa Jogo da Bola','+316-875412001','Mafra','CL'),
('234567890912','469386529628','Alberto','Macedo','Rua Parque dos Domingos','+985-485321000','Viseu','C'),
('456564356437','456754754675','Vasco','Corolla','Rua Torga','+488-478635940','Castelo Branco','CL'),
('234567865432','458656548654','Pedro','Dinis','Rua Manuelino','+746-023259800','Coimbra','P'),
('530238503203','345656434644','Cristão','Datsun','Rua Zécafonso','+014-100259640','Santarém','C'),
('238059350235','866786766866','Guilherme','Toyota','Rua Guilhermino','+958-652748010','Algarve','CL'),
('358092835804','356653656577','Xavier','San','Rua 2º de Maio','+716-845362010','Faro','P'),
('197297428375','564794679657','Miguel','Aveiro','Rua 25 de Abril','+146-759140230','Bragança','P'),
('809123023412','478578647967','Gaspar','Londrino','Rua São Batista de Ajudá','+345-915786320','Viana do Castelo','C'),
('234870928342','596479567867','Hugo','Telheiras','Rua 1º de Junho','+741-845369520','Coimbra','CL');

insert into proprietario(idpessoa, dtnascimento)Values
(2,'29/07/1989'),
(3,'03/04/1975'),
(10,'17/08/2000');

insert into tipoveiculo(nlugares, multiplicador, designacao)Values
(5,1,'Normal'),
(7,1,'XL'),
(5,2,'Luxo');

insert into veiculo(matricula, tipo, modelo, marca, ano, proprietario) Values
('CC13DD',1,'Cabrio','BMW',2020,2),
('EF25RX',3,'Macan','Porsche',2019,2),
('15CX76',1,'Fiesta','Ford',2020,10),
('88MN01',2,'HB20','Hyundai',2018,3),
('XX77ZZ',1,'Corolla','Toyota',2020,2),
('01DD22',3,'Mustang','Ford',2019,10),
('44CC22',1,'Wagoneer','Jeep',2020,3),
('00NN00',2,'CRV','Honda',2018,2),
('CX15DF',1,'Fiesta','Ford',2020,10);


insert into condutor(idpessoa, ncconducao, dtnascimento)Values
(6,'cd-182456908','1980-01-01'),
(7,'pn-453806579','2000/10/25'),
(15,'km-198478289','2001/07/08');

insert into condhabilitado(condutor, veiculo)Values
(6,1),
(7,2),
(7,3),
(15,4);

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
(4, 'CordeRosa'),
(5, 'Laranja'),
(6, 'Castanho'),
(7, 'Mostarda'),
(8, 'Salmão');


insert into periodoactivo(veiculo, condutor, dtinicio, dtfim, lat, long)
values
(1,6,'2020-04-12 12:24','2020-05-12 23:04',1.0,27.9),
(2,7,'2020-05-12 12:24','2020-06-12 23:04',14.6,2.9),
(4,15,'2021-04-12 10:23','2022-08-04 18:17',12.6,-16.9);

insert into viagem(hinicio, hfim, dtviagem, valestimado, valfinal, latinicio, longinicio, latfim, longfim, classificacao, veiculo, condutor, dtinicio)
VALUES
('8:47:45','8:58:02','16-05-2020',9.47,9.12,0.50, 0.70,40.0,10.6,4,1,6,'2020-04-12 12:24:00'),
('10:23:45','11:00:02','05-05-2021',91.99,90.41,0.67, 0.34,0.65,0.80,5,2,7,'2020-05-12 12:24:00'),
('17:26:12','17:30:54','03-05-2022',4.68,5.08,0.80, 0.75,0.83,0.89,2,4,15,'2021-04-12 10:23:00'),
('20:19:34','20:30:54','25-10-2021',10.95,9.82,0.20,0.39,0.53,0.6,4,2,7,'2020-05-12 12:24:00');


insert into clienteviagem(idpessoa, viagem)
VALUES
(16,1),
(12,2),
(4,3),
(4,4);