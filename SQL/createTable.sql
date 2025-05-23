drop database if exists vava_doces;
create database vava_doces;
use vava_doces;
 
/* Script SQL para criação das tabelas e relacionamentos */
 
-- limpa tabelas existentes para recriação
drop table if exists usuarioCarrinho;
drop table if exists compraProduto;
drop table if exists compra;
drop table if exists formaPagamento;
drop table if exists produto;
drop table if exists tipoQuantidade;
drop table if exists categoria;
drop table if exists usuario;
drop table if exists tipoUsuario;
drop table if exists status; -- Adicionado drop para a nova tabela
 
create table tipoUsuario (
    id int auto_increment primary key,
    nome varchar(20));
 
-- tabela usuario
 create table usuario (
     id int auto_increment primary key,
     cpf char(11) not null unique,
     nome varchar(100) not null,
     endereco varchar(100) not null,
     enderecoNumero int,
     complemento varchar(100) not null,
     cep char(8) not null,
     email varchar(100) not null unique,
     senha varchar(100) not null,
     telefone char(11) not null,
     tipoId int,
     foreign key (tipoId) references tipoUsuario(id)
 );
 
-- tabela categoria
 create table categoria (
     id int auto_increment primary key,
     nome varchar(20) not null
 );
 
-- tabela tipoQuantidade
 create table tipoQuantidade (
     id int auto_increment primary key, -- 1 = unitário, 2 = decimal
     tipo varchar(10)
 );
 
-- tabela produto
 create table produto (
     id int auto_increment primary key,
     nome varchar(100) not null,
     categoriaId int not null,
     tipoQuantidadeId int not null,
     valor float(24) not null,
     descricao varchar(500),
     nomeImagem varchar(100),
     foreign key (categoriaId) references categoria(id),
     foreign key (tipoQuantidadeId) references tipoQuantidade(id)
 );
 
-- tabela formaPagamento
 create table formaPagamento (
     id int auto_increment primary key,
     nome varchar(100) not null
 );
 
-- tabela status (NOVA TABELA)
create table status (
    id int auto_increment primary key,
    nome varchar(50) not null
);
 
-- tabela compra
 create table compra (
     id int auto_increment primary key,
     usuarioId int not null,
     data date not null,
     formaPagamentoId int not null,
     statusId int not null, -- Adicionada coluna statusId
     foreign key (usuarioId) references usuario(id),
     foreign key (formaPagamentoId) references formaPagamento(id),
     foreign key (statusId) references status(id) -- Adicionada chave estrangeira para status
 );
 
-- tabela compraProduto
 create table compraProduto (
     id int auto_increment primary key,
     idCompra int not null,
     idProduto int not null,
     valor float(24) not null,
     quantidade float(24) not null,
     tipoQuantidadeId int not null,
     observacao varchar(512),
     foreign key (idCompra) references compra(id),
     foreign key (idProduto) references produto(id) ON DELETE CASCADE,
     foreign key (tipoQuantidadeId) references tipoQuantidade(id)
 );
 
-- tabela usuarioCarrinho
 create table usuarioCarrinho (
     id int auto_increment primary key,
     usuarioId int not null,
     produtoId int not null,
     quantidade float(24) not null,
     tipoQuantidadeId int not null,
     observacao varchar(512),
     foreign key (usuarioId) references usuario(id),
     foreign key (produtoId) references produto(id) ON DELETE CASCADE,
     foreign key (tipoQuantidadeId) references tipoQuantidade(id)
 );
