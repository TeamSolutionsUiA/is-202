CREATE TABLE LeilighetsType (
    ID INT AUTO_INCREMENT,
    Navn VARCHAR(30) NOT NULL,
    Kategori VARCHAR(20) NOT NULL,
    Enkeltsenger INT,
    Dobeltsenger INT,
    Beskrivelse VARCHAR(150),
    Pris INT NOT NULL,
    PublisertStatus BOOL NOT NULL DEFAULT 0,
    CONSTRAINT PK_LeilighetsType PRIMARY KEY (ID)
)  AUTO_INCREMENT=10000;

CREATE TABLE Egenskap (
    Egenskap VARCHAR(20),
    Leilighet_ID INT,
    CONSTRAINT PK_Egenskap PRIMARY KEY (Egenskap , Leilighet_ID),
    CONSTRAINT FK_Leilighet FOREIGN KEY (Leilighet_ID)
        REFERENCES Leilighetstype (ID)
);