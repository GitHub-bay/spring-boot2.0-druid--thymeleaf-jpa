-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `AGE` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
)

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', 10);
INSERT INTO `users` VALUES (2, 'admin', '12345678', 10);
INSERT INTO `users` VALUES (3, 'admin', '12345678', 10);
INSERT INTO `users` VALUES (4, 'admin', '12345678', 10);
INSERT INTO `users` VALUES (5, 'admin', '12345678', 10);
INSERT INTO `users` VALUES (6, 'admin', '12345678', 10);
INSERT INTO `users` VALUES (7, 'admin', '12345678', 10);