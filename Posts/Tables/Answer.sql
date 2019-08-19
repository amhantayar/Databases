CREATE TABLE `ultimatetruth_posts_db`.`Answer` (
  `AnswerGUID` VARCHAR(36) NOT NULL,
  `QuestionGUID` VARCHAR(36) NOT NULL,
  `Answer` VARCHAR(45) NOT NULL,
  `Is_Correct` INT(1) ZEROFILL NOT NULL,
  `RecordStatus` INT(1) NULL,
  PRIMARY KEY (`AnswerGUID`),
  UNIQUE INDEX `AnswerGUID_UNIQUE` (`AnswerGUID` ASC));
