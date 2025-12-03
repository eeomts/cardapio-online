/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ordox2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2025-11-26 22:16:40
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
-- Table structure for custom_loja_token
-- ----------------------------
DROP TABLE IF EXISTS `custom_loja_token`;
CREATE TABLE `custom_loja_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for custom_status_mesa
-- ----------------------------
DROP TABLE IF EXISTS `custom_status_mesa`;
CREATE TABLE `custom_status_mesa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for custom_usuarios
-- ----------------------------
DROP TABLE IF EXISTS `custom_usuarios`;
CREATE TABLE `custom_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `tel_telefone` varchar(255) DEFAULT '',
  `senha` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
