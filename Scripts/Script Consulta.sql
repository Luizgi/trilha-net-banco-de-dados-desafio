--1 Buscar o Nome e ano dos filmes--
select Id, Nome, Ano from Filmes;

--2 Buscar o Nome e ano dos filmes, ordenados por ordem crescentes pelo ano--
select Id, Nome, Ano
	from Filmes 
order by Ano asc;

--3 Buscar pelo filme de volta pro futuro, trazendo o nome, ano e a duração--
select *
	from Filmes
where Nome = 'De Volta para o Futuro';

--4 Buscar filme lançados em 1997--
select *
	from filmes
where Ano = '1997';

--5 Buscar os filmes lançados apos o ano 2000--
select * 
	from Filmes
where Ano > '2000';

--6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente--
select *
	from Filmes
where Duracao > '100' and Duracao < '150'
order by Duracao asc;

--7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente--
select 
	Ano, count(Ano) Quantidade
	from Filmes
	group by Ano
	order by Ano desc;
	
--8 Buscar os atores do gênero masculino, retornando o primeiro nome e ultimo nome--
select Id, PrimeiroNome, UltimoNome, Genero
	from Atores
	where Genero = 'M';

--9 Buscar os atores de gênero feminino, retornando primeiro nome ultimo nome, e ordenando pelo primeiro nome--
select Id, PrimeiroNome, UltimoNome, Genero
	from Atores
	where Genero = 'F'
	order by UltimoNome

--10 Buscar o nome do filme e o gênero--
select Filmes.Nome, Generos.Genero
	from Filmes, Generos, FilmesGenero
	where FilmesGenero.IdFilme = Filmes.Id and
		FilmesGenero.IdGenero = Generos.Id;

--11 Buscar o nome do filme e o gênero do tipo Mistério--
select Filmes.Nome, Generos.Genero
	from Filmes, Generos, FilmesGenero
	where FilmesGenero.IdFilme = Filmes.Id and
		FilmesGenero.IdGenero = Generos.Id and
		Generos.Genero = 'Mistério';


--12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu papel--
select	Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
	from Filmes, Atores, ElencoFilme
	where ElencoFilme.IdAtor = Atores.Id and
		ElencoFilme.IdFilme = Filmes.Id;

