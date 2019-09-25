CREATE TABLE `Session` (
  `UserGUID` char(36) NOT NULL,
  `AuthorizationCode` varchar(50) DEFAULT NULL,
  `LoginOutDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`UserGUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
