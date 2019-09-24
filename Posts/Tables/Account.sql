CREATE TABLE `Account` (
  `AccessID` char(36) NOT NULL,
  `AccessType` varchar(45) DEFAULT NULL,
  `AccessToken` varchar(36) DEFAULT NULL,
  `AppVersion` varchar(30) DEFAULT NULL,
  `DeviceID` varchar(45) DEFAULT NULL,
  `Manufacture` varchar(45) DEFAULT NULL,
  `ModelNumber` varchar(20) DEFAULT NULL,
  `BuildNumber` varchar(45) DEFAULT NULL,
  `UserGUID` char(36) DEFAULT NULL,
  PRIMARY KEY (`AccessID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
