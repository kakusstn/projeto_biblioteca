
use biblioteca;
select * from aluno;
select * from librarian;
select * from livros;
select * from nota_fiscal;
describe nota_fiscal;

insert into nota_fiscal 
(numero_nota, RA, livro_alugado, matricula, data_locacao, data_devol)
values
(1, 4, 'Building Arduino Projects for the Internet of Things', 8211234, 25-08-2023, 2023-09-10 );
