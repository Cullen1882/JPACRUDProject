-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema commrealdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `commrealdb` ;

-- -----------------------------------------------------
-- Schema commrealdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `commrealdb` DEFAULT CHARACTER SET utf8 ;
USE `commrealdb` ;

-- -----------------------------------------------------
-- Table `property`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `property` ;

CREATE TABLE IF NOT EXISTS `property` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `street` VARCHAR(45) NOT NULL,
  `street2` VARCHAR(45) NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `zip_code` VARCHAR(45) NOT NULL,
  `tax_id` INT NULL,
  `owner_id` INT NOT NULL,
  `property_type_id` INT NOT NULL,
  `num_units` INT NULL,
  `year_built` INT NULL,
  `owner_occupied` TINYINT(1) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS commrealuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'commrealuser'@'localhost' IDENTIFIED BY 'commrealuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'commrealuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `property`
-- -----------------------------------------------------
START TRANSACTION;
USE `commrealdb`;
INSERT INTO `property` (`id`, `street`, `street2`, `city`, `state`, `zip_code`, `tax_id`, `owner_id`, `property_type_id`, `num_units`, `year_built`, `owner_occupied`) VALUES (1, '999 Waterside Drive', NULL, 'Norfolk', 'VA', '23508', 111111111, 1, 1, 32, 1955, 0);

COMMIT;

