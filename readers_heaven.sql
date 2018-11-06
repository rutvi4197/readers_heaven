-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2018 at 07:53 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `readers_heaven`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(100) NOT NULL,
  `author` varchar(150) NOT NULL,
  `edition` int(11) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `isbn` varchar(16) NOT NULL,
  `pages` int(11) DEFAULT NULL,
  `mrp` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `publish_year` int(11) NOT NULL,
  `book_language` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_on` varchar(15) NOT NULL,
  `modified_on` varchar(15) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `author`, `edition`, `publisher`, `isbn`, `pages`, `mrp`, `photo`, `category_id`, `description`, `publish_year`, `book_language`, `status`, `created_on`, `modified_on`) VALUES
(1, 'The Mysterious Affair at Styles', 'Agatha Christie', 5, 'John Lane', '9350260425', NULL, 89, 'img/product/1.jpg', 7, 'Introducing Hercule Poirot, the brilliant-and eccentric- detective who, at a friend’s request, steps out of retirement- and into the shadows of a classic mystery on the outskirts of Essex. The victim is the wealthy mistress of Styles Court, found in her locked bedroom with the name of her late husband on her dying lips. Poirot has a few questions for her fortune-hunting new spouse, her aimless stepsons, her private doctor, and her hired companion. The answers are positively poisonous. Who’s resp', 1920, 'english', 0, '2/11/18', '2/11/18'),
(2, 'Her Last Wish', 'Ajay K. Pandey', 1, 'Srishti Publishers & Distributors', '9382665870', 208, 70, 'img/product/3.jpg', 4, 'Her Last Wish is the second novel by the best selling author Ajay K. Pandey. After his first novel, expectations were high from Mr. Ajay and he succeeded to fulfill our expectations with his new book. --By Ravi Gurunani on 16 January 2017\r\n\r\nThis book is about a young couple who have vowed to live along and go through the jungle of life by holding hands. Vijay who is overloaded with expectations and is never sure about his actions. Astha enters his life and moulds his shattered bits into a beaut', 2016, 'english', 0, '2/11/18', '2/11/18'),
(3, 'Harry Potter And the deathly Hallows', 'L.K.Rowing', 5, 'Srishti Publishers & Distributors', '9586471231', 668, 225, 'img/product/4.jpg', 8, 'The sporty Joust Duffle Bag can''t be beat - not in the gym, not on the luggage carousel, not anywhere. Big enough to haul a basketball or soccer ball and some sneakers with plenty of room to spare, it''s ideal for athletes with places to go.', 2000, 'English', 0, '5/11/2018', ''),
(4, 'Creating Your own destiny', 'Patrick Snow', 4, 'USA', '526478925', 750, 195, 'img/product/7.jpg', 1, 'How to Get exactly what you want out of life and work.', 2002, 'English', 0, '5/11/2018', ''),
(5, 'Blue Link Jass', 'Blue whale', 3, 'India ', '1234567891', 250, 65, 'img/product/18.jpg', 2, '', 2005, 'Hindi', 0, '5/11/2018', ''),
(6, 'One Indian Girl', 'Chetan Bhagat', 3, 'abccfj', '4512387745', 485, 70, 'img/product/2.jpg', 3, 'Story of one working woman.', 2010, 'Gujarati', 0, '5/11/2018', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `status`) VALUES
(1, 'Science-Fiction', 0),
(3, 'Drama', 0),
(4, 'Romance', 0),
(5, 'Crime', 0),
(6, 'Horror', 0),
(7, 'Mystery', 0),
(8, 'Novel', 0);

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE IF NOT EXISTS `library` (
  `library_id` int(11) NOT NULL AUTO_INCREMENT,
  `library_name` varchar(50) NOT NULL,
  PRIMARY KEY (`library_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`library_id`, `library_name`) VALUES
(1, 'Library of Gandhinagar');

-- --------------------------------------------------------

--
-- Table structure for table `library_address`
--

CREATE TABLE IF NOT EXISTS `library_address` (
  `library_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(50) NOT NULL,
  `library_id` int(11) NOT NULL,
  `branch_address` varchar(200) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `pincode` int(6) NOT NULL,
  `total_bill` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  `latitude` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`library_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `library_address`
--

INSERT INTO `library_address` (`library_address_id`, `branch_name`, `library_id`, `branch_address`, `contact_no`, `pincode`, `total_bill`, `longitude`, `latitude`, `email`, `password`) VALUES
(1, 'Gandhinagar', 1, 'Sargasan', 9826664747, 382421, 0, 0, 0, 'log@gmail.com', 'log@1234');

-- --------------------------------------------------------

--
-- Table structure for table `library_book_mapping`
--

CREATE TABLE IF NOT EXISTS `library_book_mapping` (
  `library_book_mapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`library_book_mapping_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `library_book_mapping`
--

INSERT INTO `library_book_mapping` (`library_book_mapping_id`, `branch_id`, `book_id`, `count`) VALUES
(1, 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `membership_card`
--

CREATE TABLE IF NOT EXISTS `membership_card` (
  `mcard_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`mcard_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `membership_card`
--

INSERT INTO `membership_card` (`mcard_id`, `description`, `title`) VALUES
(1, 'Silver', 'Leasure');

-- --------------------------------------------------------

--
-- Table structure for table `membership_month_mapping`
--

CREATE TABLE IF NOT EXISTS `membership_month_mapping` (
  `month_id` int(11) NOT NULL AUTO_INCREMENT,
  `mcard_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `month_number` int(11) NOT NULL,
  PRIMARY KEY (`month_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `membership_month_mapping`
--

INSERT INTO `membership_month_mapping` (`month_id`, `mcard_id`, `price`, `month_number`) VALUES
(1, 1, 500, 11);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_date` varchar(15) NOT NULL,
  `card_name` varchar(20) NOT NULL,
  `gateway_no` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `user_id`, `amount`, `payment_date`, `card_name`, `gateway_no`) VALUES
(1, 1, 500, '2/11/18', 'visa', 123);

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE IF NOT EXISTS `rent` (
  `rent_id` int(11) NOT NULL AUTO_INCREMENT,
  `library_book_mapping_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_date` varchar(15) NOT NULL,
  `return_date` varchar(15) NOT NULL,
  PRIMARY KEY (`rent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`rent_id`, `library_book_mapping_id`, `user_id`, `issue_date`, `return_date`) VALUES
(1, 1, 1, '2/11/18', '2/12/18');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `summary` varchar(500) NOT NULL,
  `review` varchar(500) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `review`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_on` varchar(15) NOT NULL,
  `modified_on` varchar(15) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `membership_id`, `status`, `created_on`, `modified_on`, `gender`, `wallet_id`) VALUES
(1, 'Rutvi Shah', 'rutvishah@gmail.com', 'priyansh', 1, 0, '2/11/18', '2/11/18', 'F', 1),
(2, 'Shilpi Soni', 'shilpi@gmail.com', '3cef53fb709ddcf8', 0, 0, '5/11/2018', '', 'f', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE IF NOT EXISTS `user_address` (
  `user_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `pincode` int(6) NOT NULL,
  `longitude` int(11) NOT NULL,
  `latitude` int(11) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `address_type` varchar(5) NOT NULL,
  PRIMARY KEY (`user_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`user_address_id`, `user_id`, `user_address`, `pincode`, `longitude`, `latitude`, `contact_no`, `address_type`) VALUES
(1, 1, 'Satellite', 380015, 0, 0, 9898774521, 'home');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE IF NOT EXISTS `wallet` (
  `wallet_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`wallet_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`wallet_id`, `amount`) VALUES
(1, 411);
