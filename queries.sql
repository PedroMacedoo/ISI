--2(C)
select id,nproprio,apelido,viagensOn2021
from (select id,nproprio,apelido,count(dtviagem) as viagensOn2021
        from pessoa,(select periodoactivo.condutor,dtviagem
            from periodoactivo,viagem
            where viagem.condutor=periodoactivo.condutor AND dtviagem::text LIKE '2021%') as date
        where id=date.condutor
    group by id) viagens
where viagens.viagensOn2021=(select max(viagensOn2021) from (select id,nproprio,apelido,count(dtviagem) as viagensOn2021
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


--3(B)
select veiculo , count(dtviagem) as NumeroDeViagens
    from viagem,(select veiculo.id,proprietario
            from veiculo,(select id
                from pessoa
                where nif='123456789123') as prop
            where prop.id=proprietario) as v
    where dtviagem::text LIKE '2021%' and veiculo=v.proprietario
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









