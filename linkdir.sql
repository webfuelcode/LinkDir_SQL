-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 02:39 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linkdir`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_sets`
--

CREATE TABLE `admin_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitemsg` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtitle` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rmsg` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leaderads` mediumtext COLLATE utf8mb4_unicode_ci,
  `sideads` mediumtext COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_sets`
--

INSERT INTO `admin_sets` (`id`, `title`, `description`, `about`, `url`, `sitemsg`, `rtitle`, `rmsg`, `leaderads`, `sideads`, `facebook`, `twitter`, `linkedin`, `blog`, `created_at`, `updated_at`) VALUES
(1, 'LinkDIR', 'A simple site listing. Website Directory to find the best sites.', 'Easy site listings for best results.', NULL, 'We have a large collection of best site. Try searching the directory.', 'Contact Us', 'contact@site.com', '<a href=\"http://www.wall-spot.com/likes/hostinger/\" target=\"_blank\"><img class=\"img-fluid\" src=\"/images/hostingeren-728x90.png\" alt=\"Low cost web hosting\"></a>', 'Starting a new project? Lets look for a low-cost <a href=\"http://www.wall-spot.com/likes/bluehost/\" target=\"_blank\">web hosting plan</a>', NULL, NULL, NULL, NULL, NULL, '2020-10-07 00:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Internet', '2020-10-06 23:05:12', '2020-10-06 23:05:12'),
(2, 'Freebies', '2020-10-06 23:05:17', '2020-10-06 23:05:17'),
(3, 'Game', '2020-10-06 23:05:24', '2020-10-06 23:05:24'),
(4, 'Forum', '2020-10-06 23:05:30', '2020-10-06 23:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `user_id`, `category_id`, `title`, `url`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'First post here', 'thefirstpost', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laoreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.oreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.', '2020-10-06 23:09:26', '2020-10-06 23:09:26'),
(2, 1, 2, 'Second post here', 'thesecondpost', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laoreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.', '2020-10-06 23:10:00', '2020-10-06 23:10:00'),
(3, 1, 3, 'Third post here', 'thethirdpost', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laoreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.', '2020-10-06 23:10:24', '2020-10-06 23:10:24'),
(4, 1, 4, 'Fouth post here', 'thefourthpost', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laoreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.', '2020-10-06 23:10:51', '2020-10-06 23:10:51'),
(5, 1, 1, 'Fifth post here', 'thefifthpost', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laoreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.', '2020-10-06 23:11:12', '2020-10-06 23:11:12'),
(6, 1, 2, 'Sixth post here', 'thesixthpost', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laoreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.', '2020-10-06 23:11:35', '2020-10-06 23:11:35'),
(7, 1, 3, 'Seventh post here', 'theseventhepost', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laoreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.', '2020-10-06 23:11:53', '2020-10-06 23:11:53'),
(8, 1, 4, 'Eighth post here', 'theeighthpost', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laoreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.', '2020-10-06 23:12:18', '2020-10-06 23:12:18'),
(9, 1, 1, 'Nonth post heer', 'theninthpost', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laoreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.', '2020-10-06 23:12:40', '2020-10-06 23:12:40'),
(10, 1, 2, 'Tenth post here', 'thetenthpost', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laoreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.', '2020-10-06 23:13:01', '2020-10-06 23:13:01'),
(11, 1, 3, 'Elventh post here', 'theeleventhpost', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laoreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.', '2020-10-06 23:13:29', '2020-10-06 23:13:29'),
(12, 1, 4, 'Twelve post here', 'thetwelvepost', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et sagittis magna. Vivamus dictum turpis elit, et rutrum purus blandit nec. Curabitur blandit lorem nec interdum cursus. Donec tempor erat velit, at posuere felis dictum in. Donec vestibulum justo elit, quis pharetra est pretium quis. Duis egestas tincidunt metus, at rhoncus turpis. Cras dapibus consequat ipsum at cursus.\r\n\r\nCurabitur cursus rhoncus odio, laoreet porta felis ultrices nec. Sed eget odio et neque tempor sollicitudin a at turpis. Ut posuere turpis in urna tristique egestas. Sed ornare ligula quis lacus imperdiet imperdiet. Vestibulum commodo, elit id sagittis pulvinar, eros lectus vulputate est, et vestibulum felis neque nec dolor. Aliquam maximus, ipsum in imperdiet ullamcorper, tortor neque semper eros, non iaculis justo neque ut enim. Quisque ut felis lobortis, viverra leo id, sagittis nunc. Duis imperdiet purus sit amet iaculis congue. Pellentesque id dignissim augue. Mauris convallis dapibus turpis vel vulputate. Mauris varius magna risus, quis dignissim elit condimentum vitae. Mauris felis mi, mollis vel aliquet id, fringilla convallis risus.\r\n\r\nNulla vel blandit turpis, quis tempor purus. Suspendisse ante dolor, finibus ut ultrices et, fringilla a neque. Suspendisse convallis mauris eu molestie auctor. Fusce ornare eu ex eget gravida. Pellentesque aliquet dapibus lectus ac tincidunt. Mauris pharetra elit ac mi tempus, ac mattis ex sodales. Aliquam at tristique dui. Cras sed libero non neque luctus iaculis. Praesent vestibulum ex ut sapien vestibulum, eu aliquam purus scelerisque. Sed at rutrum nibh, molestie tempus lectus. Sed sollicitudin, diam vitae pharetra finibus, odio justo laoreet mauris, vel tincidunt quam nibh vel diam. Donec laoreet sollicitudin eleifend. Nulla facilisi. Curabitur tincidunt convallis felis in convallis.', '2020-10-06 23:14:08', '2020-10-06 23:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_10_145302_create_links_table', 1),
(5, '2020_09_10_145356_create_categories_table', 1),
(6, '2020_09_14_062900_create_admin_sets_table', 1),
(7, '2020_09_23_095824_create_pages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(119) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@site.com', 'Owner', NULL, '$2y$10$VAeTDj/f71ioOi.5DOJMRuWXpw853qZsgm.0JEMCUkOuz17cDVZyW', NULL, '2020-09-19 18:30:00', NULL),
(2, 'Jack', 'jackson@pixloger.com', NULL, NULL, '$2y$10$DRijkzRzsInbg1eNrS9t9ulNy6Y5pUOCTMyl6azLljLHTTFY2OPje', NULL, '2020-10-06 05:46:36', '2020-10-06 05:46:36'),
(3, 'John', 'john@sites.com', 'Admin', NULL, '$2y$10$A3.awP6E94Qb41zR2Jc6ye/XCT0SWMqABKyvcfWDQ4luGD/RQQfdi', NULL, '2020-10-06 05:56:24', '2020-10-06 23:19:17'),
(4, 'Simon', 'simon@pixloger.com', NULL, NULL, '$2y$10$/0KQL1odgpomPSftBLcqpOnaKoUL6P7xheEGcb3eVf8FdqOt7k04W', NULL, '2020-10-06 06:14:58', '2020-10-06 06:14:58'),
(5, 'Sim', 'sim@pixloger.com', NULL, NULL, '$2y$10$YVQoyy64AbuwZfIEzTEyPu3NHT5h0B4ghVcDdsF1NN3EC1FOoB/Jq', NULL, '2020-10-06 06:15:56', '2020-10-06 06:15:56'),
(6, 'Sim', 'sims@pixloger.com', NULL, NULL, '$2y$10$zRYU9a2YaLNC9T3dwavWgOTR1oCRI4VaSd8SaEdeSC17HXsuQQ8J2', NULL, '2020-10-06 06:20:59', '2020-10-06 06:20:59'),
(7, 'rrrrrrrrrr', 'rrrrrrrrr@pixloger.com', NULL, NULL, '$2y$10$/7TaNVuY01TA7lmEVBITkOIlgtuQAgJdJ6K.sSBJf8RZrM9kiG/uW', NULL, '2020-10-06 08:42:39', '2020-10-06 08:42:39'),
(10, 'Simons', 'simons@pixloger.com', NULL, NULL, '$2y$10$/0KQL1odgpomPSftBLcqpOnaKoUL6P7xheEGcb3eVf8FdqOt7k04W', NULL, '2020-10-06 06:14:58', '2020-10-06 06:14:58'),
(11, 'Sims', 'ssims@pixloger.com', NULL, NULL, '$2y$10$YVQoyy64AbuwZfIEzTEyPu3NHT5h0B4ghVcDdsF1NN3EC1FOoB/Jq', NULL, '2020-10-06 06:15:56', '2020-10-06 06:15:56'),
(12, 'Simss', 'simss@pixloger.com', NULL, NULL, '$2y$10$zRYU9a2YaLNC9T3dwavWgOTR1oCRI4VaSd8SaEdeSC17HXsuQQ8J2', NULL, '2020-10-06 06:20:59', '2020-10-06 06:20:59'),
(13, 'rrrrrrrrrrs', 'rrrrrrrrrs@pixloger.com', NULL, NULL, '$2y$10$/7TaNVuY01TA7lmEVBITkOIlgtuQAgJdJ6K.sSBJf8RZrM9kiG/uW', NULL, '2020-10-06 08:42:39', '2020-10-06 08:42:39'),
(14, 'ccSimons', 'ccsimons@pixloger.com', NULL, NULL, '$2y$10$/0KQL1odgpomPSftBLcqpOnaKoUL6P7xheEGcb3eVf8FdqOt7k04W', NULL, '2020-10-06 06:14:58', '2020-10-06 06:14:58'),
(15, 'Simscc', 'ccssims@pixloger.com', NULL, NULL, '$2y$10$YVQoyy64AbuwZfIEzTEyPu3NHT5h0B4ghVcDdsF1NN3EC1FOoB/Jq', NULL, '2020-10-06 06:15:56', '2020-10-06 06:15:56'),
(16, 'Simsscc', 'ccsimss@pixloger.com', NULL, NULL, '$2y$10$zRYU9a2YaLNC9T3dwavWgOTR1oCRI4VaSd8SaEdeSC17HXsuQQ8J2', NULL, '2020-10-06 06:20:59', '2020-10-06 06:20:59'),
(17, 'rrrrrrrrrrscc', 'ccrrrrrrrrrs@pixloger.com', NULL, NULL, '$2y$10$/7TaNVuY01TA7lmEVBITkOIlgtuQAgJdJ6K.sSBJf8RZrM9kiG/uW', NULL, '2020-10-06 08:42:39', '2020-10-06 08:42:39'),
(18, 'Johnson', 'johnson@pixloger.com', NULL, NULL, '$2y$10$GBSmTUfLPQrb9iJr6Jb2Hedp.N71TtXP0eOqn0RwkyLPJYctSxxHK', NULL, '2020-10-06 23:55:04', '2020-10-06 23:55:04'),
(19, 'SJohnson', 'Sjohnson@pixloger.com', NULL, NULL, '$2y$10$KRMC1WOrBwibqb/nYjTUSu6TZfKANe1WupxyqRrrNbWcVp5Q7lkyK', NULL, '2020-10-06 23:57:04', '2020-10-06 23:57:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_sets`
--
ALTER TABLE `admin_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `admin_sets`
--
ALTER TABLE `admin_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
