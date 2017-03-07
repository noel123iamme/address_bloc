# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

INSERT INTO user (email, first_name, last_name) VALUES ("noel123iamme@me.com", "Noel", "Joseph");
INSERT INTO user (email, first_name, last_name) VALUES ("n30dr3am@gmail.com", "Joseph", "Noel");
SELECT * FROM user;

INSERT INTO post (title, body, user_id) VALUES ("That Time I Wrote Some Code", "True Story", 1);
INSERT INTO post (title, body, user_id) VALUES ("This is a true story", "I wrote some code one day.", 2);
SELECT * FROM post;

INSERT INTO comment (body, post_id, user_id) VALUES ("Great story", 1, 1);
INSERT INTO comment (body, post_id, user_id) VALUES ("Boring", 2, 2);
INSERT INTO comment (body, post_id, user_id) VALUES ("Awesome", 1, 2);
INSERT INTO comment (body, post_id, user_id) VALUES ("Mediocre at best", 2, 1);
SELECT * FROM comment;


