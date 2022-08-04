-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 18 mars 2020 à 14:20
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `farm`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`) VALUES
(9, 'fruits'),
(10, 'juice'),
(11, 'vegetable'),
(12, 'dried');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `cart` longtext NOT NULL,
  `payment_id` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_orders`
--

INSERT INTO `tbl_orders` (`id`, `name`, `address`, `cart`, `payment_id`, `date`) VALUES
(4, 'N\'kele N\'kele Héritier', 'av. Malula num 12  Lemba/Righini Kinshasa', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:7;a:6:{s:3:\"qty\";s:1:\"2\";s:10:\"product_id\";s:1:\"7\";s:12:\"product_name\";s:5:\"apple\";s:13:\"product_price\";i:80;s:13:\"product_image\";s:25:\"product-10_1582411514.jpg\";s:4:\"item\";O:8:\"stdClass\":6:{s:2:\"id\";i:7;s:12:\"product_name\";s:5:\"apple\";s:13:\"product_price\";i:80;s:16:\"product_category\";s:6:\"fruits\";s:13:\"product_image\";s:25:\"product-10_1582411514.jpg\";s:6:\"status\";i:1;}}i:6;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"6\";s:12:\"product_name\";s:5:\"onion\";s:13:\"product_price\";i:80;s:13:\"product_image\";s:24:\"product-9_1582411487.jpg\";s:4:\"item\";O:8:\"stdClass\":6:{s:2:\"id\";i:6;s:12:\"product_name\";s:5:\"onion\";s:13:\"product_price\";i:80;s:16:\"product_category\";s:9:\"vegetable\";s:13:\"product_image\";s:24:\"product-9_1582411487.jpg\";s:6:\"status\";i:1;}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:240;}', 'ch_1GN3G4Ar22Jh2IPIeJHXGjUC', '2020-03-15 20:40:54'),
(5, 'N\'kele N\'kele', 'Av. Malula Num. 12 Kinshasa  Lemba/Righini', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:4:{i:9;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"9\";s:12:\"product_name\";s:7:\"Tomatoe\";s:13:\"product_price\";i:80;s:13:\"product_image\";s:24:\"product-5_1582411615.jpg\";s:4:\"item\";O:8:\"stdClass\":6:{s:2:\"id\";i:9;s:12:\"product_name\";s:7:\"Tomatoe\";s:13:\"product_price\";i:80;s:16:\"product_category\";s:9:\"vegetable\";s:13:\"product_image\";s:24:\"product-5_1582411615.jpg\";s:6:\"status\";i:1;}}i:5;a:6:{s:3:\"qty\";i:2;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:11:\"green beans\";s:13:\"product_price\";i:120;s:13:\"product_image\";s:24:\"product-3_1582411459.jpg\";s:4:\"item\";O:8:\"stdClass\":6:{s:2:\"id\";i:5;s:12:\"product_name\";s:11:\"green beans\";s:13:\"product_price\";i:120;s:16:\"product_category\";s:9:\"vegetable\";s:13:\"product_image\";s:24:\"product-3_1582411459.jpg\";s:6:\"status\";i:1;}}i:3;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"3\";s:12:\"product_name\";s:8:\"brocolli\";s:13:\"product_price\";i:120;s:13:\"product_image\";s:24:\"product-6_1582411363.jpg\";s:4:\"item\";O:8:\"stdClass\":6:{s:2:\"id\";i:3;s:12:\"product_name\";s:8:\"brocolli\";s:13:\"product_price\";i:120;s:16:\"product_category\";s:9:\"vegetable\";s:13:\"product_image\";s:24:\"product-6_1582411363.jpg\";s:6:\"status\";i:1;}}i:8;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"8\";s:12:\"product_name\";s:13:\"purle cabbage\";s:13:\"product_price\";i:120;s:13:\"product_image\";s:24:\"product-4_1582411583.jpg\";s:4:\"item\";O:8:\"stdClass\":6:{s:2:\"id\";i:8;s:12:\"product_name\";s:13:\"purle cabbage\";s:13:\"product_price\";i:120;s:16:\"product_category\";s:9:\"vegetable\";s:13:\"product_image\";s:24:\"product-4_1582411583.jpg\";s:6:\"status\";i:1;}}}s:8:\"totalQty\";i:5;s:10:\"totalPrice\";i:560;}', 'ch_1GO0POAr22Jh2IPIIVU11HuK', '2020-03-18 11:50:30');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_category` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `product_name`, `product_price`, `product_category`, `product_image`, `status`) VALUES
(1, 'strawberry', 120, 'fruits', 'product-2_1582411307.jpg', 0),
(3, 'brocolli', 120, 'vegetable', 'product-6_1582411363.jpg', 1),
(4, 'bel pepper', 80, 'vegetable', 'product-1_1582411432.jpg', 1),
(5, 'green beans', 120, 'vegetable', 'product-3_1582411459.jpg', 1),
(6, 'onion', 80, 'vegetable', 'product-9_1582411487.jpg', 1),
(7, 'apple', 80, 'fruits', 'product-10_1582411514.jpg', 1),
(8, 'purle cabbage', 120, 'vegetable', 'product-4_1582411583.jpg', 1),
(9, 'Tomatoe', 80, 'vegetable', 'product-5_1582411615.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_sliders`
--

CREATE TABLE `tbl_sliders` (
  `id` int(11) NOT NULL,
  `description1` varchar(200) NOT NULL,
  `description2` varchar(200) NOT NULL,
  `slider_image` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_sliders`
--

INSERT INTO `tbl_sliders` (`id`, `description1`, `description2`, `slider_image`, `status`) VALUES
(6, 'We serve Fresh Vegestables  Fruits', 'We deliver organic vegetables  fruits', 'bg_2_1582412927.jpg', 1),
(7, 'We serve Fresh Vegestables  Fruits', 'We deliver organic vegetables  fruits', 'bg_1_1582412945.jpg', 1),
(8, 'We serve Fresh Vegestables  Fruits', 'We deliver organic vegetables  fruits', 'bg_3_1582618574.jpg', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_sliders`
--
ALTER TABLE `tbl_sliders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `tbl_sliders`
--
ALTER TABLE `tbl_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
