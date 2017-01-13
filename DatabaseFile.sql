-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ucmo
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ucmo` ;

-- -----------------------------------------------------
-- Schema ucmo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ucmo` DEFAULT CHARACTER SET latin1 ;
USE `ucmo` ;

-- -----------------------------------------------------
-- Table `ucmo`.`advisor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ucmo`.`advisor` (
  `advisor_name` VARCHAR(30) NULL DEFAULT NULL,
  `concentration` VARCHAR(20) NULL DEFAULT NULL,
  `status` VARCHAR(10) NULL DEFAULT NULL,
  `uname` VARCHAR(20) NOT NULL,
  `password` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`uname`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ucmo`.`answer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ucmo`.`answer` (
  `id` VARCHAR(20) NULL DEFAULT NULL,
  `ans1` VARCHAR(100) NULL DEFAULT NULL,
  `ans2` VARCHAR(100) NULL DEFAULT NULL,
  `ans3` VARCHAR(100) NULL DEFAULT NULL,
  `ans4` VARCHAR(100) NULL DEFAULT NULL,
  `ans5` VARCHAR(100) NULL DEFAULT NULL,
  `ans6` VARCHAR(100) NULL DEFAULT NULL,
  `ans7` VARCHAR(100) NULL DEFAULT NULL,
  `ans8` VARCHAR(100) NULL DEFAULT NULL,
  `ans9` VARCHAR(100) NULL DEFAULT NULL,
  `ans10` VARCHAR(100) NULL DEFAULT NULL,
  `ans11` VARCHAR(100) NULL DEFAULT NULL,
  `ans12` VARCHAR(100) NULL DEFAULT NULL,
  `ans13` VARCHAR(100) NULL DEFAULT NULL,
  `ans14` VARCHAR(100) NULL DEFAULT NULL,
  `ans15` VARCHAR(100) NULL DEFAULT NULL,
  `ans16` VARCHAR(100) NULL DEFAULT NULL,
  `ans17` VARCHAR(100) NULL DEFAULT NULL,
  `ans18` VARCHAR(100) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ucmo`.`concentration`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ucmo`.`concentration` (
  `cid` VARCHAR(15) NOT NULL,
  `cname` VARCHAR(30) NULL DEFAULT NULL,
  `status` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`cid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ucmo`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ucmo`.`course` (
  `id` VARCHAR(10) NOT NULL,
  `program` VARCHAR(50) NULL DEFAULT NULL,
  `prefix` VARCHAR(20) NULL DEFAULT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  `concentration` VARCHAR(30) NULL DEFAULT NULL,
  `status` VARCHAR(10) NULL DEFAULT NULL,
  `type` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ucmo`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ucmo`.`student` (
  `fname` VARCHAR(30) NULL DEFAULT NULL,
  `lname` VARCHAR(25) NULL DEFAULT NULL,
  `ucmid` VARCHAR(30) NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL,
  `uemail` VARCHAR(30) NULL DEFAULT NULL,
  `non_uemail` VARCHAR(30) NULL DEFAULT NULL,
  `concentration` VARCHAR(30) NULL DEFAULT NULL,
  `entry_date` VARCHAR(30) NULL DEFAULT NULL,
  `quant` VARCHAR(10) NULL DEFAULT NULL,
  `verbal` VARCHAR(10) NULL DEFAULT NULL,
  `gpa` VARCHAR(10) NULL DEFAULT NULL,
  `approved` VARCHAR(20) NULL DEFAULT NULL,
  `approvedDate` VARCHAR(30) NULL DEFAULT NULL,
  `withdrawn` VARCHAR(20) NULL DEFAULT NULL,
  `withdrawnDate` VARCHAR(30) NULL DEFAULT NULL,
  `accepted` VARCHAR(20) NULL DEFAULT NULL,
  `acceptedTime` VARCHAR(30) NULL DEFAULT NULL,
  `accepted_con` VARCHAR(10) NULL DEFAULT NULL,
  `accepted_conTime` VARCHAR(30) NULL DEFAULT NULL,
  `note` VARCHAR(100) NULL DEFAULT NULL,
  `acc` VARCHAR(10) NULL DEFAULT NULL,
  `password` VARCHAR(30) NULL DEFAULT NULL,
  `prereq` VARCHAR(20) NULL DEFAULT NULL,
  `prereq_date` VARCHAR(20) NULL DEFAULT NULL,
  `note_date` VARCHAR(20) NULL DEFAULT NULL,
  `phone` VARCHAR(10) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `ucmo`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ucmo`.`user` (
  `role` VARCHAR(20) NULL DEFAULT NULL,
  `uname` VARCHAR(30) NOT NULL,
  `password` VARCHAR(30) NULL DEFAULT NULL,
  `name` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`uname`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
