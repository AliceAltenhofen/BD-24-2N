/* FilmeCorra_logico: */

CREATE TABLE Tratamento (
    ID_Tratamento Int PRIMARY KEY,
    Fase_Tratamento Int,
    Descricao_Tratamento Varchar(252),
    Nome_Tratamento Varchar(252),
    fk_Personagem_ID_Personagem Int
);

CREATE TABLE Familia (
    ID_Familia Int PRIMARY KEY,
    Nome_Familia Varchar(252)
);

CREATE TABLE Contexto_Sociocultural (
    ID_Contexto_Sociocultural Int PRIMARY KEY,
    Descricao_Contextexto_Sociocultural Varchar(252),
    Classe_Contexto_Sociocultural Varchar(252),
    Nome_Contexto_Sociocultural Varchar(252),
    fk_Familia_ID_Familia Int
);

CREATE TABLE Personagem (
    ID_Personagem Int PRIMARY KEY,
    Nome_Personagem Varchar(255),
    Genero_Personagem Varchar(252),
    Etnia_Personagem char(252),
    Nome_espectador Varchar(252),
    Nome_Controlador Varchar(252),
    Personagem_TIPO INT,
    fk_Contexto_Sociocultural_ID_Contexto_Sociocultural Int
);

CREATE TABLE MembroFamilia_Constitui (
    ID_MembroFamilia Int PRIMARY KEY,
    Funcao_MembroFamilia Varchar252),
    fk_Personagem_ID_Personagem Int,
    fk_Familia_ID_Familia Int
);
 
ALTER TABLE Tratamento ADD CONSTRAINT FK_Tratamento_2
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE Contexto_Sociocultural ADD CONSTRAINT FK_Contexto_Sociocultural_2
    FOREIGN KEY (fk_Familia_ID_Familia)
    REFERENCES Familia (ID_Familia)
    ON DELETE RESTRICT;
 
ALTER TABLE Personagem ADD CONSTRAINT FK_Personagem_2
    FOREIGN KEY (fk_Contexto_Sociocultural_ID_Contexto_Sociocultural)
    REFERENCES Contexto_Sociocultural (ID_Contexto_Sociocultural)
    ON DELETE RESTRICT;
 
ALTER TABLE MembroFamilia_Constitui ADD CONSTRAINT FK_MembroFamilia_Constitui_2
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem);
 
ALTER TABLE MembroFamilia_Constitui ADD CONSTRAINT FK_MembroFamilia_Constitui_3
    FOREIGN KEY (fk_Familia_ID_Familia)
    REFERENCES Familia (ID_Familia);