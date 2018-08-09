DROP TABLE IF EXISTS photo;

CREATE TABLE photo (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  image TEXT

);

INSERT INTO photo (title , body, image) VALUES ('Photo 1' , 'First Photo', 'https://images.unsplash.com/photo-1496497243327-9dccd845c35f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ec4daa7fd7aeee557ce4f8e18e62d406&auto=format&fit=crop&w=1050&q=80');
INSERT INTO photo (title , body, image) VALUES ('Photo 2' , 'Second Photo', 'https://images.unsplash.com/photo-1474511320723-9a56873867b5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=470bd46f550686b098162400ea867429&auto=format&fit=crop&w=1052&q=80');
INSERT INTO photo (title , body, image) VALUES ('Photo 3' , 'Third Photo', 'https://images.unsplash.com/photo-1493275396257-7df0f22e0c88?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=86265f685da989d6426e28402dd18d74&auto=format&fit=crop&w=1051&q=80');
INSERT INTO photo (title , body, image) VALUES ('Photo 4' , 'Fourth Photo', 'https://images.unsplash.com/photo-1503066211613-c17ebc9daef0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=db24a634bad2f3b05cfe733c26e7680f&auto=format&fit=crop&w=1050&q=80');
