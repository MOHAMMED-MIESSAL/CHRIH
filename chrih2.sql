-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 22 fév. 2024 à 09:46
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chrih2`
--

-- --------------------------------------------------------

--
-- Structure de la table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `produit_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carts`
--

INSERT INTO `carts` (`id`, `created_at`, `updated_at`, `user_id`, `produit_id`) VALUES
(12, '2024-02-21 10:12:12', '2024-02-21 10:12:12', 1, 73),
(15, '2024-02-22 07:37:55', '2024-02-22 07:37:55', 3, 68);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Electronics and Gadgets', '2024-02-21 09:11:19', '2024-02-21 09:11:19'),
(4, 'Fashion and Apparel', '2024-02-21 09:11:40', '2024-02-21 09:11:40'),
(5, 'Home and Furniture', '2024-02-21 09:11:53', '2024-02-21 09:11:53'),
(6, 'Beauty and Personal Care', '2024-02-21 09:12:05', '2024-02-21 09:12:05'),
(7, 'Books and Stationery', '2024-02-21 09:12:15', '2024-02-21 09:12:15'),
(8, 'Sports and Outdoor', '2024-02-21 09:12:23', '2024-02-21 09:12:23'),
(9, 'Toys and Games', '2024-02-21 09:12:49', '2024-02-21 09:12:49'),
(10, 'Health and Wellness', '2024-02-21 09:12:57', '2024-02-21 09:12:57'),
(11, 'Grocery and Food', '2024-02-21 09:13:06', '2024-02-21 09:13:06'),
(12, 'Automotive and Tools', '2024-02-21 09:13:16', '2024-02-21 09:13:16');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(10) UNSIGNED NOT NULL,
  `produit_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `qte` int(11) DEFAULT NULL,
  `numero_commande` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id`, `produit_id`, `user_id`, `qte`, `numero_commande`, `created_at`, `updated_at`) VALUES
(1, 68, 3, 1, 'tr_VbQiwSGYua', '2024-02-21 20:29:20', '2024-02-21 20:29:20'),
(3, 68, 3, 1, 'tr_VbQiwSGYua', '2024-02-21 20:30:15', '2024-02-21 20:30:15'),
(4, 67, 3, 1, 'tr_VbQiwSGYua', '2024-02-21 20:30:15', '2024-02-21 20:30:15');

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon` varchar(20) DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `percentage`, `created_at`, `updated_at`) VALUES
(1, '3y7lT', 10, '2024-02-20 08:49:24', '2024-02-20 08:49:24'),
(2, 'yFhFm', 15, '2024-02-20 08:49:46', '2024-02-20 08:49:46'),
(3, 'JDGSQ', 20, '2024-02-20 08:50:02', '2024-02-20 08:50:02'),
(4, 'ndByV', 13, '2024-02-20 08:50:15', '2024-02-20 08:50:15');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|min:3\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"max\":\"This :attribute field maximum :max.\"}}}', 2),
(58, 8, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 8, 'prix', 'number', 'Prix', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 5),
(61, 8, 'qte', 'number', 'Qte', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 6),
(62, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(63, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(65, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 10, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(67, 10, 'produit_id', 'text', 'Produit Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(68, 10, 'qte', 'text', 'Qte', 0, 1, 1, 1, 1, 1, '{}', 4),
(69, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(70, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(71, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 13, 'user_id', 'select_dropdown', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(73, 13, 'produit_id', 'select_dropdown', 'Produit Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(74, 13, 'qte', 'number', 'Qte', 0, 1, 1, 1, 1, 1, '{}', 4),
(75, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(76, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(80, 13, 'cart_belongstomany_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"carts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(81, 13, 'cart_belongstomany_produit_relationship', 'relationship', 'produits', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Produit\",\"table\":\"produits\",\"type\":\"belongsTo\",\"column\":\"produit_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"carts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(82, 14, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 14, 'produit_id', 'select_dropdown', 'Produit Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(84, 14, 'user_id', 'select_dropdown', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(85, 14, 'qte', 'number', 'Qte', 0, 1, 1, 1, 1, 1, '{}', 4),
(86, 14, 'numero_commande', 'text', 'Numero Commande', 0, 1, 1, 1, 1, 1, '{}', 5),
(87, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(88, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(89, 14, 'commande_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"carts\",\"pivot\":\"0\",\"taggable\":null}', 8),
(90, 14, 'commande_belongsto_produit_relationship', 'relationship', 'produits', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Produit\",\"table\":\"produits\",\"type\":\"belongsTo\",\"column\":\"produit_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"carts\",\"pivot\":\"0\",\"taggable\":null}', 9),
(91, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 15, 'payment_id', 'number', 'Payment Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(93, 15, 'numero_serie', 'text', 'Numero Serie', 1, 1, 1, 1, 1, 1, '{}', 3),
(94, 15, 'quantity', 'number', 'Quantity', 1, 1, 1, 1, 1, 1, '{}', 4),
(95, 15, 'amount', 'number', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 5),
(96, 15, 'currency', 'text', 'Currency', 1, 1, 1, 1, 1, 1, '{}', 6),
(97, 15, 'payment_status', 'text', 'Payment Status', 1, 1, 1, 1, 1, 1, '{}', 7),
(98, 15, 'payment_method', 'text', 'Payment Method', 1, 1, 1, 1, 1, 1, '{}', 8),
(99, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(100, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(101, 15, 'user_id', 'select_dropdown', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 11),
(102, 15, 'payment_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"carts\",\"pivot\":\"0\",\"taggable\":null}', 12),
(103, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(104, 16, 'coupon', 'text', 'Coupon', 0, 1, 1, 1, 1, 1, '{}', 2),
(105, 16, 'percentage', 'number', 'Percentage', 0, 1, 1, 1, 1, 1, '{}', 3),
(106, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(107, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(108, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(109, 17, 'user_id', 'select_dropdown', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(110, 17, 'produit_id', 'select_dropdown', 'Produit Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(111, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(112, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(113, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(114, 21, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(115, 17, 'wishlist_belongsto_produit_relationship', 'relationship', 'produits', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Produit\",\"table\":\"produits\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"carts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(116, 17, 'wishlist_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"carts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(118, 8, 'produit_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"carts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(119, 8, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 9);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2024-02-16 12:03:47', '2024-02-21 09:10:58'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(8, 'produits', 'produits', 'Produit', 'Produits', NULL, 'App\\Models\\Produit', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-02-16 13:40:16', '2024-02-21 07:25:10'),
(9, 'panier', 'panier', 'Panier', 'Paniers', NULL, 'App\\Models\\Panier', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-02-16 14:04:59', '2024-02-16 14:04:59'),
(10, 'paniers', 'paniers', 'Panier', 'Paniers', NULL, 'App\\Models\\Panier', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-02-16 14:17:58', '2024-02-16 14:17:58'),
(13, 'carts', 'carts', 'Cart', 'Carts', NULL, 'App\\Models\\Cart', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-02-16 14:25:52', '2024-02-16 20:07:33'),
(14, 'commandes', 'commandes', 'Commande', 'Commandes', NULL, 'App\\Models\\Commande', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-02-16 21:58:48', '2024-02-16 21:58:48'),
(15, 'payments', 'payments', 'Payment', 'Payments', NULL, 'App\\Models\\Payment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-02-19 08:42:37', '2024-02-19 08:42:37'),
(16, 'coupons', 'coupons', 'Coupon', 'Coupons', NULL, 'App\\Models\\Coupon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-02-20 08:46:54', '2024-02-20 08:46:54'),
(17, 'wishlists', 'wishlists', 'Wishlist', 'Wishlists', NULL, 'App\\Models\\Wishlist', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-02-20 10:50:17', '2024-02-20 20:56:44'),
(20, 'tergui', 'tergui', 'Tergui', 'Terguis', NULL, 'App\\Models\\Tergui', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-02-20 11:18:19', '2024-02-20 11:18:19'),
(21, 'terguis', 'terguis', 'Tergui', 'Terguis', NULL, 'App\\Models\\Tergui', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-02-20 11:19:11', '2024-02-20 11:19:11');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-02-16 12:03:47', '2024-02-16 12:03:47');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-02-16 12:03:47', '2024-02-16 12:03:47', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2024-02-16 12:03:47', '2024-02-16 13:59:20', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2024-02-16 12:03:47', '2024-02-16 12:03:47', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2024-02-16 12:03:47', '2024-02-16 12:03:47', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2024-02-16 12:03:47', '2024-02-16 13:59:24', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2024-02-16 12:03:47', '2024-02-16 13:59:20', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2024-02-16 12:03:47', '2024-02-16 13:59:20', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2024-02-16 12:03:47', '2024-02-16 13:59:20', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2024-02-16 12:03:47', '2024-02-16 13:59:20', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2024-02-16 12:03:47', '2024-02-16 13:59:24', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2024-02-16 12:03:47', '2024-02-16 13:59:24', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2024-02-16 12:03:47', '2024-02-16 13:59:20', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2024-02-16 12:03:47', '2024-02-16 13:59:20', 'voyager.pages.index', NULL),
(14, 1, 'Produits', '', '_self', NULL, NULL, NULL, 7, '2024-02-16 13:40:16', '2024-02-16 13:59:24', 'voyager.produits.index', NULL),
(15, 1, 'Paniers', '', '_self', NULL, NULL, NULL, 11, '2024-02-16 14:05:00', '2024-02-16 14:05:00', 'voyager.panier.index', NULL),
(16, 1, 'Paniers', '', '_self', NULL, NULL, NULL, 12, '2024-02-16 14:17:58', '2024-02-16 14:17:58', 'voyager.paniers.index', NULL),
(17, 1, 'Carts', '', '_self', NULL, NULL, NULL, 13, '2024-02-16 14:25:52', '2024-02-16 14:25:52', 'voyager.carts.index', NULL),
(18, 1, 'Commandes', '', '_self', NULL, NULL, NULL, 14, '2024-02-16 21:58:48', '2024-02-16 21:58:48', 'voyager.commandes.index', NULL),
(19, 1, 'Payments', '', '_self', NULL, NULL, NULL, 15, '2024-02-19 08:42:37', '2024-02-19 08:42:37', 'voyager.payments.index', NULL),
(20, 1, 'Coupons', '', '_self', NULL, NULL, NULL, 16, '2024-02-20 08:46:54', '2024-02-20 08:46:54', 'voyager.coupons.index', NULL),
(21, 1, 'Wishlists', '', '_self', NULL, NULL, NULL, 17, '2024-02-20 10:50:17', '2024-02-20 10:50:17', 'voyager.wishlists.index', NULL),
(22, 1, 'Terguis', '', '_self', NULL, NULL, NULL, 18, '2024-02-20 11:18:19', '2024-02-20 11:18:19', 'voyager.tergui.index', NULL),
(23, 1, 'Terguis', '', '_self', NULL, NULL, NULL, 19, '2024-02-20 11:19:11', '2024-02-20 11:19:11', 'voyager.terguis.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(29, '2024_02_18_193651_create_payment_table', 3),
(30, '2024_02_20_144000_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `total_price` decimal(6,2) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2024-02-16 12:03:47', '2024-02-16 12:03:47');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `amount`, `currency`, `payment_status`, `payment_method`, `created_at`, `updated_at`, `user_id`) VALUES
(5, 'tr_VbQiwSGYua', '520.00', 'EUR', 'Completed', 'Bank', '2024-02-21 20:30:15', '2024-02-21 20:30:15', 3);

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(2, 'browse_bread', NULL, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(3, 'browse_database', NULL, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(4, 'browse_media', NULL, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(5, 'browse_compass', NULL, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(6, 'browse_menus', 'menus', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(7, 'read_menus', 'menus', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(8, 'edit_menus', 'menus', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(9, 'add_menus', 'menus', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(10, 'delete_menus', 'menus', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(11, 'browse_roles', 'roles', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(12, 'read_roles', 'roles', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(13, 'edit_roles', 'roles', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(14, 'add_roles', 'roles', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(15, 'delete_roles', 'roles', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(16, 'browse_users', 'users', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(17, 'read_users', 'users', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(18, 'edit_users', 'users', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(19, 'add_users', 'users', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(20, 'delete_users', 'users', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(21, 'browse_settings', 'settings', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(22, 'read_settings', 'settings', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(23, 'edit_settings', 'settings', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(24, 'add_settings', 'settings', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(25, 'delete_settings', 'settings', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(26, 'browse_categories', 'categories', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(27, 'read_categories', 'categories', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(28, 'edit_categories', 'categories', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(29, 'add_categories', 'categories', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(30, 'delete_categories', 'categories', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(31, 'browse_posts', 'posts', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(32, 'read_posts', 'posts', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(33, 'edit_posts', 'posts', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(34, 'add_posts', 'posts', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(35, 'delete_posts', 'posts', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(36, 'browse_pages', 'pages', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(37, 'read_pages', 'pages', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(38, 'edit_pages', 'pages', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(39, 'add_pages', 'pages', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(40, 'delete_pages', 'pages', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(41, 'browse_produits', 'produits', '2024-02-16 13:40:16', '2024-02-16 13:40:16'),
(42, 'read_produits', 'produits', '2024-02-16 13:40:16', '2024-02-16 13:40:16'),
(43, 'edit_produits', 'produits', '2024-02-16 13:40:16', '2024-02-16 13:40:16'),
(44, 'add_produits', 'produits', '2024-02-16 13:40:16', '2024-02-16 13:40:16'),
(45, 'delete_produits', 'produits', '2024-02-16 13:40:16', '2024-02-16 13:40:16'),
(46, 'browse_panier', 'panier', '2024-02-16 14:04:59', '2024-02-16 14:04:59'),
(47, 'read_panier', 'panier', '2024-02-16 14:04:59', '2024-02-16 14:04:59'),
(48, 'edit_panier', 'panier', '2024-02-16 14:04:59', '2024-02-16 14:04:59'),
(49, 'add_panier', 'panier', '2024-02-16 14:04:59', '2024-02-16 14:04:59'),
(50, 'delete_panier', 'panier', '2024-02-16 14:04:59', '2024-02-16 14:04:59'),
(51, 'browse_paniers', 'paniers', '2024-02-16 14:17:58', '2024-02-16 14:17:58'),
(52, 'read_paniers', 'paniers', '2024-02-16 14:17:58', '2024-02-16 14:17:58'),
(53, 'edit_paniers', 'paniers', '2024-02-16 14:17:58', '2024-02-16 14:17:58'),
(54, 'add_paniers', 'paniers', '2024-02-16 14:17:58', '2024-02-16 14:17:58'),
(55, 'delete_paniers', 'paniers', '2024-02-16 14:17:58', '2024-02-16 14:17:58'),
(56, 'browse_carts', 'carts', '2024-02-16 14:25:52', '2024-02-16 14:25:52'),
(57, 'read_carts', 'carts', '2024-02-16 14:25:52', '2024-02-16 14:25:52'),
(58, 'edit_carts', 'carts', '2024-02-16 14:25:52', '2024-02-16 14:25:52'),
(59, 'add_carts', 'carts', '2024-02-16 14:25:52', '2024-02-16 14:25:52'),
(60, 'delete_carts', 'carts', '2024-02-16 14:25:52', '2024-02-16 14:25:52'),
(61, 'browse_commandes', 'commandes', '2024-02-16 21:58:48', '2024-02-16 21:58:48'),
(62, 'read_commandes', 'commandes', '2024-02-16 21:58:48', '2024-02-16 21:58:48'),
(63, 'edit_commandes', 'commandes', '2024-02-16 21:58:48', '2024-02-16 21:58:48'),
(64, 'add_commandes', 'commandes', '2024-02-16 21:58:48', '2024-02-16 21:58:48'),
(65, 'delete_commandes', 'commandes', '2024-02-16 21:58:48', '2024-02-16 21:58:48'),
(66, 'browse_payments', 'payments', '2024-02-19 08:42:37', '2024-02-19 08:42:37'),
(67, 'read_payments', 'payments', '2024-02-19 08:42:37', '2024-02-19 08:42:37'),
(68, 'edit_payments', 'payments', '2024-02-19 08:42:37', '2024-02-19 08:42:37'),
(69, 'add_payments', 'payments', '2024-02-19 08:42:37', '2024-02-19 08:42:37'),
(70, 'delete_payments', 'payments', '2024-02-19 08:42:37', '2024-02-19 08:42:37'),
(71, 'browse_coupons', 'coupons', '2024-02-20 08:46:54', '2024-02-20 08:46:54'),
(72, 'read_coupons', 'coupons', '2024-02-20 08:46:54', '2024-02-20 08:46:54'),
(73, 'edit_coupons', 'coupons', '2024-02-20 08:46:54', '2024-02-20 08:46:54'),
(74, 'add_coupons', 'coupons', '2024-02-20 08:46:54', '2024-02-20 08:46:54'),
(75, 'delete_coupons', 'coupons', '2024-02-20 08:46:54', '2024-02-20 08:46:54'),
(76, 'browse_wishlists', 'wishlists', '2024-02-20 10:50:17', '2024-02-20 10:50:17'),
(77, 'read_wishlists', 'wishlists', '2024-02-20 10:50:17', '2024-02-20 10:50:17'),
(78, 'edit_wishlists', 'wishlists', '2024-02-20 10:50:17', '2024-02-20 10:50:17'),
(79, 'add_wishlists', 'wishlists', '2024-02-20 10:50:17', '2024-02-20 10:50:17'),
(80, 'delete_wishlists', 'wishlists', '2024-02-20 10:50:17', '2024-02-20 10:50:17'),
(81, 'browse_tergui', 'tergui', '2024-02-20 11:18:19', '2024-02-20 11:18:19'),
(82, 'read_tergui', 'tergui', '2024-02-20 11:18:19', '2024-02-20 11:18:19'),
(83, 'edit_tergui', 'tergui', '2024-02-20 11:18:19', '2024-02-20 11:18:19'),
(84, 'add_tergui', 'tergui', '2024-02-20 11:18:19', '2024-02-20 11:18:19'),
(85, 'delete_tergui', 'tergui', '2024-02-20 11:18:19', '2024-02-20 11:18:19'),
(86, 'browse_terguis', 'terguis', '2024-02-20 11:19:11', '2024-02-20 11:19:11'),
(87, 'read_terguis', 'terguis', '2024-02-20 11:19:11', '2024-02-20 11:19:11'),
(88, 'edit_terguis', 'terguis', '2024-02-20 11:19:11', '2024-02-20 11:19:11'),
(89, 'add_terguis', 'terguis', '2024-02-20 11:19:11', '2024-02-20 11:19:11'),
(90, 'delete_terguis', 'terguis', '2024-02-20 11:19:11', '2024-02-20 11:19:11');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-02-16 12:03:47', '2024-02-16 12:03:47');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `qte` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `title`, `description`, `image`, `prix`, `qte`, `created_at`, `updated_at`, `category_id`) VALUES
(67, 'Samsung - Galaxy Watch6 Classic Stainless Steel Smartwatch 47mm BT - Black', 'Model:SM-R960NZKAXAASKU:6546701', 'produits/February2024/MgA3QUWUe3QeED9kRml6.jpg', 400, 100, '2024-02-21 09:24:00', '2024-02-21 09:25:35', 3),
(68, 'Samsung - Galaxy Watch6 Aluminum Smartwatch 40mm BT - Cream', 'Model:SM-R930NZEAXAASKU:6546702', 'produits/February2024/MurPkXqe343Pl1bW6Ofl.jpg', 250, 200, '2024-02-21 09:29:56', '2024-02-21 09:29:56', 3),
(69, 'Apple - AirPods Pro (2nd generation) with MagSafe Case (USB‑C) - White', 'Model:MTJV3AM/ASKU:6447382', 'produits/February2024/0gRvY4w92UwRkCdnoeit.jpg', 250, 300, '2024-02-21 09:35:32', '2024-02-21 09:35:32', 3),
(70, 'Apple - AirPods Max - Space Gray', 'Model:MGYH3AM/ASKU:6373460', 'produits/February2024/aOgglBCoEKhpFdEANr3z.jpg', 500, 150, '2024-02-21 09:36:00', '2024-02-21 09:37:01', 3),
(71, 'Microsoft - Elite Series 2 Core Wireless Controller for Xbox Series X, Xbox Series S, Xbox One, and Windows PCs - White', 'Model:4IK-00001SKU:6514400Release Date:09/21/2022', 'produits/February2024/OCqvg3Gu4euYhrU56F0h.jpg', 120, 350, '2024-02-21 09:38:44', '2024-02-21 09:38:44', 9),
(72, 'Call of Duty: Modern Warfare III Cross-Gen Bundle Edition - Xbox Series X, Xbox One', 'Model:88559USSKU:6558586Release Date:11/10/2023ESRB Rating:M (Mature 17+)', 'produits/February2024/Dc2qU72Fjqo6ClPxaOwo.jpg', 60, 250, '2024-02-21 09:39:46', '2024-02-21 09:39:46', 9),
(73, 'EA Sports FC 24 Standard Edition - Xbox One, Xbox Series X', 'Model:74919SKU:6551241Release Date:09/29/2023ESRB Rating:E (Everyone)', 'produits/February2024/3K4uy0Kw0XcZsiwKVMY7.jpg', 34.99, 100, '2024-02-21 09:40:00', '2024-02-21 09:41:15', 9),
(74, 'Samsung - 65” Class CU7000 Crystal UHD 4K Smart Tizen TV', 'Model:UN65CU7000FXZASKU:6537363', 'produits/February2024/lhU8Fc2TRmFvhgOcdWYh.jpg', 400, 30, '2024-02-21 09:42:26', '2024-02-21 09:42:26', 3),
(75, 'Samsung - 75\" Class TU690T Crystal UHD 4K Smart Tizen TV', 'Model:UN75TU690TFXZASKU:6514052', 'produits/February2024/ezbNWskpeIfe6b4d5T2I.jpg', 500, 200, '2024-02-21 09:43:33', '2024-02-21 09:43:33', 3),
(76, 'HP - Envy 2-in-1 14\" Full HD Touch-Screen Laptop - Intel Core i5 - 8GB Memory - 512GB SSD - Natural Silver', 'Model:14-es0013dxSKU:6535745', 'produits/February2024/jFCI488MThEMmHQrIUme.jpg', 500, 30, '2024-02-21 09:53:00', '2024-02-21 09:54:10', 3),
(77, 'Case Logic - Ashton 14” Laptop Sleeve Laptop Case and Tablet Sleeve with Padded Interior and Zippered Pocket for Accessories - Gray', 'Model:3204895SKU:6499678', 'produits/February2024/YoxMOHeidWRMyjAEmzge.jpg', 20, 1500, '2024-02-21 12:17:57', '2024-02-21 12:17:57', 3),
(78, 'Microsoft - 365 Personal (1 Person) (12-Month Subscription) - Activation Required - Windows, Mac OS, Apple iOS, Android [Digital]', 'Model:QQ2-00027SKU:6258027Release Date:06/15/2018', 'produits/February2024/NeNthgax0w0nwotIDprq.jpg', 40, 300, '2024-02-21 12:19:09', '2024-02-21 12:19:09', 3);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(2, 'user', 'Normal User', '2024-02-16 12:03:47', '2024-02-16 12:03:47');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `terguis`
--

CREATE TABLE `terguis` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `terguis`
--

INSERT INTO `terguis` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'yassin', '2024-02-20 11:20:58', '2024-02-20 11:20:58');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2024-02-16 12:03:47', '2024-02-16 12:03:47');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$VZ4U/H22Gih4emvuYBhg6u1O4enmUnIA4aSxqJGaDiVtInwfKHbPm', 'svNybOHHjuL6AiMtwGK93I1qcdZj2ATi0WUQGYNo5u6QRjVU00yPo2X1tixw', NULL, '2024-02-16 12:03:47', '2024-02-16 12:03:47'),
(2, 2, 'oussama@gmail.com', 'oussamaazrour@gmail.com', 'users\\February2024\\lNQUGb17bFf55vdRdEYd.jpg', NULL, '$2y$10$hWWCTq83g.ZaH9iA.0r4J.3FFdPpaXLdEP/xusBt1.Sp0Hjr9xmsC', NULL, '{\"locale\":\"en\"}', '2024-02-16 19:39:27', '2024-02-16 19:39:27'),
(3, 2, 'srgsgs', 'bloussama8@gmail.com', 'users/default.png', NULL, '$2y$10$d.0rhLGl4BbMjuZYfmHnbevJY0yqkNt2dvLp9VpH0aYFeFM7PW2da', NULL, NULL, '2024-02-19 08:32:45', '2024-02-19 08:32:45'),
(4, 2, 'itkiu', 'info.p3.indh@gmail.com', 'users/default.png', NULL, '$2y$10$nkD8ipq6qhR3QtHwmgDHwOH01piu3zWeTXi9vjiASncuL.YTCQqm.', NULL, NULL, '2024-02-20 22:28:06', '2024-02-20 22:28:06');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `produit_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `produit_id`, `created_at`, `updated_at`) VALUES
(6, 3, 68, '2024-02-21 14:23:01', '2024-02-21 14:23:01');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `terguis`
--
ALTER TABLE `terguis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Index pour la table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `terguis`
--
ALTER TABLE `terguis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
