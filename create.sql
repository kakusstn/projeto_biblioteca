create database biblioteca;

create table livros (
nome_livro varchar (300) not null,
ano_lanc date,
genero varchar (500),
fx_etaria int,
autor varchar (100),
editora varchar (100),
primary key (nome_livro)
);


create table aluno( 
RA int not null,
nome_a varchar(100),
sexo char,
ano_nascimento date,
cpf varchar (15),
telefone varchar (15),
endereco varchar (200),
email varchar (100),
primary key (RA)
);

create table bibliotecario (
Matricula int not null,
nome_b varchar (100),
sexo char,
ano_nascimento date,
cpf varchar (15),
telefone varchar (13),
endereco_b varchar (200),
email varchar (100),
senha_log int not null,
primary key (Matricula)
);

alter table bibliotecario
modify column telefone varchar (15);

alter table bibliotecario
modify column senha_log int not null;

drop table nota_fiscal;
describe nota_fiscal;
create table nota_fiscal(
numero_nota int not null auto_increment,
nome_aluno varchar(100),
RA int,
endereco varchar (200),
livro_alugado varchar (100),
bibliotecario varchar (100),
matricula int,
data_locacao date,
data_devol date,
primary key (numero_nota),
foreign key (RA) references aluno (RA),
foreign key (livro_alugado) references livros (nome_livro),
foreign key (matricula) references bibliotecario (matricula)
);

alter table nota_fiscal
modify column RA int not null;

alter table nota_fiscal
modify column livro_alugado varchar(100) not null;

alter table nota_fiscal
modify column matricula int not null;

alter table nota_fiscal
modify column data_locacao date not null;

alter table nota_fiscal
modify column data_devol date not null;

