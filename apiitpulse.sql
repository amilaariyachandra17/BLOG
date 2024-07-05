-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2024 at 08:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apiitpulse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `usertype`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2024-05-08 06:24:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'oL3oXVaKBA', NULL, NULL, '2024-05-08 06:24:29', '2024-05-08 06:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `post_status` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `heading`, `about`, `picture`, `name`, `user_id`, `post_status`, `usertype`, `created_at`, `updated_at`) VALUES
(13, 'KSAC Committee 2023/2024', 'KSAC stands for Kandy Student Activity Club. It\'s the main student club at APIIT Kandy Campus in Sri Lanka.  They function as the representative body for the student community and take the lead in organizing various events and activities throughout the year.', '1716727728.jpeg', 'Admin', '1', 'active', 'admin', '2024-05-26 07:18:48', '2024-05-26 07:18:48'),
(14, 'Welcome to APIIT', 'Welcome to APIIT PULSE – your digital hub for all things student life at Asia Pacific Institute of Information Technology (APIIT). Whether you\'re a current student, an alumni reminiscing about your campus days, or a prospective student eager to learn more about life at APIIT, we\'re thrilled to have you join us on this exciting journey. At APIIT PULSE, we\'re more than just a blog – we\'re a vibrant community dedicated to sharing stories, insights, and experiences that capture the essence of student life. From academic achievements and extracurricular adventures to campus events and cultural celebrations, our blog is your go-to destination for all the latest happenings at APIIT. But APIIT PULSE is more than just a platform for information – it\'s a place where voices are heard, ideas are exchanged, and connections are made. We believe in the power of storytelling to inspire, empower, and unite us as a community. That\'s why we encourage you, our readers, to share your own stories, perspectives, and experiences with us. Whether it\'s a personal reflection, a campus event recap, or a photo essay capturing the beauty of campus life, we welcome contributions from all members of the APIIT family. As you explore APIIT PULSE, you\'ll discover a diverse array of content curated to inform, entertain, and inspire. From insightful interviews with faculty and alumni to helpful tips for academic success and personal development, our blog is your trusted companion on your journey through university life. So, whether you\'re looking for practical advice, seeking inspiration, or simply wanting to stay connected with the APIIT community, we invite you to dive into APIIT PULSE and make it your own. Together, let\'s celebrate the richness and diversity of student life at APIIT and create lasting memories that will stay with us long after graduation. Once again, welcome to APIIT PULSE – your gateway to student life. We\'re thrilled to have you here, and we can\'t wait to embark on this exciting journey together. Warm regards,', '1716729203.jpeg', 'Admin', '1', 'active', 'admin', '2024-05-26 07:43:23', '2024-05-26 07:43:23'),
(15, 'GRAVE RAVE 22\'', 'Hauntingly good times at Grave Rave 22! The APIIT student body came alive (or undead?) for a night of spooky celebrations at the \"Grave Rave.\" This killer group rocked their costumes and danced the night away under the eerie glow of Halloween.  #GraveRave22 #APIITHalloween', '1716729766.jpg', 'Admin', '1', 'active', 'admin', '2024-05-26 07:52:46', '2024-05-26 07:52:46'),
(16, 'Community Service Project', 'A makeover for health!  Students from University of Hong Kong join hands with students of APIIT Kandy for a heartwarming project. This run-down medical clinic received a fresh lease on life with a collaborative renovation and paint job. Together, they\'re ensuring a brighter and healthier future for the community.  #CommunityService #HongKongUniversity #Katugastota #RenovationProject', '1716730296.jpg', 'Lokitha Yapa', '8', 'active', 'user', '2024-05-26 08:01:36', '2024-05-26 08:02:25'),
(17, 'APIIT Basketball', 'APIIT Kandy and Colombo Campuses face off in thrilling basketball battles! These intra-mural matches showcase the athleticism and determination of APIIT\'s student athletes.', '1716730957.jpeg', 'Lokitha Yapa', '8', 'active', 'user', '2024-05-26 08:12:37', '2024-05-26 08:13:51'),
(18, 'APIIT Divali', 'A Festival of Lights at APIIT! The APIIT community comes together in a vibrant celebration of Diwali, the Festival of Lights.  This joyous occasion is filled with traditional रंगोली (Rangoli) patterns, dazzling diyas illuminating the campus, and the sharing of sweets and snacks. Students of all faiths immerse themselves in the rich cultural traditions, fostering a spirit of unity and merriment.  #Diwali #APIITCelebration #FestivalOfLights', '1716731742.jpeg', 'Luqmaan Kaamis', '9', 'active', 'user', '2024-05-26 08:25:42', '2024-05-26 08:55:05'),
(19, 'APIIT Poson Dansal', 'The spirit of Poson shines bright at APIIT! Following Sri Lankan tradition, the APIIT community joins in the celebration by setting up a charitable dansal. Students, staff, and faculty come together to offer free food and drinks to all, embodying the Buddhist values of generosity and compassion. This joyous event strengthens the bonds within the APIIT family and promotes cultural understanding. #Poson #APIITCelebrates #Dansal', '1716731917.jpg', 'Luqmaan Kaamis', '9', 'active', 'user', '2024-05-26 08:28:37', '2024-05-26 08:55:12'),
(20, 'APIIT Night of Wishes', 'Merry wishes and starry nights at APIIT\'s Night of Wishes! The APIIT community gathers for a magical Christmas celebration filled with festive cheer. This enchanting \"Night of Wishes\" promises twinkling lights, delicious treats, and a chance to share holiday cheer with fellow students and staff. Don\'t miss the opportunity to make a wish under the mistletoe and embrace the spirit of the season! #NightOfWishes #APIITChristmas #ChristmasParty', '1716733110.jpg', 'Amila Ariyachandra', '10', 'active', 'user', '2024-05-26 08:48:30', '2024-05-26 08:55:21'),
(21, 'APIIT Sports Awards Day', 'Celebrating champions and sportsmanship at the APIIT Sports Awards Day! This prestigious event recognizes the outstanding achievements of APIIT\'s student athletes. From thrilling victories on the court to unwavering dedication in training, the awards ceremony honors those who embody the spirit of competition and teamwork. Witness the crowning of champions, celebrate athletic excellence, and get inspired for the next season! #APIITSportsAwards #CelebratingChampions #APIITSports', '1716733469.jpg', 'Amila Ariyachandra', '10', 'active', 'user', '2024-05-26 08:54:29', '2024-05-26 08:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_likes`
--

CREATE TABLE `blog_post_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post_likes`
--

INSERT INTO `blog_post_likes` (`id`, `blog_post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 13, 8, '2024-05-26 11:04:35', '2024-05-26 11:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Category_Name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `body` text NOT NULL,
  `commentable_type` varchar(255) NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `parent_id`, `body`, `commentable_type`, `commentable_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 8, NULL, 'Glad to be a part of the committee', 'App\\Models\\BlogPost', 13, NULL, '2024-05-26 11:05:06', '2024-05-26 11:05:06'),
(8, 8, NULL, 'Hii', 'App\\Models\\BlogPost', 13, NULL, '2024-05-29 11:36:33', '2024-05-29 11:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_name` longtext DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
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
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_03_24_000000_create_comment_likes_table', 2),
(5, '2024_01_29_155121_create_sessions_table', 2),
(6, '2024_02_04_050011_create_categories_table', 2),
(7, '2024_02_04_053231_create_services_table', 2),
(8, '2024_02_05_024315_create_carts_table', 2),
(9, '2024_02_05_051007_create_orders_table', 2),
(10, '2024_04_13_134829_create_blog_posts_table', 2),
(11, '2024_04_13_160822_create_admins_table', 2),
(12, '2024_05_08_113133_create_users_table', 2),
(13, '2024_05_10_161715_create_post_likes_table', 2),
(14, '2024_05_15_093626_create_comments_table', 2),
(15, '2024_05_15_094409_create_blog_post_likes_table', 3),
(16, '2024_05_15_100758_create_blog_post_likes_table', 4),
(17, '2024_05_15_101137_create_blog_post_likes_table', 5),
(18, '2024_05_15_101606_create_blog_post_likes_table', 6),
(19, '2024_05_15_102546_create_blog_post_likes_table', 7),
(20, '2024_05_15_104559_create_blog_post_likes_table', 8),
(21, '2024_05_29_083115_create_contacts_table', 9),
(22, '2024_05_29_085620_create_contacts_table', 10),
(23, '2024_05_29_085837_create_contacts_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `service_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
('r6Exc3oPSI0KEIXn7fQ6tIvnv3OfA1DbTeOCdoB0', 8, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWnFxVWs4bUhrcE9TMXVEYUFFTFhtc0dOS0dlNTZVWVBJTE0zWTdsTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jcmVhdGVibG9ncG9zdCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkakJQZm1WNWF6YmEvbC94T3hQRFhOZVptRkFuTXJ3dmFPcDlGYi5XRFBVNXlUcm9Ba2FQQXUiO30=', 1717006661);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `usertype`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', NULL, '$2y$12$YsgPx2Kn2mJvIae7eLYe/O2ozWnF3v3LFReKuFmv.tgBnQBTfkN2m', 'user', NULL, NULL, NULL, '2024-05-08 06:51:11', '2024-05-08 06:51:11'),
(8, 'Lokitha Yapa', 'lokithayapa@gmail.com', NULL, '$2y$12$jBPfmV5azba/l/xOxPDXNeZmFAnMrwvaOp9Fb.WDPU5yTroAkaPAu', 'user', NULL, NULL, NULL, '2024-05-26 07:48:23', '2024-05-29 01:41:50'),
(9, 'Luqmaan Kaamis', 'kamiz@gmail.com', NULL, '$2y$12$vn9XM6uGtX80GaEqOhIteuMGlmh2Min5yadCp0g0PPXWrBpo553Va', 'user', NULL, NULL, NULL, '2024-05-26 08:16:11', '2024-05-26 08:16:11'),
(10, 'Amila Ariyachandra', 'amila@gmail.com', NULL, '$2y$12$VXEefZMOt/JS.c7cR/M1POE4Al09KM/OH34IK4aN/RXvtxJW6t4xi', 'user', NULL, NULL, NULL, '2024-05-26 08:29:14', '2024-05-26 08:29:14');

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
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_likes`
--
ALTER TABLE `blog_post_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_post_likes_blog_post_id_user_id_unique` (`blog_post_id`,`user_id`),
  ADD KEY `blog_post_likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`);

--
-- Indexes for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blog_post_likes`
--
ALTER TABLE `blog_post_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_post_likes`
--
ALTER TABLE `blog_post_likes`
  ADD CONSTRAINT `blog_post_likes_blog_post_id_foreign` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
