-- This is Sam's

CREATE DATABASE chat;
USE chat;

-- ---
-- Table 'Project'
-- 
-- ---

-- DROP TABLE IF EXISTS `Project`;
    
CREATE TABLE `Project` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` INTEGER NULL DEFAULT NULL,
  `time_constraint` INTEGER NULL DEFAULT NULL,
  `wanted` INTEGER NULL DEFAULT NULL,
  `description` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Pledge'
-- 
-- ---

-- DROP TABLE IF EXISTS `Pledge`;
    
CREATE TABLE `Pledge` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,  
  `user_id` INTEGER NULL DEFAULT NULL,
  `amount` INTEGER NULL DEFAULT NULL,
  `project_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'User'
-- 
-- ---

-- DROP TABLE IF EXISTS `User`;
    
CREATE TABLE `User` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `username` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Keyword'
-- 
-- ---

-- DROP TABLE IF EXISTS `Keyword`;
    
CREATE TABLE `Keyword` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `word` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Project-Keyword'
-- 
-- ---

-- DROP TABLE IF EXISTS `Project-Keyword`;
    
CREATE TABLE `Project-Keyword` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `project_id` INTEGER NULL DEFAULT NULL,
  `keyword_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Pledge` ADD FOREIGN KEY (user_id) REFERENCES `User` (`id`);
ALTER TABLE `Pledge` ADD FOREIGN KEY (project_id) REFERENCES `Project` (`id`);
ALTER TABLE `Project-Keyword` ADD FOREIGN KEY (project_id) REFERENCES `Project` (`id`);
ALTER TABLE `Project-Keyword` ADD FOREIGN KEY (keyword_id) REFERENCES `Keyword` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Project` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Pledge` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `User` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Keyword` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Project-Keyword` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Project` (`id`,`name`,`time_constraint`,`wanted`,`description`) VALUES
-- ('','','','','');
-- INSERT INTO `Pledge` (`id`,`user_id`,`amount`,`project_id`) VALUES
-- ('','','','');
-- INSERT INTO `User` (`id`,`username`) VALUES
-- ('','');
-- INSERT INTO `Keyword` (`id`,`word`) VALUES
-- ('','');
-- INSERT INTO `Project-Keyword` (`id`,`project_id`,`keyword_id`) VALUES
-- ('','','');