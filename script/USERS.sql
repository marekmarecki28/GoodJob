CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accountNonExpired` tinyint(4) NOT NULL DEFAULT '1',
  `accountNonLocked` tinyint(4) NOT NULL DEFAULT '1',
  `credentialsNonExpired` tinyint(4) NOT NULL DEFAULT '1',
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
);