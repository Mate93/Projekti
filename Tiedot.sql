CREATE TABLE Sivut
(
  Profiili INT NOT NULL,
  Käyttäjät INT NOT NULL,
  PRIMARY KEY (Profiili)
);

CREATE TABLE Kommentit
(
  KuvaID INT NOT NULL,
  Kommentti INT NOT NULL,
  PRIMARY KEY (KuvaID)
);

CREATE TABLE Kayttajat
(
  ID INT NOT NULL,
  Kayttajanimi INT NOT NULL,
  Profiili INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (Profiili) REFERENCES Sivut(Profiili),
  UNIQUE (Kayttajanimi)
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

