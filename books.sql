-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2025 at 07:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `book_category` varchar(255) NOT NULL,
  `star_rating` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `book_category`, `star_rating`, `price`, `stock`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 'A Light in the Attic', 'Poetry', 1, 51.77, 'In Stock', 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Tipping the Velvet', 'Historical Fiction', 1, 53.74, 'Out Of Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Soumission', 'Fiction', 5, 50.10, 'In Stock', 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Sharp Objects', 'Mystery', 3, 47.82, 'Out Of Stock', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Sapiens: A Brief History of Humankind', 'History', 2, 54.23, 'Out Of Stock', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'The Requiem Red', 'Young Adult', 2, 22.65, 'Out Of Stock', 76, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'The Dirty Little Secrets of Getting Your Dream Job', 'Business', 5, 33.34, 'Out Of Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'The Coming Woman: A Novel Based on the Life of the Infamous Feminist, Victoria Woodhull', 'Default', 3, 17.93, 'Out Of Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'The Boys in the Boat: Nine Americans and Their Epic Quest for Gold at the 1936 Berlin Olympics', 'Default', 4, 22.60, 'Out Of Stock', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'The Black Maria', 'Poetry', 4, 52.15, 'In Stock', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Starving Hearts (Triangular Trade Trilogy, #1)', 'Default', 5, 13.99, 'In Stock', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Shakespeare\'s Sonnets', 'Poetry', 3, 20.66, 'Out Of Stock', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Set Me Free', 'Young Adult', 4, 17.46, 'Out Of Stock', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Scott Pilgrim\'s Precious Little Life (Scott Pilgrim #1)', 'Sequential Art', 3, 52.29, 'In Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Rip it Up and Start Again', 'Music', 2, 35.02, 'In Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Our Band Could Be Your Life: Scenes from the American Indie Underground, 1981-1991', 'Music', 5, 57.25, 'Out Of Stock', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Olio', 'Poetry', 4, 23.88, 'In Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Mesaerion: The Best Science Fiction Stories 1800-1849', 'Science Fiction', 2, 37.59, 'Out Of Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Libertarianism for Beginners', 'Politics', 2, 51.33, 'Out Of Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'It\'s Only the Himalayas', 'Travel', 4, 45.17, 'Out Of Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'In Her Wake', 'Thriller', 1, 12.84, 'In Stock', 97, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'How Music Works', 'Music', 1, 37.32, 'Out Of Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Foolproof Preserving: A Guide to Small Batch Jams, Jellies, Pickles, Condiments, and More: A Foolproof Guide to Making Small Batch Jams, Jellies, Pickles, Condiments, and More', 'Food and Drink', 2, 30.52, 'In Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Chase Me (Paris Nights #2)', 'Romance', 3, 25.27, 'Out Of Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Black Dust', 'Romance', 4, 34.53, 'In Stock', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Birdsong: A Story in Pictures', 'Childrens', 3, 54.64, 'In Stock', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'America\'s Cradle of Quarterbacks: Western Pennsylvania\'s Football Factory from Johnny Unitas to Joe Montana', 'Default', 5, 22.50, 'In Stock', 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Aladdin and His Wonderful Lamp', 'Default', 2, 53.13, 'Out Of Stock', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Worlds Elsewhere: Journeys Around Shakespeareâs Globe', 'Nonfiction', 2, 40.30, 'Out Of Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Wall and Piece', 'Art', 1, 44.18, 'In Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'The Four Agreements: A Practical Guide to Personal Freedom', 'Spirituality', 5, 17.66, 'In Stock', 81, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'The Five Love Languages: How to Express Heartfelt Commitment to Your Mate', 'Nonfiction', 4, 31.05, 'In Stock', 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'The Elephant Tree', 'Thriller', 4, 23.82, 'Out Of Stock', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'The Bear and the Piano', 'Childrens', 2, 36.89, 'Out Of Stock', 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Sophie\'s World', 'Philosophy', 4, 15.94, 'In Stock', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Penny Maybe', 'Default', 1, 33.29, 'Out Of Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Maude (1883-1993):She Grew Up with the country', 'Default', 2, 18.02, 'In Stock', 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'In a Dark, Dark Wood', 'Mystery', 1, 19.63, 'Out Of Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Behind Closed Doors', 'Thriller', 4, 52.22, 'In Stock', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'You can\'t bury them all: Poems', 'Poetry', 4, 33.63, 'Out Of Stock', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Slow States of Collapse: Poems', 'Poetry', 2, 57.31, 'Out Of Stock', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Reasons to Stay Alive', 'Nonfiction', 1, 26.41, 'Out Of Stock', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Private Paris (Private #10)', 'Fiction', 4, 47.61, 'Out Of Stock', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '#HigherSelfie: Wake Up Your Life. Free Your Soul. Find Your Tribe.', 'Nonfiction', 3, 23.11, 'Out Of Stock', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Without Borders (Wanderlove #1)', 'New Adult', 1, 45.07, 'Out Of Stock', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'When We Collided', 'Contemporary', 1, 31.77, 'Out Of Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'We Love You, Charlie Freeman', 'Fiction', 2, 50.27, 'In Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Untitled Collection: Sabbath Poems 2014', 'Poetry', 4, 14.27, 'In Stock', 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Unseen City: The Majesty of Pigeons, the Discreet Charm of Snails & Other Wonders of the Urban Wilderness', 'Nonfiction', 2, 44.18, 'In Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Unicorn Tracks', 'Fantasy', 2, 18.78, 'In Stock', 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Unbound: How Eight Technologies Made Us Human, Transformed Society, and Brought Our World to the Brink', 'History', 2, 25.52, 'In Stock', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Tsubasa: WoRLD CHRoNiCLE 2 (Tsubasa WoRLD CHRoNiCLE #2)', 'Sequential Art', 2, 16.28, 'In Stock', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Throwing Rocks at the Google Bus: How Growth Became the Enemy of Prosperity', 'Nonfiction', 2, 31.12, 'Out Of Stock', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'This One Summer', 'Sequential Art', 4, 19.49, 'Out Of Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Thirst', 'Fiction', 3, 17.27, 'In Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'The Torch Is Passed: A Harding Family Story', 'Add a comment', 4, 19.09, 'In Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'The Secret of Dreadwillow Carse', 'Childrens', 2, 56.13, 'In Stock', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'The Pioneer Woman Cooks: Dinnertime: Comfort Classics, Freezer Food, 16-Minute Meals, and Other Delicious Ways to Solve Supper!', 'Food and Drink', 3, 56.41, 'In Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'The Past Never Ends', 'Mystery', 4, 56.50, 'In Stock', 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'The Natural History of Us (The Fine Art of Pretending #2)', 'Young Adult', 4, 45.22, 'In Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'The Nameless City (The Nameless City #1)', 'Sequential Art', 2, 38.16, 'Out Of Stock', 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'The Murder That Never Was (Forensic Instincts #5)', 'Fiction', 3, 54.11, 'In Stock', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'The Most Perfect Thing: Inside (and Outside) a Bird\'s Egg', 'Science', 1, 42.96, 'Out Of Stock', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'The Mindfulness and Acceptance Workbook for Anxiety: A Guide to Breaking Free from Anxiety, Phobias, and Worry Using Acceptance and Commitment Therapy', 'Add a comment', 4, 23.89, 'Out Of Stock', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'The Life-Changing Magic of Tidying Up: The Japanese Art of Decluttering and Organizing', 'Nonfiction', 2, 16.77, 'In Stock', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'The Inefficiency Assassin: Time Management Tactics for Working Smarter, Not Longer', 'Default', 1, 20.59, 'In Stock', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'The Gutsy Girl: Escapades for Your Life of Epic Adventure', 'Nonfiction', 4, 37.13, 'In Stock', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'The Electric Pencil: Drawings from Inside State Hospital No. 3', 'Nonfiction', 4, 56.06, 'Out Of Stock', 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'The Death of Humanity: and the Case for Life', 'Philosophy', 4, 58.11, 'In Stock', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'The Bulletproof Diet: Lose up to a Pound a Day, Reclaim Energy and Focus, Upgrade Your Life', 'Health', 5, 49.05, 'In Stock', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'The Art Forger', 'Add a comment', 3, 40.76, 'In Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'The Age of Genius: The Seventeenth Century and the Birth of the Modern Mind', 'History', 5, 19.73, 'In Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'The Activist\'s Tao Te Ching: Ancient Advice for a Modern Revolution', 'Spirituality', 2, 32.24, 'In Stock', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Spark Joy: An Illustrated Master Class on the Art of Organizing and Tidying Up', 'Nonfiction', 1, 41.83, 'In Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Soul Reader', 'Default', 4, 39.58, 'Out Of Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Security', 'Horror', 5, 39.25, 'Out Of Stock', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Saga, Volume 6 (Saga (Collected Editions) #6)', 'Fantasy', 2, 25.02, 'In Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Saga, Volume 5 (Saga (Collected Editions) #5)', 'Sequential Art', 5, 51.04, 'Out Of Stock', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Reskilling America: Learning to Labor in the Twenty-First Century', 'Nonfiction', 3, 19.83, 'In Stock', 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Rat Queens, Vol. 3: Demons (Rat Queens (Collected Editions) #11-15)', 'Sequential Art', 3, 50.40, 'Out Of Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Princess Jellyfish 2-in-1 Omnibus, Vol. 01 (Princess Jellyfish 2-in-1 Omnibus #1)', 'Sequential Art', 5, 13.61, 'In Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Princess Between Worlds (Wide-Awake Princess #5)', 'Fantasy', 3, 13.34, 'In Stock', 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Pop Gun War, Volume 1: Gift', 'Sequential Art', 3, 18.97, 'Out Of Stock', 76, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Political Suicide: Missteps, Peccadilloes, Bad Calls, Backroom Hijinx, Sordid Pasts, Rotten Breaks, and Just Plain Dumb Mistakes in the Annals of American Politics', 'History', 4, 36.28, 'Out Of Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Patience', 'Sequential Art', 4, 10.16, 'In Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Outcast, Vol. 1: A Darkness Surrounds Him (Outcast #1)', 'Sequential Art', 3, 15.44, 'In Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'orange: The Complete Collection 1 (orange: The Complete Collection #1)', 'Sequential Art', 3, 48.41, 'In Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Online Marketing for Busy Authors: A Step-By-Step Guide', 'Self Help', 1, 46.35, 'In Stock', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'On a Midnight Clear', 'Add a comment', 5, 14.07, 'In Stock', 98, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Obsidian (Lux #1)', 'Young Adult', 2, 14.86, 'In Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'My Paris Kitchen: Recipes and Stories', 'Food and Drink', 5, 33.37, 'Out Of Stock', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Masks and Shadows', 'Fantasy', 3, 56.40, 'Out Of Stock', 98, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Mama Tried: Traditional Italian Cooking for the Screwed, Crude, Vegan, and Tattooed', 'Food and Drink', 1, 14.02, 'In Stock', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Lumberjanes, Vol. 2: Friendship to the Max (Lumberjanes #5-8)', 'Sequential Art', 4, 46.91, 'Out Of Stock', 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Lumberjanes, Vol. 1: Beware the Kitten Holy (Lumberjanes #1-4)', 'Sequential Art', 2, 45.61, 'In Stock', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Lumberjanes Vol. 3: A Terrible Plan (Lumberjanes #9-12)', 'Sequential Art', 4, 19.92, 'Out Of Stock', 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Layered: Baking, Building, and Styling Spectacular Cakes', 'Food and Drink', 1, 40.11, 'Out Of Stock', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Judo: Seven Steps to Black Belt (an Introductory Guide for Beginners)', 'Add a comment', 5, 53.90, 'In Stock', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Join', 'Science Fiction', 4, 35.67, 'Out Of Stock', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'In the Country We Love: My Family Divided', 'Nonfiction', 1, 22.00, 'In Stock', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Immunity: How Elie Metchnikoff Changed the Course of Modern Medicine', 'Science', 5, 57.36, 'Out Of Stock', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'I Hate Fairyland, Vol. 1: Madly Ever After (I Hate Fairyland (Compilations) #1-5)', 'Sequential Art', 4, 29.17, 'Out Of Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'I am a Hero Omnibus Volume 1', 'Sequential Art', 4, 54.63, 'In Stock', 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'How to Be Miserable: 40 Strategies You Already Use', 'Self Help', 1, 46.03, 'In Stock', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Her Backup Boyfriend (The Sorensen Family #1)', 'Romance', 4, 33.97, 'Out Of Stock', 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Giant Days, Vol. 2 (Giant Days #5-8)', 'Sequential Art', 2, 22.11, 'In Stock', 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Forever and Forever: The Courtship of Henry Longfellow and Fanny Appleton', 'Historical Fiction', 2, 29.69, 'In Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'First and First (Five Boroughs #3)', 'Romance', 5, 15.97, 'In Stock', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Fifty Shades Darker (Fifty Shades #2)', 'Romance', 3, 21.96, 'Out Of Stock', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Everydata: The Misinformation Hidden in the Little Data You Consume Every Day', 'Nonfiction', 4, 54.35, 'In Stock', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Don\'t Be a Jerk: And Other Practical Advice from Dogen, Japan\'s Greatest Zen Master', 'Religion', 4, 37.97, 'Out Of Stock', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Danganronpa Volume 1', 'Sequential Art', 4, 51.99, 'In Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Crown of Midnight (Throne of Glass #2)', 'Fantasy', 2, 43.29, 'Out Of Stock', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Codename Baboushka, Volume 1: The Conclave of Death', 'Sequential Art', 5, 36.72, 'Out Of Stock', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Camp Midnight', 'Sequential Art', 5, 17.08, 'In Stock', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Call the Nurse: True Stories of a Country Nurse on a Scottish Isle', 'Nonfiction', 5, 29.14, 'In Stock', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Burning', 'Young Adult', 4, 28.81, 'In Stock', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Bossypants', 'Default', 5, 49.46, 'In Stock', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Bitch Planet, Vol. 1: Extraordinary Machine (Bitch Planet (Collected Editions))', 'Sequential Art', 4, 37.92, 'Out Of Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Avatar: The Last Airbender: Smoke and Shadow, Part 3 (Smoke and Shadow #3)', 'Fantasy', 2, 28.09, 'Out Of Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Algorithms to Live By: The Computer Science of Human Decisions', 'Nonfiction', 3, 30.81, 'Out Of Stock', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'A World of Flavor: Your Gluten Free Passport', 'Default', 4, 42.95, 'Out Of Stock', 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'A Piece of Sky, a Grain of Rice: A Memoir in Four Meditations', 'Default', 4, 56.76, 'In Stock', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'A Murder in Time', 'Mystery', 3, 16.64, 'Out Of Stock', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'A Flight of Arrows (The Pathfinders #2)', 'Historical Fiction', 5, 55.53, 'Out Of Stock', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'A Fierce and Subtle Poison', 'Young Adult', 1, 28.13, 'Out Of Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'A Court of Thorns and Roses (A Court of Thorns and Roses #1)', 'Fantasy', 2, 52.37, 'Out Of Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, '(Un)Qualified: How God Uses Broken People to Do Big Things', 'Christian', 4, 54.00, 'In Stock', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'You Are What You Love: The Spiritual Power of Habit', 'Religion', 1, 21.87, 'In Stock', 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'William Shakespeare\'s Star Wars: Verily, A New Hope (William Shakespeare\'s Star Wars #4)', 'Science Fiction', 4, 43.30, 'In Stock', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Tuesday Nights in 1980', 'Fiction', 5, 21.04, 'In Stock', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Tracing Numbers on a Train', 'Default', 3, 41.60, 'Out Of Stock', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Throne of Glass (Throne of Glass #1)', 'Fantasy', 5, 35.07, 'Out Of Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Thomas Jefferson and the Tripoli Pirates: The Forgotten War That Changed American History', 'History', 2, 59.64, 'Out Of Stock', 41, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Thirteen Reasons Why', 'Default', 4, 52.72, 'Out Of Stock', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'The White Cat and the Monk: A Retelling of the Poem âPangur BÃ¡nâ', 'Childrens', 5, 58.08, 'Out Of Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'The Wedding Dress', 'Romance', 2, 24.12, 'Out Of Stock', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'The Vacationers', 'Fiction', 5, 42.15, 'Out Of Stock', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'The Third Wave: An Entrepreneurâs Vision of the Future', 'Business', 3, 12.61, 'Out Of Stock', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'The Stranger', 'Philosophy', 2, 17.44, 'In Stock', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'The Shadow Hero (The Shadow Hero)', 'Sequential Art', 4, 33.14, 'In Stock', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'The Secret (The Secret #1)', 'Default', 4, 27.37, 'In Stock', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'The Regional Office Is Under Attack!', 'Fiction', 5, 51.36, 'Out Of Stock', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'The Psychopath Test: A Journey Through the Madness Industry', 'Default', 3, 36.00, 'Out Of Stock', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'The Project', 'Science Fiction', 3, 10.65, 'Out Of Stock', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'The Power of Now: A Guide to Spiritual Enlightenment', 'Nonfiction', 2, 43.54, 'Out Of Stock', 39, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'The Omnivore\'s Dilemma: A Natural History of Four Meals', 'Nonfiction', 2, 38.21, 'In Stock', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'The Nerdy Nummies Cookbook: Sweet Treats for the Geek in All of Us', 'Food and Drink', 4, 37.34, 'In Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'The Murder of Roger Ackroyd (Hercule Poirot #4)', 'Mystery', 3, 44.10, 'In Stock', 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'The Mistake (Off-Campus #2)', 'New Adult', 5, 43.29, 'Out Of Stock', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'The Matchmaker\'s Playbook (Wingmen Inc. #1)', 'New Adult', 2, 55.85, 'Out Of Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'The Love and Lemons Cookbook: An Apple-to-Zucchini Celebration of Impromptu Cooking', 'Food and Drink', 3, 37.60, 'In Stock', 98, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'The Long Shadow of Small Ghosts: Murder and Memory in an American City', 'Crime', 4, 10.97, 'In Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'The Kite Runner', 'Default', 3, 41.82, 'Out Of Stock', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'The House by the Lake', 'Historical Fiction', 4, 36.95, 'Out Of Stock', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'The Glittering Court (The Glittering Court #1)', 'Fantasy', 4, 44.28, 'In Stock', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'The Girl on the Train', 'Default', 3, 55.02, 'Out Of Stock', 73, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'The Genius of Birds', 'Nonfiction', 3, 17.24, 'Out Of Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'The Emerald Mystery', 'Default', 5, 23.15, 'In Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'The Cookies & Cups Cookbook: 125+ sweet & savory recipes reminding you to Always Eat Dessert First', 'Food and Drink', 2, 41.25, 'Out Of Stock', 97, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'The Bridge to Consciousness: I\'m Writing the Bridge Between Science and Our Old and New Beliefs.', 'Default', 1, 32.00, 'Out Of Stock', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'The Artist\'s Way: A Spiritual Path to Higher Creativity', 'Nonfiction', 5, 38.49, 'Out Of Stock', 88, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'The Art of War', 'Default', 2, 33.34, 'Out Of Stock', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'The Argonauts', 'Autobiography', 3, 10.93, 'In Stock', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'The 10% Entrepreneur: Live Your Startup Dream Without Quitting Your Day Job', 'Business', 4, 27.55, 'In Stock', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Suddenly in Love (Lake Haven #1)', 'Romance', 2, 55.99, 'In Stock', 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Something More Than This', 'Romance', 2, 16.24, 'In Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Soft Apocalypse', 'Science Fiction', 5, 26.12, 'In Stock', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'So You\'ve Been Publicly Shamed', 'Nonfiction', 1, 12.23, 'Out Of Stock', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Shoe Dog: A Memoir by the Creator of NIKE', 'Business', 4, 23.99, 'In Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Shobu Samurai, Project Aryoku (#3)', 'Add a comment', 3, 29.06, 'In Stock', 97, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Secrets and Lace (Fatal Hearts #1)', 'Default', 4, 20.27, 'In Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Scarlett Epstein Hates It Here', 'Young Adult', 1, 43.55, 'In Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Romero and Juliet: A Tragic Tale of Love and Zombies', 'Default', 4, 36.94, 'Out Of Stock', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Redeeming Love', 'Christian Fiction', 5, 20.47, 'In Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Poses for Artists Volume 1 - Dynamic and Sitting Poses: An Essential Reference for Figure Drawing and the Human Form', 'Default', 1, 41.06, 'In Stock', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Poems That Make Grown Women Cry', 'Poetry', 4, 14.19, 'In Stock', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Nightingale, Sing', 'Young Adult', 2, 38.28, 'In Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Night Sky with Exit Wounds', 'Poetry', 1, 41.05, 'In Stock', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Mrs. Houdini', 'Historical Fiction', 3, 30.25, 'In Stock', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Modern Romance', 'Add a comment', 2, 28.26, 'In Stock', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Miss Peregrineâs Home for Peculiar Children (Miss Peregrineâs Peculiar Children #1)', 'Default', 1, 10.76, 'Out Of Stock', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Louisa: The Extraordinary Life of Mrs. Adams', 'Biography', 2, 16.85, 'Out Of Stock', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Little Red', 'Childrens', 2, 13.47, 'In Stock', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Library of Souls (Miss Peregrineâs Peculiar Children #3)', 'Young Adult', 5, 48.56, 'In Stock', 81, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Large Print Heart of the Pride', 'Default', 2, 19.15, 'In Stock', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'I Had a Nice Time And Other Lies...: How to find love & sh*t like that', 'Womens Fiction', 4, 57.36, 'Out Of Stock', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Hollow City (Miss Peregrineâs Peculiar Children #2)', 'Fantasy', 5, 42.98, 'Out Of Stock', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Grumbles', 'Default', 2, 22.16, 'Out Of Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Full Moon over Noahâs Ark: An Odyssey to Mount Ararat and Beyond', 'Travel', 5, 49.43, 'Out Of Stock', 98, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Frostbite (Vampire Academy #2)', 'Young Adult', 3, 29.99, 'In Stock', 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Follow You Home', 'Horror', 4, 21.36, 'In Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'First Steps for New Christians (Print Edition)', 'Default', 3, 29.00, 'Out Of Stock', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Finders Keepers (Bill Hodges Trilogy #2)', 'Fiction', 4, 53.53, 'In Stock', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Fables, Vol. 1: Legends in Exile (Fables #1)', 'Sequential Art', 3, 41.62, 'In Stock', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Eureka Trivia 6.0', 'Default', 5, 54.59, 'Out Of Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Drive: The Surprising Truth About What Motivates Us', 'Default', 2, 34.95, 'Out Of Stock', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Done Rubbed Out (Reightman & Bailey #1)', 'Default', 2, 37.72, 'In Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Doing It Over (Most Likely To #1)', 'Romance', 2, 35.61, 'Out Of Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Deliciously Ella Every Day: Quick and Easy Recipes for Gluten-Free Snacks, Packed Lunches, and Simple Meals', 'Food and Drink', 2, 42.16, 'In Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Dark Notes', 'Erotica', 2, 19.19, 'Out Of Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Daring Greatly: How the Courage to Be Vulnerable Transforms the Way We Live, Love, Parent, and Lead', 'Nonfiction', 4, 19.43, 'In Stock', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Close to You', 'Christian Fiction', 4, 49.46, 'Out Of Stock', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Chasing Heaven: What Dying Taught Me About Living', 'Spirituality', 2, 37.80, 'In Stock', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'Big Magic: Creative Living Beyond Fear', 'Nonfiction', 4, 30.80, 'In Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'Becoming Wise: An Inquiry into the Mystery and Art of Living', 'Nonfiction', 3, 27.43, 'Out Of Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'Beauty Restored (Riley Family Legacy Novellas #3)', 'Default', 5, 11.11, 'Out Of Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Batman: The Long Halloween (Batman)', 'Sequential Art', 2, 36.50, 'In Stock', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Batman: The Dark Knight Returns (Batman)', 'Sequential Art', 4, 15.38, 'In Stock', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Ayumi\'s Violin', 'Default', 3, 15.48, 'Out Of Stock', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Anonymous', 'Default', 3, 46.82, 'In Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Amy Meets the Saints and Sages', 'Default', 3, 18.46, 'Out Of Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Amid the Chaos', 'Cultural', 2, 36.58, 'In Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Amatus', 'Default', 4, 50.54, 'Out Of Stock', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Agnostic: A Spirited Manifesto', 'Nonfiction', 4, 12.51, 'In Stock', 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Zealot: The Life and Times of Jesus of Nazareth', 'History', 5, 24.70, 'In Stock', 73, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'You (You #1)', 'Thriller', 2, 43.61, 'Out Of Stock', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Wonder Woman: Earth One, Volume One (Wonder Woman: Earth One #1)', 'Sequential Art', 2, 37.34, 'Out Of Stock', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Wild Swans', 'Young Adult', 4, 14.36, 'In Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Why the Right Went Wrong: Conservatism--From Goldwater to the Tea Party and Beyond', 'Politics', 1, 52.65, 'Out Of Stock', 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Whole Lotta Creativity Going On: 60 Fun and Unusual Exercises to Awaken and Strengthen Your Creativity', 'Nonfiction', 1, 38.20, 'In Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'What\'s It Like in Space?: Stories from Astronauts Who\'ve Been There', 'Nonfiction', 2, 19.60, 'In Stock', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'We Are Robin, Vol. 1: The Vigilante Business (We Are Robin #1)', 'Sequential Art', 5, 53.90, 'Out Of Stock', 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Walt Disney\'s Alice in Wonderland', 'Childrens', 2, 12.96, 'Out Of Stock', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'V for Vendetta (V for Vendetta Complete)', 'Default', 4, 37.10, 'In Stock', 97, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Until Friday Night (The Field Party #1)', 'Young Adult', 4, 46.31, 'In Stock', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Unbroken: A World War II Story of Survival, Resilience, and Redemption', 'Default', 2, 45.95, 'Out Of Stock', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Twenty Yawns', 'Childrens', 5, 22.08, 'Out Of Stock', 97, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Through the Woods', 'Sequential Art', 1, 25.38, 'In Stock', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'This Is Where It Ends', 'Young Adult', 3, 27.12, 'Out Of Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'The Year of Magical Thinking', 'Nonfiction', 1, 43.04, 'Out Of Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'The Wright Brothers', 'Default', 4, 56.80, 'Out Of Stock', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'The White Queen (The Cousins\' War #1)', 'Add a comment', 2, 25.91, 'Out Of Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'The Wedding Pact (The O\'Malleys #2)', 'Romance', 2, 32.61, 'Out Of Stock', 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'The Time Keeper', 'Fiction', 3, 27.88, 'Out Of Stock', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'The Testament of Mary', 'Fiction', 2, 52.67, 'Out Of Stock', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'The Star-Touched Queen', 'Fantasy', 4, 46.02, 'Out Of Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'The Songs of the Gods', 'Default', 4, 44.48, 'In Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'The Song of Achilles', 'Add a comment', 2, 37.40, 'Out Of Stock', 98, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'The Rosie Project (Don Tillman #1)', 'Default', 3, 54.04, 'Out Of Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'The Power of Habit: Why We Do What We Do in Life and Business', 'Default', 1, 16.88, 'Out Of Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'The Marriage of Opposites', 'Historical Fiction', 2, 28.08, 'Out Of Stock', 81, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'The Lucifer Effect: Understanding How Good People Turn Evil', 'Psychology', 5, 10.40, 'Out Of Stock', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'The Long Haul (Diary of a Wimpy Kid #9)', 'Humor', 5, 44.07, 'Out Of Stock', 98, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'The Loney', 'Horror', 4, 23.40, 'In Stock', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'The Literature Book (Big Ideas Simply Explained)', 'Nonfiction', 4, 17.43, 'In Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'The Last Mile (Amos Decker #2)', 'Mystery', 3, 54.21, 'In Stock', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'The Immortal Life of Henrietta Lacks', 'Add a comment', 3, 40.67, 'Out Of Stock', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'The Hidden Oracle (The Trials of Apollo #1)', 'Fantasy', 2, 52.26, 'In Stock', 81, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'The Help Yourself Cookbook for Kids: 60 Easy Plant-Based Recipes Kids Can Make to Stay Healthy and Save the Earth', 'Food and Drink', 2, 28.77, 'In Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'The Guilty (Will Robie #4)', 'Thriller', 2, 13.82, 'In Stock', 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'The First Hostage (J.B. Collins #2)', 'Fiction', 5, 25.85, 'Out Of Stock', 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'The Dovekeepers', 'Add a comment', 1, 48.78, 'In Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'The Darkest Lie', 'Young Adult', 4, 35.35, 'In Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'The Bane Chronicles (The Bane Chronicles #1-11)', 'Fantasy', 4, 44.73, 'Out Of Stock', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'The Bad-Ass Librarians of Timbuktu: And Their Race to Save the Worldâs Most Precious Manuscripts', 'Nonfiction', 2, 15.77, 'In Stock', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 'The 14th Colony (Cotton Malone #11)', 'Thriller', 2, 39.24, 'Out Of Stock', 73, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 'That Darkness (Gardiner and Renner #1)', 'Mystery', 4, 13.92, 'In Stock', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 'Tastes Like Fear (DI Marnie Rome #3)', 'Mystery', 4, 10.69, 'In Stock', 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'Take Me with You', 'Fiction', 4, 45.21, 'In Stock', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'Swell: A Year of Waves', 'Nonfiction', 4, 45.58, 'In Stock', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'Superman Vol. 1: Before Truth (Superman by Gene Luen Yang #1)', 'Sequential Art', 4, 11.89, 'In Stock', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 'Still Life with Bread Crumbs', 'Fiction', 5, 26.41, 'In Stock', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 'Steve Jobs', 'Default', 4, 39.50, 'Out Of Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 'Sorting the Beef from the Bull: The Science of Food Fraud Forensics', 'Science', 4, 44.74, 'In Stock', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 'Someone Like You (The Harrisons #2)', 'Contemporary', 2, 52.79, 'In Stock', 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 'So Cute It Hurts!!, Vol. 6 (So Cute It Hurts!! #6)', 'Sequential Art', 2, 35.43, 'Out Of Stock', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 'Shtum', 'Fiction', 3, 55.84, 'Out Of Stock', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 'See America: A Celebration of Our National Parks & Treasured Sites', 'Travel', 5, 48.87, 'Out Of Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 'salt.', 'Poetry', 1, 46.78, 'In Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 'Robin War', 'Sequential Art', 3, 47.82, 'Out Of Stock', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 'Red Hood/Arsenal, Vol. 1: Open for Business (Red Hood/Arsenal #1)', 'Sequential Art', 1, 25.48, 'Out Of Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 'Rain Fish', 'Childrens', 4, 23.57, 'Out Of Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 'Quarter Life Poetry: Poems for the Young, Broke and Hangry', 'Poetry', 2, 50.89, 'In Stock', 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 'Pet Sematary', 'Horror', 4, 10.56, 'In Stock', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 'Overload: How to Unplug, Unwind, and Unleash Yourself from the Pressure of Stress', 'Self Help', 5, 52.15, 'Out Of Stock', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'Once Was a Time', 'Childrens', 2, 18.28, 'In Stock', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'Old School (Diary of a Wimpy Kid #10)', 'Humor', 5, 11.83, 'Out Of Stock', 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'No Dream Is Too High: Life Lessons From a Man Who Walked on the Moon', 'Nonfiction', 4, 21.95, 'In Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 'Naruto (3-in-1 Edition), Vol. 14: Includes Vols. 40, 41 & 42 (Naruto: Omnibus #14)', 'Sequential Art', 2, 38.39, 'Out Of Stock', 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 'My Name Is Lucy Barton', 'Fiction', 4, 41.56, 'In Stock', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 'My Mrs. Brown', 'Fiction', 4, 24.48, 'In Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 'My Kind of Crazy', 'Young Adult', 1, 40.36, 'In Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 'Mr. Mercedes (Bill Hodges Trilogy #1)', 'Fiction', 2, 28.90, 'Out Of Stock', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 'More Than Music (Chasing the Dream #1)', 'Add a comment', 2, 37.61, 'Out Of Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 'Made to Stick: Why Some Ideas Survive and Others Die', 'Business', 3, 38.85, 'In Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 'Luis Paints the World', 'Childrens', 1, 53.95, 'In Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 'Luckiest Girl Alive', 'Default', 2, 49.83, 'In Stock', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 'Lowriders to the Center of the Earth (Lowriders in Space #2)', 'Sequential Art', 3, 51.51, 'Out Of Stock', 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 'Love Is a Mix Tape (Music #1)', 'Music', 4, 18.03, 'Out Of Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 'Looking for Lovely: Collecting the Moments that Matter', 'Nonfiction', 4, 29.14, 'In Stock', 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 'Living Leadership by Insight: A Good Leader Achieves, a Great Leader Builds Monuments', 'Default', 2, 46.91, 'Out Of Stock', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 'Let It Out: A Journey Through Journaling', 'Nonfiction', 2, 26.79, 'In Stock', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 'Lady Midnight (The Dark Artifices #1)', 'Default', 3, 16.28, 'In Stock', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 'It\'s All Easy: Healthy, Delicious Weeknight Meals in under 30 Minutes', 'Food and Drink', 5, 19.55, 'In Stock', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 'Island of Dragons (Unwanteds #7)', 'Fantasy', 2, 29.65, 'Out Of Stock', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 'I Know What I\'m Doing -- and Other Lies I Tell Myself: Dispatches from a Life Under Construction', 'Humor', 3, 25.98, 'In Stock', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 'I Am Pilgrim (Pilgrim #1)', 'Fiction', 3, 10.60, 'In Stock', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 'Hyperbole and a Half: Unfortunate Situations, Flawed Coping Mechanisms, Mayhem, and Other Things That Happened', 'Humor', 3, 14.75, 'In Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 'Hush, Hush (Hush, Hush #1)', 'Default', 3, 47.02, 'Out Of Stock', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 'Hold Your Breath (Search and Rescue #1)', 'Romance', 2, 28.82, 'In Stock', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 'Hamilton: The Revolution', 'Nonfiction', 5, 58.79, 'Out Of Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 'Greek Mythic History', 'Default', 5, 10.23, 'Out Of Stock', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 'God: The Most Unpleasant Character in All Fiction', 'Religion', 4, 30.03, 'In Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 'Glory over Everything: Beyond The Kitchen House', 'Historical Fiction', 4, 45.84, 'In Stock', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 'Feathers: Displays of Brilliant Plumage', 'Art', 2, 49.05, 'In Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 'Far & Away: Places on the Brink of Change: Seven Continents, Twenty-Five Years', 'Nonfiction', 2, 15.06, 'In Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 'Every Last Word', 'Default', 1, 46.47, 'Out Of Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 'Eligible (The Austen Project #4)', 'Fiction', 1, 27.09, 'In Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 'El Deafo', 'Sequential Art', 1, 57.62, 'In Stock', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 'Eight Hundred Grapes', 'Fiction', 2, 14.39, 'Out Of Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 'Eaternity: More than 150 Deliciously Easy Vegan Recipes for a Long, Healthy, Satisfied, Joyful Life', 'Nonfiction', 4, 51.75, 'Out Of Stock', 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 'Eat Fat, Get Thin', 'Health', 4, 54.07, 'Out Of Stock', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 'Don\'t Get Caught', 'Young Adult', 5, 55.35, 'Out Of Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 'Doctor Sleep (The Shining #2)', 'Horror', 3, 40.12, 'Out Of Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 'Demigods & Magicians: Percy and Annabeth Meet the Kanes (Percy Jackson & Kane Chronicles Crossover #1-3)', 'Fantasy', 3, 37.51, 'In Stock', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 'Dear Mr. Knightley', 'Fiction', 5, 11.21, 'In Stock', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 'Daily Fantasy Sports', 'Default', 2, 36.58, 'In Stock', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 'Crazy Love: Overwhelmed by a Relentless God', 'Christian', 3, 47.72, 'In Stock', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 'Cometh the Hour (The Clifton Chronicles #6)', 'Fiction', 4, 25.01, 'In Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 'Code Name Verity (Code Name Verity #1)', 'Add a comment', 3, 22.13, 'In Stock', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 'Clockwork Angel (The Infernal Devices #1)', 'Default', 4, 44.14, 'Out Of Stock', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 'City of Glass (The Mortal Instruments #3)', 'Fantasy', 3, 56.02, 'Out Of Stock', 88, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 'City of Fallen Angels (The Mortal Instruments #4)', 'Default', 4, 11.23, 'Out Of Stock', 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 'City of Bones (The Mortal Instruments #1)', 'Default', 2, 43.28, 'Out Of Stock', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 'City of Ashes (The Mortal Instruments #2)', 'Default', 4, 47.27, 'In Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 'Cell', 'Add a comment', 2, 20.29, 'Out Of Stock', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 'Catching Jordan (Hundred Oaks)', 'Young Adult', 3, 50.83, 'In Stock', 98, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 'Carry On, Warrior: Thoughts on Life Unarmed', 'Default', 5, 31.85, 'Out Of Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 'Carrie', 'Default', 1, 46.23, 'Out Of Stock', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 'Buying In: The Secret Dialogue Between What We Buy and Who We Are', 'Nonfiction', 2, 37.80, 'In Stock', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 'Brain on Fire: My Month of Madness', 'Nonfiction', 4, 49.32, 'In Stock', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 'Batman: Europa', 'Sequential Art', 5, 32.01, 'Out Of Stock', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 'Barefoot Contessa Back to Basics', 'Food and Drink', 2, 28.01, 'Out Of Stock', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 'Barefoot Contessa at Home: Everyday Recipes You\'ll Make Over and Over Again', 'Food and Drink', 2, 50.62, 'Out Of Stock', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 'Balloon Animals', 'Fiction', 2, 17.03, 'Out Of Stock', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 'Art Ops Vol. 1', 'Sequential Art', 5, 48.80, 'In Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 'Aristotle and Dante Discover the Secrets of the Universe (Aristotle and Dante Discover the Secrets of the Universe #1)', 'Young Adult', 4, 58.14, 'In Stock', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 'Angels Walking (Angels Walking #1)', 'Add a comment', 3, 34.20, 'In Stock', 69, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 'Angels & Demons (Robert Langdon #1)', 'Default', 5, 51.48, 'In Stock', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 'All the Light We Cannot See', 'Historical', 4, 29.87, 'In Stock', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 'Adulthood Is a Myth: A \"Sarah\'s Scribbles\" Collection', 'Sequential Art', 2, 10.90, 'In Stock', 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 'Abstract City', 'Nonfiction', 2, 56.37, 'In Stock', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 'A Time of Torment (Charlie Parker #14)', 'Mystery', 4, 48.35, 'Out Of Stock', 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 'A Study in Scarlet (Sherlock Holmes #1)', 'Mystery', 4, 16.73, 'Out Of Stock', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 'A Series of Catastrophes and Miracles: A True Story of Love, Science, and Cancer', 'Add a comment', 3, 56.48, 'In Stock', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 'A People\'s History of the United States', 'Add a comment', 1, 40.79, 'Out Of Stock', 98, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 'A Man Called Ove', 'Fiction', 5, 39.72, 'In Stock', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 'A Distant Mirror: The Calamitous 14th Century', 'History', 2, 14.58, 'Out Of Stock', 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 'A Brush of Wings (Angels Walking #3)', 'Add a comment', 4, 55.51, 'In Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, '1491: New Revelations of the Americas Before Columbus', 'History', 3, 21.80, 'In Stock', 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 'The Three Searches, Meaning, and the Story', 'Default', 4, 13.33, 'Out Of Stock', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 'Searching for Meaning in Gailana', 'Fantasy', 3, 38.73, 'In Stock', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 'Rook', 'Add a comment', 4, 37.86, 'Out Of Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 'My Kitchen Year: 136 Recipes That Saved My Life', 'Food and Drink', 4, 11.53, 'In Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, '13 Hours: The Inside Account of What Really Happened In Benghazi', 'Nonfiction', 4, 27.06, 'In Stock', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 'Will You Won\'t You Want Me?', 'Womens Fiction', 2, 13.86, 'Out Of Stock', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 'Tipping Point for Planet Earth: How Close Are We to the Edge?', 'Science', 2, 37.55, 'Out Of Stock', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 'The Star-Touched Queen', 'Fantasy', 5, 32.30, 'In Stock', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 'The Silent Sister (Riley MacPherson #1)', 'Fiction', 5, 46.29, 'In Stock', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `books` (`id`, `title`, `book_category`, `star_rating`, `price`, `stock`, `quantity`, `created_at`, `updated_at`) VALUES
(362, 'The Midnight Watch: A Novel of the Titanic and the Californian', 'Add a comment', 4, 26.20, 'Out Of Stock', 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 'The Lonely City: Adventures in the Art of Being Alone', 'Nonfiction', 3, 33.26, 'Out Of Stock', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 'The Gray Rhino: How to Recognize and Act on the Obvious Dangers We Ignore', 'Add a comment', 3, 59.15, 'Out Of Stock', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 'The Golden Condom: And Other Essays on Love Lost and Found', 'Psychology', 3, 39.43, 'In Stock', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 'The Epidemic (The Program 0.6)', 'Young Adult', 4, 14.44, 'In Stock', 41, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 'The Dinner Party', 'Fiction', 2, 56.54, 'Out Of Stock', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 'The Diary of a Young Girl', 'Nonfiction', 3, 59.90, 'Out Of Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 'The Children', 'Add a comment', 1, 11.88, 'In Stock', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 'Stars Above (The Lunar Chronicles #4.5)', 'Young Adult', 5, 48.05, 'In Stock', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 'Snatched: How A Drug Queen Went Undercover for the DEA and Was Kidnapped By Colombian Guerillas', 'Nonfiction', 3, 21.21, 'In Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 'Raspberry Pi Electronics Projects for the Evil Genius', 'Default', 2, 49.67, 'Out Of Stock', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 'Quench Your Own Thirst: Business Lessons Learned Over a Beer or Two', 'Business', 4, 43.14, 'In Stock', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 'Psycho: Sanitarium (Psycho #1.5)', 'Horror', 4, 36.97, 'In Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 'Poisonous (Max Revere Novels #3)', 'Mystery', 1, 26.80, 'In Stock', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 'One with You (Crossfire #5)', 'Add a comment', 5, 15.71, 'In Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 'No Love Allowed (Dodge Cove #1)', 'Young Adult', 4, 54.65, 'Out Of Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 'Murder at the 42nd Street Library (Raymond Ambler #1)', 'Mystery', 3, 54.36, 'In Stock', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 'Most Wanted', 'Mystery', 3, 35.28, 'Out Of Stock', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 'Love, Lies and Spies', 'Historical Fiction', 3, 20.55, 'In Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 'How to Speak Golf: An Illustrated Guide to Links Lingo', 'Default', 3, 58.32, 'Out Of Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 'Hide Away (Eve Duncan #20)', 'Mystery', 5, 11.84, 'Out Of Stock', 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 'Furiously Happy: A Funny Book About Horrible Things', 'Nonfiction', 1, 41.46, 'Out Of Stock', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 'Everyday Italian: 125 Simple and Delicious Recipes', 'Food and Drink', 4, 20.10, 'Out Of Stock', 81, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 'Equal Is Unfair: America\'s Misguided Fight Against Income Inequality', 'Politics', 5, 56.86, 'Out Of Stock', 81, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 'Eleanor & Park', 'Default', 5, 56.51, 'In Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 'Dirty (Dive Bar #1)', 'Romance', 5, 40.83, 'Out Of Stock', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 'Can You Keep a Secret? (Fear Street Relaunch #4)', 'Horror', 5, 48.64, 'In Stock', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 'Boar Island (Anna Pigeon #19)', 'Mystery', 1, 59.48, 'In Stock', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 'A Paris Apartment', 'Historical Fiction', 1, 39.01, 'Out Of Stock', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 'A la Mode: 120 Recipes in 60 Pairings: Pies, Tarts, Cakes, Crisps, and More Topped with Ice Cream, Gelato, Frozen Custard, and More', 'Food and Drink', 1, 38.77, 'Out Of Stock', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 'Troublemaker: Surviving Hollywood and Scientology', 'Default', 3, 48.39, 'In Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 'The Widow', 'Mystery', 5, 27.26, 'In Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 'The Sleep Revolution: Transforming Your Life, One Night at a Time', 'Nonfiction', 2, 11.68, 'Out Of Stock', 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 'The Improbability of Love', 'Fiction', 1, 59.45, 'Out Of Stock', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 'The Art of Startup Fundraising', 'Business', 1, 21.00, 'Out Of Stock', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 'Take Me Home Tonight (Rock Star Romance #3)', 'Romance', 2, 53.98, 'In Stock', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 'Sleeping Giants (Themis Files #1)', 'Science Fiction', 3, 48.74, 'Out Of Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 'Setting the World on Fire: The Brief, Astonishing Life of St. Catherine of Siena', 'Biography', 5, 21.15, 'In Stock', 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 'Playing with Fire', 'Mystery', 2, 13.71, 'Out Of Stock', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 'Off the Hook (Fishing for Trouble #1)', 'Romance', 4, 47.67, 'Out Of Stock', 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 'Mothering Sunday', 'Fiction', 4, 13.34, 'Out Of Stock', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 'Mother, Can You Not?', 'Nonfiction', 3, 16.89, 'In Stock', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 'M Train', 'Autobiography', 3, 27.18, 'Out Of Stock', 41, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 'Lilac Girls', 'Historical Fiction', 3, 17.28, 'Out Of Stock', 69, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 'Lies and Other Acts of Love', 'Fiction', 3, 45.14, 'Out Of Stock', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 'Lab Girl', 'Autobiography', 4, 40.85, 'Out Of Stock', 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 'Keep Me Posted', 'Womens Fiction', 2, 20.46, 'In Stock', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 'It Didn\'t Start with You: How Inherited Family Trauma Shapes Who We Are and How to End the Cycle', 'Psychology', 3, 56.27, 'In Stock', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 'Grey (Fifty Shades #4)', 'Womens Fiction', 2, 48.49, 'In Stock', 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 'Exit, Pursued by a Bear', 'Young Adult', 2, 51.34, 'In Stock', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 'Daredevils', 'Fiction', 4, 16.34, 'Out Of Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 'Cravings: Recipes for What You Want to Eat', 'Food and Drink', 3, 20.50, 'In Stock', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 'Born for This: How to Find the Work You Were Meant to Do', 'Business', 4, 21.59, 'Out Of Stock', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 'Arena', 'Science Fiction', 3, 21.36, 'In Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 'Adultery', 'Default', 3, 20.88, 'In Stock', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 'A Mother\'s Reckoning: Living in the Aftermath of Tragedy', 'Nonfiction', 3, 19.53, 'In Stock', 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 'A Gentleman\'s Position (Society of Gentlemen #3)', 'Romance', 1, 14.75, 'In Stock', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, '11/22/63', 'Fiction', 4, 48.48, 'Out Of Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, '10% Happier: How I Tamed the Voice in My Head, Reduced Stress Without Losing My Edge, and Found Self-Help That Actually Works', 'Nonfiction', 4, 24.57, 'Out Of Stock', 73, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, '10-Day Green Smoothie Cleanse: Lose Up to 15 Pounds in 10 Days!', 'Health', 2, 49.71, 'In Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 'Without Shame', 'Add a comment', 3, 48.27, 'In Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 'Watchmen', 'Add a comment', 1, 58.05, 'In Stock', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 'Unlimited Intuition Now', 'Default', 5, 58.87, 'Out Of Stock', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 'Underlying Notes', 'Default', 4, 11.82, 'In Stock', 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 'The Shack', 'Fiction', 1, 28.03, 'Out Of Stock', 88, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 'The New Brand You: Your New Image Makes the Sale for You', 'Default', 4, 44.05, 'Out Of Stock', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 'The Moosewood Cookbook: Recipes from Moosewood Restaurant, Ithaca, New York', 'Food and Drink', 5, 12.34, 'In Stock', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 'The Flowers Lied', 'Default', 2, 16.68, 'In Stock', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 'The Fabric of the Cosmos: Space, Time, and the Texture of Reality', 'Science', 2, 55.91, 'In Stock', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 'The Book of Mormon', 'Religion', 3, 24.57, 'Out Of Stock', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 'The Art and Science of Low Carbohydrate Living', 'Health', 2, 52.98, 'In Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 'The Alien Club', 'Young Adult', 2, 54.40, 'In Stock', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 'Suzie Snowflake: One beautiful flake (a self-esteem story)', 'Novels', 2, 54.81, 'Out Of Stock', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 'Nap-a-Roo', 'Childrens', 2, 25.08, 'In Stock', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 'NaNo What Now? Finding your editing process, revising your NaNoWriMo book and building a writing career through publishing and beyond', 'Default', 4, 10.41, 'In Stock', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 'Modern Day Fables', 'Default', 4, 47.44, 'In Stock', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 'If I Gave You God\'s Phone Number....: Searching for Spirituality in America', 'Spirituality', 4, 20.91, 'In Stock', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 'Fruits Basket, Vol. 9 (Fruits Basket #9)', 'Sequential Art', 1, 33.95, 'In Stock', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 'Dress Your Family in Corduroy and Denim', 'Humor', 3, 43.68, 'Out Of Stock', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 'Don\'t Forget Steven', 'Young Adult', 3, 33.23, 'Out Of Stock', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 'Chernobyl 01:23:40: The Incredible True Story of the World\'s Worst Nuclear Disaster', 'Nonfiction', 4, 35.92, 'Out Of Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 'Art and Fear: Observations on the Perils (and Rewards) of Artmaking', 'Art', 5, 48.63, 'Out Of Stock', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 'A Shard of Ice (The Black Symphony Saga #1)', 'Fantasy', 3, 56.63, 'In Stock', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 'A Hero\'s Curse (The Unseen Chronicles #1)', 'Add a comment', 4, 50.49, 'In Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, '23 Degrees South: A Tropical Tale of Changing Whether...', 'Add a comment', 4, 35.79, 'In Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 'Zero to One: Notes on Startups, or How to Build the Future', 'Nonfiction', 4, 34.06, 'Out Of Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 'Why Not Me?', 'Nonfiction', 5, 17.76, 'In Stock', 97, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 'When Breath Becomes Air', 'Nonfiction', 2, 39.36, 'In Stock', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 'Vagabonding: An Uncommon Guide to the Art of Long-Term World Travel', 'Travel', 2, 36.94, 'In Stock', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 'The Unlikely Pilgrimage of Harold Fry (Harold Fry #1)', 'Default', 1, 43.62, 'Out Of Stock', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 'The New Drawing on the Right Side of the Brain', 'Art', 2, 43.02, 'Out Of Stock', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 'The Midnight Assassin: Panic, Scandal, and the Hunt for America\'s First Serial Killer', 'Nonfiction', 5, 28.45, 'Out Of Stock', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 'The Martian (The Martian #1)', 'Default', 2, 41.39, 'In Stock', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 'The High Mountains of Portugal', 'Fiction', 2, 51.15, 'Out Of Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 'The Grownup', 'Short Stories', 2, 35.88, 'Out Of Stock', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 'The E-Myth Revisited: Why Most Small Businesses Don\'t Work and What to Do About It', 'Business', 3, 36.91, 'Out Of Stock', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 'South of Sunshine', 'Young Adult', 2, 28.93, 'In Stock', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 'Smarter Faster Better: The Secrets of Being Productive in Life and Business', 'Nonfiction', 3, 38.89, 'Out Of Stock', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 'Silence in the Dark (Logan Point #4)', 'Suspense', 3, 58.33, 'Out Of Stock', 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 'Shadows of the Past (Logan Point #1)', 'Christian Fiction', 5, 39.67, 'In Stock', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 'Roller Girl', 'Sequential Art', 3, 14.10, 'In Stock', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 'Rising Strong', 'Nonfiction', 4, 21.82, 'In Stock', 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 'Proofs of God: Classical Arguments from Tertullian to Barth', 'Philosophy', 1, 54.21, 'Out Of Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 'Please Kill Me: The Uncensored Oral History of Punk', 'Music', 1, 31.19, 'In Stock', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 'Out of Print: City Lights Spotlight No. 14', 'Poetry', 2, 53.64, 'In Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 'My Life Next Door (My Life Next Door )', 'Young Adult', 4, 36.39, 'Out Of Stock', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 'Miller\'s Valley', 'Fiction', 4, 58.54, 'In Stock', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 'Man\'s Search for Meaning', 'Nonfiction', 2, 29.48, 'In Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 'Love That Boy: What Two Presidents, Eight Road Trips, and My Son Taught Me About a Parent\'s Expectations', 'Nonfiction', 2, 25.06, 'In Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 'Living Forward: A Proven Plan to Stop Drifting and Get the Life You Want', 'Nonfiction', 3, 12.55, 'Out Of Stock', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 'Les Fleurs du Mal', 'Poetry', 4, 29.04, 'Out Of Stock', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 'Left Behind (Left Behind #1)', 'Default', 2, 40.72, 'Out Of Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 'Kill \'Em and Leave: Searching for James Brown and the American Soul', 'Music', 4, 45.05, 'Out Of Stock', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 'Kierkegaard: A Christian Missionary to Christians', 'Philosophy', 2, 47.13, 'In Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 'John Vassos: Industrial Design for Modern Life', 'Default', 2, 20.22, 'In Stock', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 'I\'ll Give You the Sun', 'Default', 3, 56.48, 'In Stock', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 'I Will Find You', 'Nonfiction', 1, 44.21, 'In Stock', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 'Hystopia: A Novel', 'Fiction', 5, 21.96, 'Out Of Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 'Howl and Other Poems', 'Poetry', 2, 40.45, 'Out Of Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 'History of Beauty', 'Art', 2, 10.29, 'In Stock', 73, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 'Heaven is for Real: A Little Boy\'s Astounding Story of His Trip to Heaven and Back', 'Default', 4, 52.86, 'In Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 'Future Shock (Future Shock #1)', 'Young Adult', 4, 55.65, 'Out Of Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 'Ender\'s Game (The Ender Quintet #1)', 'Default', 2, 43.64, 'In Stock', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 'Diary of a Citizen Scientist: Chasing Tiger Beetles and Other New Ways of Engaging the World', 'Science', 4, 28.41, 'In Stock', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 'Death by Leisure: A Cautionary Tale', 'Default', 2, 37.51, 'In Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 'Brilliant Beacons: A History of the American Lighthouse', 'History', 4, 11.45, 'Out Of Stock', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 'Brazen: The Courage to Find the You That\'s Been Hiding', 'Nonfiction', 3, 19.22, 'Out Of Stock', 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 'Between the World and Me', 'Nonfiction', 4, 56.91, 'In Stock', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 'Being Mortal: Medicine and What Matters in the End', 'Nonfiction', 3, 55.06, 'Out Of Stock', 88, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 'A Murder Over a Girl: Justice, Gender, Junior High', 'Nonfiction', 4, 13.20, 'In Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, '32 Yolks', 'Food and Drink', 5, 53.63, 'Out Of Stock', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, '\"Most Blessed of the Patriarchs\": Thomas Jefferson and the Empire of the Imagination', 'History', 4, 44.48, 'Out Of Stock', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 'You Are a Badass: How to Stop Doubting Your Greatness and Start Living an Awesome Life', 'Self Help', 1, 12.08, 'In Stock', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 'Wildlife of New York: A Five-Borough Coloring Book', 'Default', 5, 22.14, 'Out Of Stock', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, 'What Happened on Beale Street (Secrets of the South Mysteries #2)', 'Mystery', 2, 25.37, 'Out Of Stock', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 'Unreasonable Hope: Finding Faith in the God Who Brings Purpose to Your Pain', 'Spirituality', 1, 46.33, 'Out Of Stock', 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 'Under the Tuscan Sun', 'Travel', 1, 37.33, 'In Stock', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, 'Toddlers Are A**holes: It\'s Not Your Fault', 'Humor', 2, 25.55, 'Out Of Stock', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, 'The Year of Living Biblically: One Man\'s Humble Quest to Follow the Bible as Literally as Possible', 'Default', 4, 34.72, 'Out Of Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 'The Whale', 'Childrens', 4, 35.96, 'Out Of Stock', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 'The Story of Art', 'Art', 5, 41.14, 'In Stock', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 'The Origin of Species', 'Science', 3, 10.01, 'In Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 'The Great Gatsby', 'Default', 5, 36.05, 'Out Of Stock', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 'The Good Girl', 'Default', 1, 49.03, 'Out Of Stock', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 'The Glass Castle', 'Add a comment', 2, 16.24, 'Out Of Stock', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 'The Faith of Christopher Hitchens: The Restless Soul of the World\'s Most Notorious Atheist', 'Biography', 4, 39.55, 'Out Of Stock', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 'The Drowning Girls', 'Add a comment', 4, 35.67, 'In Stock', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, 'The Constant Princess (The Tudor Court #1)', 'Historical Fiction', 2, 16.62, 'Out Of Stock', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, 'The Bourne Identity (Jason Bourne #1)', 'Fiction', 1, 42.78, 'In Stock', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, 'The Bachelor Girl\'s Guide to Murder (Herringford and Watts Mysteries #1)', 'Mystery', 3, 52.30, 'Out Of Stock', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, 'The Art Book', 'Art', 2, 32.34, 'Out Of Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 'The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change', 'Default', 2, 33.17, 'In Stock', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 'Team of Rivals: The Political Genius of Abraham Lincoln', 'Add a comment', 2, 20.12, 'In Stock', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 'Steal Like an Artist: 10 Things Nobody Told You About Being Creative', 'Default', 2, 20.90, 'Out Of Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 'Sit, Stay, Love', 'Romance', 2, 20.90, 'In Stock', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 'Sister Dear', 'Fiction', 4, 40.20, 'In Stock', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 'Shrunken Treasures: Literary Classics, Short, Sweet, and Silly', 'Childrens', 1, 52.87, 'Out Of Stock', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 'Rich Dad, Poor Dad', 'Business', 2, 51.74, 'In Stock', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 'Raymie Nightingale', 'Childrens', 3, 34.41, 'Out Of Stock', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 'Playing from the Heart', 'Childrens', 1, 32.38, 'Out Of Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 'Nightstruck: A Novel', 'Young Adult', 4, 50.35, 'In Stock', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, 'Naturally Lean: 125 Nourishing Gluten-Free, Plant-Based Recipes--All Under 300 Calories', 'Food and Drink', 3, 11.38, 'In Stock', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, 'Meternity', 'Womens Fiction', 5, 43.58, 'In Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 'Memoirs of a Geisha', 'Fiction', 3, 49.67, 'Out Of Stock', 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 'Like Never Before (Walker Family #2)', 'Christian Fiction', 2, 28.77, 'Out Of Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 'Life of Pi', 'Default', 1, 13.22, 'Out Of Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 'Leave This Song Behind: Teen Poetry at Its Best', 'Poetry', 3, 51.17, 'Out Of Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 'King\'s Folly (The Kinsman Chronicles #1)', 'Fantasy', 3, 39.61, 'Out Of Stock', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 'John Adams', 'Add a comment', 1, 57.43, 'In Stock', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 'How to Cook Everything Vegetarian: Simple Meatless Recipes for Great Food (How to Cook Everything)', 'Food and Drink', 3, 46.01, 'Out Of Stock', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 'How to Be a Domestic Goddess: Baking and the Art of Comfort Cooking', 'Food and Drink', 3, 28.25, 'Out Of Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 'Good in Bed (Cannie Shapiro #1)', 'Add a comment', 3, 37.05, 'In Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 'Fruits Basket, Vol. 7 (Fruits Basket #7)', 'Sequential Art', 3, 19.57, 'In Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 'For the Love: Fighting for Grace in a World of Impossible Standards', 'Nonfiction', 2, 45.13, 'In Stock', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 'Finding God in the Ruins: How God Redeems Pain', 'Nonfiction', 1, 46.64, 'In Stock', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 'Every Heart a Doorway (Every Heart A Doorway #1)', 'Fantasy', 4, 12.16, 'In Stock', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 'Delivering the Truth (Quaker Midwife Mystery #1)', 'Mystery', 2, 20.89, 'In Stock', 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 'Counted With the Stars (Out from Egypt #1)', 'Christian Fiction', 3, 17.97, 'In Stock', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 'Chronicles, Vol. 1', 'Music', 2, 52.60, 'In Stock', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 'Blue Like Jazz: Nonreligious Thoughts on Christian Spirituality', 'Christian', 3, 25.77, 'In Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 'Benjamin Franklin: An American Life', 'Biography', 2, 48.19, 'Out Of Stock', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, 'At The Existentialist CafÃ©: Freedom, Being, and apricot cocktails with: Jean-Paul Sartre, Simone de Beauvoir, Albert Camus, Martin Heidegger, Edmund Husserl, Karl Jaspers, Maurice Merleau-Ponty and others', 'Philosophy', 4, 29.93, 'In Stock', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 'A Summer In Europe', 'Travel', 4, 44.34, 'Out Of Stock', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 'A Short History of Nearly Everything', 'History', 5, 52.40, 'Out Of Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 'A Gathering of Shadows (Shades of Magic #2)', 'Fantasy', 2, 44.81, 'In Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 'The Sound Of Love', 'Default', 2, 57.84, 'Out Of Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 'The Rise and Fall of the Third Reich: A History of Nazi Germany', 'History', 3, 39.67, 'Out Of Stock', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 'The Perks of Being a Wallflower', 'Default', 4, 55.02, 'In Stock', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 'The Mysterious Affair at Styles (Hercule Poirot #1)', 'Mystery', 4, 24.80, 'Out Of Stock', 76, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 'The Man Who Mistook His Wife for a Hat and Other Clinical Tales', 'Nonfiction', 4, 59.45, 'In Stock', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, 'The Makings of a Fatherless Child', 'Default', 2, 31.58, 'Out Of Stock', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, 'The Joy of Cooking', 'Add a comment', 2, 43.27, 'In Stock', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, 'The Invention of Wings', 'Historical Fiction', 3, 37.34, 'In Stock', 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 'The Hobbit (Middle-Earth Universe)', 'Default', 2, 17.80, 'Out Of Stock', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 'The Great Railway Bazaar', 'Travel', 5, 30.54, 'In Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 'The Golden Compass (His Dark Materials #1)', 'Add a comment', 4, 18.77, 'Out Of Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 'The God Delusion', 'Add a comment', 5, 46.85, 'In Stock', 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 'The Girl You Left Behind (The Girl You Left Behind #1)', 'Historical', 2, 15.79, 'In Stock', 81, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 'The Fellowship of the Ring (The Lord of the Rings #1)', 'Default', 4, 10.27, 'Out Of Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 'The Collected Poems of W.B. Yeats (The Collected Works of W.B. Yeats #1)', 'Poetry', 1, 15.42, 'Out Of Stock', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 'The Barefoot Contessa Cookbook', 'Food and Drink', 1, 59.92, 'Out Of Stock', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 'Tell the Wolves I\'m Home', 'Young Adult', 4, 50.96, 'Out Of Stock', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 'Ship Leaves Harbor: Essays on Travel by a Recovering Journeyman', 'Default', 5, 30.60, 'Out Of Stock', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, 'Pride and Prejudice', 'Add a comment', 2, 19.27, 'Out Of Stock', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, 'Musicophilia: Tales of Music and the Brain', 'Default', 4, 46.58, 'Out Of Stock', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, 'Mere Christianity', 'Add a comment', 3, 48.51, 'In Stock', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 'Me Before You (Me Before You #1)', 'Fiction', 1, 19.02, 'In Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 'In the Woods (Dublin Murder Squad #1)', 'Mystery', 1, 38.38, 'In Stock', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 'In Cold Blood', 'Nonfiction', 2, 49.98, 'In Stock', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 'How to Stop Worrying and Start Living', 'Self Help', 4, 46.49, 'Out Of Stock', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 'Give It Back', 'Thriller', 4, 18.32, 'In Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 'Girl, Interrupted', 'Nonfiction', 2, 42.14, 'In Stock', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 'Fun Home: A Family Tragicomic', 'Add a comment', 5, 56.59, 'In Stock', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 'Fruits Basket, Vol. 6 (Fruits Basket #6)', 'Sequential Art', 5, 20.96, 'In Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 'Deception Point', 'Fiction', 4, 40.32, 'Out Of Stock', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 'Death Note, Vol. 6: Give-and-Take (Death Note #6)', 'Sequential Art', 5, 36.39, 'In Stock', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 'Catherine the Great: Portrait of a Woman', 'History', 3, 58.55, 'Out Of Stock', 69, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 'Better Homes and Gardens New Cook Book', 'Food and Drink', 2, 39.61, 'Out Of Stock', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, 'An Unquiet Mind: A Memoir of Moods and Madness', 'Psychology', 3, 21.30, 'In Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 'A Year in Provence (Provence #1)', 'Travel', 2, 56.88, 'In Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 'World Without End (The Pillars of the Earth #2)', 'Historical Fiction', 4, 32.97, 'Out Of Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 'Will Grayson, Will Grayson (Will Grayson, Will Grayson)', 'Young Adult', 4, 47.31, 'Out Of Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 'Why Save the Bankers?: And Other Essays on Our Economic and Political Crisis', 'Nonfiction', 2, 48.67, 'In Stock', 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 'Where She Went (If I Stay #2)', 'Young Adult', 3, 41.73, 'In Stock', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 'What If?: Serious Scientific Answers to Absurd Hypothetical Questions', 'Default', 3, 53.68, 'In Stock', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 'Two Summers', 'Young Adult', 2, 14.64, 'Out Of Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 'This Is Your Brain on Music: The Science of a Human Obsession', 'Music', 5, 38.40, 'Out Of Stock', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 'The Secret Garden', 'Classics', 4, 15.08, 'In Stock', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 'The Raven King (The Raven Cycle #4)', 'Add a comment', 3, 30.57, 'In Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, 'The Raven Boys (The Raven Cycle #1)', 'Fantasy', 5, 57.74, 'In Stock', 76, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, 'The Power Greens Cookbook: 140 Delicious Superfood Recipes', 'Food and Drink', 5, 11.05, 'Out Of Stock', 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 'The Metamorphosis', 'Classics', 2, 28.58, 'In Stock', 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 'The Mathews Men: Seven Brothers and the War Against Hitler\'s U-boats', 'History', 2, 42.91, 'Out Of Stock', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 'The Little Paris Bookshop', 'Fiction', 4, 24.73, 'In Stock', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 'The Hiding Place', 'History', 3, 55.91, 'In Stock', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 'The Grand Design', 'Science', 4, 13.76, 'Out Of Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 'The Firm', 'Fiction', 3, 45.56, 'In Stock', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 'The Fault in Our Stars', 'Default', 3, 47.22, 'In Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 'The False Prince (The Ascendance Trilogy #1)', 'Fantasy', 2, 56.00, 'Out Of Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 'The Expatriates', 'Fiction', 1, 44.58, 'In Stock', 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 'The Dream Thieves (The Raven Cycle #2)', 'Default', 3, 34.50, 'In Stock', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, 'The Darkest Corners', 'Young Adult', 5, 11.33, 'In Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(604, 'The Crossover', 'Poetry', 2, 38.77, 'In Stock', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(605, 'The 5th Wave (The 5th Wave #1)', 'Default', 4, 11.83, 'In Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(606, 'Tell the Wind and Fire', 'Fantasy', 3, 45.51, 'In Stock', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(607, 'Tell Me Three Things', 'Young Adult', 3, 41.81, 'Out Of Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, 'Talking to Girls About Duran Duran: One Young Man\'s Quest for True Love and a Cooler Haircut', 'Nonfiction', 2, 25.15, 'In Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(609, 'Siddhartha', 'Fiction', 2, 34.22, 'Out Of Stock', 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(610, 'Shiver (The Wolves of Mercy Falls #1)', 'Default', 2, 16.23, 'In Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, 'Remember Me?', 'Default', 1, 11.48, 'In Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, 'Red Dragon (Hannibal Lecter #1)', 'Horror', 4, 23.37, 'Out Of Stock', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, 'Peak: Secrets from the New Science of Expertise', 'Science', 4, 16.28, 'Out Of Stock', 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 'My Mother Was Nuts', 'Nonfiction', 2, 31.63, 'Out Of Stock', 73, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 'Mexican Today: New and Rediscovered Recipes for Contemporary Kitchens', 'Food and Drink', 1, 24.91, 'Out Of Stock', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 'Maybe Something Beautiful: How Art Transformed a Neighborhood', 'Childrens', 4, 22.54, 'In Stock', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 'Lola and the Boy Next Door (Anna and the French Kiss #2)', 'Young Adult', 2, 23.63, 'In Stock', 39, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 'Logan Kade (Fallen Crest High #5.5)', 'Academic', 3, 13.12, 'Out Of Stock', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, 'Last One Home (New Beginnings #1)', 'Fiction', 3, 59.98, 'Out Of Stock', 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, 'Killing Floor (Jack Reacher #1)', 'Thriller', 5, 31.49, 'In Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, 'Kill the Boy Band', 'Young Adult', 2, 15.52, 'Out Of Stock', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 'Isla and the Happily Ever After (Anna and the French Kiss #3)', 'Young Adult', 2, 48.13, 'Out Of Stock', 76, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 'If I Stay (If I Stay #1)', 'Default', 3, 38.13, 'Out Of Stock', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 'I Know Why the Caged Bird Sings (Maya Angelou\'s Autobiography #1)', 'Default', 2, 36.55, 'Out Of Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 'Harry Potter and the Deathly Hallows (Harry Potter #7)', 'Default', 4, 23.32, 'Out Of Stock', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 'Fruits Basket, Vol. 5 (Fruits Basket #5)', 'Sequential Art', 4, 16.33, 'Out Of Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 'Foundation (Foundation (Publication Order) #1)', 'Science Fiction', 4, 32.42, 'Out Of Stock', 69, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 'Fool Me Once', 'Default', 1, 16.96, 'In Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 'Find Her (Detective D.D. Warren #8)', 'Add a comment', 2, 22.37, 'In Stock', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 'Evicted: Poverty and Profit in the American City', 'Add a comment', 4, 42.27, 'In Stock', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 'Drama', 'Default', 2, 38.70, 'In Stock', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 'Dracula the Un-Dead', 'Horror', 4, 35.63, 'In Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, 'Digital Fortress', 'Fiction', 2, 58.00, 'Out Of Stock', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 'Death Note, Vol. 5: Whiteout (Death Note #5)', 'Sequential Art', 4, 52.41, 'In Stock', 39, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(635, 'Data, A Love Story: How I Gamed Online Dating to Meet My Match', 'Nonfiction', 1, 32.35, 'Out Of Stock', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 'Critique of Pure Reason', 'Philosophy', 5, 20.75, 'In Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 'Booked', 'Poetry', 4, 17.49, 'Out Of Stock', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 'Blue Lily, Lily Blue (The Raven Cycle #3)', 'Default', 4, 34.13, 'In Stock', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 'Approval Junkie: Adventures in Caring Too Much', 'Autobiography', 2, 58.81, 'Out Of Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, 'An Abundance of Katherines', 'Young Adult', 4, 10.00, 'Out Of Stock', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, 'America\'s War for the Greater Middle East: A Military History', 'History', 2, 51.22, 'Out Of Stock', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, 'Alight (The Generations Trilogy #2)', 'Default', 3, 58.59, 'Out Of Stock', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 'A Girl\'s Guide to Moving On (New Beginnings #2)', 'Romance', 2, 31.30, 'Out Of Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 'A Game of Thrones (A Song of Ice and Fire #1)', 'Add a comment', 1, 46.42, 'In Stock', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 'A Feast for Crows (A Song of Ice and Fire #4)', 'Fantasy', 2, 17.21, 'In Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 'A Clash of Kings (A Song of Ice and Fire #2)', 'Add a comment', 3, 10.79, 'In Stock', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, 'Vogue Colors A to Z: A Fashion Coloring Book', 'Default', 5, 52.35, 'Out Of Stock', 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 'The Shining (The Shining #1)', 'Default', 5, 27.88, 'Out Of Stock', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 'The Pilgrim\'s Progress', 'Classics', 4, 50.26, 'In Stock', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 'The Perfect Play (Play by Play #1)', 'Romance', 4, 59.99, 'In Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 'The Passion of Dolssa', 'Historical Fiction', 2, 28.32, 'Out Of Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 'The Jazz of Physics: The Secret Link Between Music and the Structure of the Universe', 'Nonfiction', 1, 38.71, 'In Stock', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, 'The Hunger Games (The Hunger Games #1)', 'Default', 4, 29.85, 'In Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 'The Hound of the Baskervilles (Sherlock Holmes #5)', 'Classics', 2, 14.82, 'Out Of Stock', 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 'The Gunning of America: Business and the Making of American Gun Culture', 'Nonfiction', 4, 16.81, 'Out Of Stock', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 'The Geography of Bliss: One Grump\'s Search for the Happiest Places in the World', 'Nonfiction', 4, 28.23, 'In Stock', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 'The Demonists (Demonist #1)', 'Fantasy', 2, 52.11, 'Out Of Stock', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, 'The Demon Prince of Momochi House, Vol. 4 (The Demon Prince of Momochi House #4)', 'Sequential Art', 4, 27.88, 'In Stock', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, 'The Bone Hunters (Lexy Vaughan & Steven Macaulay #2)', 'Thriller', 2, 59.71, 'Out Of Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 'The Beast (Black Dagger Brotherhood #14)', 'Fantasy', 2, 46.08, 'In Stock', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 'Some Women', 'Womens Fiction', 4, 13.73, 'In Stock', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 'Shopaholic Ties the Knot (Shopaholic #3)', 'Womens Fiction', 3, 48.39, 'Out Of Stock', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 'Paper and Fire (The Great Library #2)', 'Fantasy', 3, 49.45, 'In Stock', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 'Outlander (Outlander #1)', 'Default', 2, 19.67, 'In Stock', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 'Orchestra of Exiles: The Story of Bronislaw Huberman, the Israel Philharmonic, and the One Thousand Jews He Saved from Nazi Horrors', 'Music', 3, 12.36, 'Out Of Stock', 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 'No One Here Gets Out Alive', 'Music', 1, 20.02, 'Out Of Stock', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 'Night Shift (Night Shift #1-20)', 'Horror', 1, 12.75, 'Out Of Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(668, 'Needful Things', 'Horror', 5, 47.51, 'Out Of Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(669, 'Mockingjay (The Hunger Games #3)', 'Default', 4, 20.44, 'Out Of Stock', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(670, 'Misery', 'Horror', 3, 34.79, 'Out Of Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, 'Little Women (Little Women #1)', 'Classics', 3, 28.07, 'In Stock', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 'It', 'Horror', 1, 25.01, 'Out Of Stock', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 'Harry Potter and the Sorcerer\'s Stone (Harry Potter #1)', 'Default', 4, 13.90, 'In Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 'Harry Potter and the Prisoner of Azkaban (Harry Potter #3)', 'Young Adult', 2, 24.17, 'Out Of Stock', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 'Harry Potter and the Order of the Phoenix (Harry Potter #5)', 'Fantasy', 4, 31.63, 'Out Of Stock', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 'Harry Potter and the Half-Blood Prince (Harry Potter #6)', 'Fantasy', 5, 48.75, 'In Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 'Harry Potter and the Chamber of Secrets (Harry Potter #2)', 'Fantasy', 3, 14.74, 'In Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 'Gone with the Wind', 'Classics', 3, 32.49, 'In Stock', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 'God Is Not Great: How Religion Poisons Everything', 'Nonfiction', 3, 27.80, 'Out Of Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, 'Girl With a Pearl Earring', 'Historical Fiction', 4, 26.77, 'Out Of Stock', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 'Fruits Basket, Vol. 4 (Fruits Basket #4)', 'Sequential Art', 2, 50.44, 'In Stock', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 'Far From True (Promise Falls Trilogy #2)', 'Thriller', 4, 34.93, 'In Stock', 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 'Dark Lover (Black Dagger Brotherhood #1)', 'Romance', 3, 12.87, 'Out Of Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, 'Confessions of a Shopaholic (Shopaholic #1)', 'Default', 4, 48.94, 'Out Of Stock', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, 'Changing the Game (Play by Play #2)', 'Romance', 1, 13.38, 'In Stock', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, 'Candide', 'Classics', 2, 58.63, 'Out Of Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, 'Can You Keep a Secret?', 'Womens Fiction', 4, 21.94, 'Out Of Stock', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 'Atlas Shrugged', 'Fiction', 4, 26.58, 'In Stock', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, 'Animal Farm', 'Classics', 1, 57.22, 'In Stock', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 'A Walk to Remember', 'Romance', 1, 56.43, 'Out Of Stock', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 'A New Earth: Awakening to Your Life\'s Purpose', 'Spirituality', 2, 55.65, 'Out Of Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(692, 'A History of God: The 4,000-Year Quest of Judaism, Christianity, and Islam', 'Religion', 2, 27.62, 'In Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(693, '\'Salem\'s Lot', 'Horror', 3, 49.56, 'In Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(694, 'Zero History (Blue Ant #3)', 'Default', 4, 34.77, 'In Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(695, 'Wuthering Heights', 'Classics', 2, 17.73, 'Out Of Stock', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(696, 'World War Z: An Oral History of the Zombie War', 'Default', 2, 21.80, 'In Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(697, 'Wild: From Lost to Found on the Pacific Crest Trail', 'Default', 2, 46.02, 'Out Of Stock', 73, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(698, 'Where\'d You Go, Bernadette', 'Default', 1, 18.13, 'Out Of Stock', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(699, 'When You Are Engulfed in Flames', 'Humor', 1, 30.89, 'Out Of Stock', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(700, 'We the People: The Modern-Day Figures Who Have Reshaped and Affirmed the Founding Fathers\' Vision of America', 'Nonfiction', 2, 31.95, 'Out Of Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(701, 'We Are All Completely Beside Ourselves', 'Contemporary', 3, 24.04, 'In Stock', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(702, 'Walk the Edge (Thunder Road #2)', 'Young Adult', 3, 32.36, 'In Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(703, 'Voyager (Outlander #3)', 'Historical Fiction', 5, 21.07, 'In Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(704, 'Very Good Lives: The Fringe Benefits of Failure and the Importance of Imagination', 'Nonfiction', 2, 50.66, 'Out Of Stock', 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(705, 'Vegan Vegetarian Omnivore: Dinner for Everyone at the Table', 'Food and Drink', 2, 13.66, 'Out Of Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(706, 'Unstuffed: Decluttering Your Home, Mind, and Soul', 'Nonfiction', 4, 58.09, 'In Stock', 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(707, 'Under the Banner of Heaven: A Story of Violent Faith', 'Nonfiction', 2, 30.00, 'In Stock', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(708, 'Two Boys Kissing', 'Young Adult', 1, 32.74, 'Out Of Stock', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(709, 'Twilight (Twilight #1)', 'Default', 2, 41.93, 'In Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(710, 'Twenties Girl', 'Womens Fiction', 2, 42.80, 'In Stock', 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(711, 'Trespassing Across America: One Man\'s Epic, Never-Done-Before (and Sort of Illegal) Hike Across the Heartland', 'Nonfiction', 4, 53.51, 'In Stock', 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(712, 'Three-Martini Lunch', 'Fiction', 2, 23.21, 'In Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(713, 'Thinking, Fast and Slow', 'Psychology', 3, 21.14, 'Out Of Stock', 98, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(714, 'The Wild Robot', 'Childrens', 4, 56.07, 'Out Of Stock', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(715, 'The Wicked + The Divine, Vol. 3: Commercial Suicide (The Wicked + The Divine)', 'Sequential Art', 4, 14.41, 'In Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(716, 'The Undomestic Goddess', 'Womens Fiction', 5, 45.75, 'Out Of Stock', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(717, 'The Travelers', 'Thriller', 3, 15.77, 'Out Of Stock', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(718, 'The Tipping Point: How Little Things Can Make a Big Difference', 'Add a comment', 2, 10.02, 'In Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(719, 'The Thing About Jellyfish', 'Childrens', 1, 48.77, 'Out Of Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(720, 'The Stand', 'Horror', 3, 57.86, 'In Stock', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(721, 'The Smitten Kitchen Cookbook', 'Food and Drink', 4, 23.59, 'Out Of Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(722, 'The Silkworm (Cormoran Strike #2)', 'Mystery', 4, 23.05, 'Out Of Stock', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(723, 'The Sandman, Vol. 3: Dream Country (The Sandman (volumes) #3)', 'Sequential Art', 2, 55.55, 'In Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(724, 'The Rose & the Dagger (The Wrath and the Dawn #2)', 'Fantasy', 4, 58.64, 'Out Of Stock', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(725, 'The Road to Little Dribbling: Adventures of an American in Britain (Notes From a Small Island #2)', 'Travel', 4, 23.21, 'Out Of Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(726, 'The Rise of Theodore Roosevelt (Theodore Roosevelt #1)', 'Biography', 4, 42.57, 'Out Of Stock', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(727, 'The Restaurant at the End of the Universe (Hitchhiker\'s Guide to the Galaxy #2)', 'Science Fiction', 5, 10.92, 'In Stock', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `books` (`id`, `title`, `book_category`, `star_rating`, `price`, `stock`, `quantity`, `created_at`, `updated_at`) VALUES
(728, 'The Rest Is Noise: Listening to the Twentieth Century', 'Add a comment', 3, 34.77, 'In Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(729, 'The Red Tent', 'Historical Fiction', 5, 35.66, 'In Stock', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(730, 'The Purpose Driven Life: What on Earth Am I Here for?', 'Add a comment', 4, 37.19, 'In Stock', 87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(731, 'The Purest Hook (Second Circle Tattoos #3)', 'Romance', 2, 12.25, 'Out Of Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(732, 'The Picture of Dorian Gray', 'Classics', 3, 29.70, 'In Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(733, 'The Paris Wife', 'Default', 4, 36.80, 'In Stock', 81, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(734, 'The Obsession', 'Romance', 5, 45.43, 'In Stock', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(735, 'The Nightingale', 'Fiction', 5, 26.26, 'Out Of Stock', 39, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(736, 'The New Guy (and Other Senior Year Distractions)', 'Young Adult', 3, 44.92, 'Out Of Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(737, 'The Nanny Diaries (Nanny #1)', 'Womens Fiction', 2, 52.53, 'Out Of Stock', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(738, 'The Name of God is Mercy', 'Nonfiction', 1, 37.25, 'Out Of Stock', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(739, 'The Maze Runner (The Maze Runner #1)', 'Default', 5, 20.93, 'Out Of Stock', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(740, 'The Lover\'s Dictionary', 'Default', 2, 58.09, 'In Stock', 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(741, 'The Lonely Ones', 'Childrens', 5, 43.59, 'In Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(742, 'The Lean Startup: How Today\'s Entrepreneurs Use Continuous Innovation to Create Radically Successful Businesses', 'Business', 3, 33.92, 'Out Of Stock', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(743, 'The Last Painting of Sara de Vos', 'Historical Fiction', 2, 55.55, 'Out Of Stock', 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(744, 'The Land of 10,000 Madonnas', 'Young Adult', 3, 29.64, 'In Stock', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(745, 'The Infinities', 'Fiction', 2, 27.41, 'In Stock', 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(746, 'The Husband\'s Secret', 'Fiction', 1, 52.51, 'In Stock', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(747, 'The Hitchhiker\'s Guide to the Galaxy (Hitchhiker\'s Guide to the Galaxy #1)', 'Add a comment', 3, 47.80, 'Out Of Stock', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(748, 'The Guns of August', 'History', 3, 14.54, 'Out Of Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(749, 'The Guernsey Literary and Potato Peel Pie Society', 'Historical Fiction', 2, 49.53, 'Out Of Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(750, 'The Goldfinch', 'Default', 4, 43.58, 'Out Of Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(751, 'The Giver (The Giver Quartet #1)', 'Default', 3, 12.30, 'In Stock', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(752, 'The Girl with All the Gifts', 'Horror', 4, 49.47, 'Out Of Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(753, 'The Girl Who Played with Fire (Millennium Trilogy #2)', 'Default', 3, 22.14, 'In Stock', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(754, 'The Girl Who Kicked the Hornet\'s Nest (Millennium Trilogy #3)', 'Add a comment', 2, 57.48, 'Out Of Stock', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(755, 'The Exiled', 'Mystery', 1, 43.45, 'In Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(756, 'The End of Faith: Religion, Terror, and the Future of Reason', 'Add a comment', 4, 22.13, 'Out Of Stock', 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(757, 'The Elegant Universe: Superstrings, Hidden Dimensions, and the Quest for the Ultimate Theory', 'Science', 4, 13.03, 'In Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(758, 'The Disappearing Spoon: And Other True Tales of Madness, Love, and the History of the World from the Periodic Table of the Elements', 'Science', 4, 57.35, 'In Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(759, 'The Devil Wears Prada (The Devil Wears Prada #1)', 'Womens Fiction', 4, 44.29, 'In Stock', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(760, 'The Demon-Haunted World: Science as a Candle in the Dark', 'Default', 1, 52.25, 'In Stock', 41, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(761, 'The Day the Crayons Came Home (Crayons)', 'Childrens', 4, 26.33, 'In Stock', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(762, 'The Da Vinci Code (Robert Langdon #2)', 'Fiction', 4, 22.96, 'In Stock', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(763, 'The Cuckoo\'s Calling (Cormoran Strike #1)', 'Mystery', 3, 19.21, 'In Stock', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(764, 'The Complete Stories and Poems (The Works of Edgar Allan Poe [Cameo Edition])', 'Classics', 4, 26.78, 'Out Of Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(765, 'The Complete Poems', 'Add a comment', 5, 41.32, 'In Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(766, 'The Catcher in the Rye', 'Add a comment', 3, 24.55, 'Out Of Stock', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(767, 'The Cat in the Hat (Beginner Books B-1)', 'Childrens', 2, 16.26, 'Out Of Stock', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(768, 'The Case for Christ (Cases for Christianity)', 'Add a comment', 3, 47.84, 'Out Of Stock', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(769, 'The Book Thief', 'Default', 2, 53.49, 'In Stock', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(770, 'The Book of Basketball: The NBA According to The Sports Guy', 'Sports and Games', 1, 44.84, 'In Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(771, 'The Blind Side: Evolution of a Game', 'Add a comment', 4, 53.71, 'In Stock', 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(772, 'The Autobiography of Malcolm X', 'Default', 3, 23.43, 'In Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(773, 'The Art of Simple Food: Notes, Lessons, and Recipes from a Delicious Revolution', 'Food and Drink', 2, 34.32, 'In Stock', 69, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(774, 'The Art of Fielding', 'Fiction', 2, 22.10, 'In Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(775, 'Surely You\'re Joking, Mr. Feynman!: Adventures of a Curious Character', 'Science', 2, 25.83, 'Out Of Stock', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(776, 'Stiff: The Curious Lives of Human Cadavers', 'Nonfiction', 1, 36.74, 'In Stock', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(777, 'Spilled Milk: Based on a True Story', 'Nonfiction', 3, 49.51, 'In Stock', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(778, 'Something Borrowed (Darcy & Rachel #1)', 'Womens Fiction', 2, 48.96, 'In Stock', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(779, 'Something Blue (Darcy & Rachel #2)', 'Womens Fiction', 4, 54.62, 'Out Of Stock', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(780, 'Soldier (Talon #3)', 'Fantasy', 2, 24.72, 'Out Of Stock', 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(781, 'Shopaholic & Baby (Shopaholic #5)', 'Default', 4, 46.45, 'Out Of Stock', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(782, 'Seven Days in the Art World', 'Add a comment', 5, 52.33, 'Out Of Stock', 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(783, 'Seven Brief Lessons on Physics', 'Science', 3, 30.60, 'Out Of Stock', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(784, 'Scarlet (The Lunar Chronicles #2)', 'Young Adult', 2, 14.57, 'In Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(785, 'Sarah\'s Key', 'Add a comment', 2, 46.29, 'In Stock', 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(786, 'Saga, Volume 3 (Saga (Collected Editions) #3)', 'Sequential Art', 5, 21.57, 'In Stock', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(787, 'Running with Scissors', 'Autobiography', 2, 12.91, 'Out Of Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(788, 'Rogue Lawyer (Rogue Lawyer #1)', 'Add a comment', 5, 50.11, 'In Stock', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(789, 'Rise of the Rocket Girls: The Women Who Propelled Us, from Missiles to the Moon to Mars', 'Nonfiction', 2, 41.67, 'In Stock', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(790, 'Rework', 'Business', 1, 44.88, 'In Stock', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(791, 'Reservations for Two', 'Romance', 1, 11.10, 'In Stock', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(792, 'Red: The True Story of Red Riding Hood', 'Childrens', 2, 28.54, 'In Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(793, 'Ready Player One', 'Science Fiction', 3, 19.07, 'In Stock', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(794, 'Quiet: The Power of Introverts in a World That Can\'t Stop Talking', 'Default', 3, 43.55, 'In Stock', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(795, 'Prodigy: The Graphic Novel (Legend: The Graphic Novel #2)', 'Sequential Art', 4, 43.63, 'Out Of Stock', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(796, 'Persepolis: The Story of a Childhood (Persepolis #1-2)', 'Sequential Art', 5, 39.13, 'Out Of Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(797, 'Packing for Mars: The Curious Science of Life in the Void', 'Default', 4, 56.68, 'Out Of Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(798, 'Outliers: The Story of Success', 'Nonfiction', 4, 14.16, 'Out Of Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(799, 'Original Fake', 'Sequential Art', 2, 31.45, 'In Stock', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(800, 'Orange Is the New Black', 'Default', 5, 24.61, 'Out Of Stock', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(801, 'One for the Money (Stephanie Plum #1)', 'Default', 1, 32.87, 'Out Of Stock', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(802, 'Notes from a Small Island (Notes From a Small Island #1)', 'Nonfiction', 2, 40.17, 'In Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, 'Night (The Night Trilogy #1)', 'Nonfiction', 3, 13.51, 'Out Of Stock', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(804, 'Neither Here nor There: Travels in Europe', 'Travel', 4, 38.95, 'In Stock', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(805, 'Naked', 'Humor', 2, 31.69, 'In Stock', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(806, 'Morning Star (Red Rising #3)', 'Default', 3, 29.40, 'In Stock', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(807, 'Miracles from Heaven: A Little Girl, Her Journey to Heaven, and Her Amazing Story of Healing', 'Nonfiction', 4, 57.83, 'In Stock', 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(808, 'Midnight Riot (Peter Grant/ Rivers of London - books #1)', 'Fantasy', 4, 55.46, 'In Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(809, 'Me Talk Pretty One Day', 'Autobiography', 3, 57.60, 'Out Of Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(810, 'Manuscript Found in Accra', 'Add a comment', 2, 34.98, 'In Stock', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(811, 'Lust & Wonder', 'Autobiography', 5, 11.87, 'Out Of Stock', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(812, 'Lila (Gilead #3)', 'Fiction', 2, 12.47, 'Out Of Stock', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(813, 'Life, the Universe and Everything (Hitchhiker\'s Guide to the Galaxy #3)', 'Science Fiction', 4, 33.26, 'In Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(814, 'Life Without a Recipe', 'Autobiography', 2, 59.04, 'In Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(815, 'Life After Life', 'Default', 3, 26.13, 'Out Of Stock', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(816, 'Letter to a Christian Nation', 'Nonfiction', 2, 22.20, 'Out Of Stock', 69, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(817, 'Let\'s Pretend This Never Happened: A Mostly True Memoir', 'Nonfiction', 2, 45.11, 'Out Of Stock', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(818, 'Legend (Legend #1)', 'Young Adult', 2, 43.69, 'In Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(819, 'Lean In: Women, Work, and the Will to Lead', 'Default', 2, 25.02, 'In Stock', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(820, 'Lamb: The Gospel According to Biff, Christ\'s Childhood Pal', 'Humor', 3, 55.50, 'In Stock', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(821, 'Lady Renegades (Rebel Belle #3)', 'Young Adult', 2, 53.04, 'Out Of Stock', 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(822, 'Jurassic Park (Jurassic Park #1)', 'Fiction', 2, 44.97, 'In Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(823, 'It\'s Never Too Late to Begin Again: Discovering Creativity and Meaning at Midlife and Beyond', 'Nonfiction', 1, 42.38, 'In Stock', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(824, 'Is Everyone Hanging Out Without Me? (And Other Concerns)', 'Default', 3, 20.11, 'Out Of Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(825, 'Into the Wild', 'Nonfiction', 3, 56.70, 'Out Of Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(826, 'Inferno (Robert Langdon #4)', 'Fiction', 1, 41.00, 'In Stock', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(827, 'In the Garden of Beasts: Love, Terror, and an American Family in Hitler\'s Berlin', 'Nonfiction', 4, 28.85, 'In Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(828, 'If I Run (If I Run #1)', 'Christian Fiction', 3, 49.97, 'In Stock', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(829, 'I\'ve Got Your Number', 'Womens Fiction', 4, 19.69, 'Out Of Stock', 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(830, 'I Am Malala: The Girl Who Stood Up for Education and Was Shot by the Taliban', 'Nonfiction', 5, 28.88, 'In Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(831, 'Hungry Girl Clean & Hungry: Easy All-Natural Recipes for Healthy Eating in the Real World', 'Food and Drink', 2, 33.14, 'In Stock', 39, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(832, 'House of Lost Worlds: Dinosaurs, Dynasties, and the Story of Life on Earth', 'History', 5, 43.70, 'Out Of Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(833, 'House of Leaves', 'Horror', 4, 54.89, 'Out Of Stock', 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(834, 'Horrible Bear!', 'Childrens', 2, 37.52, 'Out Of Stock', 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(835, 'Holidays on Ice', 'Humor', 1, 51.07, 'In Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(836, 'Heir to the Sky', 'Fantasy', 3, 44.07, 'Out Of Stock', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(837, 'Green Eggs and Ham (Beginner Books B-16)', 'Childrens', 2, 10.79, 'In Stock', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(838, 'Grayson, Vol 3: Nemesis (Grayson #3)', 'Sequential Art', 2, 42.72, 'Out Of Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(839, 'Gratitude', 'Nonfiction', 3, 26.66, 'Out Of Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(840, 'Gone Girl', 'Default', 4, 37.60, 'In Stock', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(841, 'Golden (Heart of Dread #3)', 'Young Adult', 5, 42.21, 'In Stock', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(842, 'Girl in the Blue Coat', 'Historical Fiction', 3, 46.83, 'Out Of Stock', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(843, 'Fruits Basket, Vol. 3 (Fruits Basket #3)', 'Sequential Art', 1, 45.17, 'Out Of Stock', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(844, 'Friday Night Lights: A Town, a Team, and a Dream', 'Sports and Games', 2, 51.22, 'Out Of Stock', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(845, 'Fire Bound (Sea Haven/Sisters of the Heart #5)', 'Add a comment', 2, 21.28, 'Out Of Stock', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(846, 'Fifty Shades Freed (Fifty Shades #3)', 'Adult Fiction', 2, 15.36, 'In Stock', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(847, 'Fellside', 'Default', 5, 38.62, 'In Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(848, 'Extreme Prey (Lucas Davenport #26)', 'Mystery', 3, 25.40, 'Out Of Stock', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(849, 'Eragon (The Inheritance Cycle #1)', 'Fantasy', 5, 43.87, 'In Stock', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(850, 'Eclipse (Twilight #3)', 'Default', 5, 18.74, 'Out Of Stock', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(851, 'Dune (Dune #1)', 'Science Fiction', 4, 54.86, 'Out Of Stock', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(852, 'Dracula', 'Default', 4, 52.62, 'In Stock', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(853, 'Do Androids Dream of Electric Sheep? (Blade Runner #1)', 'Science Fiction', 1, 51.48, 'Out Of Stock', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(854, 'Disrupted: My Misadventure in the Start-Up Bubble', 'Nonfiction', 5, 15.28, 'Out Of Stock', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(855, 'Dead Wake: The Last Crossing of the Lusitania', 'Default', 3, 39.24, 'In Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(856, 'David and Goliath: Underdogs, Misfits, and the Art of Battling Giants', 'Default', 3, 17.81, 'Out Of Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(857, 'Darkfever (Fever #1)', 'Fantasy', 3, 56.02, 'In Stock', 81, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(858, 'Dark Places', 'Default', 3, 23.90, 'In Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(859, 'Crazy Rich Asians (Crazy Rich Asians #1)', 'Fiction', 5, 49.13, 'In Stock', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(860, 'Counting Thyme', 'Childrens', 3, 10.62, 'Out Of Stock', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(861, 'Cosmos', 'Add a comment', 5, 36.17, 'Out Of Stock', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(862, 'Civilization and Its Discontents', 'Psychology', 1, 59.95, 'Out Of Stock', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(863, 'Cinder (The Lunar Chronicles #1)', 'Young Adult', 2, 26.09, 'Out Of Stock', 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(864, 'Catastrophic Happiness: Finding Joy in Childhood\'s Messy Years', 'Parenting', 4, 37.35, 'Out Of Stock', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(865, 'Career of Evil (Cormoran Strike #3)', 'Mystery', 3, 24.72, 'Out Of Stock', 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(866, 'Breaking Dawn (Twilight #4)', 'Default', 2, 35.28, 'In Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(867, 'Brave Enough', 'Nonfiction', 3, 51.32, 'In Stock', 69, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(868, 'Boy Meets Boy', 'Young Adult', 2, 21.12, 'In Stock', 93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(869, 'Born to Run: A Hidden Tribe, Superathletes, and the Greatest Race the World Has Never Seen', 'Nonfiction', 4, 27.35, 'In Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(870, 'Blink: The Power of Thinking Without Thinking', 'Nonfiction', 1, 21.74, 'Out Of Stock', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(871, 'Black Flags: The Rise of ISIS', 'Nonfiction', 4, 40.87, 'In Stock', 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(872, 'Black Butler, Vol. 1 (Black Butler #1)', 'Sequential Art', 3, 49.31, 'Out Of Stock', 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(873, 'Big Little Lies', 'Fiction', 4, 22.11, 'In Stock', 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(874, 'Between Shades of Gray', 'Historical Fiction', 3, 20.79, 'Out Of Stock', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(875, 'Best of My Love (Fool\'s Gold #20)', 'Romance', 4, 27.41, 'Out Of Stock', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(876, 'Beowulf', 'Classics', 2, 38.35, 'Out Of Stock', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(877, 'Beautiful Creatures (Caster Chronicles #1)', 'Default', 2, 21.55, 'Out Of Stock', 91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(878, 'Awkward', 'Sequential Art', 3, 38.02, 'Out Of Stock', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(879, 'Ash', 'Fantasy', 1, 22.06, 'Out Of Stock', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(880, 'Are We There Yet?', 'Childrens', 2, 10.66, 'Out Of Stock', 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(881, 'Are We Smart Enough to Know How Smart Animals Are?', 'Nonfiction', 1, 56.58, 'Out Of Stock', 99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(882, 'Annie on My Mind', 'Young Adult', 4, 36.83, 'In Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(883, 'And Then There Were None', 'Classics', 3, 35.01, 'Out Of Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(884, 'A Walk in the Woods: Rediscovering America on the Appalachian Trail', 'Nonfiction', 4, 30.48, 'Out Of Stock', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(885, 'A Visit from the Goon Squad', 'Default', 4, 14.08, 'In Stock', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(886, 'A Storm of Swords (A Song of Ice and Fire #3)', 'Fantasy', 4, 31.22, 'In Stock', 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(887, 'A Heartbreaking Work of Staggering Genius', 'Autobiography', 2, 54.29, 'In Stock', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(888, '8 Keys to Mental Health Through Exercise', 'Psychology', 1, 31.04, 'In Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(889, '#GIRLBOSS', 'Add a comment', 4, 50.96, 'In Stock', 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(890, 'The Suffragettes (Little Black Classics, #96)', 'Nonfiction', 2, 11.89, 'Out Of Stock', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(891, 'The Sense of an Ending', 'Add a comment', 2, 31.38, 'In Stock', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(892, 'The Sandman, Vol. 2: The Doll\'s House (The Sandman (volumes) #2)', 'Sequential Art', 2, 54.81, 'Out Of Stock', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(893, 'The Course of Love', 'Fiction', 2, 16.78, 'Out Of Stock', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(894, 'Sugar Rush (Offensive Line #2)', 'Sports and Games', 3, 24.42, 'In Stock', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(895, 'Saga, Volume 2 (Saga (Collected Editions) #2)', 'Sequential Art', 2, 11.75, 'In Stock', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(896, 'Run, Spot, Run: The Ethics of Keeping Pets', 'Philosophy', 2, 20.02, 'Out Of Stock', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(897, 'New Moon (Twilight #2)', 'Young Adult', 2, 12.86, 'Out Of Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(898, 'Life', 'Music', 2, 31.58, 'In Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(899, 'Kindle Paperwhite User\'s Guide', 'Nonfiction', 4, 34.00, 'In Stock', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(900, 'H is for Hawk', 'Nonfiction', 4, 57.42, 'Out Of Stock', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(901, 'Girl Online On Tour (Girl Online #2)', 'Young Adult', 2, 53.47, 'Out Of Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(902, 'Fruits Basket, Vol. 2 (Fruits Basket #2)', 'Sequential Art', 3, 11.64, 'Out Of Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(903, 'Diary of a Minecraft Zombie Book 1: A Scare of a Dare (An Unofficial Minecraft Book)', 'Childrens', 3, 52.88, 'In Stock', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(904, 'Y: The Last Man, Vol. 1: Unmanned (Y: The Last Man #1)', 'Sequential Art', 4, 18.51, 'Out Of Stock', 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(905, 'While You Were Mine', 'Historical Fiction', 3, 41.32, 'In Stock', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(906, 'Where Lightning Strikes (Bleeding Stars #3)', 'Romance', 5, 39.77, 'In Stock', 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(907, 'When I\'m Gone', 'Fiction', 3, 51.96, 'Out Of Stock', 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(908, 'Ways of Seeing', 'Art', 2, 39.51, 'In Stock', 88, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(909, 'Vampire Knight, Vol. 1 (Vampire Knight #1)', 'Paranormal', 2, 15.40, 'Out Of Stock', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(910, 'Vampire Girl (Vampire Girl #1)', 'Fantasy', 2, 53.82, 'In Stock', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(911, 'Twenty Love Poems and a Song of Despair', 'Poetry', 3, 30.95, 'In Stock', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(912, 'Travels with Charley: In Search of America', 'Nonfiction', 4, 57.82, 'Out Of Stock', 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(913, 'Three Wishes (River of Time: California #1)', 'Science Fiction', 1, 44.18, 'Out Of Stock', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(914, 'This One Moment (Pushing Limits #1)', 'Romance', 1, 48.71, 'In Stock', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(915, 'The Zombie Room', 'Default', 1, 19.69, 'Out Of Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(916, 'The Wicked + The Divine, Vol. 1: The Faust Act (The Wicked + The Divine)', 'Sequential Art', 2, 36.52, 'In Stock', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(917, 'The Tumor', 'Nonfiction', 2, 41.56, 'Out Of Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(918, 'The Story of Hong Gildong', 'Classics', 4, 43.19, 'In Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(919, 'The Silent Wife', 'Fiction', 2, 12.34, 'Out Of Stock', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(920, 'The Silent Twin (Detective Jennifer Knight #3)', 'Fantasy', 1, 36.25, 'In Stock', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(921, 'The Selfish Gene', 'Science', 5, 29.45, 'In Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(922, 'The Secret Healer', 'Historical Fiction', 2, 34.56, 'In Stock', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(923, 'The Sandman, Vol. 1: Preludes and Nocturnes (The Sandman (volumes) #1)', 'Sequential Art', 1, 54.12, 'In Stock', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(924, 'The Republic', 'Add a comment', 5, 33.78, 'Out Of Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(925, 'The Odyssey', 'Add a comment', 4, 29.64, 'In Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(926, 'The No. 1 Ladies\' Detective Agency (No. 1 Ladies\' Detective Agency #1)', 'Mystery', 3, 57.70, 'In Stock', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(927, 'The Nicomachean Ethics', 'Philosophy', 4, 36.34, 'In Stock', 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(928, 'The Name of the Wind (The Kingkiller Chronicle #1)', 'Default', 1, 50.59, 'In Stock', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(929, 'The Mirror & the Maze (The Wrath and the Dawn #1.5)', 'Fantasy', 2, 29.38, 'Out Of Stock', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(930, 'The Little Prince', 'Classics', 3, 45.42, 'In Stock', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(931, 'The Light of the Fireflies', 'Add a comment', 2, 54.43, 'In Stock', 89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(932, 'The Last Girl (The Dominion Trilogy #1)', 'Science Fiction', 1, 36.26, 'Out Of Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(933, 'The Iliad', 'Add a comment', 1, 16.16, 'In Stock', 84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(934, 'The Hook Up (Game On #1)', 'New Adult', 3, 36.29, 'In Stock', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(935, 'The Haters', 'Young Adult', 5, 27.89, 'In Stock', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(936, 'The Girl You Lost', 'Mystery', 3, 12.29, 'Out Of Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(937, 'The Girl In The Ice (DCI Erika Foster #1)', 'Mystery', 2, 15.85, 'Out Of Stock', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(938, 'The End of the Jesus Era (An Investigation #1)', 'Nonfiction', 2, 14.40, 'In Stock', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(939, 'The Edge of Reason (Bridget Jones #2)', 'Womens Fiction', 3, 19.18, 'In Stock', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(940, 'The Complete Maus (Maus #1-2)', 'Sequential Art', 4, 10.64, 'Out Of Stock', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(941, 'The Communist Manifesto', 'Add a comment', 3, 14.76, 'Out Of Stock', 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(942, 'The Bhagavad Gita', 'Religion', 1, 57.49, 'In Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(943, 'The Bette Davis Club', 'Fiction', 3, 30.66, 'In Stock', 81, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(944, 'The Art of Not Breathing', 'Young Adult', 4, 40.83, 'In Stock', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(945, 'Taking Shots (Assassins #1)', 'Default', 3, 18.88, 'In Stock', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(946, 'Starlark', 'Historical Fiction', 4, 25.83, 'Out Of Stock', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(947, 'Skip Beat!, Vol. 01 (Skip Beat! #1)', 'Sequential Art', 3, 42.12, 'Out Of Stock', 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(948, 'Sister Sable (The Mad Queen #1)', 'Fantasy', 1, 13.33, 'Out Of Stock', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(949, 'Shatter Me (Shatter Me #1)', 'Default', 3, 42.40, 'Out Of Stock', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(950, 'Shameless', 'New Adult', 4, 58.35, 'In Stock', 82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(951, 'Shadow Rites (Jane Yellowrock #10)', 'Fantasy', 3, 21.72, 'Out Of Stock', 83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(952, 'Settling the Score (The Summer Games #1)', 'Sports and Games', 4, 44.91, 'In Stock', 69, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(953, 'Sense and Sensibility', 'Classics', 3, 37.46, 'In Stock', 94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(954, 'Saga, Volume 1 (Saga (Collected Editions) #1)', 'Sequential Art', 2, 28.48, 'In Stock', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(955, 'Rhythm, Chord & Malykhin', 'Romance', 2, 28.34, 'In Stock', 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(956, 'Rat Queens, Vol. 1: Sass & Sorcery (Rat Queens (Collected Editions) #1-5)', 'Sequential Art', 2, 46.96, 'In Stock', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(957, 'Paradise Lost (Paradise #1)', 'Default', 2, 24.96, 'In Stock', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(958, 'Paper Girls, Vol. 1 (Paper Girls #1-5)', 'Sequential Art', 1, 21.71, 'Out Of Stock', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(959, 'Ouran High School Host Club, Vol. 1 (Ouran High School Host Club #1)', 'Sequential Art', 1, 29.87, 'Out Of Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(960, 'Origins (Alphas 0.5)', 'Fantasy', 5, 28.99, 'In Stock', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(961, 'One Second (Seven #7)', 'Fantasy', 3, 52.94, 'Out Of Stock', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(962, 'On the Road (Duluoz Legend)', 'Default', 2, 32.36, 'In Stock', 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(963, 'Old Records Never Die: One Man\'s Quest for His Vinyl and His Past', 'Music', 2, 55.66, 'In Stock', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(964, 'Off Sides (Off #1)', 'New Adult', 2, 39.45, 'In Stock', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(965, 'Of Mice and Men', 'Classics', 2, 47.11, 'Out Of Stock', 86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(966, 'Myriad (Prentor #1)', 'Fantasy', 4, 58.75, 'In Stock', 95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(967, 'My Perfect Mistake (Over the Top #1)', 'Romance', 3, 38.92, 'Out Of Stock', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(968, 'Ms. Marvel, Vol. 1: No Normal (Ms. Marvel (2014-2015) #1)', 'Sequential Art', 3, 39.39, 'Out Of Stock', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(969, 'Meditations', 'Philosophy', 4, 25.89, 'Out Of Stock', 69, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(970, 'Matilda', 'Childrens', 1, 28.34, 'Out Of Stock', 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(971, 'Lost Among the Living', 'Historical Fiction', 5, 27.70, 'Out Of Stock', 52, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(972, 'Lord of the Flies', 'Add a comment', 4, 24.89, 'In Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(973, 'Listen to Me (Fusion #1)', 'Romance', 4, 58.99, 'In Stock', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(974, 'Kitchens of the Great Midwest', 'Fiction', 1, 57.20, 'Out Of Stock', 72, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(975, 'Jane Eyre', 'Default', 3, 38.43, 'Out Of Stock', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(976, 'Imperfect Harmony', 'Romance', 3, 34.74, 'Out Of Stock', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(977, 'Icing (Aces Hockey #2)', 'Sports and Games', 2, 40.44, 'In Stock', 78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(978, 'Hawkeye, Vol. 1: My Life as a Weapon (Hawkeye #1)', 'Sequential Art', 5, 45.24, 'Out Of Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(979, 'Having the Barbarian\'s Baby (Ice Planet Barbarians #7.5)', 'Science Fiction', 4, 34.96, 'Out Of Stock', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(980, 'Giant Days, Vol. 1 (Giant Days #1-4)', 'Sequential Art', 2, 56.76, 'In Stock', 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(981, 'Fruits Basket, Vol. 1 (Fruits Basket #1)', 'Sequential Art', 5, 40.28, 'Out Of Stock', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(982, 'Frankenstein', 'Default', 2, 38.00, 'In Stock', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(983, 'Forever Rockers (The Rocker #12)', 'Music', 5, 28.80, 'Out Of Stock', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(984, 'Fighting Fate (Fighting #6)', 'Romance', 2, 39.24, 'In Stock', 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(985, 'Emma', 'Classics', 1, 32.93, 'Out Of Stock', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(986, 'Eat, Pray, Love', 'Nonfiction', 1, 51.32, 'Out Of Stock', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(987, 'Deep Under (Walker Security #1)', 'Romance', 4, 47.09, 'In Stock', 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(988, 'Choosing Our Religion: The Spiritual Lives of America\'s Nones', 'Religion', 4, 28.42, 'Out Of Stock', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(989, 'Charlie and the Chocolate Factory (Charlie Bucket #1)', 'Childrens', 2, 22.85, 'In Stock', 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(990, 'Charity\'s Cross (Charles Towne Belles #4)', 'Romance', 3, 41.24, 'In Stock', 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(991, 'Bright Lines', 'Fiction', 3, 39.07, 'In Stock', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(992, 'Bridget Jones\'s Diary (Bridget Jones #1)', 'Womens Fiction', 4, 29.82, 'Out Of Stock', 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(993, 'Bounty (Colorado Mountain #7)', 'Romance', 4, 37.26, 'Out Of Stock', 79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(994, 'Blood Defense (Samantha Brinkman #1)', 'Mystery', 4, 20.30, 'In Stock', 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(995, 'Bleach, Vol. 1: Strawberry and the Soul Reapers (Bleach #1)', 'Sequential Art', 4, 34.65, 'Out Of Stock', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(996, 'Beyond Good and Evil', 'Philosophy', 4, 43.38, 'In Stock', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(997, 'Alice in Wonderland (Alice\'s Adventures in Wonderland #1)', 'Classics', 4, 55.53, 'Out Of Stock', 92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(998, 'Ajin: Demi-Human, Volume 1 (Ajin: Demi-Human #1)', 'Sequential Art', 2, 57.06, 'In Stock', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(999, 'A Spy\'s Devotion (The Regency Spies of London #1)', 'Historical Fiction', 2, 16.97, 'In Stock', 89, '0000-00-00 00:00:00', '2025-08-03 05:50:48'),
(1001, '1,000 Places to See Before You Die', 'Travel', 2, 26.08, 'In Stock', 63, '0000-00-00 00:00:00', '2025-08-03 05:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_02_082636_create_categories_table', 1),
(5, '2025_08_02_082703_create_books_table', 1),
(6, '2025_08_02_082721_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('55hzJwrnOfQ120CZ5Ihwbbz8pV9oftB7TKqhTJMM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMUZZaEJlM1B6bDRUSzRiRlI2cWxxVk4xVFhleTdaOXQ2azM4dGwwOSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3N0b3JlIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1754232691),
('7vTxbRhsoeugMhYa8WXqnMeNOHntrdo5xiZE7teR', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRE5UTDJEMVRSNktzMFF1b3pKTEFGWU1kQW5jaVRCQjY3MGJ2RUVRWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zdG9yZSI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1754223608);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', 'admin', '2025-08-03 02:57:30', '$2y$12$eVf3KA9BhP46mlXInnH5xekegsrNRiEqGI9VeACLo/3Bn5Lp6jnYq', 'vxGvugZYzn', '2025-08-03 02:57:30', '2025-08-03 05:55:41'),
(2, 'sakthi', 'sakthibala64469@gmail.com', 'admin', NULL, '$2y$12$Sd6j6LnEsxHAjtv3aie//.AfVUEfsJCCcr3ctQrGHOsuFBM0vi.Zu', NULL, '2025-08-03 03:07:14', '2025-08-03 03:07:14'),
(3, 'sakthi', 'sakthibala@gmail.com', 'user', NULL, '$2y$12$RZBZZ0dakmDDjT9bsbk/VOHIN9pwe3XAtG9JsFuMI1sVQZMh0HT9W', NULL, '2025-08-03 03:07:25', '2025-08-03 03:07:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
