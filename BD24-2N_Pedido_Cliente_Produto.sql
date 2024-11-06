CREATE TABLE Cliente (
    ID_Cliente Int PRIMARY KEY,
    Nome_Cliente Text NOT NULL,
    Email_Cliente Text NOT NULL,
    Data_Nasc_Cliente Date NOT NULL,
    Rua_Cliente Text NOT NULL,
    Cidade_Cliente Text NOT NULL,
    Cep_Cliente Int NOT NULL, 
    Estado_Cliente Text NOT NULL
);

CREATE TABLE Produto (
    Nome_Produto Text NOT NULL,
    ID_Produto Int PRIMARY KEY,
    Descricao_Produto Text NULL,
    Preco_Produto Numeric CHECK (Preco_Produto>0) NOT NULL,
    Qntd_Estoque_Produto Int DEFAULT 0
);

CREATE TABLE Pedido (
    ID_Pedido Int PRIMARY KEY,
    fk_Produto_ID_Produto Int NOT NULL REFERENCES Produto(ID_Produto),
    fk_Cliente_ID_Cliente Int NOT NULL REFERENCES Cliente(ID_Cliente)
);
 