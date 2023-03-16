DROP TABLE IF EXISTS MODULE CASCADE;
 DROP TABLE IF EXISTS ENSEIGNANT CASCADE;
  DROP TABLE IF EXISTS EVALUATION CASCADE;
   DROP TABLE IF EXISTS ETUDIANT CASCADE;
    DROP TABLE IF EXISTS PERSONNE CASCADE;

--**question 1**

CREATE TABLE personne
( id_personne INT,
  nom VARCHAR, 
  prenom VARCHAR,
  primary key(id_personne)
);

--**question 2**

CREATE TABLE Evaluation
( id_evaluation INT, 
  id_enseignant INT,
  id_etudiant INT,
  nom VARCHAR, 
  Date_eval VARCHAR,
  note FLOAT,
  primary key(id_evaluation, id_etudiant,id_enseignant) ,
  foreign key(id_etudiant) references Personne (id_personne),
  foreign key(id_enseignant) references Personne (id_personne)

);


--**question 3**
CREATE TABLE Module
( id_module INT,
 id_enseignant INT,
 id_evaluation INT,
 Intitule VARCHAR,
 Code VARCHAR,
 ue VARCHAR,
 primary key(id_module,id_enseignant, id_evaluation),foreign key(id_enseignant) references Personne(id_personne)
);

--**question 4**
CREATE TABLE Etudiant
( id_etudiant INT,
  nip  VARCHAR,
  primary key(id_etudiant),foreign key(id_etudiant) references Personne (id_personne)

);

CREATE TABLE Enseignant
( id_enseignant INT ,
 primary key(id_enseignant),
 foreign key(id_enseignant) references Personne (id_personne)
 ); 
 
\copy personne FROM personne.txt

\copy evaluation FROM evaluation.txt

\copy module FROM module.txt

\copy etudiant FROM etudiant.txt

\copy enseignant FROM enseignant.txt

  

  
