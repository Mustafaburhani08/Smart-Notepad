-- Smart Notepad Database
-- Clean GitHub Version

CREATE DATABASE IF NOT EXISTS smart_notepad;
USE smart_notepad;

-- --------------------------------------------------------
-- Table structure for `categories`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `category_id` INT(11) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (`category_id`)
);

-- Default Categories
INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Important'),
(2, 'Study'),
(3, 'Work'),
(4, 'None');

-- --------------------------------------------------------
-- Table structure for `notes`
-- --------------------------------------------------------

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `note_id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(150) NOT NULL,
  `content` TEXT NOT NULL,
  `category` VARCHAR(50) DEFAULT 'None',
  `color` VARCHAR(20) DEFAULT NULL,
  `pinned` TINYINT(1) NOT NULL DEFAULT 0,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`note_id`)
);

-- No sample notes included

ALTER TABLE `categories`
AUTO_INCREMENT = 5;

ALTER TABLE `notes`
AUTO_INCREMENT = 1;