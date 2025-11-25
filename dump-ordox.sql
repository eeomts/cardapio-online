/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ordox2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2025-11-24 23:03:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for custom_caixa
-- ----------------------------
DROP TABLE IF EXISTS `custom_caixa`;
CREATE TABLE `custom_caixa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor_inicial` varchar(255) DEFAULT NULL,
  `data_abertura` datetime DEFAULT NULL,
  `data_fechamento` datetime DEFAULT NULL,
  `fk_usuarios` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of custom_caixa
-- ----------------------------

-- ----------------------------
-- Table structure for custom_categorias
-- ----------------------------
DROP TABLE IF EXISTS `custom_categorias`;
CREATE TABLE `custom_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of custom_categorias
-- ----------------------------

-- ----------------------------
-- Table structure for custom_logs
-- ----------------------------
DROP TABLE IF EXISTS `custom_logs`;
CREATE TABLE `custom_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_usuarios` int(11) DEFAULT NULL,
  `acao` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of custom_logs
-- ----------------------------

-- ----------------------------
-- Table structure for custom_mesas
-- ----------------------------
DROP TABLE IF EXISTS `custom_mesas`;
CREATE TABLE `custom_mesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT '',
  `qr_code` varchar(255) DEFAULT NULL,
  `fk_status_mesa` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `qr_code_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of custom_mesas
-- ----------------------------
INSERT INTO `custom_mesas` VALUES ('1', 'mesa 1', null, '1', null, null, null, 'public/qrcodes/mesa_1.png');
INSERT INTO `custom_mesas` VALUES ('2', 'mesa 2', null, '1', null, null, null, 'public/qrcodes/mesa_2.png');
INSERT INTO `custom_mesas` VALUES ('3', 'mesa 3', null, '1', null, null, null, 'public/qrcodes/mesa_3.png');
INSERT INTO `custom_mesas` VALUES ('4', 'mesa 4', null, '1', null, null, null, 'public/qrcodes/mesa_4.png');
INSERT INTO `custom_mesas` VALUES ('5', 'mesa 5', null, '1', null, null, null, 'public/qrcodes/mesa_5.png');
INSERT INTO `custom_mesas` VALUES ('6', 'mesa 6', null, '1', null, null, null, 'public/qrcodes/mesa_6.png');
INSERT INTO `custom_mesas` VALUES ('7', 'mesa 7', null, '1', null, null, null, 'public/qrcodes/mesa_7.png');
INSERT INTO `custom_mesas` VALUES ('8', 'mesa 8', null, '1', null, null, null, 'public/qrcodes/mesa_8.png');
INSERT INTO `custom_mesas` VALUES ('9', 'mesa 9', null, '1', null, null, null, 'public/qrcodes/mesa_9.png');
INSERT INTO `custom_mesas` VALUES ('10', 'mesa 10', null, '1', null, null, null, 'public/qrcodes/mesa_10.png');
INSERT INTO `custom_mesas` VALUES ('11', 'mesa 11', null, '1', null, null, null, 'public/qrcodes/mesa_11.png');
INSERT INTO `custom_mesas` VALUES ('12', 'mesa 12', null, '1', null, null, null, 'public/qrcodes/mesa_12.png');
INSERT INTO `custom_mesas` VALUES ('13', 'mesa 13', null, '1', null, null, null, 'public/qrcodes/mesa_13.png');
INSERT INTO `custom_mesas` VALUES ('14', 'mesa 14', null, '1', null, null, null, 'public/qrcodes/mesa_14.png');
INSERT INTO `custom_mesas` VALUES ('15', 'mesa 15', null, '1', null, null, null, 'public/qrcodes/mesa_15.png');
INSERT INTO `custom_mesas` VALUES ('16', 'mesa 16', null, '1', null, null, null, 'public/qrcodes/mesa_16.png');
INSERT INTO `custom_mesas` VALUES ('17', 'mesa 17', null, '1', null, null, null, 'public/qrcodes/mesa_17.png');
INSERT INTO `custom_mesas` VALUES ('18', 'mesa 18', null, '1', null, null, null, 'public/qrcodes/mesa_18.png');
INSERT INTO `custom_mesas` VALUES ('19', 'mesa 19', null, '1', null, null, null, 'public/qrcodes/mesa_19.png');
INSERT INTO `custom_mesas` VALUES ('20', 'mesa 20', null, '1', null, null, null, 'public/qrcodes/mesa_20.png');
INSERT INTO `custom_mesas` VALUES ('21', 'mesa 21', null, '1', null, null, null, 'public/qrcodes/mesa_21.png');
INSERT INTO `custom_mesas` VALUES ('22', 'mesa 22', null, '1', null, null, null, 'public/qrcodes/mesa_22.png');
INSERT INTO `custom_mesas` VALUES ('23', 'mesa 23', null, '1', null, null, null, 'public/qrcodes/mesa_23.png');
INSERT INTO `custom_mesas` VALUES ('24', 'mesa 24', null, '1', null, null, null, 'public/qrcodes/mesa_24.png');
INSERT INTO `custom_mesas` VALUES ('25', 'mesa 25', null, '1', null, null, null, 'public/qrcodes/mesa_25.png');
INSERT INTO `custom_mesas` VALUES ('26', 'mesa 26', null, '1', null, null, null, 'public/qrcodes/mesa_26.png');
INSERT INTO `custom_mesas` VALUES ('27', 'mesa 27', null, '1', null, null, null, 'public/qrcodes/mesa_27.png');
INSERT INTO `custom_mesas` VALUES ('28', 'mesa 28', null, '1', null, null, null, 'public/qrcodes/mesa_28.png');
INSERT INTO `custom_mesas` VALUES ('29', 'mesa 29', null, '1', null, null, null, 'public/qrcodes/mesa_29.png');
INSERT INTO `custom_mesas` VALUES ('30', 'mesa 30', null, '1', null, null, null, 'public/qrcodes/mesa_30.png');
INSERT INTO `custom_mesas` VALUES ('31', 'mesa 31', null, '1', null, null, null, 'public/qrcodes/mesa_31.png');
INSERT INTO `custom_mesas` VALUES ('32', 'mesa 32', null, '1', null, null, null, 'public/qrcodes/mesa_32.png');
INSERT INTO `custom_mesas` VALUES ('33', 'mesa 33', null, '1', null, null, null, 'public/qrcodes/mesa_33.png');
INSERT INTO `custom_mesas` VALUES ('34', 'mesa 34', null, '1', null, null, null, 'public/qrcodes/mesa_34.png');
INSERT INTO `custom_mesas` VALUES ('35', 'mesa 35', null, '1', null, null, null, 'public/qrcodes/mesa_35.png');
INSERT INTO `custom_mesas` VALUES ('36', 'mesa 36', null, '1', null, null, null, 'public/qrcodes/mesa_36.png');
INSERT INTO `custom_mesas` VALUES ('37', 'mesa 37', null, '1', null, null, null, 'public/qrcodes/mesa_37.png');
INSERT INTO `custom_mesas` VALUES ('38', 'mesa 38', null, '1', null, null, null, 'public/qrcodes/mesa_38.png');
INSERT INTO `custom_mesas` VALUES ('39', 'mesa 39', null, '1', null, null, null, 'public/qrcodes/mesa_39.png');
INSERT INTO `custom_mesas` VALUES ('40', 'mesa 40', null, '1', null, null, null, 'public/qrcodes/mesa_40.png');
INSERT INTO `custom_mesas` VALUES ('41', 'mesa 41', null, '1', null, null, null, 'public/qrcodes/mesa_41.png');
INSERT INTO `custom_mesas` VALUES ('42', 'mesa 42', null, '1', null, null, null, 'public/qrcodes/mesa_42.png');
INSERT INTO `custom_mesas` VALUES ('43', 'mesa 43', null, '1', null, null, null, 'public/qrcodes/mesa_43.png');
INSERT INTO `custom_mesas` VALUES ('44', 'mesa 44', null, '1', null, null, null, 'public/qrcodes/mesa_44.png');
INSERT INTO `custom_mesas` VALUES ('45', 'mesa 45', null, '1', null, null, null, 'public/qrcodes/mesa_45.png');
INSERT INTO `custom_mesas` VALUES ('46', 'mesa 46', null, '1', null, null, null, 'public/qrcodes/mesa_46.png');
INSERT INTO `custom_mesas` VALUES ('47', 'mesa 47', null, '1', null, null, null, 'public/qrcodes/mesa_47.png');
INSERT INTO `custom_mesas` VALUES ('48', 'mesa 48', null, '1', null, null, null, 'public/qrcodes/mesa_48.png');
INSERT INTO `custom_mesas` VALUES ('49', 'mesa 49', null, '1', null, null, null, 'public/qrcodes/mesa_49.png');
INSERT INTO `custom_mesas` VALUES ('50', 'mesa 50', null, '1', null, null, null, 'public/qrcodes/mesa_50.png');
INSERT INTO `custom_mesas` VALUES ('51', 'mesa 51', null, '1', null, null, null, 'public/qrcodes/mesa_51.png');
INSERT INTO `custom_mesas` VALUES ('52', 'mesa 52', null, '1', null, null, null, 'public/qrcodes/mesa_52.png');
INSERT INTO `custom_mesas` VALUES ('53', 'mesa 53', null, '1', null, null, null, 'public/qrcodes/mesa_53.png');
INSERT INTO `custom_mesas` VALUES ('54', 'mesa 54', null, '1', null, null, null, 'public/qrcodes/mesa_54.png');
INSERT INTO `custom_mesas` VALUES ('55', 'mesa 55', null, '1', null, null, null, 'public/qrcodes/mesa_55.png');
INSERT INTO `custom_mesas` VALUES ('56', 'mesa 56', null, '1', null, null, null, 'public/qrcodes/mesa_56.png');
INSERT INTO `custom_mesas` VALUES ('57', 'mesa 57', null, '1', null, null, null, 'public/qrcodes/mesa_57.png');
INSERT INTO `custom_mesas` VALUES ('58', 'mesa 58', null, '1', null, null, null, 'public/qrcodes/mesa_58.png');
INSERT INTO `custom_mesas` VALUES ('59', 'mesa 59', null, '1', null, null, null, 'public/qrcodes/mesa_59.png');
INSERT INTO `custom_mesas` VALUES ('60', 'mesa 60', null, '1', null, null, null, 'public/qrcodes/mesa_60.png');
INSERT INTO `custom_mesas` VALUES ('61', 'mesa 61', null, '1', null, null, null, 'public/qrcodes/mesa_61.png');
INSERT INTO `custom_mesas` VALUES ('62', 'mesa 62', null, '1', null, null, null, 'public/qrcodes/mesa_62.png');
INSERT INTO `custom_mesas` VALUES ('63', 'mesa 63', null, '1', null, null, null, 'public/qrcodes/mesa_63.png');
INSERT INTO `custom_mesas` VALUES ('64', 'mesa 64', null, '1', null, null, null, 'public/qrcodes/mesa_64.png');
INSERT INTO `custom_mesas` VALUES ('65', 'mesa 65', null, '1', null, null, null, 'public/qrcodes/mesa_65.png');
INSERT INTO `custom_mesas` VALUES ('66', 'mesa 66', null, '1', null, null, null, 'public/qrcodes/mesa_66.png');
INSERT INTO `custom_mesas` VALUES ('67', 'mesa 67', null, '1', null, null, null, 'public/qrcodes/mesa_67.png');
INSERT INTO `custom_mesas` VALUES ('68', 'mesa 68', null, '1', null, null, null, 'public/qrcodes/mesa_68.png');
INSERT INTO `custom_mesas` VALUES ('69', 'mesa 69', null, '1', null, null, null, 'public/qrcodes/mesa_69.png');
INSERT INTO `custom_mesas` VALUES ('70', 'mesa 70', null, '1', null, null, null, 'public/qrcodes/mesa_70.png');
INSERT INTO `custom_mesas` VALUES ('71', 'mesa 71', null, '1', null, null, null, 'public/qrcodes/mesa_71.png');
INSERT INTO `custom_mesas` VALUES ('72', 'mesa 72', null, '1', null, null, null, 'public/qrcodes/mesa_72.png');
INSERT INTO `custom_mesas` VALUES ('73', 'mesa 73', null, '1', null, null, null, 'public/qrcodes/mesa_73.png');
INSERT INTO `custom_mesas` VALUES ('74', 'mesa 74', null, '1', null, null, null, 'public/qrcodes/mesa_74.png');
INSERT INTO `custom_mesas` VALUES ('75', 'mesa 75', null, '1', null, null, null, 'public/qrcodes/mesa_75.png');
INSERT INTO `custom_mesas` VALUES ('76', 'mesa 76', null, '1', null, null, null, 'public/qrcodes/mesa_76.png');
INSERT INTO `custom_mesas` VALUES ('77', 'mesa 77', null, '1', null, null, null, 'public/qrcodes/mesa_77.png');
INSERT INTO `custom_mesas` VALUES ('78', 'mesa 78', null, '1', null, null, null, 'public/qrcodes/mesa_78.png');
INSERT INTO `custom_mesas` VALUES ('79', 'mesa 79', null, '1', null, null, null, 'public/qrcodes/mesa_79.png');
INSERT INTO `custom_mesas` VALUES ('80', 'mesa 80', null, '1', null, null, null, 'public/qrcodes/mesa_80.png');
INSERT INTO `custom_mesas` VALUES ('81', 'mesa 81', null, '1', null, null, null, 'public/qrcodes/mesa_81.png');
INSERT INTO `custom_mesas` VALUES ('82', 'mesa 82', null, '1', null, null, null, 'public/qrcodes/mesa_82.png');
INSERT INTO `custom_mesas` VALUES ('83', 'mesa 83', null, '1', null, null, null, 'public/qrcodes/mesa_83.png');
INSERT INTO `custom_mesas` VALUES ('84', 'mesa 84', null, '1', null, null, null, 'public/qrcodes/mesa_84.png');
INSERT INTO `custom_mesas` VALUES ('85', 'mesa 85', null, '1', null, null, null, 'public/qrcodes/mesa_85.png');
INSERT INTO `custom_mesas` VALUES ('86', 'mesa 86', null, '1', null, null, null, 'public/qrcodes/mesa_86.png');
INSERT INTO `custom_mesas` VALUES ('87', 'mesa 87', null, '1', null, null, null, 'public/qrcodes/mesa_87.png');
INSERT INTO `custom_mesas` VALUES ('88', 'mesa 88', null, '1', null, null, null, 'public/qrcodes/mesa_88.png');
INSERT INTO `custom_mesas` VALUES ('89', 'mesa 89', null, '1', null, null, null, 'public/qrcodes/mesa_89.png');
INSERT INTO `custom_mesas` VALUES ('90', 'mesa 90', null, '1', null, null, null, 'public/qrcodes/mesa_90.png');
INSERT INTO `custom_mesas` VALUES ('91', 'mesa 91', null, '1', null, null, null, 'public/qrcodes/mesa_91.png');
INSERT INTO `custom_mesas` VALUES ('92', 'mesa 92', null, '1', null, null, null, 'public/qrcodes/mesa_92.png');
INSERT INTO `custom_mesas` VALUES ('93', 'mesa 93', null, '1', null, null, null, 'public/qrcodes/mesa_93.png');
INSERT INTO `custom_mesas` VALUES ('94', 'mesa 94', null, '1', null, null, null, 'public/qrcodes/mesa_94.png');
INSERT INTO `custom_mesas` VALUES ('95', 'mesa 95', null, '1', null, null, null, 'public/qrcodes/mesa_95.png');
INSERT INTO `custom_mesas` VALUES ('96', 'mesa 96', null, '1', null, null, null, 'public/qrcodes/mesa_96.png');
INSERT INTO `custom_mesas` VALUES ('97', 'mesa 97', null, '1', null, null, null, 'public/qrcodes/mesa_97.png');
INSERT INTO `custom_mesas` VALUES ('98', 'mesa 98', null, '1', null, null, null, 'public/qrcodes/mesa_98.png');
INSERT INTO `custom_mesas` VALUES ('99', 'mesa 99', null, '1', null, null, null, 'public/qrcodes/mesa_99.png');
INSERT INTO `custom_mesas` VALUES ('100', 'mesa 100', null, '1', null, null, null, 'public/qrcodes/mesa_100.png');
INSERT INTO `custom_mesas` VALUES ('101', 'mesa 101', null, '1', null, null, null, 'public/qrcodes/mesa_101.png');
INSERT INTO `custom_mesas` VALUES ('102', 'mesa 102', null, '1', null, null, null, 'public/qrcodes/mesa_102.png');
INSERT INTO `custom_mesas` VALUES ('103', 'mesa 103', null, '1', null, null, null, 'public/qrcodes/mesa_103.png');
INSERT INTO `custom_mesas` VALUES ('104', 'mesa 104', null, '1', null, null, null, 'public/qrcodes/mesa_104.png');
INSERT INTO `custom_mesas` VALUES ('105', 'mesa 105', null, '1', null, null, null, 'public/qrcodes/mesa_105.png');
INSERT INTO `custom_mesas` VALUES ('106', 'mesa 106', null, '1', null, null, null, 'public/qrcodes/mesa_106.png');
INSERT INTO `custom_mesas` VALUES ('107', 'mesa 107', null, '1', null, null, null, 'public/qrcodes/mesa_107.png');
INSERT INTO `custom_mesas` VALUES ('108', 'mesa 108', null, '1', null, null, null, 'public/qrcodes/mesa_108.png');
INSERT INTO `custom_mesas` VALUES ('109', 'mesa 109', null, '1', null, null, null, 'public/qrcodes/mesa_109.png');
INSERT INTO `custom_mesas` VALUES ('110', 'mesa 110', null, '1', null, null, null, 'public/qrcodes/mesa_110.png');
INSERT INTO `custom_mesas` VALUES ('111', 'mesa 111', null, '1', null, null, null, 'public/qrcodes/mesa_111.png');
INSERT INTO `custom_mesas` VALUES ('112', 'mesa 112', null, '1', null, null, null, 'public/qrcodes/mesa_112.png');
INSERT INTO `custom_mesas` VALUES ('113', 'mesa 113', null, '1', null, null, null, 'public/qrcodes/mesa_113.png');
INSERT INTO `custom_mesas` VALUES ('114', 'mesa 114', null, '1', null, null, null, 'public/qrcodes/mesa_114.png');
INSERT INTO `custom_mesas` VALUES ('115', 'mesa 115', null, '1', null, null, null, 'public/qrcodes/mesa_115.png');
INSERT INTO `custom_mesas` VALUES ('116', 'mesa 116', null, '1', null, null, null, 'public/qrcodes/mesa_116.png');
INSERT INTO `custom_mesas` VALUES ('117', 'mesa 117', null, '1', null, null, null, 'public/qrcodes/mesa_117.png');
INSERT INTO `custom_mesas` VALUES ('118', 'mesa 118', null, '1', null, null, null, 'public/qrcodes/mesa_118.png');
INSERT INTO `custom_mesas` VALUES ('119', 'mesa 119', null, '1', null, null, null, 'public/qrcodes/mesa_119.png');
INSERT INTO `custom_mesas` VALUES ('120', 'mesa 120', null, '1', null, null, null, 'public/qrcodes/mesa_120.png');
INSERT INTO `custom_mesas` VALUES ('121', 'mesa 121', null, '1', null, null, null, 'public/qrcodes/mesa_121.png');
INSERT INTO `custom_mesas` VALUES ('122', 'mesa 122', null, '1', null, null, null, 'public/qrcodes/mesa_122.png');
INSERT INTO `custom_mesas` VALUES ('123', 'mesa 123', null, '1', null, null, null, 'public/qrcodes/mesa_123.png');
INSERT INTO `custom_mesas` VALUES ('124', 'mesa 124', null, '1', null, null, null, 'public/qrcodes/mesa_124.png');
INSERT INTO `custom_mesas` VALUES ('125', 'mesa 125', null, '1', null, null, null, 'public/qrcodes/mesa_125.png');
INSERT INTO `custom_mesas` VALUES ('126', 'mesa 126', null, '1', null, null, null, 'public/qrcodes/mesa_126.png');
INSERT INTO `custom_mesas` VALUES ('127', 'mesa 127', null, '1', null, null, null, 'public/qrcodes/mesa_127.png');
INSERT INTO `custom_mesas` VALUES ('128', 'mesa 128', null, '1', null, null, null, 'public/qrcodes/mesa_128.png');
INSERT INTO `custom_mesas` VALUES ('129', 'mesa 129', null, '1', null, null, null, 'public/qrcodes/mesa_129.png');
INSERT INTO `custom_mesas` VALUES ('130', 'mesa 130', null, '1', null, null, null, 'public/qrcodes/mesa_130.png');
INSERT INTO `custom_mesas` VALUES ('131', 'mesa 131', null, '1', null, null, null, 'public/qrcodes/mesa_131.png');
INSERT INTO `custom_mesas` VALUES ('132', 'mesa 132', null, '1', null, null, null, 'public/qrcodes/mesa_132.png');
INSERT INTO `custom_mesas` VALUES ('133', 'mesa 133', null, '1', null, null, null, 'public/qrcodes/mesa_133.png');
INSERT INTO `custom_mesas` VALUES ('134', 'mesa 134', null, '1', null, null, null, 'public/qrcodes/mesa_134.png');
INSERT INTO `custom_mesas` VALUES ('135', 'mesa 135', null, '1', null, null, null, 'public/qrcodes/mesa_135.png');
INSERT INTO `custom_mesas` VALUES ('136', 'mesa 136', null, '1', null, null, null, 'public/qrcodes/mesa_136.png');
INSERT INTO `custom_mesas` VALUES ('137', 'mesa 137', null, '1', null, null, null, 'public/qrcodes/mesa_137.png');
INSERT INTO `custom_mesas` VALUES ('138', 'mesa 138', null, '1', null, null, null, 'public/qrcodes/mesa_138.png');
INSERT INTO `custom_mesas` VALUES ('139', 'mesa 139', null, '1', null, null, null, 'public/qrcodes/mesa_139.png');
INSERT INTO `custom_mesas` VALUES ('140', 'mesa 140', null, '1', null, null, null, 'public/qrcodes/mesa_140.png');
INSERT INTO `custom_mesas` VALUES ('141', 'mesa 141', null, '1', null, null, null, 'public/qrcodes/mesa_141.png');
INSERT INTO `custom_mesas` VALUES ('142', 'mesa 142', null, '1', null, null, null, 'public/qrcodes/mesa_142.png');
INSERT INTO `custom_mesas` VALUES ('143', 'mesa 143', null, '1', null, null, null, 'public/qrcodes/mesa_143.png');
INSERT INTO `custom_mesas` VALUES ('144', 'mesa 144', null, '1', null, null, null, 'public/qrcodes/mesa_144.png');
INSERT INTO `custom_mesas` VALUES ('145', 'mesa 145', null, '1', null, null, null, 'public/qrcodes/mesa_145.png');
INSERT INTO `custom_mesas` VALUES ('146', 'mesa 146', null, '1', null, null, null, 'public/qrcodes/mesa_146.png');
INSERT INTO `custom_mesas` VALUES ('147', 'mesa 147', null, '1', null, null, null, 'public/qrcodes/mesa_147.png');
INSERT INTO `custom_mesas` VALUES ('148', 'mesa 148', null, '1', null, null, null, 'public/qrcodes/mesa_148.png');
INSERT INTO `custom_mesas` VALUES ('149', 'mesa 149', null, '1', null, null, null, 'public/qrcodes/mesa_149.png');
INSERT INTO `custom_mesas` VALUES ('150', 'mesa 150', null, '1', null, null, null, 'public/qrcodes/mesa_150.png');
INSERT INTO `custom_mesas` VALUES ('151', 'mesa 151', null, '1', null, null, null, 'public/qrcodes/mesa_151.png');
INSERT INTO `custom_mesas` VALUES ('152', 'mesa 152', null, '1', null, null, null, 'public/qrcodes/mesa_152.png');
INSERT INTO `custom_mesas` VALUES ('153', 'mesa 153', null, '1', null, null, null, 'public/qrcodes/mesa_153.png');
INSERT INTO `custom_mesas` VALUES ('154', 'mesa 154', null, '1', null, null, null, 'public/qrcodes/mesa_154.png');
INSERT INTO `custom_mesas` VALUES ('155', 'mesa 155', null, '1', null, null, null, 'public/qrcodes/mesa_155.png');
INSERT INTO `custom_mesas` VALUES ('156', 'mesa 156', null, '1', null, null, null, 'public/qrcodes/mesa_156.png');
INSERT INTO `custom_mesas` VALUES ('157', 'mesa 157', null, '1', null, null, null, 'public/qrcodes/mesa_157.png');
INSERT INTO `custom_mesas` VALUES ('158', 'mesa 158', null, '1', null, null, null, 'public/qrcodes/mesa_158.png');
INSERT INTO `custom_mesas` VALUES ('159', 'mesa 159', null, '1', null, null, null, 'public/qrcodes/mesa_159.png');
INSERT INTO `custom_mesas` VALUES ('160', 'mesa 160', null, '1', null, null, null, 'public/qrcodes/mesa_160.png');
INSERT INTO `custom_mesas` VALUES ('161', 'mesa 161', null, '1', null, null, null, 'public/qrcodes/mesa_161.png');
INSERT INTO `custom_mesas` VALUES ('162', 'mesa 162', null, '1', null, null, null, 'public/qrcodes/mesa_162.png');
INSERT INTO `custom_mesas` VALUES ('163', 'mesa 163', null, '1', null, null, null, 'public/qrcodes/mesa_163.png');
INSERT INTO `custom_mesas` VALUES ('164', 'mesa 164', null, '1', null, null, null, 'public/qrcodes/mesa_164.png');
INSERT INTO `custom_mesas` VALUES ('165', 'mesa 165', null, '1', null, null, null, 'public/qrcodes/mesa_165.png');
INSERT INTO `custom_mesas` VALUES ('166', 'mesa 166', null, '1', null, null, null, 'public/qrcodes/mesa_166.png');
INSERT INTO `custom_mesas` VALUES ('167', 'mesa 167', null, '1', null, null, null, 'public/qrcodes/mesa_167.png');
INSERT INTO `custom_mesas` VALUES ('168', 'mesa 168', null, '1', null, null, null, 'public/qrcodes/mesa_168.png');
INSERT INTO `custom_mesas` VALUES ('169', 'mesa 169', null, '1', null, null, null, 'public/qrcodes/mesa_169.png');
INSERT INTO `custom_mesas` VALUES ('170', 'mesa 170', null, '1', null, null, null, 'public/qrcodes/mesa_170.png');
INSERT INTO `custom_mesas` VALUES ('171', 'mesa 171', null, '1', null, null, null, 'public/qrcodes/mesa_171.png');
INSERT INTO `custom_mesas` VALUES ('172', 'mesa 172', null, '1', null, null, null, 'public/qrcodes/mesa_172.png');
INSERT INTO `custom_mesas` VALUES ('173', 'mesa 173', null, '1', null, null, null, 'public/qrcodes/mesa_173.png');
INSERT INTO `custom_mesas` VALUES ('174', 'mesa 174', null, '1', null, null, null, 'public/qrcodes/mesa_174.png');
INSERT INTO `custom_mesas` VALUES ('175', 'mesa 175', null, '1', null, null, null, 'public/qrcodes/mesa_175.png');
INSERT INTO `custom_mesas` VALUES ('176', 'mesa 176', null, '1', null, null, null, 'public/qrcodes/mesa_176.png');
INSERT INTO `custom_mesas` VALUES ('177', 'mesa 177', null, '1', null, null, null, 'public/qrcodes/mesa_177.png');
INSERT INTO `custom_mesas` VALUES ('178', 'mesa 178', null, '1', null, null, null, 'public/qrcodes/mesa_178.png');
INSERT INTO `custom_mesas` VALUES ('179', 'mesa 179', null, '1', null, null, null, 'public/qrcodes/mesa_179.png');
INSERT INTO `custom_mesas` VALUES ('180', 'mesa 180', null, '1', null, null, null, 'public/qrcodes/mesa_180.png');
INSERT INTO `custom_mesas` VALUES ('181', 'mesa 181', null, '1', null, null, null, 'public/qrcodes/mesa_181.png');
INSERT INTO `custom_mesas` VALUES ('182', 'mesa 182', null, '1', null, null, null, 'public/qrcodes/mesa_182.png');
INSERT INTO `custom_mesas` VALUES ('183', 'mesa 183', null, '1', null, null, null, 'public/qrcodes/mesa_183.png');
INSERT INTO `custom_mesas` VALUES ('184', 'mesa 184', null, '1', null, null, null, 'public/qrcodes/mesa_184.png');
INSERT INTO `custom_mesas` VALUES ('185', 'mesa 185', null, '1', null, null, null, 'public/qrcodes/mesa_185.png');
INSERT INTO `custom_mesas` VALUES ('186', 'mesa 186', null, '1', null, null, null, 'public/qrcodes/mesa_186.png');
INSERT INTO `custom_mesas` VALUES ('187', 'mesa 187', null, '1', null, null, null, 'public/qrcodes/mesa_187.png');
INSERT INTO `custom_mesas` VALUES ('188', 'mesa 188', null, '1', null, null, null, 'public/qrcodes/mesa_188.png');
INSERT INTO `custom_mesas` VALUES ('189', 'mesa 189', null, '1', null, null, null, 'public/qrcodes/mesa_189.png');
INSERT INTO `custom_mesas` VALUES ('190', 'mesa 190', null, '1', null, null, null, 'public/qrcodes/mesa_190.png');
INSERT INTO `custom_mesas` VALUES ('191', 'mesa 191', null, '1', null, null, null, 'public/qrcodes/mesa_191.png');
INSERT INTO `custom_mesas` VALUES ('192', 'mesa 192', null, '1', null, null, null, 'public/qrcodes/mesa_192.png');
INSERT INTO `custom_mesas` VALUES ('193', 'mesa 193', null, '1', null, null, null, 'public/qrcodes/mesa_193.png');
INSERT INTO `custom_mesas` VALUES ('194', 'mesa 194', null, '1', null, null, null, 'public/qrcodes/mesa_194.png');
INSERT INTO `custom_mesas` VALUES ('195', 'mesa 195', null, '1', null, null, null, 'public/qrcodes/mesa_195.png');
INSERT INTO `custom_mesas` VALUES ('196', 'mesa 196', null, '1', null, null, null, 'public/qrcodes/mesa_196.png');
INSERT INTO `custom_mesas` VALUES ('197', 'mesa 197', null, '1', null, null, null, 'public/qrcodes/mesa_197.png');
INSERT INTO `custom_mesas` VALUES ('198', 'mesa 198', null, '1', null, null, null, 'public/qrcodes/mesa_198.png');
INSERT INTO `custom_mesas` VALUES ('199', 'mesa 199', null, '1', null, null, null, 'public/qrcodes/mesa_199.png');
INSERT INTO `custom_mesas` VALUES ('200', 'mesa 200', null, '1', null, null, null, 'public/qrcodes/mesa_200.png');
INSERT INTO `custom_mesas` VALUES ('201', 'mesa 201', null, '1', null, null, null, 'public/qrcodes/mesa_201.png');
INSERT INTO `custom_mesas` VALUES ('202', 'mesa 202', null, '1', null, null, null, 'public/qrcodes/mesa_202.png');
INSERT INTO `custom_mesas` VALUES ('203', 'mesa 203', null, '1', null, null, null, 'public/qrcodes/mesa_203.png');
INSERT INTO `custom_mesas` VALUES ('204', 'mesa 204', null, '1', null, null, null, 'public/qrcodes/mesa_204.png');
INSERT INTO `custom_mesas` VALUES ('205', 'mesa 205', null, '1', null, null, null, 'public/qrcodes/mesa_205.png');
INSERT INTO `custom_mesas` VALUES ('206', 'mesa 206', null, '1', null, null, null, 'public/qrcodes/mesa_206.png');
INSERT INTO `custom_mesas` VALUES ('207', 'mesa 207', null, '1', null, null, null, 'public/qrcodes/mesa_207.png');
INSERT INTO `custom_mesas` VALUES ('208', 'mesa 208', null, '1', null, null, null, 'public/qrcodes/mesa_208.png');
INSERT INTO `custom_mesas` VALUES ('209', 'mesa 209', null, '1', null, null, null, 'public/qrcodes/mesa_209.png');
INSERT INTO `custom_mesas` VALUES ('210', 'mesa 210', null, '1', null, null, null, 'public/qrcodes/mesa_210.png');
INSERT INTO `custom_mesas` VALUES ('211', 'mesa 211', null, '1', null, null, null, 'public/qrcodes/mesa_211.png');
INSERT INTO `custom_mesas` VALUES ('212', 'mesa 212', null, '1', null, null, null, 'public/qrcodes/mesa_212.png');
INSERT INTO `custom_mesas` VALUES ('213', 'mesa 213', null, '1', null, null, null, 'public/qrcodes/mesa_213.png');
INSERT INTO `custom_mesas` VALUES ('214', 'mesa 214', null, '1', null, null, null, 'public/qrcodes/mesa_214.png');
INSERT INTO `custom_mesas` VALUES ('215', 'mesa 215', null, '1', null, null, null, 'public/qrcodes/mesa_215.png');
INSERT INTO `custom_mesas` VALUES ('216', 'mesa 216', null, '1', null, null, null, 'public/qrcodes/mesa_216.png');
INSERT INTO `custom_mesas` VALUES ('217', 'mesa 217', null, '1', null, null, null, 'public/qrcodes/mesa_217.png');
INSERT INTO `custom_mesas` VALUES ('218', 'mesa 218', null, '1', null, null, null, 'public/qrcodes/mesa_218.png');
INSERT INTO `custom_mesas` VALUES ('219', 'mesa 219', null, '1', null, null, null, 'public/qrcodes/mesa_219.png');
INSERT INTO `custom_mesas` VALUES ('220', 'mesa 220', null, '1', null, null, null, 'public/qrcodes/mesa_220.png');
INSERT INTO `custom_mesas` VALUES ('221', 'mesa 221', null, '1', null, null, null, 'public/qrcodes/mesa_221.png');
INSERT INTO `custom_mesas` VALUES ('222', 'mesa 222', null, '1', null, null, null, 'public/qrcodes/mesa_222.png');
INSERT INTO `custom_mesas` VALUES ('223', 'mesa 223', null, '1', null, null, null, 'public/qrcodes/mesa_223.png');
INSERT INTO `custom_mesas` VALUES ('224', 'mesa 224', null, '1', null, null, null, 'public/qrcodes/mesa_224.png');
INSERT INTO `custom_mesas` VALUES ('225', 'mesa 225', null, '1', null, null, null, 'public/qrcodes/mesa_225.png');
INSERT INTO `custom_mesas` VALUES ('226', 'mesa 226', null, '1', null, null, null, 'public/qrcodes/mesa_226.png');
INSERT INTO `custom_mesas` VALUES ('227', 'mesa 227', null, '1', null, null, null, 'public/qrcodes/mesa_227.png');
INSERT INTO `custom_mesas` VALUES ('228', 'mesa 228', null, '1', null, null, null, 'public/qrcodes/mesa_228.png');
INSERT INTO `custom_mesas` VALUES ('229', 'mesa 229', null, '1', null, null, null, 'public/qrcodes/mesa_229.png');
INSERT INTO `custom_mesas` VALUES ('230', 'mesa 230', null, '1', null, null, null, 'public/qrcodes/mesa_230.png');
INSERT INTO `custom_mesas` VALUES ('231', 'mesa 231', null, '1', null, null, null, 'public/qrcodes/mesa_231.png');
INSERT INTO `custom_mesas` VALUES ('232', 'mesa 232', null, '1', null, null, null, 'public/qrcodes/mesa_232.png');
INSERT INTO `custom_mesas` VALUES ('233', 'mesa 233', null, '1', null, null, null, 'public/qrcodes/mesa_233.png');
INSERT INTO `custom_mesas` VALUES ('234', 'mesa 234', null, '1', null, null, null, 'public/qrcodes/mesa_234.png');
INSERT INTO `custom_mesas` VALUES ('235', 'mesa 235', null, '1', null, null, null, 'public/qrcodes/mesa_235.png');
INSERT INTO `custom_mesas` VALUES ('236', 'mesa 236', null, '1', null, null, null, 'public/qrcodes/mesa_236.png');
INSERT INTO `custom_mesas` VALUES ('237', 'mesa 237', null, '1', null, null, null, 'public/qrcodes/mesa_237.png');
INSERT INTO `custom_mesas` VALUES ('238', 'mesa 238', null, '1', null, null, null, 'public/qrcodes/mesa_238.png');
INSERT INTO `custom_mesas` VALUES ('239', 'mesa 239', null, '1', null, null, null, 'public/qrcodes/mesa_239.png');
INSERT INTO `custom_mesas` VALUES ('240', 'mesa 240', null, '1', null, null, null, 'public/qrcodes/mesa_240.png');
INSERT INTO `custom_mesas` VALUES ('241', 'mesa 241', null, '1', null, null, null, 'public/qrcodes/mesa_241.png');
INSERT INTO `custom_mesas` VALUES ('242', 'mesa 242', null, '1', null, null, null, 'public/qrcodes/mesa_242.png');
INSERT INTO `custom_mesas` VALUES ('243', 'mesa 243', null, '1', null, null, null, 'public/qrcodes/mesa_243.png');
INSERT INTO `custom_mesas` VALUES ('244', 'mesa 244', null, '1', null, null, null, 'public/qrcodes/mesa_244.png');
INSERT INTO `custom_mesas` VALUES ('245', 'mesa 245', null, '1', null, null, null, 'public/qrcodes/mesa_245.png');
INSERT INTO `custom_mesas` VALUES ('246', 'mesa 246', null, '1', null, null, null, 'public/qrcodes/mesa_246.png');
INSERT INTO `custom_mesas` VALUES ('247', 'mesa 247', null, '1', null, null, null, 'public/qrcodes/mesa_247.png');
INSERT INTO `custom_mesas` VALUES ('248', 'mesa 248', null, '1', null, null, null, 'public/qrcodes/mesa_248.png');
INSERT INTO `custom_mesas` VALUES ('249', 'mesa 249', null, '1', null, null, null, 'public/qrcodes/mesa_249.png');
INSERT INTO `custom_mesas` VALUES ('250', 'mesa 250', null, '1', null, null, null, 'public/qrcodes/mesa_250.png');
INSERT INTO `custom_mesas` VALUES ('251', 'mesa 251', null, '1', null, null, null, 'public/qrcodes/mesa_251.png');
INSERT INTO `custom_mesas` VALUES ('252', 'mesa 252', null, '1', null, null, null, 'public/qrcodes/mesa_252.png');
INSERT INTO `custom_mesas` VALUES ('253', 'mesa 253', null, '1', null, null, null, 'public/qrcodes/mesa_253.png');
INSERT INTO `custom_mesas` VALUES ('254', 'mesa 254', null, '1', null, null, null, 'public/qrcodes/mesa_254.png');
INSERT INTO `custom_mesas` VALUES ('255', 'mesa 255', null, '1', null, null, null, 'public/qrcodes/mesa_255.png');
INSERT INTO `custom_mesas` VALUES ('256', 'mesa 256', null, '1', null, null, null, 'public/qrcodes/mesa_256.png');
INSERT INTO `custom_mesas` VALUES ('257', 'mesa 257', null, '1', null, null, null, 'public/qrcodes/mesa_257.png');
INSERT INTO `custom_mesas` VALUES ('258', 'mesa 258', null, '1', null, null, null, 'public/qrcodes/mesa_258.png');
INSERT INTO `custom_mesas` VALUES ('259', 'mesa 259', null, '1', null, null, null, 'public/qrcodes/mesa_259.png');
INSERT INTO `custom_mesas` VALUES ('260', 'mesa 260', null, '1', null, null, null, 'public/qrcodes/mesa_260.png');
INSERT INTO `custom_mesas` VALUES ('261', 'mesa 261', null, '1', null, null, null, 'public/qrcodes/mesa_261.png');
INSERT INTO `custom_mesas` VALUES ('262', 'mesa 262', null, '1', null, null, null, 'public/qrcodes/mesa_262.png');
INSERT INTO `custom_mesas` VALUES ('263', 'mesa 263', null, '1', null, null, null, 'public/qrcodes/mesa_263.png');
INSERT INTO `custom_mesas` VALUES ('264', 'mesa 264', null, '1', null, null, null, 'public/qrcodes/mesa_264.png');
INSERT INTO `custom_mesas` VALUES ('265', 'mesa 265', null, '1', null, null, null, 'public/qrcodes/mesa_265.png');
INSERT INTO `custom_mesas` VALUES ('266', 'mesa 266', null, '1', null, null, null, 'public/qrcodes/mesa_266.png');
INSERT INTO `custom_mesas` VALUES ('267', 'mesa 267', null, '1', null, null, null, 'public/qrcodes/mesa_267.png');
INSERT INTO `custom_mesas` VALUES ('268', 'mesa 268', null, '1', null, null, null, 'public/qrcodes/mesa_268.png');
INSERT INTO `custom_mesas` VALUES ('269', 'mesa 269', null, '1', null, null, null, 'public/qrcodes/mesa_269.png');
INSERT INTO `custom_mesas` VALUES ('270', 'mesa 270', null, '1', null, null, null, 'public/qrcodes/mesa_270.png');
INSERT INTO `custom_mesas` VALUES ('271', 'mesa 271', null, '1', null, null, null, 'public/qrcodes/mesa_271.png');
INSERT INTO `custom_mesas` VALUES ('272', 'mesa 272', null, '1', null, null, null, 'public/qrcodes/mesa_272.png');
INSERT INTO `custom_mesas` VALUES ('273', 'mesa 273', null, '1', null, null, null, 'public/qrcodes/mesa_273.png');
INSERT INTO `custom_mesas` VALUES ('274', 'mesa 274', null, '1', null, null, null, 'public/qrcodes/mesa_274.png');
INSERT INTO `custom_mesas` VALUES ('275', 'mesa 275', null, '1', null, null, null, 'public/qrcodes/mesa_275.png');
INSERT INTO `custom_mesas` VALUES ('276', 'mesa 276', null, '1', null, null, null, 'public/qrcodes/mesa_276.png');
INSERT INTO `custom_mesas` VALUES ('277', 'mesa 277', null, '1', null, null, null, 'public/qrcodes/mesa_277.png');
INSERT INTO `custom_mesas` VALUES ('278', 'mesa 278', null, '1', null, null, null, 'public/qrcodes/mesa_278.png');
INSERT INTO `custom_mesas` VALUES ('279', 'mesa 279', null, '1', null, null, null, 'public/qrcodes/mesa_279.png');
INSERT INTO `custom_mesas` VALUES ('280', 'mesa 280', null, '1', null, null, null, 'public/qrcodes/mesa_280.png');
INSERT INTO `custom_mesas` VALUES ('281', 'mesa 281', null, '1', null, null, null, 'public/qrcodes/mesa_281.png');
INSERT INTO `custom_mesas` VALUES ('282', 'mesa 282', null, '1', null, null, null, 'public/qrcodes/mesa_282.png');
INSERT INTO `custom_mesas` VALUES ('283', 'mesa 283', null, '1', null, null, null, 'public/qrcodes/mesa_283.png');
INSERT INTO `custom_mesas` VALUES ('284', 'mesa 284', null, '1', null, null, null, 'public/qrcodes/mesa_284.png');
INSERT INTO `custom_mesas` VALUES ('285', 'mesa 285', null, '1', null, null, null, 'public/qrcodes/mesa_285.png');
INSERT INTO `custom_mesas` VALUES ('286', 'mesa 286', null, '1', null, null, null, 'public/qrcodes/mesa_286.png');
INSERT INTO `custom_mesas` VALUES ('287', 'mesa 287', null, '1', null, null, null, 'public/qrcodes/mesa_287.png');
INSERT INTO `custom_mesas` VALUES ('288', 'mesa 288', null, '1', null, null, null, 'public/qrcodes/mesa_288.png');
INSERT INTO `custom_mesas` VALUES ('289', 'mesa 289', null, '1', null, null, null, 'public/qrcodes/mesa_289.png');
INSERT INTO `custom_mesas` VALUES ('290', 'mesa 290', null, '1', null, null, null, 'public/qrcodes/mesa_290.png');
INSERT INTO `custom_mesas` VALUES ('291', 'mesa 291', null, '1', null, null, null, 'public/qrcodes/mesa_291.png');
INSERT INTO `custom_mesas` VALUES ('292', 'mesa 292', null, '1', null, null, null, 'public/qrcodes/mesa_292.png');
INSERT INTO `custom_mesas` VALUES ('293', 'mesa 293', null, '1', null, null, null, 'public/qrcodes/mesa_293.png');
INSERT INTO `custom_mesas` VALUES ('294', 'mesa 294', null, '1', null, null, null, 'public/qrcodes/mesa_294.png');
INSERT INTO `custom_mesas` VALUES ('295', 'mesa 295', null, '1', null, null, null, 'public/qrcodes/mesa_295.png');
INSERT INTO `custom_mesas` VALUES ('296', 'mesa 296', null, '1', null, null, null, 'public/qrcodes/mesa_296.png');
INSERT INTO `custom_mesas` VALUES ('297', 'mesa 297', null, '1', null, null, null, 'public/qrcodes/mesa_297.png');
INSERT INTO `custom_mesas` VALUES ('298', 'mesa 298', null, '1', null, null, null, 'public/qrcodes/mesa_298.png');
INSERT INTO `custom_mesas` VALUES ('299', 'mesa 299', null, '1', null, null, null, 'public/qrcodes/mesa_299.png');
INSERT INTO `custom_mesas` VALUES ('300', 'mesa 300', null, '1', null, null, null, 'public/qrcodes/mesa_300.png');
INSERT INTO `custom_mesas` VALUES ('301', 'mesa 301', null, '1', null, null, null, 'public/qrcodes/mesa_301.png');
INSERT INTO `custom_mesas` VALUES ('302', 'mesa 302', null, '1', null, null, null, 'public/qrcodes/mesa_302.png');
INSERT INTO `custom_mesas` VALUES ('303', 'mesa 303', null, '1', null, null, null, 'public/qrcodes/mesa_303.png');
INSERT INTO `custom_mesas` VALUES ('304', 'mesa 304', null, '1', null, null, null, 'public/qrcodes/mesa_304.png');
INSERT INTO `custom_mesas` VALUES ('305', 'mesa 305', null, '1', null, null, null, 'public/qrcodes/mesa_305.png');
INSERT INTO `custom_mesas` VALUES ('306', 'mesa 306', null, '1', null, null, null, 'public/qrcodes/mesa_306.png');
INSERT INTO `custom_mesas` VALUES ('307', 'mesa 307', null, '1', null, null, null, 'public/qrcodes/mesa_307.png');
INSERT INTO `custom_mesas` VALUES ('308', 'mesa 308', null, '1', null, null, null, 'public/qrcodes/mesa_308.png');
INSERT INTO `custom_mesas` VALUES ('309', 'mesa 309', null, '1', null, null, null, 'public/qrcodes/mesa_309.png');
INSERT INTO `custom_mesas` VALUES ('310', 'mesa 310', null, '1', null, null, null, 'public/qrcodes/mesa_310.png');
INSERT INTO `custom_mesas` VALUES ('311', 'mesa 311', null, '1', null, null, null, 'public/qrcodes/mesa_311.png');
INSERT INTO `custom_mesas` VALUES ('312', 'mesa 312', null, '1', null, null, null, 'public/qrcodes/mesa_312.png');
INSERT INTO `custom_mesas` VALUES ('313', 'mesa 313', null, '1', null, null, null, 'public/qrcodes/mesa_313.png');
INSERT INTO `custom_mesas` VALUES ('314', 'mesa 314', null, '1', null, null, null, 'public/qrcodes/mesa_314.png');
INSERT INTO `custom_mesas` VALUES ('315', 'mesa 315', null, '1', null, null, null, 'public/qrcodes/mesa_315.png');
INSERT INTO `custom_mesas` VALUES ('316', 'mesa 316', null, '1', null, null, null, 'public/qrcodes/mesa_316.png');
INSERT INTO `custom_mesas` VALUES ('317', 'mesa 317', null, '1', null, null, null, 'public/qrcodes/mesa_317.png');
INSERT INTO `custom_mesas` VALUES ('318', 'mesa 318', null, '1', null, null, null, 'public/qrcodes/mesa_318.png');
INSERT INTO `custom_mesas` VALUES ('319', 'mesa 319', null, '1', null, null, null, 'public/qrcodes/mesa_319.png');
INSERT INTO `custom_mesas` VALUES ('320', 'mesa 320', null, '1', null, null, null, 'public/qrcodes/mesa_320.png');
INSERT INTO `custom_mesas` VALUES ('321', 'mesa 321', null, '1', null, null, null, 'public/qrcodes/mesa_321.png');
INSERT INTO `custom_mesas` VALUES ('322', 'mesa 322', null, '1', null, null, null, 'public/qrcodes/mesa_322.png');
INSERT INTO `custom_mesas` VALUES ('323', 'mesa 323', null, '1', null, null, null, 'public/qrcodes/mesa_323.png');
INSERT INTO `custom_mesas` VALUES ('324', 'mesa 324', null, '1', null, null, null, 'public/qrcodes/mesa_324.png');
INSERT INTO `custom_mesas` VALUES ('325', 'mesa 325', null, '1', null, null, null, 'public/qrcodes/mesa_325.png');
INSERT INTO `custom_mesas` VALUES ('326', 'mesa 326', null, '1', null, null, null, 'public/qrcodes/mesa_326.png');
INSERT INTO `custom_mesas` VALUES ('327', 'mesa 327', null, '1', null, null, null, 'public/qrcodes/mesa_327.png');
INSERT INTO `custom_mesas` VALUES ('328', 'mesa 328', null, '1', null, null, null, 'public/qrcodes/mesa_328.png');
INSERT INTO `custom_mesas` VALUES ('329', 'mesa 329', null, '1', null, null, null, 'public/qrcodes/mesa_329.png');
INSERT INTO `custom_mesas` VALUES ('330', 'mesa 330', null, '1', null, null, null, 'public/qrcodes/mesa_330.png');
INSERT INTO `custom_mesas` VALUES ('331', 'mesa 331', null, '1', null, null, null, 'public/qrcodes/mesa_331.png');
INSERT INTO `custom_mesas` VALUES ('332', 'mesa 332', null, '1', null, null, null, 'public/qrcodes/mesa_332.png');
INSERT INTO `custom_mesas` VALUES ('333', 'mesa 333', null, '1', null, null, null, 'public/qrcodes/mesa_333.png');
INSERT INTO `custom_mesas` VALUES ('334', 'mesa 334', null, '1', null, null, null, 'public/qrcodes/mesa_334.png');
INSERT INTO `custom_mesas` VALUES ('335', 'mesa 335', null, '1', null, null, null, 'public/qrcodes/mesa_335.png');
INSERT INTO `custom_mesas` VALUES ('336', 'mesa 336', null, '1', null, null, null, 'public/qrcodes/mesa_336.png');
INSERT INTO `custom_mesas` VALUES ('337', 'mesa 337', null, '1', null, null, null, 'public/qrcodes/mesa_337.png');
INSERT INTO `custom_mesas` VALUES ('338', 'mesa 338', null, '1', null, null, null, 'public/qrcodes/mesa_338.png');
INSERT INTO `custom_mesas` VALUES ('339', 'mesa 339', null, '1', null, null, null, 'public/qrcodes/mesa_339.png');
INSERT INTO `custom_mesas` VALUES ('340', 'mesa 340', null, '1', null, null, null, 'public/qrcodes/mesa_340.png');
INSERT INTO `custom_mesas` VALUES ('341', 'mesa 341', null, '1', null, null, null, 'public/qrcodes/mesa_341.png');
INSERT INTO `custom_mesas` VALUES ('342', 'mesa 342', null, '1', null, null, null, 'public/qrcodes/mesa_342.png');
INSERT INTO `custom_mesas` VALUES ('343', 'mesa 343', null, '1', null, null, null, 'public/qrcodes/mesa_343.png');
INSERT INTO `custom_mesas` VALUES ('344', 'mesa 344', null, '1', null, null, null, 'public/qrcodes/mesa_344.png');
INSERT INTO `custom_mesas` VALUES ('345', 'mesa 345', null, '1', null, null, null, 'public/qrcodes/mesa_345.png');
INSERT INTO `custom_mesas` VALUES ('346', 'mesa 346', null, '1', null, null, null, 'public/qrcodes/mesa_346.png');
INSERT INTO `custom_mesas` VALUES ('347', 'mesa 347', null, '1', null, null, null, 'public/qrcodes/mesa_347.png');
INSERT INTO `custom_mesas` VALUES ('348', 'mesa 348', null, '1', null, null, null, 'public/qrcodes/mesa_348.png');
INSERT INTO `custom_mesas` VALUES ('349', 'mesa 349', null, '1', null, null, null, 'public/qrcodes/mesa_349.png');
INSERT INTO `custom_mesas` VALUES ('350', 'mesa 350', null, '1', null, null, null, 'public/qrcodes/mesa_350.png');
INSERT INTO `custom_mesas` VALUES ('351', 'mesa 351', null, '1', null, null, null, 'public/qrcodes/mesa_351.png');
INSERT INTO `custom_mesas` VALUES ('352', 'mesa 352', null, '1', null, null, null, 'public/qrcodes/mesa_352.png');
INSERT INTO `custom_mesas` VALUES ('353', 'mesa 353', null, '1', null, null, null, 'public/qrcodes/mesa_353.png');
INSERT INTO `custom_mesas` VALUES ('354', 'mesa 354', null, '1', null, null, null, 'public/qrcodes/mesa_354.png');
INSERT INTO `custom_mesas` VALUES ('355', 'mesa 355', null, '1', null, null, null, 'public/qrcodes/mesa_355.png');
INSERT INTO `custom_mesas` VALUES ('356', 'mesa 356', null, '1', null, null, null, 'public/qrcodes/mesa_356.png');
INSERT INTO `custom_mesas` VALUES ('357', 'mesa 357', null, '1', null, null, null, 'public/qrcodes/mesa_357.png');
INSERT INTO `custom_mesas` VALUES ('358', 'mesa 358', null, '1', null, null, null, 'public/qrcodes/mesa_358.png');
INSERT INTO `custom_mesas` VALUES ('359', 'mesa 359', null, '1', null, null, null, 'public/qrcodes/mesa_359.png');
INSERT INTO `custom_mesas` VALUES ('360', 'mesa 360', null, '1', null, null, null, 'public/qrcodes/mesa_360.png');
INSERT INTO `custom_mesas` VALUES ('361', 'mesa 361', null, '1', null, null, null, 'public/qrcodes/mesa_361.png');
INSERT INTO `custom_mesas` VALUES ('362', 'mesa 362', null, '1', null, null, null, 'public/qrcodes/mesa_362.png');
INSERT INTO `custom_mesas` VALUES ('363', 'mesa 363', null, '1', null, null, null, 'public/qrcodes/mesa_363.png');
INSERT INTO `custom_mesas` VALUES ('364', 'mesa 364', null, '1', null, null, null, 'public/qrcodes/mesa_364.png');
INSERT INTO `custom_mesas` VALUES ('365', 'mesa 365', null, '1', null, null, null, 'public/qrcodes/mesa_365.png');
INSERT INTO `custom_mesas` VALUES ('366', 'mesa 366', null, '1', null, null, null, 'public/qrcodes/mesa_366.png');
INSERT INTO `custom_mesas` VALUES ('367', 'mesa 367', null, '1', null, null, null, 'public/qrcodes/mesa_367.png');
INSERT INTO `custom_mesas` VALUES ('368', 'mesa 368', null, '1', null, null, null, 'public/qrcodes/mesa_368.png');
INSERT INTO `custom_mesas` VALUES ('369', 'mesa 369', null, '1', null, null, null, 'public/qrcodes/mesa_369.png');
INSERT INTO `custom_mesas` VALUES ('370', 'mesa 370', null, '1', null, null, null, 'public/qrcodes/mesa_370.png');
INSERT INTO `custom_mesas` VALUES ('371', 'mesa 371', null, '1', null, null, null, 'public/qrcodes/mesa_371.png');
INSERT INTO `custom_mesas` VALUES ('372', 'mesa 372', null, '1', null, null, null, 'public/qrcodes/mesa_372.png');
INSERT INTO `custom_mesas` VALUES ('373', 'mesa 373', null, '1', null, null, null, 'public/qrcodes/mesa_373.png');
INSERT INTO `custom_mesas` VALUES ('374', 'mesa 374', null, '1', null, null, null, 'public/qrcodes/mesa_374.png');
INSERT INTO `custom_mesas` VALUES ('375', 'mesa 375', null, '1', null, null, null, 'public/qrcodes/mesa_375.png');
INSERT INTO `custom_mesas` VALUES ('376', 'mesa 376', null, '1', null, null, null, 'public/qrcodes/mesa_376.png');
INSERT INTO `custom_mesas` VALUES ('377', 'mesa 377', null, '1', null, null, null, 'public/qrcodes/mesa_377.png');
INSERT INTO `custom_mesas` VALUES ('378', 'mesa 378', null, '1', null, null, null, 'public/qrcodes/mesa_378.png');
INSERT INTO `custom_mesas` VALUES ('379', 'mesa 379', null, '1', null, null, null, 'public/qrcodes/mesa_379.png');
INSERT INTO `custom_mesas` VALUES ('380', 'mesa 380', null, '1', null, null, null, 'public/qrcodes/mesa_380.png');
INSERT INTO `custom_mesas` VALUES ('381', 'mesa 381', null, '1', null, null, null, 'public/qrcodes/mesa_381.png');
INSERT INTO `custom_mesas` VALUES ('382', 'mesa 382', null, '1', null, null, null, 'public/qrcodes/mesa_382.png');
INSERT INTO `custom_mesas` VALUES ('383', 'mesa 383', null, '1', null, null, null, 'public/qrcodes/mesa_383.png');
INSERT INTO `custom_mesas` VALUES ('384', 'mesa 384', null, '1', null, null, null, 'public/qrcodes/mesa_384.png');
INSERT INTO `custom_mesas` VALUES ('385', 'mesa 385', null, '1', null, null, null, 'public/qrcodes/mesa_385.png');
INSERT INTO `custom_mesas` VALUES ('386', 'mesa 386', null, '1', null, null, null, 'public/qrcodes/mesa_386.png');
INSERT INTO `custom_mesas` VALUES ('387', 'mesa 387', null, '1', null, null, null, 'public/qrcodes/mesa_387.png');
INSERT INTO `custom_mesas` VALUES ('388', 'mesa 388', null, '1', null, null, null, 'public/qrcodes/mesa_388.png');
INSERT INTO `custom_mesas` VALUES ('389', 'mesa 389', null, '1', null, null, null, 'public/qrcodes/mesa_389.png');
INSERT INTO `custom_mesas` VALUES ('390', 'mesa 390', null, '1', null, null, null, 'public/qrcodes/mesa_390.png');
INSERT INTO `custom_mesas` VALUES ('391', 'mesa 391', null, '1', null, null, null, 'public/qrcodes/mesa_391.png');
INSERT INTO `custom_mesas` VALUES ('392', 'mesa 392', null, '1', null, null, null, 'public/qrcodes/mesa_392.png');
INSERT INTO `custom_mesas` VALUES ('393', 'mesa 393', null, '1', null, null, null, 'public/qrcodes/mesa_393.png');
INSERT INTO `custom_mesas` VALUES ('394', 'mesa 394', null, '1', null, null, null, 'public/qrcodes/mesa_394.png');
INSERT INTO `custom_mesas` VALUES ('395', 'mesa 395', null, '1', null, null, null, 'public/qrcodes/mesa_395.png');
INSERT INTO `custom_mesas` VALUES ('396', 'mesa 396', null, '1', null, null, null, 'public/qrcodes/mesa_396.png');
INSERT INTO `custom_mesas` VALUES ('397', 'mesa 397', null, '1', null, null, null, 'public/qrcodes/mesa_397.png');
INSERT INTO `custom_mesas` VALUES ('398', 'mesa 398', null, '1', null, null, null, 'public/qrcodes/mesa_398.png');
INSERT INTO `custom_mesas` VALUES ('399', 'mesa 399', null, '1', null, null, null, 'public/qrcodes/mesa_399.png');
INSERT INTO `custom_mesas` VALUES ('400', 'mesa 400', null, '1', null, null, null, 'public/qrcodes/mesa_400.png');
INSERT INTO `custom_mesas` VALUES ('401', 'mesa 401', null, '1', null, null, null, 'public/qrcodes/mesa_401.png');
INSERT INTO `custom_mesas` VALUES ('402', 'mesa 402', null, '1', null, null, null, 'public/qrcodes/mesa_402.png');
INSERT INTO `custom_mesas` VALUES ('403', 'mesa 403', null, '1', null, null, null, 'public/qrcodes/mesa_403.png');
INSERT INTO `custom_mesas` VALUES ('404', 'mesa 404', null, '1', null, null, null, 'public/qrcodes/mesa_404.png');
INSERT INTO `custom_mesas` VALUES ('405', 'mesa 405', null, '1', null, null, null, 'public/qrcodes/mesa_405.png');
INSERT INTO `custom_mesas` VALUES ('406', 'mesa 406', null, '1', null, null, null, 'public/qrcodes/mesa_406.png');
INSERT INTO `custom_mesas` VALUES ('407', 'mesa 407', null, '1', null, null, null, 'public/qrcodes/mesa_407.png');
INSERT INTO `custom_mesas` VALUES ('408', 'mesa 408', null, '1', null, null, null, 'public/qrcodes/mesa_408.png');
INSERT INTO `custom_mesas` VALUES ('409', 'mesa 409', null, '1', null, null, null, 'public/qrcodes/mesa_409.png');
INSERT INTO `custom_mesas` VALUES ('410', 'mesa 410', null, '1', null, null, null, 'public/qrcodes/mesa_410.png');
INSERT INTO `custom_mesas` VALUES ('411', 'mesa 411', null, '1', null, null, null, 'public/qrcodes/mesa_411.png');
INSERT INTO `custom_mesas` VALUES ('412', 'mesa 412', null, '1', null, null, null, 'public/qrcodes/mesa_412.png');
INSERT INTO `custom_mesas` VALUES ('413', 'mesa 413', null, '1', null, null, null, 'public/qrcodes/mesa_413.png');
INSERT INTO `custom_mesas` VALUES ('414', 'mesa 414', null, '1', null, null, null, 'public/qrcodes/mesa_414.png');
INSERT INTO `custom_mesas` VALUES ('415', 'mesa 415', null, '1', null, null, null, 'public/qrcodes/mesa_415.png');
INSERT INTO `custom_mesas` VALUES ('416', 'mesa 416', null, '1', null, null, null, 'public/qrcodes/mesa_416.png');
INSERT INTO `custom_mesas` VALUES ('417', 'mesa 417', null, '1', null, null, null, 'public/qrcodes/mesa_417.png');
INSERT INTO `custom_mesas` VALUES ('418', 'mesa 418', null, '1', null, null, null, 'public/qrcodes/mesa_418.png');
INSERT INTO `custom_mesas` VALUES ('419', 'mesa 419', null, '1', null, null, null, 'public/qrcodes/mesa_419.png');
INSERT INTO `custom_mesas` VALUES ('420', 'mesa 420', null, '1', null, null, null, 'public/qrcodes/mesa_420.png');
INSERT INTO `custom_mesas` VALUES ('421', 'mesa 421', null, '1', null, null, null, 'public/qrcodes/mesa_421.png');
INSERT INTO `custom_mesas` VALUES ('422', 'mesa 422', null, '1', null, null, null, 'public/qrcodes/mesa_422.png');
INSERT INTO `custom_mesas` VALUES ('423', 'mesa 423', null, '1', null, null, null, 'public/qrcodes/mesa_423.png');
INSERT INTO `custom_mesas` VALUES ('424', 'mesa 424', null, '1', null, null, null, 'public/qrcodes/mesa_424.png');
INSERT INTO `custom_mesas` VALUES ('425', 'mesa 425', null, '1', null, null, null, 'public/qrcodes/mesa_425.png');
INSERT INTO `custom_mesas` VALUES ('426', 'mesa 426', null, '1', null, null, null, 'public/qrcodes/mesa_426.png');
INSERT INTO `custom_mesas` VALUES ('427', 'mesa 427', null, '1', null, null, null, 'public/qrcodes/mesa_427.png');
INSERT INTO `custom_mesas` VALUES ('428', 'mesa 428', null, '1', null, null, null, 'public/qrcodes/mesa_428.png');
INSERT INTO `custom_mesas` VALUES ('429', 'mesa 429', null, '1', null, null, null, 'public/qrcodes/mesa_429.png');
INSERT INTO `custom_mesas` VALUES ('430', 'mesa 430', null, '1', null, null, null, 'public/qrcodes/mesa_430.png');
INSERT INTO `custom_mesas` VALUES ('431', 'mesa 431', null, '1', null, null, null, 'public/qrcodes/mesa_431.png');
INSERT INTO `custom_mesas` VALUES ('432', 'mesa 432', null, '1', null, null, null, 'public/qrcodes/mesa_432.png');
INSERT INTO `custom_mesas` VALUES ('433', 'mesa 433', null, '1', null, null, null, 'public/qrcodes/mesa_433.png');
INSERT INTO `custom_mesas` VALUES ('434', 'mesa 434', null, '1', null, null, null, 'public/qrcodes/mesa_434.png');
INSERT INTO `custom_mesas` VALUES ('435', 'mesa 435', null, '1', null, null, null, 'public/qrcodes/mesa_435.png');
INSERT INTO `custom_mesas` VALUES ('436', 'mesa 436', null, '1', null, null, null, 'public/qrcodes/mesa_436.png');
INSERT INTO `custom_mesas` VALUES ('437', 'mesa 437', null, '1', null, null, null, 'public/qrcodes/mesa_437.png');
INSERT INTO `custom_mesas` VALUES ('438', 'mesa 438', null, '1', null, null, null, 'public/qrcodes/mesa_438.png');
INSERT INTO `custom_mesas` VALUES ('439', 'mesa 439', null, '1', null, null, null, 'public/qrcodes/mesa_439.png');
INSERT INTO `custom_mesas` VALUES ('440', 'mesa 440', null, '1', null, null, null, 'public/qrcodes/mesa_440.png');
INSERT INTO `custom_mesas` VALUES ('441', 'mesa 441', null, '1', null, null, null, 'public/qrcodes/mesa_441.png');
INSERT INTO `custom_mesas` VALUES ('442', 'mesa 442', null, '1', null, null, null, 'public/qrcodes/mesa_442.png');
INSERT INTO `custom_mesas` VALUES ('443', 'mesa 443', null, '1', null, null, null, 'public/qrcodes/mesa_443.png');
INSERT INTO `custom_mesas` VALUES ('444', 'mesa 444', null, '1', null, null, null, 'public/qrcodes/mesa_444.png');
INSERT INTO `custom_mesas` VALUES ('445', 'mesa 445', null, '1', null, null, null, 'public/qrcodes/mesa_445.png');
INSERT INTO `custom_mesas` VALUES ('446', 'mesa 446', null, '1', null, null, null, 'public/qrcodes/mesa_446.png');
INSERT INTO `custom_mesas` VALUES ('447', 'mesa 447', null, '1', null, null, null, 'public/qrcodes/mesa_447.png');
INSERT INTO `custom_mesas` VALUES ('448', 'mesa 448', null, '1', null, null, null, 'public/qrcodes/mesa_448.png');
INSERT INTO `custom_mesas` VALUES ('449', 'mesa 449', null, '1', null, null, null, 'public/qrcodes/mesa_449.png');
INSERT INTO `custom_mesas` VALUES ('450', 'mesa 450', null, '1', null, null, null, 'public/qrcodes/mesa_450.png');
INSERT INTO `custom_mesas` VALUES ('451', 'mesa 451', null, '1', null, null, null, 'public/qrcodes/mesa_451.png');
INSERT INTO `custom_mesas` VALUES ('452', 'mesa 452', null, '1', null, null, null, 'public/qrcodes/mesa_452.png');
INSERT INTO `custom_mesas` VALUES ('453', 'mesa 453', null, '1', null, null, null, 'public/qrcodes/mesa_453.png');
INSERT INTO `custom_mesas` VALUES ('454', 'mesa 454', null, '1', null, null, null, 'public/qrcodes/mesa_454.png');
INSERT INTO `custom_mesas` VALUES ('455', 'mesa 455', null, '1', null, null, null, 'public/qrcodes/mesa_455.png');
INSERT INTO `custom_mesas` VALUES ('456', 'mesa 456', null, '1', null, null, null, 'public/qrcodes/mesa_456.png');
INSERT INTO `custom_mesas` VALUES ('457', 'mesa 457', null, '1', null, null, null, 'public/qrcodes/mesa_457.png');
INSERT INTO `custom_mesas` VALUES ('458', 'mesa 458', null, '1', null, null, null, 'public/qrcodes/mesa_458.png');
INSERT INTO `custom_mesas` VALUES ('459', 'mesa 459', null, '1', null, null, null, 'public/qrcodes/mesa_459.png');
INSERT INTO `custom_mesas` VALUES ('460', 'mesa 460', null, '1', null, null, null, 'public/qrcodes/mesa_460.png');
INSERT INTO `custom_mesas` VALUES ('461', 'mesa 461', null, '1', null, null, null, 'public/qrcodes/mesa_461.png');
INSERT INTO `custom_mesas` VALUES ('462', 'mesa 462', null, '1', null, null, null, 'public/qrcodes/mesa_462.png');
INSERT INTO `custom_mesas` VALUES ('463', 'mesa 463', null, '1', null, null, null, 'public/qrcodes/mesa_463.png');
INSERT INTO `custom_mesas` VALUES ('464', 'mesa 464', null, '1', null, null, null, 'public/qrcodes/mesa_464.png');
INSERT INTO `custom_mesas` VALUES ('465', 'mesa 465', null, '1', null, null, null, 'public/qrcodes/mesa_465.png');
INSERT INTO `custom_mesas` VALUES ('466', 'mesa 466', null, '1', null, null, null, 'public/qrcodes/mesa_466.png');
INSERT INTO `custom_mesas` VALUES ('467', 'mesa 467', null, '1', null, null, null, 'public/qrcodes/mesa_467.png');
INSERT INTO `custom_mesas` VALUES ('468', 'mesa 468', null, '1', null, null, null, 'public/qrcodes/mesa_468.png');
INSERT INTO `custom_mesas` VALUES ('469', 'mesa 469', null, '1', null, null, null, 'public/qrcodes/mesa_469.png');
INSERT INTO `custom_mesas` VALUES ('470', 'mesa 470', null, '1', null, null, null, 'public/qrcodes/mesa_470.png');
INSERT INTO `custom_mesas` VALUES ('471', 'mesa 471', null, '1', null, null, null, 'public/qrcodes/mesa_471.png');
INSERT INTO `custom_mesas` VALUES ('472', 'mesa 472', null, '1', null, null, null, 'public/qrcodes/mesa_472.png');
INSERT INTO `custom_mesas` VALUES ('473', 'mesa 473', null, '1', null, null, null, 'public/qrcodes/mesa_473.png');
INSERT INTO `custom_mesas` VALUES ('474', 'mesa 474', null, '1', null, null, null, 'public/qrcodes/mesa_474.png');
INSERT INTO `custom_mesas` VALUES ('475', 'mesa 475', null, '1', null, null, null, 'public/qrcodes/mesa_475.png');
INSERT INTO `custom_mesas` VALUES ('476', 'mesa 476', null, '1', null, null, null, 'public/qrcodes/mesa_476.png');
INSERT INTO `custom_mesas` VALUES ('477', 'mesa 477', null, '1', null, null, null, 'public/qrcodes/mesa_477.png');
INSERT INTO `custom_mesas` VALUES ('478', 'mesa 478', null, '1', null, null, null, 'public/qrcodes/mesa_478.png');
INSERT INTO `custom_mesas` VALUES ('479', 'mesa 479', null, '1', null, null, null, 'public/qrcodes/mesa_479.png');
INSERT INTO `custom_mesas` VALUES ('480', 'mesa 480', null, '1', null, null, null, 'public/qrcodes/mesa_480.png');
INSERT INTO `custom_mesas` VALUES ('481', 'mesa 481', null, '1', null, null, null, 'public/qrcodes/mesa_481.png');
INSERT INTO `custom_mesas` VALUES ('482', 'mesa 482', null, '1', null, null, null, 'public/qrcodes/mesa_482.png');
INSERT INTO `custom_mesas` VALUES ('483', 'mesa 483', null, '1', null, null, null, 'public/qrcodes/mesa_483.png');
INSERT INTO `custom_mesas` VALUES ('484', 'mesa 484', null, '1', null, null, null, 'public/qrcodes/mesa_484.png');
INSERT INTO `custom_mesas` VALUES ('485', 'mesa 485', null, '1', null, null, null, 'public/qrcodes/mesa_485.png');
INSERT INTO `custom_mesas` VALUES ('486', 'mesa 486', null, '1', null, null, null, 'public/qrcodes/mesa_486.png');
INSERT INTO `custom_mesas` VALUES ('487', 'mesa 487', null, '1', null, null, null, 'public/qrcodes/mesa_487.png');
INSERT INTO `custom_mesas` VALUES ('488', 'mesa 488', null, '1', null, null, null, 'public/qrcodes/mesa_488.png');
INSERT INTO `custom_mesas` VALUES ('489', 'mesa 489', null, '1', null, null, null, 'public/qrcodes/mesa_489.png');
INSERT INTO `custom_mesas` VALUES ('490', 'mesa 490', null, '1', null, null, null, 'public/qrcodes/mesa_490.png');
INSERT INTO `custom_mesas` VALUES ('491', 'mesa 491', null, '1', null, null, null, 'public/qrcodes/mesa_491.png');
INSERT INTO `custom_mesas` VALUES ('492', 'mesa 492', null, '1', null, null, null, 'public/qrcodes/mesa_492.png');
INSERT INTO `custom_mesas` VALUES ('493', 'mesa 493', null, '1', null, null, null, 'public/qrcodes/mesa_493.png');
INSERT INTO `custom_mesas` VALUES ('494', 'mesa 494', null, '1', null, null, null, 'public/qrcodes/mesa_494.png');
INSERT INTO `custom_mesas` VALUES ('495', 'mesa 495', null, '1', null, null, null, 'public/qrcodes/mesa_495.png');
INSERT INTO `custom_mesas` VALUES ('496', 'mesa 496', null, '1', null, null, null, 'public/qrcodes/mesa_496.png');
INSERT INTO `custom_mesas` VALUES ('497', 'mesa 497', null, '1', null, null, null, 'public/qrcodes/mesa_497.png');
INSERT INTO `custom_mesas` VALUES ('498', 'mesa 498', null, '1', null, null, null, 'public/qrcodes/mesa_498.png');
INSERT INTO `custom_mesas` VALUES ('499', 'mesa 499', null, '1', null, null, null, 'public/qrcodes/mesa_499.png');
INSERT INTO `custom_mesas` VALUES ('500', 'mesa 500', null, '1', null, null, null, 'public/qrcodes/mesa_500.png');

-- ----------------------------
-- Table structure for custom_pedidos
-- ----------------------------
DROP TABLE IF EXISTS `custom_pedidos`;
CREATE TABLE `custom_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_mesas` int(11) DEFAULT NULL,
  `fk_users` int(11) DEFAULT NULL,
  `fk_status_pedido` int(11) DEFAULT NULL,
  `valor_total` varchar(255) DEFAULT NULL,
  `notas_cliente` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of custom_pedidos
-- ----------------------------

-- ----------------------------
-- Table structure for custom_pedidos_itens
-- ----------------------------
DROP TABLE IF EXISTS `custom_pedidos_itens`;
CREATE TABLE `custom_pedidos_itens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pedidos` int(11) DEFAULT NULL,
  `fk_produtos` int(11) DEFAULT NULL,
  `quantidade` varchar(255) DEFAULT NULL,
  `valor_unitario` varchar(255) DEFAULT NULL,
  `valor_total` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of custom_pedidos_itens
-- ----------------------------

-- ----------------------------
-- Table structure for custom_produtos
-- ----------------------------
DROP TABLE IF EXISTS `custom_produtos`;
CREATE TABLE `custom_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `preco` varchar(255) DEFAULT NULL,
  `fk_categorias` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of custom_produtos
