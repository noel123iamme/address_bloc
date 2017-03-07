PRAGMA foreign_keys = ON;

DROP TABLE user;
CREATE TABLE user (
	id INTEGER PRIMARY KEY,
	email TEXT NOT NULL,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL
);
CREATE UNIQUE INDEX user_email ON user (email);

DROP TABLE post;
CREATE TABLE post (
	id INTEGER PRIMARY KEY,
	title TEXT NOT NULL,
	body TEXT,
	user_id INTEGER NOT NULL,
	FOREIGN KEY (user_id) REFERENCES user (id)
);
CREATE UNIQUE INDEX post_title ON post (title);

DROP TABLE comment;
CREATE TABLE comment (
	id INTEGER PRIMARY KEY,
	body TEXT NOT NULL,
	post_id INTEGER NOT NULL,
	user_id INTEGER NOT NULL,
	FOREIGN KEY (post_id) REFERENCES post (id),
	FOREIGN KEY (user_id) REFERENCES user (id)
);
CREATE UNIQUE INDEX comment_post_body ON comment (post_id, body);

 

