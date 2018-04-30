-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2018 at 12:38 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yourguide_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `feedback_text` text NOT NULL,
  `stars` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `feedback_text`, `stars`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 1, 'This trip was easily the trip of a lifetime for our family of four, and it will be quite some time before we stop talking about it!! We have a done a lot of travel with our children alongside us, but the adventures that were found around every corner on this African safari were beyond our expectations.', 4, '2018-03-18 17:15:43', '2018-04-07 18:24:49', 0),
(2, 2, 'This trip was easily the trip of a lifetime for our family of four, and it will be quite some time before we stop talking about it!! We have a done a lot of travel with our children alongside us, but the adventures that were found around every corner on this African safari were beyond our expectations.', 3, '2018-03-18 17:15:43', '2018-04-07 18:24:49', 0),
(3, 5, 'This trip was easily the trip of a lifetime for our family of four, and it will be quite some time before we stop talking about it!! We have a done a lot of travel with our children alongside us, but the adventures that were found around every corner on this African safari were beyond our expectations.', 4, '2018-03-18 17:15:59', '2018-04-07 18:24:49', 0),
(4, 6, 'This trip was easily the trip of a lifetime for our family of four, and it will be quite some time before we stop talking about it!! We have a done a lot of travel with our children alongside us, but the adventures that were found around every corner on this African safari were beyond our expectations.', 3, '2018-03-18 17:15:59', '2018-04-07 18:24:49', 0),
(5, 7, 'This trip was easily the trip of a lifetime for our family of four, and it will be quite some time before we stop talking about it!! We have a done a lot of travel with our children alongside us, but the adventures that were found around every corner on this African safari were beyond our expectations.', 4, '2018-03-18 17:16:09', '2018-04-07 18:20:46', 0),
(6, 8, 'This trip was easily the trip of a lifetime for our family of four, and it will be quite some time before we stop talking about it!! We have a done a lot of travel with our children alongside us, but the adventures that were found around every corner on this African safari were beyond our expectations.', 3, '2018-03-18 17:16:09', '2018-04-07 18:24:49', 0),
(7, 9, 'This trip was easily the trip of a lifetime for our family of four, and it will be quite some time before we stop talking about it!! We have a done a lot of travel with our children alongside us, but the adventures that were found around every corner on this African safari were beyond our expectations.', 4, '2018-03-18 17:16:18', '2018-04-07 11:07:23', 0),
(8, 10, 'This trip was easily the trip of a lifetime for our family of four, and it will be quite some time before we stop talking about it!! We have a done a lot of travel with our children alongside us, but the adventures that were found around every corner on this African safari were beyond our expectations.', 3, '2018-03-18 17:16:18', '2018-03-18 17:16:18', 0),
(11, 12, 'this is a very nice website', 0, '2018-04-09 08:38:56', '2018-04-09 08:38:56', 0),
(12, 12, 'nice website.', 0, '2018-04-12 17:42:58', '2018-04-12 17:42:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `image_name` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `image_name`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'Andaman', 'image_places/andman.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0),
(2, 'binsar', 'image_places/binsar.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0),
(3, 'coorg', 'image_places/coorg.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0),
(4, 'jaisalmer', 'image_places/jaisalmer.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0),
(5, 'jim corbet', 'image_places/jim_carbet.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0),
(6, 'kasol', 'image_places/kasol.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0),
(7, 'kerala', 'image_places/kerala.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0),
(8, 'leh', 'image_places/leh.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0),
(9, 'mysore', 'image_places/mysore.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0),
(10, 'rishikesh', 'image_places/rishikesh.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0),
(11, 'shimla', 'image_places/shimla.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0),
(12, 'srinagar', 'image_places/srinagar.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0),
(13, 'udaipur', 'image_places/udaipur.jpg', '2018-03-19 05:30:11', '2018-03-19 05:30:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `restrictions`
--

CREATE TABLE `restrictions` (
  `id` int(11) NOT NULL,
  `restriction_name` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restrictions`
--

INSERT INTO `restrictions` (`id`, `restriction_name`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'El chiko', '2018-04-07 17:51:16', '2018-04-07 18:56:26', 0),
(2, 'Red fort', '2018-04-07 17:51:16', '2018-04-07 18:56:29', 0),
(3, 'Qutab minar', '2018-04-07 18:17:08', '2018-04-07 18:56:40', 0),
(4, 'Azad park', '2018-04-07 18:17:23', '2018-04-07 18:56:45', 0),
(5, 'Taj mahal', '2018-04-07 18:17:36', '2018-04-07 18:55:49', 0),
(6, 'Random place 1', '2018-04-07 18:53:36', '2018-04-07 18:56:53', 0),
(7, 'Random place 2', '2018-04-07 18:54:08', '2018-04-07 18:57:20', 0),
(8, 'jama masjid', '2018-04-09 15:56:45', '2018-04-12 17:26:18', 1),
(9, 'Karim\'s', '2018-04-09 16:09:05', '2018-04-09 16:09:05', 0),
(10, 'jama masjid', '2018-04-13 09:19:58', '2018-04-15 20:49:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `hash`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'Family', NULL, '2018-04-03 04:43:07', '2018-04-03 04:43:07', 0),
(2, 'Hills', NULL, '2018-04-03 04:43:25', '2018-04-03 04:43:25', 0),
(3, 'Wildlife', NULL, '2018-04-03 04:43:39', '2018-04-03 04:43:39', 0),
(4, 'Beaches', NULL, '2018-04-03 04:44:23', '2018-04-03 04:44:23', 0),
(5, 'Romantic', NULL, '2018-04-03 04:44:23', '2018-04-03 04:44:23', 0),
(6, 'Adventure', NULL, '2018-04-03 04:44:23', '2018-04-03 04:44:23', 0),
(7, 'Leisure', NULL, '2018-04-03 04:44:23', '2018-04-03 04:44:23', 0),
(8, 'Pilgrimage', NULL, '2018-04-03 04:44:23', '2018-04-03 04:44:23', 0),
(9, 'Arts & Entertainment', '4d4b7104d754a06370d81259', '2018-04-03 06:07:30', '2018-04-03 06:13:34', 0),
(10, 'College & University', '4d4b7105d754a06372d81259', '2018-04-03 06:21:44', '2018-04-03 06:21:44', 0),
(11, 'Event', '4d4b7105d754a06373d81259', '2018-04-03 06:21:44', '2018-04-03 06:21:44', 0),
(12, 'Food', '4d4b7105d754a06374d81259', '2018-04-03 06:21:44', '2018-04-03 06:21:44', 0),
(13, 'Nightlife Spot', '4d4b7105d754a06376d81259', '2018-04-03 06:21:44', '2018-04-03 06:21:44', 0),
(14, 'Outdoors & Recreation', '4d4b7105d754a06377d81259', '2018-04-03 06:21:44', '2018-04-03 06:21:44', 0),
(15, 'Professional & Other Places', '4d4b7105d754a06375d81259', '2018-04-03 06:21:44', '2018-04-03 06:21:44', 0),
(16, 'Travel & Transport', '4d4b7105d754a06379d81259', '2018-04-03 06:21:44', '2018-04-03 06:21:44', 0),
(17, 'Zoo', '4bf58dd8d48988d17b941735', '2018-04-03 07:04:02', '2018-04-03 07:04:02', 0),
(18, 'Museum', '4bf58dd8d48988d181941735', '2018-04-03 07:04:02', '2018-04-03 07:04:02', 0),
(19, 'Beach', '4bf58dd8d48988d1e2941735', '2018-04-03 07:04:02', '2018-04-03 07:04:02', 0),
(20, 'Mountain', '4eb1d4d54b900d56c88a45fc', '2018-04-03 07:04:02', '2018-04-03 07:04:02', 0),
(21, 'Buddhist Temple', '52e81612bcbc57f1066b7a3e', '2018-04-03 07:04:02', '2018-04-03 07:04:02', 0),
(22, 'Church', '4bf58dd8d48988d132941735', '2018-04-03 07:04:02', '2018-04-03 07:04:02', 0),
(23, 'Hindu Temple', '52e81612bcbc57f1066b7a3f', '2018-04-03 07:04:02', '2018-04-03 07:04:02', 0),
(24, 'Mosque', '4bf58dd8d48988d138941735', '2018-04-03 07:04:02', '2018-04-03 07:04:02', 0),
(25, 'Art Gallery', '4bf58dd8d48988d1e2931735', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(26, 'Historic Site', '4deefb944765f83613cdba6e', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(27, 'Memorial Site', '5642206c498e4bfca532186c', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(28, 'Movie Theater', '4bf58dd8d48988d17f941735', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(29, 'Multiplex', '4bf58dd8d48988d180941735', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(30, 'Music Venue', '4bf58dd8d48988d1e5931735', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(31, 'Performing Arts Venue', '4bf58dd8d48988d1f2931735', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(32, 'Public Art', '507c8c4091d498d9fc8c67a9', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(33, 'Stadium', '4bf58dd8d48988d184941735', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(34, 'Theme Park', '4bf58dd8d48988d182941735', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(35, 'Water Park', '4bf58dd8d48988d193941735', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(36, 'University', '4bf58dd8d48988d1ae941735', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(37, 'Bakery', '4bf58dd8d48988d16a941735', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(38, 'Buffet', '52e81612bcbc57f1066b79f4', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(39, 'Cafeteria', '4bf58dd8d48988d128941735', '2018-04-13 10:53:44', '2018-04-13 10:53:44', 0),
(40, 'Cafe', '4bf58dd8d48988d16d941735', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(41, 'Dessert Shop', '4bf58dd8d48988d1d0941735', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(42, 'Juice Bar', '4bf58dd8d48988d112941735', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(43, 'Pizza Place', '4bf58dd8d48988d1ca941735', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(44, 'Restaurant', '4bf58dd8d48988d1c4941735', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(45, 'Bar', '4bf58dd8d48988d116941735', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(46, 'Lounge', '4bf58dd8d48988d121941735', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(47, 'Nightclub', '4bf58dd8d48988d11f941735', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(48, 'Gym / Fitness Center', '4bf58dd8d48988d175941735', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(49, 'Gym', '4bf58dd8d48988d176941735', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(50, 'Bay', '56aa371be4b08b9a8d573544', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(51, 'Canal', '56aa371be4b08b9a8d573562', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(52, 'Castle', '50aaa49e4b90af0d42d5de11', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(53, 'Fishing Spot', '52e81612bcbc57f1066b7a0f', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(54, 'Forest', '52e81612bcbc57f1066b7a23', '2018-04-13 11:02:56', '2018-04-13 11:02:56', 0),
(55, 'Garden', '4bf58dd8d48988d15a941735', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(56, 'Island', '50aaa4314b90af0d42d5de10', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(57, 'Lake', '4bf58dd8d48988d161941735', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(58, 'National Park', '52e81612bcbc57f1066b7a21', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(59, 'Palace', '52e81612bcbc57f1066b7a14', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(60, 'Park', '4bf58dd8d48988d163941735', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(61, 'Playground', '4bf58dd8d48988d1e7941735', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(62, 'Pool', '4bf58dd8d48988d15e941735', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(63, 'River', '4eb1d4dd4b900d56c88a45fd', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(64, 'Waterfall', '56aa371be4b08b9a8d573560', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(65, 'Building', '4bf58dd8d48988d130941735', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(66, 'Fair', '4eb1daf44b900d56c88a4600', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(67, 'Government Building', '4bf58dd8d48988d126941735', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(68, 'Police Station', '4bf58dd8d48988d12e941735', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(69, 'Library', '4bf58dd8d48988d12f941735', '2018-04-13 11:08:58', '2018-04-13 11:08:58', 0),
(70, 'Medical Center', '4bf58dd8d48988d104941735', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(71, 'Hospital', '4bf58dd8d48988d196941735', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(72, 'Office', '4bf58dd8d48988d124941735', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(73, 'Parking', '4c38df4de52ce0d596b336e1', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(74, 'Post Office', '4bf58dd8d48988d172941735', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(75, 'School', '4bf58dd8d48988d13b941735', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(76, 'Spiritual Center', '4bf58dd8d48988d131941735', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(77, 'Residence', '4e67e38e036454776db1fb3a', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(78, 'Shop & Service', '4d4b7105d754a06378d81259', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(79, 'ATM', '52f2ab2ebcbc57f1066b8b56', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(80, 'Bank', '4bf58dd8d48988d10a951735', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(81, 'Clothing Store', '4bf58dd8d48988d103951735', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(82, 'Flea Market', '4bf58dd8d48988d1f7941735', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(83, 'Food & Drink Shop', '4bf58dd8d48988d1f9941735', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(84, 'Beer Store', '5370f356bcbc57f1066c94c2', '2018-04-13 11:14:57', '2018-04-13 11:14:57', 0),
(98, 'Liquor Store', '4bf58dd8d48988d186941735', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0),
(99, 'Supermarket', '52f2ab2ebcbc57f1066b8b46', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0),
(100, 'Internet Cafe', '4bf58dd8d48988d1f0941735', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0),
(101, 'Market', '50be8ee891d4fa8dcc7199a7', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0),
(102, 'Outlet Store', '52f2ab2ebcbc57f1066b8b35', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0),
(103, '', '', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0),
(104, 'Airport', '4bf58dd8d48988d1ed931735', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0),
(105, 'Bus Station', '4bf58dd8d48988d1fe931735', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0),
(106, 'Bus Stop', '52f2ab2ebcbc57f1066b8b4f', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0),
(107, 'Hotel', '4bf58dd8d48988d1fa931735', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0),
(108, 'Motel', '4bf58dd8d48988d1fb931735', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0),
(109, 'Resort', '4bf58dd8d48988d12f951735', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0),
(110, 'Train Station', '4bf58dd8d48988d129951735', '2018-04-13 11:23:16', '2018-04-13 11:23:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tags_cities`
--

CREATE TABLE `tags_cities` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `city_name` varchar(500) NOT NULL,
  `latitude` varchar(500) NOT NULL,
  `longitude` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags_phobia`
--

CREATE TABLE `tags_phobia` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `phobia` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags_subtags`
--

CREATE TABLE `tags_subtags` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `subtag_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags_subtags`
--

INSERT INTO `tags_subtags` (`id`, `tag_id`, `subtag_id`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 1, 9, '2018-04-03 00:59:15', '2018-04-03 00:59:15', 0),
(28, 1, 10, '2018-04-15 00:49:59', '2018-04-15 00:49:59', 0),
(29, 1, 11, '2018-04-15 00:49:59', '2018-04-15 00:49:59', 0),
(30, 1, 12, '2018-04-15 00:49:59', '2018-04-15 00:49:59', 0),
(31, 5, 13, '2018-04-15 00:49:59', '2018-04-15 00:49:59', 0),
(32, 7, 13, '2018-04-15 00:49:59', '2018-04-15 00:49:59', 0),
(33, 1, 14, '2018-04-15 00:49:59', '2018-04-15 00:49:59', 0),
(34, 1, 15, '2018-04-15 00:49:59', '2018-04-15 00:49:59', 0),
(35, 7, 16, '2018-04-15 00:49:59', '2018-04-15 00:49:59', 0),
(36, 1, 18, '2018-04-15 00:49:59', '2018-04-15 00:49:59', 0),
(37, 4, 19, '2018-04-15 00:49:59', '2018-04-15 00:49:59', 0),
(38, 2, 20, '2018-04-15 01:44:13', '2018-04-15 01:44:13', 0),
(39, 6, 20, '2018-04-15 01:44:13', '2018-04-15 01:44:13', 0),
(40, 8, 21, '2018-04-15 01:44:13', '2018-04-15 01:44:13', 0),
(41, 8, 22, '2018-04-15 01:44:13', '2018-04-15 01:44:13', 0),
(42, 8, 23, '2018-04-15 01:44:13', '2018-04-15 01:44:13', 0),
(43, 8, 24, '2018-04-15 01:44:13', '2018-04-15 01:44:13', 0),
(44, 1, 25, '2018-04-15 01:44:13', '2018-04-15 01:44:13', 0),
(45, 1, 26, '2018-04-15 01:44:13', '2018-04-15 01:44:13', 0),
(46, 1, 28, '2018-04-15 01:44:13', '2018-04-15 01:44:13', 0),
(47, 5, 28, '2018-04-15 01:44:13', '2018-04-15 01:44:13', 0),
(48, 7, 28, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(49, 1, 30, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(50, 5, 30, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(51, 7, 30, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(52, 1, 31, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(53, 1, 32, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(54, 3, 34, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(55, 1, 34, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(56, 1, 35, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(57, 5, 35, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(58, 7, 35, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(59, 1, 36, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(60, 1, 43, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(61, 7, 43, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(62, 1, 44, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(63, 5, 45, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(64, 7, 45, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(65, 5, 46, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(66, 7, 46, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(67, 5, 47, '2018-04-15 01:58:19', '2018-04-15 01:58:19', 0),
(68, 7, 47, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(69, 4, 50, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(70, 1, 52, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(71, 7, 52, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(72, 1, 53, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(73, 7, 53, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(74, 3, 54, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(75, 1, 54, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(76, 6, 54, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(77, 1, 56, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(78, 4, 56, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(79, 7, 56, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(80, 1, 57, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(81, 5, 57, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(82, 1, 58, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(83, 3, 58, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(84, 1, 59, '2018-04-15 03:36:53', '2018-04-15 03:36:53', 0),
(85, 1, 60, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(86, 3, 60, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(87, 1, 61, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(88, 1, 63, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(89, 8, 63, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(90, 1, 64, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(91, 6, 64, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(92, 5, 64, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(93, 1, 69, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(94, 1, 71, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(95, 8, 76, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(96, 1, 81, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(97, 1, 83, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(98, 7, 83, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(99, 7, 84, '2018-04-15 03:48:38', '2018-04-15 03:48:38', 0),
(100, 7, 98, '2018-04-15 03:54:01', '2018-04-15 03:54:01', 0),
(101, 1, 99, '2018-04-15 03:54:01', '2018-04-15 03:54:01', 0),
(102, 7, 107, '2018-04-15 03:54:01', '2018-04-15 03:54:01', 0),
(103, 1, 107, '2018-04-15 03:54:01', '2018-04-15 03:54:01', 0),
(104, 5, 107, '2018-04-15 03:54:01', '2018-04-15 03:54:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(512) NOT NULL,
  `password` varchar(512) NOT NULL,
  `name` varchar(512) NOT NULL,
  `email` varchar(512) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `image_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `contact`, `image_name`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'himrohilla', 'abc123a', 'Himanshu Rohilla', 'ruhela.himanshu@gmail.com', '9582457810', '1.jpg', '2018-03-11 19:26:54', '2018-04-07 18:27:39', 0),
(2, 'sachinmishra123', '$2y$10$Pf1lgUyO4f6HXFLTu2LDLedn8mjvInbKUS9AjwCJ3keX0a0dll6C6', 'sachin mishra', 'mishrasachin@gmail.com', '8965231458', '1.jpg', '2018-03-11 19:50:31', '2018-04-07 18:27:39', 0),
(5, 'sachinmishra', '$2y$10$n.XpU3LH5RnJG/m7X4oRUuIjv6Ph/XjyhMG4Nt167JaGGmylzjhIe', 'sachin mishra1', 'abc@gmail.com', '8965231458', '1.jpg', '2018-03-11 20:17:49', '2018-04-07 18:27:39', 0),
(6, 'Katy_Perry', '$2y$10$Hajr9cmAzo.qDmB8TN7beOyTrViZ/74DkLczipVrB.E0v9CRP8mu.', 'Katy Perry', 'ava@gmail.com', '8615311331', '1.jpg', '2018-03-15 17:03:08', '2018-04-07 18:27:39', 0),
(7, 'hiamnshu', '$2y$10$pMES3fNEo9RtLEu365qX6uk4EaJLRTVPi8K9WYWkpW/7t8iIBMiwy', 'Natasha', 'ruhela.himanshu@gmail.co', '1561651351', '1.jpg', '2018-03-15 17:09:23', '2018-04-07 18:27:39', 0),
(8, 'abhi01', '$2y$10$zqJNH4UHDTfNGn0HtLsjXeTvwcjW8OPRUkT8DZw2lxFEla.XFIbP6', 'Abhinav agnihotri', 'abhi01@gmail.com', '7355937044', '1.jpg', '2018-03-16 08:54:01', '2018-04-07 18:27:39', 0),
(9, 'abcdefghij', '$2y$10$1vxxm/zZPsDmlzlRZo.tAO0ie5ioSdV6Z1uQU5Z0YIygF/G3ZtMVy', 'abhinav', 'abcd@gmail.com', '9582457810', '1.jpg', '2018-03-16 10:10:42', '2018-04-07 18:27:39', 0),
(11, 'userwer', '$2y$10$qSfyvPhxSpRg2cusacYWBecaOXykio.ZvK17oRdshDGnLF5gYsFai', 'dhadnadaidn', 'abc@abc.com', '9999999999', 'default_user.png', '2018-04-03 09:48:46', '2018-04-07 18:27:39', 0),
(12, 'himanshu', '$2y$10$8MtPmYhBStXvznwegsMf4OO6TakQOfOGfmAsIf70NHF.rdSIOzwMW', 'Dadas', 'abc@in.com', '8797987987', 'default_user.png', '2018-04-03 11:24:29', '2018-04-07 19:20:55', 0),
(44, 'himanshu123', '$2y$10$bt6ZlL0a9oZHi7Mbj5BbGu5VY2iaCJbW4rzG8unDoOCPv0O8beMVy', 'himanshu', 'ruhela.himanshu@gmail.coma', '9999999998', 'default_user.png', '2018-04-03 11:37:21', '2018-04-07 11:06:01', 0),
(45, 'himanshu127', '$2y$10$R2oKdoVEEl26LMpPlPOZ2.BRymbEkkYMbHVYadPvRafVUV1oiif7K', 'himanshu', 'ruhela.himanshu@gmail.in', '9999999997', 'default_user.png', '2018-04-03 11:38:16', '2018-04-07 11:06:01', 0),
(46, 'himanshu1234', '$2y$10$emLvc69TISOIzmN0tlptg.2jnfB66Y4O5ucF0xU/H.J5gUmtMOS/C', 'himansh', 'ruhela.himanshu@gmail.comaa', '8888888888', 'default_user.png', '2018-04-07 08:45:34', '2018-04-07 10:35:00', 0),
(47, 'abhinav01', '$2y$10$SPJkp1Z/CwVPgamgTR8tT.4qts.478oMbXu1ArL8XokBYz8LL4CRm', 'abahinav', 'abhinav01@gmail.com', '9765432123', NULL, '2018-04-13 08:57:19', '2018-04-13 09:20:18', 0),
(50, 'abhinav010', '$2y$10$virOQ.d7GZmfU6u4bwWFYedXhn73FPXf3pYUiqTN0UPI4vCPXWlUW', 'abhinav', 'abhinav012@gmail.com', '9876543322', NULL, '2018-04-13 09:17:32', '2018-04-13 09:17:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_admin`
--

CREATE TABLE `users_admin` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_admin`
--

INSERT INTO `users_admin` (`id`, `user_id`, `is_admin`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 10, 1, '2018-03-19 05:52:24', '2018-04-03 10:06:11', 0),
(2, 12, 1, '2018-04-07 10:33:17', '2018-04-15 05:21:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_phobia`
--

CREATE TABLE `users_phobia` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phobia_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_tags`
--

CREATE TABLE `users_tags` (
  `user_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restrictions`
--
ALTER TABLE `restrictions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tags_cities`
--
ALTER TABLE `tags_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_phobia`
--
ALTER TABLE `tags_phobia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_subtags`
--
ALTER TABLE `tags_subtags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_admin`
--
ALTER TABLE `users_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_phobia`
--
ALTER TABLE `users_phobia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_tags`
--
ALTER TABLE `users_tags`
  ADD PRIMARY KEY (`user_id`,`tags_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `restrictions`
--
ALTER TABLE `restrictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `tags_cities`
--
ALTER TABLE `tags_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags_phobia`
--
ALTER TABLE `tags_phobia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags_subtags`
--
ALTER TABLE `tags_subtags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users_admin`
--
ALTER TABLE `users_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_phobia`
--
ALTER TABLE `users_phobia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
