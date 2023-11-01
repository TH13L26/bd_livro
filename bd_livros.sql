create database db_livraria;
use db_livraria;

create table tb_livro(
	PK_ID_livro int primary key not null auto_increment,
    nome_livro varchar (100),
    genero_livro enum ('romance', 'misterio', 'aventura', 'suspense', 'comedia', 'ficcao', 'policial','bibliografia'),
    autor_livro varchar (50),
    editora_livro varchar (50),
    data_publi date,
    capa_livro enum ('roller', 'mole', 'cartao', 'parana'),
    valor_livro decimal (10,2),
    rating enum ('otimo', 'bom', 'regular', 'ruim', 'pessimo')
);


describe tb_livro;
select * from tb_livro;

insert into tb_livro
(nome_livro, genero_livro, autor_livro, editora_livro, data_publi, capa_livro, valor_livro, rating) value
('1q84', 'ficcao', 'Haruk Murakamoi', 'saraiva', '2009-08-02', 'mole', 50, 'otimo'),
('Jogos Vorazes', 'ficcao', 'Suzanna Collins', 'Rocco', '2009-08-02', 'roller', 50, 'otimo'),
('Jogos Vorazes em chamas', 'ficcao', 'Suzanna Collins', 'Rocco', '2009-08-02', 'roller', 50, 'otimo'),
('Jogos Vorazes a esperança parte 1', 'ficcao', 'Suzanna Collins', 'Rocco', '2009-08-02', 'roller', 50, 'otimo'),
('Jogos Vorazes a esperança parte 2', 'ficcao', 'Suzanna Collins', 'Rocco', '2010-08-02', 'roller', 50, 'otimo'),
('Jogos Vorazes a cantiga do passaro e da serpente', 'ficcao', 'Suzanna Collins', 'Rocco', '2021-08-02', 'roller', 80, 'otimo'),
('Garota Exemplar', 'misterio', 'Gllian Flynn', 'Instituto Cultura', '2012-08-15', 'roller', 42, 'bom'),
('Objetos Cortantes', 'misterio', 'Gllian Flynn', 'Instituto Cultura', '2006-04-22', 'roller', 40, 'bom'),
('Lugares Escuros', 'misterio', 'Gllian Flynn', 'Instituto Cultura', '2009-07-18', 'roller', 30, 'bom'),
('O adulto', 'misterio', 'Gllian Flynn', 'Instituto Cultura', '2015-06-25', 'roller', 32, 'bom'),
('Hamlet', 'misterio', 'Gllian Flynn', 'Instituto Cultura', '2021-03-01', 'roller', 38, 'bom'),
('Sharp Objects', 'misterio', 'Gllian Flynn', 'Instituto Cultura', '2006-04-30', 'roller', 29, 'bom'),
('O Alquimista', 'suspense', 'Paulo Coelho', 'paralela', '1988-01-05', 'parana', 35, 'otimo'),
('Brida', 'suspense', 'Paulo Coelho', 'paralela', '1990-08-02', 'parana', 35, 'otimo'),
('Maktub', 'suspense', 'Paulo Coelho', 'paralela', '1994-11-15', 'parana', 35, 'otimo'),
('Veronika Decide Morrer', 'suspense', 'Paulo Coelho', 'gold', '1988-07-05', 'parana', 35, 'otimo'),
('Onze Minutos', 'suspense', 'Paulo Coelho', 'paralela', '2003-09-05', 'parana', 35, 'otimo'),
('Poemas Escolhidos', 'romance', 'Gregório de Matos', 'papeleta', '1988-10-25', 'mole', 15, 'otimo'),
('Quincas Borba', 'romance', 'Machado de Assis', 'paralela', '1998-08-29', 'mole', 15, 'regular'),
('Claro Enigma', 'romance', 'Carlos D Andrade', 'PNLD Literario', '1921-01-03', 'mole', 47.41, 'otimo'),
('Angustia', 'romance', 'Graciliano Ramos', 'record', '1930-12-05', 'mole', 59.90, 'otimo'),
('A Relíquia', 'romance', 'Eça de Queiróz', 'letras', '1900-12-25', 'mole', 90.50, 'otimo'),
('Mayombe', 'romance', 'Pepetela', 'letras', '1900-04-25', 'mole', 10.50, 'otimo'),
('Sagarana', 'romance', 'Guimarães Rosa', 'letras', '1700-04-17', 'mole', 65.50, 'otimo'),
('O cortiço', 'romance', 'Aluísio Azevedo', 'letras', '1500-11-06', 'mole', 50.50, 'otimo'),
('Minha vida de Menina', 'romance', 'Helena Morley', 'letras', '1984-04-25', 'mole', 60.50, 'ruim');

