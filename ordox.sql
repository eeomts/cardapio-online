/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ordox

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2025-11-20 20:22:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for custom_categorias
-- ----------------------------
DROP TABLE IF EXISTS `custom_categorias`;
CREATE TABLE `custom_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for custom_itens_cardapio
-- ----------------------------
DROP TABLE IF EXISTS `custom_itens_cardapio`;
CREATE TABLE `custom_itens_cardapio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_custom_menu` int(11) DEFAULT NULL,
  `fk_custom_categoria` int(11) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_custom_menu` (`fk_custom_menu`),
  KEY `fk_custom_categoria` (`fk_custom_categoria`),
  CONSTRAINT `custom_itens_cardapio_ibfk_1` FOREIGN KEY (`fk_custom_menu`) REFERENCES `custom_menus` (`id`),
  CONSTRAINT `custom_itens_cardapio_ibfk_2` FOREIGN KEY (`fk_custom_categoria`) REFERENCES `custom_categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=616 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for custom_lojas
-- ----------------------------
DROP TABLE IF EXISTS `custom_lojas`;
CREATE TABLE `custom_lojas` (
  `url_amg` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `num_mesas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for custom_menus
-- ----------------------------
DROP TABLE IF EXISTS `custom_menus`;
CREATE TABLE `custom_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_lojas` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_restaurante` (`fk_lojas`),
  CONSTRAINT `custom_menus_ibfk_1` FOREIGN KEY (`fk_lojas`) REFERENCES `custom_lojas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for custom_mesas
-- ----------------------------
DROP TABLE IF EXISTS `custom_mesas`;
CREATE TABLE `custom_mesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
