DROP SCHEMA RecoverMe;
CREATE SCHEMA RecoverMe;
USE RecoverMe;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS appUser;
DROP TABLE IF EXISTS motivation;
DROP TABLE IF EXISTS snacks;
DROP TABLE IF EXISTS activity;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE motivation
	(ID				VARCHAR(5) NOT NULL,
	 type			VARCHAR(8) NOT NULL,
	 message	VARCHAR(200) NOT NULL,
	 PRIMARY KEY (ID)
	);

CREATE TABLE goals
	(ID		VARCHAR(5) NOT NULL,
	 goal	VARCHAR(20) NOT NULL,
	 PRIMARY KEY (ID)
	);

CREATE TABLE appUser
	(ID									VARCHAR(5) NOT NULL,
	 firstName					VARCHAR(20) NOT NULL,
	 lastName						VARCHAR(20) NOT NULL,
	 password						VARCHAR(20) NOT NULL,
	 age								NUMERIC(3,0) NOT NULL CHECK(P),
	 height							NUMERIC(2,0) NOT NULL CHECK (P),
	 weight							NUMERIC(3,0) NOT NULL CHECK(P),
	 motivationTypeID		VARCHAR(5) NOT NULL,
	 goalID							VARCHAR(5) NOT NULL,
	 PRIMARY KEY (ID),
	 FOREIGN KEY (motivationTypeID) REFERENCES motivation(ID),
	 FOREIGN KEY (goalID) REFERENCES goals(ID)
	);


CREATE TABLE snacks
	(ID					VARCHAR(5) NOT NULL,
	 amount 		VARCHAR(20) NOT NULL,
	 type				VARCHAR(8) NOT NULL,
	 name 			VARCHAR(20) NOT NULL,
	 calories 	NUMERIC(4) NOT NULL,
	 nutrient 	VARCHAR(20) NOT NULL,
	 drawback 	VARCHAR(20),
	 PRIMARY KEY (ID)
	);


CREATE TABLE recovery
	(ID								VARCHAR(5) NOT NULL,
	caloriesBurned 		BIGINT  NOT NULL CHECK(P),
	caloriesNeeded 		BIGINT NOT NULL CHECK(P),
	goalID 						VARCHAR(5) NOT NULL,
	snackID						VARCHAR(5) NOT NULL,
	waterIntake 			NUMERIC(3, 1) CHECK(P),
	PRIMARY KEY (ID),
 	FOREIGN KEY (goalID) REFERENCES goals(ID),
 	FOREIGN KEY (snackID) REFERENCES snacks(ID)
	);

CREATE TABLE activity
	(ID 								VARCHAR(5) NOT NULL,
	 userID							VARCHAR(5) NOT NULL,
	 type 							VARCHAR(8) NOT NULL,
	 caloriesBurned     BIGINT  NOT NULL CHECK(P),
	 averageHR					BIGINT  NOT NULL CHECK(P),
	 recoveryID					VARCHAR(5) NOT NULL,
	 PRIMARY KEY(ID),
	 FOREIGN KEY (userID) REFERENCES appUser(ID),
	 FOREIGN KEY (recoveryID) REFERENCES recovery(ID)
	);
