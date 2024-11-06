CREATE TABLE Usuario (
    ID_Usuario Int PRIMARY KEY,
    Nome_Usuario Char(15),
    Email Char(20),
    Data_Nasc Date
);

CREATE TABLE Jogo (
    ID_Jogo Int PRIMARY KEY,
    FK_ID_Personagem Int,
    Data_Lancamento Date,
    Objetivo Char(20),
    Preco_Jogo Int,
    Categoria Char(15)
);

CREATE TABLE Partida (
    ID_Partida Int PRIMARY KEY,
    Tempo Char(15),
    Resultado Char(15),
    Moeda_Coletada Int
);

CREATE TABLE Ranking (
    ID_Ranking Int PRIMARY KEY,
    Pontuacao Int,
    Qntd_Partidas Int
);

CREATE TABLE Inimigo (
    ID_Inimigo Int PRIMARY KEY,
    Nome_Inimigo Char(15),
    Vida Int,
    Descricao Char(20)
);

CREATE TABLE Item (
    ID_Item Int PRIMARY KEY,
    Nome_Item Int
);

CREATE TABLE Personagens (
    ID_Personagem Int PRIMARY KEY,
    Ponto_De_Vida Int
);
 
ALTER TABLE Jogo ADD CONSTRAINT FK_Jogo_2
    FOREIGN KEY (FK_ID_Personagem)
    REFERENCES Personagens (ID_Personagem);