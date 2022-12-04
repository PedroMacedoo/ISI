delete  from  clienteviagem cascade;
delete  from  viagem cascade;
delete  from  periodoactivo cascade;
delete  from  corveiculo cascade;
delete  from  contacto cascade;
delete  from  condhabilitado cascade;
delete  from  condutor cascade;
delete  from  veiculo cascade;
delete  from  tipoveiculo cascade;
delete  from  proprietario cascade;
delete  from  pessoa cascade;

alter sequence pessoa_id_seq restart with 1;
alter sequence tipoveiculo_tipo_seq restart with 1;
alter sequence veiculo_id_seq restart with 1;
alter sequence viagem_idsistema_seq restart with 1;