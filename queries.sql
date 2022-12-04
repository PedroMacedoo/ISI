BEGIN;

--2(C)
select id,nproprio,apelido,viagensOn2021
from (select id,nproprio,apelido,count(dtviagem) as viagensOn2021
        from pessoa,(select periodoactivo.condutor,dtviagem
            from periodoactivo,viagem
            where viagem.condutor=periodoactivo.condutor AND dtviagem::text LIKE '2021%') as date
        where id=date.condutor
    group by id) viagens
where viagens.viagensOn2021=(select max(viagensOn2021) from (select count(dtviagem) as viagensOn2021
        from pessoa,(select periodoactivo.condutor,dtviagem
            from periodoactivo,viagem
            where viagem.condutor=periodoactivo.condutor AND dtviagem::text LIKE '2021%') as date
        where id=date.condutor
    group by id) viagens)
;


--2(D)
select id,nproprio,apelido,nif
    from pessoa,
        (select idpessoa
            from condutor
        EXCEPT
        (select idpessoa
            from condutor
        INTERSECT
        select condutor
            from viagem))as NRV
where id=NRV.idpessoa;


--2(E)
select nproprio,apelido,viagens2021.NumerodeViajens
    from pessoa join (select viagem.condutor,count(dtviagem) as NumerodeViajens
    from viagem
where dtviagem::text LIKE '2021%'
group by viagem.condutor) as viagens2021 on pessoa.id = viagens2021.condutor;


--3(B)
select veiculo , count(veiculo) as NumeroDeViagens
    from viagem,(select veiculo.id,proprietario
            from veiculo,(select id
                from pessoa
                where nif='723718467261') as prop
            where prop.id=proprietario) as v
    where veiculo=v.id
    group by veiculo;

--3(C)
select id,noident,nproprio,apelido,morada
    from pessoa,
        (select condutor,total
        from (select condutor,sum(valfinal) as total
            from viagem
                where dtviagem::text LIKE '2021%' and condutor=viagem.condutor
            group by condutor) as totalmoney
        where total=(select max(total) from (select condutor,sum(valfinal) as total
            from viagem
                where dtviagem::text LIKE '2021%' and condutor=viagem.condutor
            group by condutor) as totalmoney )) as maxTotal
where pessoa.id=maxTotal.condutor
;

--3(D)
select nproprio,apelido,viagens2021.NumerodeViagens
    from pessoa join (select viagem.condutor,count(dtviagem) as NumerodeViagens
    from viagem
where dtviagem::text LIKE '2021%'
group by viagem.condutor) as viagens2021 on pessoa.id = viagens2021.condutor and viagens2021.NumerodeViagens < 3;


--3(E)
--) Crie uma vista CONDUTORVIAGENSPORANO que permita produzir, para cada condutor em cada ano, o total de viagens e a soma dos precos finais dessas viagens.

CREATE VIEW CONDUTORVIAGENSPORANO AS
select distinct condutor,count(condutor) as NumerodeViagens,sum(valfinal),(date_part('year',dtviagem)) as Year
from viagem
group by year, condutor;


--3(F)

CREATE TABLE ViagensAnuais as (
    select distinct idpessoa,nproprio,apelido,count(idpessoa) as numerodeviagens, date_part ('year',dtviagem) as ano
    from clienteviagem,viagem,pessoa
    where extract(year from dtviagem)=2021 and pessoa.id=clienteviagem.idpessoa
    group by idpessoa,nproprio,apelido,dtviagem,ano);



COMMIT;






