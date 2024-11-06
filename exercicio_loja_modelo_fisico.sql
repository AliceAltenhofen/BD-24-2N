/* exercicio_loja_modelo_logico: */

CREATE TABLE Order (
    ID_Order  Number(3) PRIMARY KEY,
    Payment_Method Char(10),
    Order_Date Number(8),
    Placed Char(20),
    Dispatched Char(10),
    Delivered Char(10),
    Ready_Pickup Char(10),
    Canceled Char(10)
);

CREATE TABLE Client (
    ID_Client Number(3) PRIMARY KEY,
    Email Char(20),
    Delivery_Address Char(30),
    Client_Name Char(20)
);

CREATE TABLE Product (
    ID_Product Number(3) PRIMARY KEY,
    Price Number(4),
    Product_Name Char(20)
);

CREATE TABLE Stock (
    ID_Stock Number(3) PRIMARY KEY,
    Avaiable_Quantity Number(4)
);

CREATE TABLE Provider (
    ID_Provider Number(3) PRIMARY KEY,
    Contact Number(13),
    Provider_Name Char(20)
);

CREATE TABLE Category (
    ID_Category Number(3) PRIMARY KEY,
    Category_Name Char(15)
);

CREATE TABLE Regular_Client (
    Regular_Client_Register_Date Number(8),
    Loyalty_Discount Number(4)
);

CREATE TABLE Vip_Client (
    Vip_Client_Register_Date Number(8),
    Vip_Level Number(3)
);

CREATE TABLE Corp_Client (
    CNPJ Number(20),
    Credit-Limit Number(4),
    Company_Name Char(20)
);

CREATE TABLE Place_Order (
    ID_Place_Order Number(3) PRIMARY KEY,
    Quantity Number(4)
);
 
ALTER TABLE Stock ADD CONSTRAINT FK_Stock_2
    FOREIGN KEY (ID_Stock)
    REFERENCES Product (ID_Product);