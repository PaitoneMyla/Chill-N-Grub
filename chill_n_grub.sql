-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2021 at 10:54 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chill_n_grub`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `tblnum` varchar(11) NOT NULL,
  `total_amount` double NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `stat` varchar(1) NOT NULL COMMENT 'P is for paid and U'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `tblnum`, `total_amount`, `date`, `stat`) VALUES
(26, 'a2c2', 0, '2021-04-01 22:02:30', ''),
(27, 'a2c2', 0, '2021-04-01 22:05:32', ''),
(28, 'a2c2', 1192, '2021-04-01 22:06:53', ''),
(29, '3c', 2028, '2021-04-01 22:56:58', 'P'),
(30, '5', 500, '2021-04-01 23:47:47', ''),
(31, '2', 1144, '2021-04-02 00:15:40', ''),
(32, '3', 150, '2021-04-02 01:56:29', 'P'),
(33, '2', 1144, '2021-04-02 23:38:04', ''),
(34, '3', 300, '2021-04-03 00:15:45', 'P'),
(35, '1', 797, '2021-04-03 02:27:45', ''),
(36, '3', 573, '2021-04-09 02:56:23', 'P'),
(37, '3', 43600, '2021-04-15 16:17:31', 'P'),
(38, '3', 0, '2021-04-15 16:19:19', 'P'),
(39, '3', 53600, '2021-04-15 16:19:33', 'U'),
(40, '3', 53600, '2021-04-15 16:19:41', 'P'),
(41, '3', 53600, '2021-04-15 16:21:44', 'P'),
(42, '3', 37900, '2021-04-15 16:26:54', 'P'),
(43, '3', 43600, '2021-04-15 16:32:01', ''),
(44, '3', 53628, '2021-04-15 16:33:25', ''),
(45, '3', 43600, '2021-04-15 16:49:43', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_desc` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_desc`) VALUES
(1, 'Appetizer'),
(2, 'Dessert'),
(3, 'Drinks'),
(4, 'Salad'),
(5, 'Starters');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `admin_id`, `prod_id`, `qty`) VALUES
(21, 26, 48, 2),
(22, 26, 82, 1),
(23, 27, 48, 2),
(24, 27, 82, 1),
(25, 28, 48, 2),
(26, 28, 82, 1),
(27, 29, 10, 2),
(28, 29, 39, 2),
(29, 29, 55, 2),
(30, 29, 76, 2),
(31, 30, 82, 5),
(32, 31, 1, 1),
(33, 31, 12, 2),
(34, 32, 15, 1),
(35, 33, 1, 1),
(36, 33, 12, 2),
(37, 34, 15, 2),
(38, 35, 7, 1),
(39, 35, 11, 1),
(40, 35, 29, 1),
(41, 36, 13, 1),
(42, 36, 4, 2),
(43, 37, 1, 100),
(44, 38, 1, 100),
(45, 39, 1, 100),
(46, 39, 82, 100),
(47, 40, 1, 100),
(48, 40, 82, 100),
(49, 41, 1, 100),
(50, 41, 82, 100),
(51, 42, 18, 100),
(52, 42, 82, 100),
(53, 43, 1, 100),
(54, 44, 1, 123),
(55, 45, 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `price_id` int(11) NOT NULL,
  `prod_id` varchar(64) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`price_id`, `prod_id`, `price`) VALUES
(1, '1', 436),
(2, '2', 233),
(3, '3', 757),
(4, '4', 143),
(5, '5', 323),
(6, '6', 354),
(7, '7', 322),
(8, '8', 145),
(9, '9', 241),
(10, '10', 293),
(11, '11', 221),
(12, '12', 354),
(13, '13', 287),
(14, '14', 176),
(15, '15', 150),
(16, '16', 177),
(17, '17', 254),
(18, '18', 279),
(19, '19', 237),
(20, '20', 246),
(21, '21', 487),
(22, '22', 134),
(23, '23', 543),
(24, '24', 235),
(25, '25', 276),
(26, '26', 121),
(27, '27', 213),
(28, '28', 243),
(29, '29', 254),
(30, '30', 117),
(31, '31', 378),
(32, '32', 295),
(33, '33', 270),
(34, '34', 255),
(35, '35', 264),
(36, '36', 352),
(37, '37', 278),
(38, '38', 179),
(39, '39', 177),
(40, '40', 266),
(41, '41', 287),
(42, '42', 250),
(43, '43', 144),
(44, '44', 165),
(45, '45', 167),
(46, '46', 187),
(47, '47', 345),
(48, '48', 546),
(49, '49', 223),
(50, '50', 110),
(51, '51', 112),
(52, '52', 220),
(53, '53', 332),
(54, '54', 126),
(55, '55', 165),
(56, '56', 654),
(57, '57', 243),
(58, '58', 467),
(59, '59', 386),
(60, '60', 545),
(61, '61', 167),
(62, '62', 546),
(63, '63', 246),
(64, '64', 386),
(65, '65', 263),
(66, '66', 364),
(67, '67', 321),
(68, '68', 541),
(69, '69', 342),
(70, '70', 323),
(71, '71', 267),
(72, '72', 387),
(73, '73', 436),
(74, '74', 361),
(75, '75', 298),
(76, '76', 379),
(77, '77', 123),
(78, '78', 354),
(79, '79', 265),
(80, '80', 365),
(81, '81', 235),
(82, '82', 100),
(83, '83', 175),
(84, '84', 257),
(85, '85', 147),
(86, '86', 467),
(87, '87', 245),
(88, '88', 237),
(89, '89', 234),
(90, '90', 167),
(91, '91', 197),
(92, '92', 131),
(93, '93', 432),
(94, '94', 245),
(95, '95', 134),
(96, '96', 335),
(97, '97', 323),
(98, '98', 127),
(99, '99', 198),
(100, '100', 176),
(101, '101', 169),
(102, '102', 134);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(64) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_img` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `cat_id`, `prod_img`) VALUES
(1, 'Broccoli and Garlic-ricotta toasts with hot honey', 1, NULL),
(2, 'Sea Bream Crudo with lemon and olives', 1, NULL),
(3, 'Pasta e Fagioli with Escarole', 1, NULL),
(4, 'Flatbread Capreses', 1, NULL),
(5, 'Risotto with Amarone and Caramelized Radicchio', 1, NULL),
(6, 'Polenta Bites with Wild Mushrooms and Fontina', 1, NULL),
(7, 'Salmon Nduja with Pickled Currants', 1, NULL),
(8, 'Instant Pot Mushroom Risotto', 1, NULL),
(9, 'Marinated Mixed Beans', 1, NULL),
(10, 'Clams Casino with Bacon and Bell Pepper', 1, NULL),
(12, 'Caesar-Style Puntarelle', 1, NULL),
(13, 'Eggplant Caponata', 1, NULL),
(14, 'Raw Artichoke Salad with Celery and Parmesan', 1, NULL),
(15, 'Creamy Shrimp Risotto With Mascarpone', 1, NULL),
(16, 'Goat Milk and Corn Panna Cotta with Blackberries', 2, NULL),
(17, 'Strawberry Gelato', 2, NULL),
(18, 'Chocolate and pistachio biscotti', 2, NULL),
(19, 'Panna Cotta with Cherry Sauce', 2, NULL),
(20, 'Pumpkin gingersnap tiramisu', 2, NULL),
(21, 'Ricetta semifreddo torrone', 2, NULL),
(22, 'Zabaglione with Strawberries', 2, NULL),
(23, 'Honey Blackberry Mascarpone Ice Cream', 2, NULL),
(24, 'Creamy Rose Panna Cotta', 2, NULL),
(25, 'Almond cake with pears and crème anglaise', 2, NULL),
(26, 'Biscoff Donuts', 2, NULL),
(27, 'Raspberry jam bomboloni', 2, NULL),
(28, 'Vanilla and cider panna cottas with spiced ginger cookies', 2, NULL),
(29, 'Lemon Honey Semifreddo', 2, NULL),
(30, 'Italian Trifle with Matsala Syrup', 2, NULL),
(31, 'Torta Della Nonna', 2, NULL),
(32, 'Almond Semifreddo with Caramelized Apples', 2, NULL),
(33, 'Fig-and-Raspberry Tart with Chestnut Honey', 2, NULL),
(34, 'Vanilla Zabaglione with Raspberries', 2, NULL),
(35, 'Concord Grape Granita', 2, NULL),
(36, 'Italian Almond Tart', 2, NULL),
(37, 'Chocolate Panna Cotta with Spiced Pepita Brittle', 2, NULL),
(38, 'Frozen Chocolate-Chip Meringata', 2, NULL),
(39, 'Cartellata Cookies', 2, NULL),
(40, 'Cranberry Panna Cotta', 2, NULL),
(41, 'Chocolate Bread Parfaits', 2, NULL),
(42, 'Umbrian Apple-Walnut Roll-Ups', 2, NULL),
(43, 'Tiramisu Icebox Pie', 2, NULL),
(44, 'Cannoli', 2, NULL),
(45, 'Perfect Biscotti', 2, NULL),
(46, 'Martini (Cocktail)', 3, NULL),
(47, 'Spicy Citrus Moscow Mule', 3, NULL),
(48, 'Dark & Stormy', 3, NULL),
(49, 'Bellini', 3, NULL),
(50, 'Gin and Tonic Cocktail', 3, NULL),
(51, 'Classic Sidecar Cocktail', 3, NULL),
(52, 'vieux carre', 3, NULL),
(53, 'Gunflint Red Wine', 3, NULL),
(54, 'White Russian Cocktail', 3, NULL),
(55, 'Blueberry Lemonade', 3, NULL),
(56, 'Watermelon Lime Soda', 3, NULL),
(57, 'Caprese Salad', 4, NULL),
(58, 'Antipasto Salad', 4, NULL),
(59, 'Bruchetta Salad', 4, NULL),
(60, 'Tomato Mozarella Salad', 4, NULL),
(61, 'Fagioli e Tonno', 4, NULL),
(62, 'Spiralized Greek Salad', 4, NULL),
(63, 'Grilled lemon herb mediterranean chicken salad', 4, NULL),
(64, 'Honey Mustard Chicken, Avocado with Bacon Salad', 4, NULL),
(65, 'Grilled Chimichurri Chicken Avocado Salad', 4, NULL),
(66, 'Grilled Chilli Lime Chicken Fajita Salad', 4, NULL),
(67, 'Salmon and Avocado Caesar Salad', 4, NULL),
(68, 'Balsamic Chickpea Avocado Feta Salad', 4, NULL),
(69, 'Skinny Lemon Garlic Shrimp Caesar Salad', 4, NULL),
(70, 'Greek Lemon Garlic Chicken Salad', 4, NULL),
(71, 'Thai Chicken Meatball Salad', 4, NULL),
(72, 'BLT Balsamic Chicken Avocado & Feta Salad', 4, NULL),
(73, 'Griddled Octopus with Potatoes and olives', 5, NULL),
(74, 'Peppers with roasted garlic, anchovies and basil', 5, NULL),
(75, 'Vitello Tonnato', 5, NULL),
(76, 'Baked Figs with blue cheese and balsamic', 5, NULL),
(77, 'Focaccia pugliese with fresh tomatoes', 5, NULL),
(78, 'Baked `nduja and burrata dip with olive breadsticks', 5, NULL),
(79, 'Burrata and Balsamic strawberries', 5, NULL),
(80, 'Gnudi with fried sage, hazelnuts and jerusalem and artichoke', 5, NULL),
(81, 'Pancetta Wrapped halloumi fries with smoky chili tomato relish', 5, NULL),
(82, 'white bean crostini with achovy and lemon salsa', 5, NULL),
(83, 'Pancetta, watercress and Mozzarella Arancini', 5, NULL),
(84, 'Russells asparagus, gorgonzola, walnut and mint bruschetta', 5, NULL),
(85, 'Theo Randalls focaccia with pesto and vine tomato', 5, NULL),
(86, 'Grilled Peach panzanella, toasted almonds and burrata', 5, NULL),
(87, 'Burrata with sticky roasted tomatoes, pine nuts and basil', 5, NULL),
(88, 'Roast grape, balsamic and radiccho spelt pizzas', 5, NULL),
(89, 'Arancini Cakes', 5, NULL),
(90, 'Sardines al soar', 5, NULL),
(91, 'Stracciatella Soup', 5, NULL),
(92, 'Piedmontese-style peppers', 5, NULL),
(93, 'spinach gnudi', 5, NULL),
(94, 'Grilled asparagus and parma ham on toast', 5, NULL),
(95, 'Lemon, parsley and spinach clams on toast', 5, NULL),
(96, 'Bagna Cauda', 5, NULL),
(97, 'Lemon Ricotta Bruschetta with Tenderstem and Heirloom Tomatoes', 5, NULL),
(98, 'Spring Onion, Herby Ricotta and `njuda toasts', 5, NULL),
(99, 'Pancotto pugliese', 5, NULL),
(100, 'Pizzette and Vegan Mozzarella and Onion Relish', 5, NULL),
(101, 'Salami-wrapped griddled fenel', 5, NULL),
(102, 'Calabrese pizza', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE `table` (
  `tbl_id` int(11) NOT NULL,
  `tbnum` varchar(64) NOT NULL,
  `status` varchar(1) NOT NULL COMMENT 'P is for pending A is for available R is for reserved',
  `qr_img_file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`tbl_id`, `tbnum`, `status`, `qr_img_file`) VALUES
(1, '1', 'O', 'table1.jpg'),
(2, '2', 'O', 'table2.png'),
(3, '3', 'O', 'table3.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usertype` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `password`, `usertype`) VALUES
(1, 'waiter1', '1retiaw', 'W'),
(2, 'waiter2', '2retiaw', 'W'),
(3, 'admin1', 'admin123', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`tbl_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `table`
--
ALTER TABLE `table`
  MODIFY `tbl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
