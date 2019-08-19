CREATE TABLE `ultimatetruth_posts_db`.`Question` (
  `PostGUID` VARCHAR(36) NOT NULL,
  `QuestionGUID` VARCHAR(36) NOT NULL,
  `Question` NVARCHAR(255) NOT NULL,
  `RecordStatus` INT(1) ZEROFILL NOT NULL,
  PRIMARY KEY (`PostGUID`, `QuestionGUID`));
