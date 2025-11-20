drop table `forhandler1`;
CREATE TABLE forhandler1 (
    forhandler_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    adresse varchar(200),
    cvr varchar(200),
    navn VARCHAR(100)
);

INSERT INTO forhandler1 (adresse, cvr, navn)
SELECT distinct adresse, cvr , forhandler
FROM autocamper1;