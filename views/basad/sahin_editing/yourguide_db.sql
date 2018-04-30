-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2018 at 06:29 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `image_name` varchar(250) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `image_name`, `is_deleted`) VALUES
(1, 'Andaman', 'image_places/andman.jpg', 0),
(2, 'binsar', 'image_places/binsar', 0),
(3, 'coorg', 'image_places/coorg', 0),
(4, 'jaisalmer', 'image_places/jaisalmer', 0),
(5, 'jim_carbet', 'image_places/jim_carbet', 0),
(6, 'kasol', 'image_places/kasol', 0),
(7, 'kerala', 'image_places/kerala', 0),
(8, 'leh', 'image_places/leh', 0),
(9, 'mysore', 'image_places/mysore', 0),
(10, 'rishikesh', 'image_places/rishikesh', 0),
(11, 'shimla', 'image_places/shimla', 0),
(12, 'srinagar', 'image_places/srinagar', 0),
(13, 'udaipur', 'image_places/udaipur', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `hash_value` varchar(250) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `contact`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'himrohilla', 'abc123a', 'Himanshu Rohilla', 'ruhela.himanshu@gmail.com', '9582457810', '2018-03-11 19:26:54', '2018-03-11 19:27:29', 0),
(2, 'sachinmishra123', '$2y$10$Pf1lgUyO4f6HXFLTu2LDLedn8mjvInbKUS9AjwCJ3keX0a0dll6C6', 'sachin mishra', 'mishrasachin@gmail.com', '8965231458', '2018-03-11 19:50:31', '2018-03-11 19:50:31', 0),
(5, 'sachinmishra', '$2y$10$n.XpU3LH5RnJG/m7X4oRUuIjv6Ph/XjyhMG4Nt167JaGGmylzjhIe', 'sachin mishra1', 'abc@gmail.com', '8965231458', '2018-03-11 20:17:49', '2018-03-12 10:00:59', 0),
(6, 'adnakdjsn', '$2y$10$Hajr9cmAzo.qDmB8TN7beOyTrViZ/74DkLczipVrB.E0v9CRP8mu.', 'dadads', 'ava@gmail.com', '8615311331', '2018-03-15 17:03:08', '2018-03-15 17:03:08', 0),
(7, 'hiamnshu', '$2y$10$pMES3fNEo9RtLEu365qX6uk4EaJLRTVPi8K9WYWkpW/7t8iIBMiwy', 'dadadas', 'ruhela.himanshu@gmail.co', '1561651351', '2018-03-15 17:09:23', '2018-03-15 17:09:23', 0),
(8, 'abhi01', '$2y$10$zqJNH4UHDTfNGn0HtLsjXeTvwcjW8OPRUkT8DZw2lxFEla.XFIbP6', 'Abhinav agnihotri', 'abhi01@gmail.com', '7355937044', '2018-03-16 08:54:01', '2018-03-16 08:54:01', 0),
(9, 'abcdefghij', '$2y$10$1vxxm/zZPsDmlzlRZo.tAO0ie5ioSdV6Z1uQU5Z0YIygF/G3ZtMVy', 'abhinav', 'abcd@gmail.com', '9582457810', '2018-03-16 10:10:42', '2018-03-16 10:10:42', 0),
(10, 'himanshu', '$2y$10$RsNm5Y3zse7LbYH.hrgPYe2/QptIZ5ywj28Ox8h5rIpQ2vpmBgzj.', 'abc', '12@gmail.com', '9582457810', '2018-03-16 10:48:03', '2018-03-16 10:48:03', 0);

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
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
