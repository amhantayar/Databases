CREATE TABLE `User` (
  `UserGUID` char(36) NOT NULL,
  `AccessID` char(50) DEFAULT NULL,
  `UserName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `CreatedDateTime` datetime DEFAULT NULL,
  `Country` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `Gender` varchar(15) DEFAULT NULL,
  `Photo` varchar(45) DEFAULT NULL,
  `backgroundphoto` varchar(45) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserGUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