drop table tb_livro;


CREATE TABLE tb_autor (
    PK_ID_autor INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_autor VARCHAR(100),
    endereco_autor VARCHAR(50),
    pais_origim VARCHAR(50)
);

describe tb_autor;
select * from tb_autor;

insert into tb_autor
(nome_autor, endereco_autor, pais_origim) value
('Haruk Marakaoi', 'Rua Osasco', 'Brasil'),
('Suzanne Collins', 'Conectcut', 'Estados Unidos'),
('Gillian Flynn', 'Missouri', 'Estados Unidos'),
('Paulo Coelho', 'Rio de Janeiro', 'Brasil'),
('Gregório de Matos', 'Rio de Janeiro', 'Brasil'),
('Machado de Assis', 'Rio de Janeiro', 'Brasil'),
('Carlos D Andrade', 'Rio de Janeiro', 'Brasil'),
('Graciliano Ramos', 'Rio de Janeiro', 'Brasil'),
('Eça de Quirós', 'Rio de Janeiro', 'Brasil'),
('Pepetela', 'Rio de Janeiro', 'Brasil'),
('Guimarães Rosa', 'Rio de Janeiro', 'Brasil'),
('Aluísio Azevedo', 'Rio de Janeiro', 'Brasil'),
('Helena Maria', 'Rio de Janeiro', 'Brasil');

drop table tb_autor;



create table tb_editora(
PK_ID_editora int primary key not null auto_increment,
nome_editor varchar (100),
endereco_editor varchar (50),
pais_origim varchar (50),
telefone_editora varchar(50)
);

-- alter table tb_editora
-- add column telefone_editora varchar (50);/*para add um campo, não colocar 'column'*/

describe tb_editora;
select * from tb_editora;

insert into tb_editora
(nome_editor, endereco_editor, pais_origim, telefone_editora) value
('Saraiva', 'Rua São Paulo', 'Brasil', '(11) 99090-9090'),
('Rocco', 'Conectcut', 'Estados Unidos', '+1 999 909-9090'),
('Instituto Cultura', 'Rua Misure', 'Estados Unidos', '+1 999 909-9090'),
('Parela', 'Rua Joao Pessoa', 'Brasil', '(11) 99090-9090'),
('Gold', 'Rua Mario Covas', 'Brasil', '(11) 99090-9090'),
('Paralela', 'Rio de Janeiro', 'Brasil', '(11) 99090-9090'),
('PNLD Literario', 'Rio de Janeiro', 'Brasil', '(11) 99090-9090'),
('record', 'Rio de Janeiro', 'Brasil', '(11) 99090-9090'),
('letras', 'Rio de Janeiro', 'Brasil', '(11) 99090-9090');

drop table tb_editora;


alter table tb_livro add pk_id_autor int not null;

alter table tb_livro drop column autor_livro, drop column editora_livro;
alter table tb_livro add column fk_id_autor int;

describe tb_livro;

alter table tb_livro add constraint fk_id_autor foreign key (fk_id_autor) references tb_autor(pk_id_autor);

/*ADD chave estrangeira editora*/
alter table tb_livro add column fk_id_editora int;
alter table tb_livro add constraint fk_id_editora foreign key (fk_id_editora) references tb_editora(pk_id_editora);

-- selecionar colunas especificas
select nome_livro, genero_livro from tb_livro;
select nome_livro, genero_livro from tb_livro where rating = 'otimo' and valor_livro < 80.00;