-- ----------------------------

-- ----------------------------
-- Table structure for custom_status_mesa
-- ----------------------------
DROP TABLE IF EXISTS `custom_status_mesa`;
CREATE TABLE `custom_status_mesa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of custom_status_mesa
-- ----------------------------
INSERT INTO `custom_status_mesa` VALUES ('1', 'livre');
INSERT INTO `custom_status_mesa` VALUES ('2', 'ocupada');

-- ----------------------------
-- Table structure for custom_status_pedido
-- ----------------------------
DROP TABLE IF EXISTS `custom_status_pedido`;
CREATE TABLE `custom_status_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of custom_status_pedido
-- ----------------------------
INSERT INTO `custom_status_pedido` VALUES ('1', 'pronto', '2025-11-24 20:30:18', '2025-11-24 20:30:18', '0');
INSERT INTO `custom_status_pedido` VALUES ('2', 'preparando', '2025-11-24 20:30:18', '2025-11-24 20:30:18', '0');
INSERT INTO `custom_status_pedido` VALUES ('3', 'recebido', '2025-11-24 20:30:18', '2025-11-24 20:30:18', '0');
INSERT INTO `custom_status_pedido` VALUES ('4', 'cancelado', '2025-11-24 20:30:18', '2025-11-24 20:30:18', '0');

-- ----------------------------
-- Table structure for custom_usuarios
-- ----------------------------
DROP TABLE IF EXISTS `custom_usuarios`;
CREATE TABLE `custom_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of custom_usuarios
-- ----------------------------
