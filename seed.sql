DROP TABLE IF EXISTS post;

CREATE TABLE post (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT

);

INSERT INTO post (title , body) VALUES ('Post 1' , 'Content 1');
INSERT INTO post (title , body) VALUES ('Post 2' , 'Content 2');
INSERT INTO post (title , body) VALUES ('Post 3' , 'Content 3');
INSERT INTO post (title , body) VALUES ('Post 4' , 'Content 4');
