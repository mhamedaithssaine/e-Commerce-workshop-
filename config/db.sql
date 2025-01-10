DROP DATABASE if EXISTS e_commerce;

CREATE DATABASE e_commerce;

CREATE Table admin(
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR,
    email VARCHAR
);

CREATE Table client (
  id int PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR,
  email VARCHAR,
  panier VARCHAR,
  historiqueCommandes VARCHAR

);

CREATE TABLE categories (
    id int not NULL AUTO_INCREMENT,
    name VARCHAR,
    description VARCHAR (255)
);

CREATE TABLE produit(
    id int not NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR,
    desciption VARCHAR,
    prix FLOAT,
    stock int ,
    categories_id int,
    Foreign Key (categories_id ) REFERENCES categories (id)
);

create Table panier(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    listeProduit int ARRAY[] DEFAULT null,
    total_prix FLOAT ,
);

CREATE Table commande(
    id int PRIMARY AUTO_INCREMENT not NULL,
    status ENUM('en cours', 'expediee', 'livree'),
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    client_id int,
    produit_id int,
    panier_id int,
    Foreign Key (client_id ) REFERENCES client (id),
    Foreign Key (produit_id ) REFERENCES produit (id),
    Foreign Key (panier_id ) REFERENCES panier (id)
);