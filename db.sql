CREATE TABLE IF NOT EXISTS user
(
	id int NOT NULL AUTO_INCREMENT,
	user_id varchar(20) NOT NULL UNIQUE,
	password varchar(20) NOT NULL,
	name varchar(60) NOT NULL,
	initial_flg boolean DEFAULT true NOT NULL,
	retire_flg boolean DEFAULT false NOT NULL,
	last_update_date timestamp NOT NULL,
	PRIMARY KEY (id)
)
	DEFAULT CHARSET=utf8;