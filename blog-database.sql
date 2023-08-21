CREATE DATABASE Blogs;
USE Blogs;

CREATE TABLE `users` (
	`id` int AUTO_INCREMENT NOT NULL,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR (50) NOT NULL,
    `email` VARCHAR (255) NOT NULL,
    `phone_no` VARCHAR(255) NOT NULL,
    `U_password` VARCHAR (255) NOT NULL,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`id`)
    );
INSERT INTO `users` VALUES (1,'usman','noor','usman.noor508@gmail.com','+923334597550','press123',DEFAULT);
INSERT INTO `users` VALUES (DEFAULT,'xyz','abc','abc.jkl@gmail.com','+9266456465','s123',DEFAULT);   

CREATE TABLE `Posts` (
	`id` int AUTO_INCREMENT NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `content` LONGTEXT NOT NULL,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `user_id` INT NOT NULL,    
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES users(id)
    );

INSERT INTO `posts` VALUES(DEFAULT,'FLYING CARS','there will be flying cars n 2025', DEFAULT, 1);
INSERT INTO `posts` VALUES(DEFAULT,'TURBO CHARGER','turbo chargers are killing naturally asperated engines', DEFAULT, 2);

CREATE TABLE `comments` (
	`id` INT AUTO_INCREMENT NOT NULL,
    `post_id` INT  NOT NULL,
    `user_id` INT NOT NULL,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `content` LONGTEXT NOT NULL,    
    PRIMARY KEY(`id`),
    FOREIGN KEY (`post_id`) REFERENCES posts(id),
    FOREIGN KEY(`user_id`) REFERENCES users(id)
    );

INSERT INTO `comments` VALUES (DEFAULT, 1,1,DEFAULT,'this fake news');
INSERT INTO `comments` VALUES (DEFAULT, 1,2, DEFAULT, ' this is not fake');

CREATE TABLE `images`(
	`id` INT AUTO_INCREMENT NOT NULL,
    `file_path` varchar(255) NOT NULL,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `post_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`post_id`) REFERENCES posts(id)
    );
    
INSERT INTO `images` VALUES (DEFAULT, './docs/images.png', DEFAULT, 1);
INSERT INTO `images` VALUES (DEFAULT, './docs/pictures.jgp',DEFAULT,2);

CREATE TABLE `categories`(
	`id` INT AUTO_INCREMENT NOT NULL,
    `name` varchar(255) NOT NULL,
    `description` varchar(255),
    PRIMARY KEY (`id`)
	);
    
INSERT INTO `categories` VALUES(DEFAULT, 'CARS','BLAH BLAH BLAH');
INSERT INTO `categories` VALUES (DEFAULT, 'MOTOR BIKES', 'B;AH BLAH BLAH');

CREATE TABLE `subcategories`(
	`id` INT AUTO_INCREMENT NOT NULL,
    `category_id` INT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `description` VARCHAR(255),
    PRIMARY KEY (`id`),
    FOREIGN KEY (`category_id`) REFERENCES categories(id)
    );
    
INSERT INTO `subcategories` VALUES(DEFAULT, 1, 'supercars', 'gt3 rs is the king');
INSERT INTO `subcategories` VALUES(DEFAULT ,1, 'hypercars', 'blah blah blah');

CREATE TABLE `tags`( 
	`id` INT AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
    );
    
INSERT INTO `tags` VALUES ( DEFAULT, 'BLAH');
INSERT INTO `tags` VALUES ( DEFAULT, 'BLAHH');

CREATE TABLE `posts_tags`(
	`tags_id` INT NOT NULL,
    `posts_id` INT NOT NULL,
	FOREIGN KEY (`tags_id`) REFERENCES tags(id),
    FOREIGN KEY (`posts_id`) REFERENCES posts(id)
    );
    
INSERT INTO `posts_tags` VALUES(1,1);

use blogs;
SELECT * FROM users 
WHERE first_name = 'usman';

DELETE  FROM users 
WHERE first_name = 'xyz';
