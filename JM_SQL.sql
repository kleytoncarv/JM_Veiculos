-- Criação do banco de dados
create database cs_veiculo;
use cs_veiculo;

-- Tabela para armazenar informações dos veículos
create table veiculo (
    vei_id int primary key auto_increment,
    vei_tipo varchar(100),
    vei_cor varchar(100) not null,
    vei_ano int not null,
    vei_estado varchar(100) not null,
    vei_kmrodados decimal (10, 2) not null, -- no codigo vai aparecer o nome 'decimal'e o numero, mas so assim para os zeros depois do '.' aparecem no banco de dados
    vei_leilao varchar(100),
    vei_placa varchar(100) not null,
    vei_tipo_combustivel varchar(100) not null,
    vei_direcao varchar(100) not null,
    vei_marca varchar(100) not NULL,
	vei_modelo varchar(100) NOT NULL,
	vei_tipo_desempenho varchar(100) not null,
	vei_desempenho varchar(100) not null,
    vei_preco DECIMAL(10, 2) not null,
    vei_imagem LONGBLOB NOT NULL
);

ALTER TABLE veiculo DROP COLUMN vei_imagem;
ALTER TABLE veiculo DROP COLUMN vei_tipo_desempenho;
ALTER TABLE veiculo DROP COLUMN vei_desempenho;
ALTER TABLE veiculo DROP COLUMN vei_direcao;
ALTER TABLE veiculo DROP COLUMN vei_tipo_combustivel;
ALTER TABLE veiculo DROP COLUMN vei_kmrodados;
select * from veiculo;
select * from forma_pagamento;
select * from imagens;
 
CREATE TABLE imagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    dados_imagem LONGBLOB NOT NULL
);


-- Tabela para armazenar informações das formas de pagamento
create table forma_pagamento (
    pag_id int primary key auto_increment,
    pag_nome varchar(100) not null,
	pag_fk_veiculo int not null,
    foreign key (pag_fk_veiculo) references veiculo (vei_id)
);
