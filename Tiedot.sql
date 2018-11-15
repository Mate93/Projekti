CREATE TABLE Kayttajat
(
  ID INT NOT NULL,
  Kayttajanimi INT NOT NULL,
  Sivu INT NOT NULL,
  Salasana INT NOT NULL,
  PRIMARY KEY (ID),
  UNIQUE (Kayttajanimi),
  UNIQUE (Sivu)
);

CREATE TABLE Kommentit
(
  KuvaID INT NOT NULL,
  Kommentti INT NOT NULL,
  PRIMARY KEY (KuvaID)
);

CREATE TABLE Kuvat
(
  ID INT NOT NULL,
  KuvaID INT NOT NULL,
  Profilepic INT NOT NULL,
  Tykkaukset INT NOT NULL,
  Kuvalocation INT NOT NULL,
  ID INT NOT NULL,
  KuvaID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Kayttajat(ID),
  FOREIGN KEY (KuvaID) REFERENCES Kommentit(KuvaID),
  UNIQUE (KuvaID),
  UNIQUE (Kuvalocation)
);