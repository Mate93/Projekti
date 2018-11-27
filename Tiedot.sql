 ERDPlus

    FAQ

    The textbook using ERDPlus is available.

    Need professional database modeling?

    Juho Huhtanen
    Diagrams
    Logout

Export SQL
Beta: Please email problems, questions, or suggestions to info@erdplus.com.

CREATE TABLE Kayttajat
(
  ID INT NOT NULL,
  Kayttajanimi INT NOT NULL,
  Salasana INT NOT NULL,
  profiilikuva INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (profiilikuva) REFERENCES Kuvat(kuvaID),
  UNIQUE (Kayttajanimi)
);

CREATE TABLE Kuvat
(
  Kuvalocation INT NOT NULL,
  kuvaID INT NOT NULL,
  date DATE NOT NULL,
  Nayttokerrat INT NOT NULL,
  Kayttaja INT NOT NULL,
  PRIMARY KEY (kuvaID),
  FOREIGN KEY (Kayttaja) REFERENCES Kayttajat(ID)
);

CREATE TABLE Kommentit
(
  Kommentti INT NOT NULL,
  date DATE NOT NULL,
  kuvaID INT NOT NULL,
  Kayttaja INT NOT NULL,
  FOREIGN KEY (kuvaID) REFERENCES Kuvat(kuvaID),
  FOREIGN KEY (Kayttaja) REFERENCES Kayttajat(ID)
);

CREATE TABLE Tykkaykset
(
  boolean INT NOT NULL,
  kuvaID INT NOT NULL,
  Kayttaja INT NOT NULL,
  FOREIGN KEY (kuvaID) REFERENCES Kuvat(kuvaID),
  FOREIGN KEY (Kayttaja) REFERENCES Kayttajat(ID)
);

