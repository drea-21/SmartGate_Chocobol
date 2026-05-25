-- SmartGate Database Dump (MySQL Compatible)
-- Generated dynamically from SQLite source
-- 2026-05-25 09:46:22

SET FOREIGN_KEY_CHECKS = 0;

-- --------------------------------------------------------
-- Table structure for table `password_reset_tokens`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` VARCHAR(255) NOT NULL,
  `token` VARCHAR(255) NOT NULL,
  `created_at` DATETIME NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for table `sessions`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NULL,
  `ip_address` VARCHAR(255) NULL,
  `user_agent` TEXT NULL,
  `payload` TEXT NOT NULL,
  `last_activity` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `sessions`
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('Ik8eQeP0Dn3efTk0aRmqhXO6MSgXxsqcdCpifKBU', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiamcyVlVoOGRoR0VmVFY3cWticXk2dUlMRFhqM2NXaUpBWHhZQmowRCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9icmlkZ2Uvc3RhdHVzIjtzOjU6InJvdXRlIjtzOjEzOiJicmlkZ2Uuc3RhdHVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE5OiJmdWxseV9hdXRoZW50aWNhdGVkIjtiOjE7czo0OiJ1c2VyIjtzOjQzOiJNYWludGVuYW5jZSBhbmQgRW5naW5lZXJpbmcgU2VydmljZXMgT2ZmaWNlIjtzOjQ6InJvbGUiO3M6Njoib2ZmaWNlIjt9', 1779200896);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('bjn4BW8JX3YtyXubfWFsQpR4czwsIktazb9jf3CX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiM0NIU3FQQkNEb2dCczEwNnI1d0JqOEhzNG11anlkYWpqeEpjSzY2YSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9zdGF0cy9kZW1vZ3JhcGhpY3MiO3M6NToicm91dGUiO3M6MjQ6ImFkbWluLnN0YXRzLmRlbW9ncmFwaGljcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxOToiZnVsbHlfYXV0aGVudGljYXRlZCI7YjoxO3M6NDoidXNlciI7czoxMjoiU3lzdGVtIEFkbWluIjtzOjQ6InJvbGUiO3M6NToiYWRtaW4iO30=', 1779200895);

-- --------------------------------------------------------
-- Table structure for table `cache`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` VARCHAR(255) NOT NULL,
  `value` TEXT NOT NULL,
  `expiration` INT(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `cache`
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('smartgate-cache-andrea.singson@evsu.edu.ph|127.0.0.1:timer', 'i:1777511565;', 1777511565);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('smartgate-cache-andrea.singson@evsu.edu.ph|127.0.0.1', 'i:1;', 1777511565);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('smartgate-cache-andrea.singson14@gmail.com|127.0.0.1:timer', 'i:1777511898;', 1777511899);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('smartgate-cache-andrea.singson14@gmail.com|127.0.0.1', 'i:2;', 1777511899);

-- --------------------------------------------------------
-- Table structure for table `cache_locks`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` VARCHAR(255) NOT NULL,
  `owner` VARCHAR(255) NOT NULL,
  `expiration` INT(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for table `jobs`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `queue` VARCHAR(255) NOT NULL,
  `payload` TEXT NOT NULL,
  `attempts` INT(11) NOT NULL,
  `reserved_at` INT(11) NULL,
  `available_at` INT(11) NOT NULL,
  `created_at` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `jobs`
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES (1, 'default', '{"uuid":"7ca4e3ba-6434-4e7b-b848-5d72331ba992","displayName":"App\\\\Notifications\\\\NewOnlineRegistration","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":3:{s:11:\\"notifiables\\";O:29:\\"Illuminate\\\\Support\\\\Collection\\":2:{s:8:\\"\\u0000*\\u0000items\\";a:1:{i:0;O:44:\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\":1:{s:6:\\"routes\\";a:1:{s:4:\\"mail\\";s:29:\\"skeptron1973darkrai@gmail.com\\";}}}s:28:\\"\\u0000*\\u0000escapeWhenCastingToString\\";b:0;}s:12:\\"notification\\";O:39:\\"App\\\\Notifications\\\\NewOnlineRegistration\\":2:{s:15:\\"\\u0000*\\u0000registration\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":5:{s:5:\\"class\\";s:30:\\"App\\\\Models\\\\VehicleRegistration\\";s:2:\\"id\\";i:20;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:6:\\"sqlite\\";s:15:\\"collectionClass\\";N;}s:2:\\"id\\";s:36:\\"e3584724-4f48-403b-9b2c-6fb9e0366e4a\\";}s:8:\\"channels\\";a:1:{i:0;s:8:\\"database\\";}}","batchId":null},"createdAt":1777515039,"delay":null}', 0, NULL, 1777515039, 1777515039);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES (2, 'default', '{"uuid":"faa7a186-0070-4ee9-b140-1dc462e5475d","displayName":"App\\\\Notifications\\\\NewOnlineRegistration","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":3:{s:11:\\"notifiables\\";O:29:\\"Illuminate\\\\Support\\\\Collection\\":2:{s:8:\\"\\u0000*\\u0000items\\";a:1:{i:0;O:44:\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\":1:{s:6:\\"routes\\";a:1:{s:4:\\"mail\\";s:29:\\"skeptron1973darkrai@gmail.com\\";}}}s:28:\\"\\u0000*\\u0000escapeWhenCastingToString\\";b:0;}s:12:\\"notification\\";O:39:\\"App\\\\Notifications\\\\NewOnlineRegistration\\":2:{s:15:\\"\\u0000*\\u0000registration\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":5:{s:5:\\"class\\";s:30:\\"App\\\\Models\\\\VehicleRegistration\\";s:2:\\"id\\";i:20;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:6:\\"sqlite\\";s:15:\\"collectionClass\\";N;}s:2:\\"id\\";s:36:\\"e3584724-4f48-403b-9b2c-6fb9e0366e4a\\";}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}}","batchId":null},"createdAt":1777515039,"delay":null}', 0, NULL, 1777515039, 1777515039);

-- --------------------------------------------------------
-- Table structure for table `job_batches`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `total_jobs` INT(11) NOT NULL,
  `pending_jobs` INT(11) NOT NULL,
  `failed_jobs` INT(11) NOT NULL,
  `failed_job_ids` TEXT NOT NULL,
  `options` TEXT NULL,
  `cancelled_at` INT(11) NULL,
  `created_at` INT(11) NOT NULL,
  `finished_at` INT(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for table `failed_jobs`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `uuid` VARCHAR(255) NOT NULL,
  `connection` TEXT NOT NULL,
  `queue` TEXT NOT NULL,
  `payload` TEXT NOT NULL,
  `exception` TEXT NOT NULL,
  `failed_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for table `registration_reviews`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `registration_reviews`;
CREATE TABLE `registration_reviews` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `vehicle_registration_id` INT(11) NOT NULL,
  `admin_id` INT(11) NOT NULL,
  `action` VARCHAR(255) NOT NULL DEFAULT 'pending',
  `admin_notes` TEXT NULL,
  `reviewed_at` DATETIME NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `registration_reviews`
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (1, 13, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:43:18', '2026-04-21 14:43:18', '2026-04-21 14:43:18');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (2, 13, 1, 'rejected', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:43:32', '2026-04-21 14:43:32', '2026-04-21 14:43:32');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (3, 12, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:43:33', '2026-04-21 14:43:33', '2026-04-21 14:43:33');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (4, 11, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:43:39', '2026-04-21 14:43:39', '2026-04-21 14:43:39');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (5, 13, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:44:01', '2026-04-21 14:44:01', '2026-04-21 14:44:01');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (6, 10, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:44:15', '2026-04-21 14:44:15', '2026-04-21 14:44:15');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (7, 9, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:44:23', '2026-04-21 14:44:23', '2026-04-21 14:44:23');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (8, 8, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:44:38', '2026-04-21 14:44:38', '2026-04-21 14:44:38');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (9, 7, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:44:45', '2026-04-21 14:44:45', '2026-04-21 14:44:45');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (10, 5, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:44:58', '2026-04-21 14:44:58', '2026-04-21 14:44:58');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (11, 4, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:44:59', '2026-04-21 14:44:59', '2026-04-21 14:44:59');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (12, 3, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:45:11', '2026-04-21 14:45:11', '2026-04-21 14:45:11');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (13, 2, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:45:11', '2026-04-21 14:45:11', '2026-04-21 14:45:11');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (14, 1, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:45:25', '2026-04-21 14:45:25', '2026-04-21 14:45:25');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (15, 6, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:45:49', '2026-04-21 14:45:49', '2026-04-21 14:45:49');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (16, 1, 1, 'rejected', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:45:57', '2026-04-21 14:45:57', '2026-04-21 14:45:57');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (17, 1, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-21 14:46:31', '2026-04-21 14:46:31', '2026-04-21 14:46:31');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (18, 15, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-23 08:37:59', '2026-04-23 08:37:59', '2026-04-23 08:37:59');
INSERT INTO `registration_reviews` (`id`, `vehicle_registration_id`, `admin_id`, `action`, `admin_notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES (19, 14, 1, 'approved', 'Status manually toggled by Admin via RFID management.', '2026-04-23 08:38:35', '2026-04-23 08:38:35', '2026-04-23 08:38:35');

-- --------------------------------------------------------
-- Table structure for table `visitors`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `plate` VARCHAR(255) NULL,
  `vehicle_type` VARCHAR(255) NULL,
  `purpose` VARCHAR(255) NULL,
  `destination` VARCHAR(255) NULL,
  `time_in` DATETIME NOT NULL,
  `time_out` DATETIME NULL,
  `status` VARCHAR(255) NOT NULL DEFAULT 'inside',
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `visitors`
INSERT INTO `visitors` (`id`, `name`, `plate`, `vehicle_type`, `purpose`, `destination`, `time_in`, `time_out`, `status`, `created_at`, `updated_at`) VALUES (1, 'Alex Montefalco', NULL, 'Motorcycle', 'Visit Ma''am Arcillas', 'Instructor of EVSU-OC', '2026-04-23 09:43:52', '2026-04-23 10:04:45', 'left', '2026-04-23 09:43:52', '2026-04-23 10:04:45');
INSERT INTO `visitors` (`id`, `name`, `plate`, `vehicle_type`, `purpose`, `destination`, `time_in`, `time_out`, `status`, `created_at`, `updated_at`) VALUES (2, 'Garry Makapaso', NULL, 'Truck', 'Delivering tables', 'Supply Office', '2026-04-23 09:51:15', '2026-04-23 10:43:19', 'left', '2026-04-23 09:51:15', '2026-04-23 10:43:19');
INSERT INTO `visitors` (`id`, `name`, `plate`, `vehicle_type`, `purpose`, `destination`, `time_in`, `time_out`, `status`, `created_at`, `updated_at`) VALUES (3, 'Eduardo Salado', NULL, 'Motorcycle', 'visit', 'SSG', '2026-04-23 13:16:34', '2026-04-23 13:21:11', 'left', '2026-04-23 13:16:34', '2026-04-23 13:21:11');
INSERT INTO `visitors` (`id`, `name`, `plate`, `vehicle_type`, `purpose`, `destination`, `time_in`, `time_out`, `status`, `created_at`, `updated_at`) VALUES (4, 'Joy Mercedes', '382HQL', 'Motorcycle', 'Inquire Enrollment', 'Registrar Office', '2026-04-23 13:54:00', '2026-04-23 14:05:35', 'left', '2026-04-23 13:54:00', '2026-04-23 14:05:35');

-- --------------------------------------------------------
-- Table structure for table `users`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NULL,
  `email_verified_at` DATETIME NULL,
  `password` VARCHAR(255) NOT NULL,
  `remember_token` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `username` VARCHAR(255) NULL,
  `role` VARCHAR(255) NOT NULL DEFAULT 'office',
  `first_name` VARCHAR(255) NULL,
  `last_name` VARCHAR(255) NULL,
  `middle_name` VARCHAR(255) NULL,
  `profile_picture` VARCHAR(255) NULL,
  `dark_mode` INT(11) NOT NULL DEFAULT '0',
  `two_factor_enabled` INT(11) NOT NULL DEFAULT '0',
  `language` VARCHAR(255) NOT NULL DEFAULT 'en',
  `google2fa_secret` TEXT NULL,
  `two_factor_recovery_codes` TEXT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `users`
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `role`, `first_name`, `last_name`, `middle_name`, `profile_picture`, `dark_mode`, `two_factor_enabled`, `language`, `google2fa_secret`, `two_factor_recovery_codes`) VALUES (1, 'System Admin', 'andrea.singson@evsu.edu.ph', NULL, '$2y$12$DpN4U8YX1l3ireiNbMvQBu6uuev.1w9AFlEIPVjKW6dx1tSvg85Em', NULL, '2026-04-20 09:18:58', '2026-05-05 13:49:41', 'admin', 'admin', 'System', 'Admin', '', NULL, 0, 1, 'en', 'eyJpdiI6Im9IS044SGFvRGxpQURkSnVKWGVPV1E9PSIsInZhbHVlIjoiS2xnZ0ZvYVVTdk5ldVhDNExtRHhuaGgzNGJweFdzMUhNeTNQaUdxZVZRND0iLCJtYWMiOiJjOTZjMjMxZmY1OTdmZGY1YmIxNmM2MTlmMWEwMTZhYTgyMmU2NGJiYWYxYjc1MjRlY2UwZTE4NzQ1MGQzNDhkIiwidGFnIjoiIn0=', '["ISF4U-EXQ5H","YMEFV-IF54X","8MLMO-8OBEU","NLXXH-LA3LQ","RDVYO-FWQLT"]');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `role`, `first_name`, `last_name`, `middle_name`, `profile_picture`, `dark_mode`, `two_factor_enabled`, `language`, `google2fa_secret`, `two_factor_recovery_codes`) VALUES (2, 'Maintenance and Engineering Services Office', 'andrea.singson14@gmail.com', NULL, '$2y$12$JNgvg.YBEHLIJYrkSuaEOu7w1khUM/YOs6w6udQc/udg5iD0cndj6', NULL, '2026-04-20 09:19:03', '2026-04-30 09:25:15', 'office', 'office', 'Maintenance and Engineering', 'Services Office', '', NULL, 0, 1, 'en', 'eyJpdiI6IjZneTY5QnZiOTRsZDZaWTF6OUp2bUE9PSIsInZhbHVlIjoiOU1oWjFBdkFMRWFrL1dqaHFGbkNpbTlISkhJbzB1MkR5UE83ZDVOcVBWZz0iLCJtYWMiOiJiMWQ0N2EyZGFjMzNhZWE0ODU3ZTlkNWMwZWNmYzBjZjVlOWNlYjZkMmRjNGYyYWNjZDYyMDQ5OWE2NjQxOTQ0IiwidGFnIjoiIn0=', '["IVW5B-2GB92","PO880-DWW1J","IYOYV-KSNEZ","EZ2FP-PXM8S","ULQCK-H1Z1S"]');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `role`, `first_name`, `last_name`, `middle_name`, `profile_picture`, `dark_mode`, `two_factor_enabled`, `language`, `google2fa_secret`, `two_factor_recovery_codes`) VALUES (3, 'Security Guard', 'guard@smartgate.com', NULL, '$2y$12$P.NSJWJrOqnBNdicOb3F5eCu65VMXNIRO9iVeV9j2B2y.DQTmpKzW', NULL, '2026-04-20 09:19:07', '2026-04-26 01:57:37', 'guard', 'guard', 'Security', 'Guard', '', NULL, 0, 0, 'en', NULL, NULL);

-- --------------------------------------------------------
-- Table structure for table `audit_logs`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `audit_logs`;
CREATE TABLE `audit_logs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NULL,
  `action` VARCHAR(255) NOT NULL,
  `details` VARCHAR(255) NULL,
  `ip_address` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `audit_logs`
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (1, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 8298093 for Marika L Villapania', '127.0.0.1', '2026-04-21 14:43:30', '2026-04-21 14:43:30');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (2, 1, 'TAG_STATUS_CHANGE', 'Blacklisted tag ID: 8298093 for Marika L Villapania', '127.0.0.1', '2026-04-21 14:43:32', '2026-04-21 14:43:32');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (3, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 3594706295 for Feliciano C Sidlakan', '127.0.0.1', '2026-04-21 14:43:38', '2026-04-21 14:43:38');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (4, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 3594710391 for Wenilyn A Belesencio', '127.0.0.1', '2026-04-21 14:43:46', '2026-04-21 14:43:46');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (5, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 8298093 for Marika L Villapania', '127.0.0.1', '2026-04-21 14:44:13', '2026-04-21 14:44:13');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (6, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 3594711415 for Marvin P Cuyos', '127.0.0.1', '2026-04-21 14:44:21', '2026-04-21 14:44:21');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (7, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 3594708343 for Jacob Israel D Cantay', '127.0.0.1', '2026-04-21 14:44:36', '2026-04-21 14:44:36');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (8, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 3594712439 for Little Legend A Malinao', '127.0.0.1', '2026-04-21 14:44:44', '2026-04-21 14:44:44');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (9, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 3594561767 for Gerard Q Matin-ao', '127.0.0.1', '2026-04-21 14:44:55', '2026-04-21 14:44:55');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (10, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 3594566887 for Ramir PO Capuyan', '127.0.0.1', '2026-04-21 14:44:58', '2026-04-21 14:44:58');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (11, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 3594562791 for Filipe F Mangahoc', '127.0.0.1', '2026-04-21 14:45:09', '2026-04-21 14:45:09');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (12, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 3594560743 for Angelito A Laureano', '127.0.0.1', '2026-04-21 14:45:11', '2026-04-21 14:45:11');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (13, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 4129679846 for Jude I Jabilles', '127.0.0.1', '2026-04-21 14:45:24', '2026-04-21 14:45:24');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (14, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 4129679834 for Wilferd Jude A Perante', '127.0.0.1', '2026-04-21 14:45:40', '2026-04-21 14:45:40');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (15, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 3594558695 for Joseph A Gariando', '127.0.0.1', '2026-04-21 14:45:57', '2026-04-21 14:45:57');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (16, 1, 'TAG_STATUS_CHANGE', 'Blacklisted tag ID: 4129679834 for Wilferd Jude A Perante', '127.0.0.1', '2026-04-21 14:45:57', '2026-04-21 14:45:57');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (17, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 4129679834 for Wilferd Jude A Perante', '127.0.0.1', '2026-04-21 14:46:37', '2026-04-21 14:46:37');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (18, 3, 'RFID_SCAN', 'Processed entry for Wenilyn A Belesencio [3594710391] (408HSD)', '127.0.0.1', '2026-04-21 16:59:47', '2026-04-21 16:59:47');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (19, 3, 'RFID_SCAN', 'Processed entry for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-21 17:05:07', '2026-04-21 17:05:07');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (20, 3, 'MANUAL_OVERRIDE', 'Processed exit for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-21 17:10:48', '2026-04-21 17:10:48');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (21, 3, 'MANUAL_OVERRIDE', 'Processed exit for Wenilyn A Belesencio [3594710391] (408HSD)', '127.0.0.1', '2026-04-21 17:11:01', '2026-04-21 17:11:01');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (22, 3, 'MANUAL_OVERRIDE', 'Processed entry for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-22 14:00:07', '2026-04-22 14:00:07');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (23, 3, 'MANUAL_OVERRIDE', 'Processed entry for Filipe F Mangahoc [3594562791] (070102)', '127.0.0.1', '2026-04-22 14:00:21', '2026-04-22 14:00:21');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (24, 3, 'MANUAL_OVERRIDE', 'Processed entry for Jude I Jabilles [4129679846] (H3405L)', '127.0.0.1', '2026-04-22 14:00:32', '2026-04-22 14:00:32');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (25, 3, 'MANUAL_OVERRIDE', 'Processed entry for Wilferd Jude A Perante [4129679834] (YLM 518)', '127.0.0.1', '2026-04-22 14:00:42', '2026-04-22 14:00:42');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (26, 3, 'MANUAL_OVERRIDE', 'Processed entry for Ramir PO Capuyan [3594566887] (HG 9360)', '127.0.0.1', '2026-04-22 14:01:02', '2026-04-22 14:01:02');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (27, 3, 'MANUAL_OVERRIDE', 'Processed entry for Jan Anthony Paredes [3594704247] (251HRS)', '127.0.0.1', '2026-04-22 14:05:14', '2026-04-22 14:05:14');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (28, 3, 'RFID_SCAN', 'Processed exit for Jude I Jabilles [4129679846] (H3405L)', '127.0.0.1', '2026-04-22 14:18:34', '2026-04-22 14:18:34');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (29, 3, 'MANUAL_OVERRIDE', 'Processed entry for Jude I Jabilles [4129679846] (H3405L)', '127.0.0.1', '2026-04-22 14:18:56', '2026-04-22 14:18:56');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (30, 3, 'RFID_SCAN', 'Processed exit for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-22 15:15:29', '2026-04-22 15:15:29');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (31, 3, 'RFID_SCAN', 'Processed entry for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-22 15:28:44', '2026-04-22 15:28:44');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (32, 3, 'MANUAL_OVERRIDE', 'Processed exit for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-22 15:37:21', '2026-04-22 15:37:21');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (33, 3, 'RFID_SCAN', 'Processed entry for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-22 17:02:33', '2026-04-22 17:02:33');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (34, 3, 'RFID_SCAN', 'Processed exit for Jan Anthony Paredes [3594704247] (251HRS)', '127.0.0.1', '2026-04-22 17:05:10', '2026-04-22 17:05:10');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (35, 3, 'MANUAL_OVERRIDE', 'Processed exit for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-22 17:07:39', '2026-04-22 17:07:39');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (36, 3, 'MANUAL_OVERRIDE', 'Processed exit for Wilferd Jude A Perante [4129679834] (YLM 518)', '127.0.0.1', '2026-04-22 17:08:56', '2026-04-22 17:08:56');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (37, 3, 'MANUAL_OVERRIDE', 'Processed exit for Ramir PO Capuyan [3594566887] (HG 9360)', '127.0.0.1', '2026-04-22 17:11:44', '2026-04-22 17:11:44');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (38, 3, 'MANUAL_OVERRIDE', 'Processed exit for Filipe F Mangahoc [3594562791] (070102)', '127.0.0.1', '2026-04-22 17:14:33', '2026-04-22 17:14:33');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (39, 3, 'RFID_SCAN', 'Processed entry for Jacob Israel D Cantay [3594708343] (H3866K)', '127.0.0.1', '2026-04-22 17:19:30', '2026-04-22 17:19:30');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (40, 3, 'MANUAL_OVERRIDE', 'Processed exit for Jude I Jabilles [4129679846] (H3405L)', '127.0.0.1', '2026-04-22 17:30:18', '2026-04-22 17:30:18');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (41, 3, 'MANUAL_OVERRIDE', 'Processed exit for Jacob Israel D Cantay [3594708343] (H3866K)', '127.0.0.1', '2026-04-23 07:54:46', '2026-04-23 07:54:46');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (42, 3, 'MANUAL_OVERRIDE', 'Processed entry for Jan Anthony Paredes [3594704247] (251HRS)', '127.0.0.1', '2026-04-23 08:13:19', '2026-04-23 08:13:19');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (43, 3, 'MANUAL_OVERRIDE', 'Processed entry for Feliciano C Sidlakan [3594706295] (H97021)', '127.0.0.1', '2026-04-23 08:13:32', '2026-04-23 08:13:32');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (44, 3, 'MANUAL_OVERRIDE', 'Processed entry for Joseph A Gariando [3594558695] (H8604C)', '127.0.0.1', '2026-04-23 08:13:51', '2026-04-23 08:13:51');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (45, 3, 'MANUAL_OVERRIDE', 'Processed entry for Ramir PO Capuyan [3594566887] (HG 9360)', '127.0.0.1', '2026-04-23 08:14:01', '2026-04-23 08:14:01');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (46, 3, 'MANUAL_OVERRIDE', 'Processed entry for Filipe F Mangahoc [3594562791] (070102)', '127.0.0.1', '2026-04-23 08:14:09', '2026-04-23 08:14:09');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (47, 3, 'MANUAL_OVERRIDE', 'Processed entry for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-23 08:14:17', '2026-04-23 08:14:17');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (48, 3, 'MANUAL_OVERRIDE', 'Processed entry for Jude I Jabilles [4129679846] (H3405L)', '127.0.0.1', '2026-04-23 08:14:26', '2026-04-23 08:14:26');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (49, 3, 'MANUAL_OVERRIDE', 'Processed exit for Feliciano C Sidlakan [3594706295] (H97021)', '127.0.0.1', '2026-04-23 08:32:36', '2026-04-23 08:32:36');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (50, 3, 'MANUAL_OVERRIDE', 'Processed entry for Feliciano C Sidlakan [3594706295] (H97021)', '127.0.0.1', '2026-04-23 08:37:36', '2026-04-23 08:37:36');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (51, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 3594563815 for jerome Subiera Barquio', '127.0.0.1', '2026-04-23 08:38:09', '2026-04-23 08:38:09');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (52, 1, 'TAG_STATUS_CHANGE', 'Activated tag ID: 3594704247 for Jan Anthony Paredes', '127.0.0.1', '2026-04-23 08:38:40', '2026-04-23 08:38:40');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (53, 3, 'VISITOR_ENTRY', 'Logged manual entry for visitor: Alex Montefalco', '127.0.0.1', '2026-04-23 09:43:52', '2026-04-23 09:43:52');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (54, 3, 'VISITOR_ENTRY', 'Logged manual entry for visitor: Garry Makapaso', '127.0.0.1', '2026-04-23 09:51:15', '2026-04-23 09:51:15');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (55, 3, 'VISITOR_EXIT', 'Logged manual exit for visitor: Alex Montefalco', '127.0.0.1', '2026-04-23 10:04:45', '2026-04-23 10:04:45');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (56, 3, 'VISITOR_EXIT', 'Logged manual exit for visitor: Garry Makapaso', '127.0.0.1', '2026-04-23 10:43:13', '2026-04-23 10:43:13');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (57, 3, 'VISITOR_EXIT', 'Logged manual exit for visitor: Garry Makapaso', '127.0.0.1', '2026-04-23 10:43:19', '2026-04-23 10:43:19');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (58, 3, 'RFID_SCAN', 'Processed exit for Feliciano C Sidlakan [3594706295] (H97021)', '127.0.0.1', '2026-04-23 10:45:49', '2026-04-23 10:45:49');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (59, 3, 'MANUAL_OVERRIDE', 'Processed entry for Feliciano C Sidlakan [3594706295] (H97021)', '127.0.0.1', '2026-04-23 11:02:44', '2026-04-23 11:02:44');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (60, 3, 'RFID_SCAN', 'Processed entry for Marvin P Cuyos [3594711415] (H3409V)', '127.0.0.1', '2026-04-23 13:13:28', '2026-04-23 13:13:28');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (61, 3, 'VISITOR_ENTRY', 'Logged manual entry for visitor: Eduardo Salado', '127.0.0.1', '2026-04-23 13:16:34', '2026-04-23 13:16:34');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (62, 3, 'VISITOR_EXIT', 'Logged manual exit for visitor: Eduardo Salado', '127.0.0.1', '2026-04-23 13:21:11', '2026-04-23 13:21:11');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (63, 3, 'VISITOR_ENTRY', 'Logged manual entry for visitor: Joy Mercedes', '127.0.0.1', '2026-04-23 13:54:00', '2026-04-23 13:54:00');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (64, 3, 'VISITOR_EXIT', 'Logged manual exit for visitor: Joy Mercedes', '127.0.0.1', '2026-04-23 14:05:35', '2026-04-23 14:05:35');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (65, 3, 'RFID_SCAN', 'Processed exit for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-23 14:24:39', '2026-04-23 14:24:39');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (66, 3, 'MANUAL_OVERRIDE', 'Processed entry for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-23 14:28:11', '2026-04-23 14:28:11');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (67, 3, 'RFID_SCAN', 'Processed entry for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-23 14:30:32', '2026-04-23 14:30:32');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (68, 3, 'RFID_SCAN', 'Processed exit for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-23 14:33:35', '2026-04-23 14:33:35');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (69, 3, 'LOG_CORRECTION', 'Manually toggled log #36 from entry to exit', '127.0.0.1', '2026-04-23 15:31:30', '2026-04-23 15:31:30');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (70, 3, 'LOG_CORRECTION', 'Manually toggled log #36 from exit to entry', '127.0.0.1', '2026-04-23 15:31:31', '2026-04-23 15:31:31');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (71, 3, 'MANUAL_OVERRIDE', 'Processed exit for Marvin P Cuyos [3594711415] (H3409V)', '127.0.0.1', '2026-04-23 15:31:39', '2026-04-23 15:31:39');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (72, 3, 'MANUAL_OVERRIDE', 'Processed entry for Beatrice D. Mabitad [4129679826] (MODEL 2023)', '127.0.0.1', '2026-04-23 15:45:11', '2026-04-23 15:45:11');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (73, 3, 'RFID_SCAN', 'Processed entry for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-23 16:09:44', '2026-04-23 16:09:44');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (74, 3, 'RFID_SCAN', 'Processed exit for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-23 16:09:56', '2026-04-23 16:09:56');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (75, 3, 'RFID_SCAN', 'Processed entry for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-23 16:10:05', '2026-04-23 16:10:05');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (76, 3, 'RFID_SCAN', 'Processed exit for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-23 16:10:16', '2026-04-23 16:10:16');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (77, 3, 'RFID_SCAN', 'Processed entry for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-23 16:10:26', '2026-04-23 16:10:26');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (78, 3, 'RFID_SCAN', 'Processed exit for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-23 16:10:36', '2026-04-23 16:10:36');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (79, 3, 'RFID_SCAN', 'Processed entry for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-23 16:10:45', '2026-04-23 16:10:45');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (80, 3, 'RFID_SCAN', 'Processed exit for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-23 16:10:51', '2026-04-23 16:10:51');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (81, 3, 'RFID_SCAN', 'Processed entry for Wenilyn A Belesencio [3594710391] (408HSD)', '127.0.0.1', '2026-04-23 16:46:02', '2026-04-23 16:46:02');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (82, 3, 'RFID_SCAN', 'Processed exit for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-23 17:05:06', '2026-04-23 17:05:06');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (83, 3, 'MANUAL_OVERRIDE', 'Processed exit for Filipe F Mangahoc [3594562791] (070102)', '127.0.0.1', '2026-04-23 17:07:29', '2026-04-23 17:07:29');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (84, 3, 'MANUAL_OVERRIDE', 'Processed exit for Ramir PO Capuyan [3594566887] (HG 9360)', '127.0.0.1', '2026-04-23 17:08:15', '2026-04-23 17:08:15');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (85, 3, 'LOG_CORRECTION', 'Manually toggled log #35 from entry to exit', '127.0.0.1', '2026-04-23 17:10:04', '2026-04-23 17:10:04');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (86, 3, 'LOG_CORRECTION', 'Manually toggled log #35 from exit to entry', '127.0.0.1', '2026-04-23 17:10:05', '2026-04-23 17:10:05');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (87, 3, 'MANUAL_OVERRIDE', 'Processed exit for Feliciano C Sidlakan [3594706295] (H97021)', '127.0.0.1', '2026-04-23 17:10:12', '2026-04-23 17:10:12');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (88, 3, 'MANUAL_OVERRIDE', 'Processed exit for Jude I Jabilles [4129679846] (H3405L)', '127.0.0.1', '2026-04-23 17:11:37', '2026-04-23 17:11:37');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (89, 3, 'MANUAL_OVERRIDE', 'Processed exit for Wenilyn A Belesencio [3594710391] (408HSD)', '127.0.0.1', '2026-04-23 17:15:05', '2026-04-23 17:15:05');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (90, 3, 'MANUAL_OVERRIDE', 'Processed entry for Wenilyn A Belesencio [3594710391] (408HSD)', '127.0.0.1', '2026-04-23 17:18:08', '2026-04-23 17:18:08');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (91, 3, 'MANUAL_OVERRIDE', 'Processed exit for Wenilyn A Belesencio [3594710391] (408HSD)', '127.0.0.1', '2026-04-23 17:18:18', '2026-04-23 17:18:18');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (92, 3, 'MANUAL_OVERRIDE', 'Processed entry for Wenilyn A Belesencio [3594710391] (408HSD)', '127.0.0.1', '2026-04-23 17:18:31', '2026-04-23 17:18:31');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (93, 3, 'MANUAL_OVERRIDE', 'Processed exit for Wenilyn A Belesencio [3594710391] (408HSD)', '127.0.0.1', '2026-04-23 17:18:56', '2026-04-23 17:18:56');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (94, 3, 'MANUAL_OVERRIDE', 'Processed entry for Ramir PO Capuyan [3594566887] (HG 9360)', '127.0.0.1', '2026-04-27 08:16:08', '2026-04-27 08:16:08');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (95, 3, 'MANUAL_OVERRIDE', 'Processed entry for Filipe F Mangahoc [3594562791] (070102)', '127.0.0.1', '2026-04-27 08:16:17', '2026-04-27 08:16:17');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (96, 3, 'MANUAL_OVERRIDE', 'Processed entry for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-27 08:16:26', '2026-04-27 08:16:26');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (97, 3, 'MANUAL_OVERRIDE', 'Processed entry for Jude I Jabilles [4129679846] (H3405L)', '127.0.0.1', '2026-04-27 08:16:35', '2026-04-27 08:16:35');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (98, 3, 'MANUAL_OVERRIDE', 'Processed exit for Joseph A Gariando [3594558695] (H8604C)', '127.0.0.1', '2026-04-27 08:16:50', '2026-04-27 08:16:50');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (99, 3, 'MANUAL_OVERRIDE', 'Processed entry for Joseph A Gariando [3594558695] (H8604C)', '127.0.0.1', '2026-04-27 08:17:04', '2026-04-27 08:17:04');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (100, 3, 'MANUAL_OVERRIDE', 'Processed entry for Elmer Jaca Alema [3594567911] (547UPP)', '127.0.0.1', '2026-04-27 08:17:19', '2026-04-27 08:17:19');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (101, 3, 'MANUAL_OVERRIDE', 'Processed exit for Beatrice D. Mabitad [4129679826] (GBG 5162)', '127.0.0.1', '2026-04-27 08:17:27', '2026-04-27 08:17:27');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (102, 3, 'MANUAL_OVERRIDE', 'Processed exit for Joseph A Gariando [3594558695] (H8604C)', '127.0.0.1', '2026-04-27 08:18:00', '2026-04-27 08:18:00');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (103, 3, 'MANUAL_OVERRIDE', 'Processed entry for Beatrice D. Mabitad [4129679826] (GBG 5162)', '127.0.0.1', '2026-04-27 08:18:24', '2026-04-27 08:18:24');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (104, 3, 'MANUAL_OVERRIDE', 'Processed entry for Joseph A Gariando [3594558695] (H8604C)', '127.0.0.1', '2026-04-27 08:18:34', '2026-04-27 08:18:34');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (105, 3, 'MANUAL_OVERRIDE', 'Processed entry for Marvin P Cuyos [3594711415] (H3409V)', '127.0.0.1', '2026-04-27 08:22:26', '2026-04-27 08:22:26');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (106, 3, 'MANUAL_OVERRIDE', 'Processed entry for Wilferd Jude A Perante [4129679834] (YLM 518)', '127.0.0.1', '2026-04-27 08:22:33', '2026-04-27 08:22:33');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (107, 3, 'RFID_SCAN', 'Processed entry for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-27 08:35:43', '2026-04-27 08:35:43');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (108, 3, 'RFID_SCAN', 'Processed exit for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-27 08:35:54', '2026-04-27 08:35:54');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (109, 3, 'MANUAL_OVERRIDE', 'Processed entry for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-27 09:14:13', '2026-04-27 09:14:13');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (110, 3, 'RFID_SCAN', 'Processed exit for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-27 10:50:48', '2026-04-27 10:50:48');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (111, 3, 'MANUAL_OVERRIDE', 'Processed exit for Jan Anthony Paredes [3594704247] (251HRS)', '127.0.0.1', '2026-04-27 16:44:46', '2026-04-27 16:44:46');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (112, 3, 'RFID_SCAN', 'Processed exit for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-27 16:46:56', '2026-04-27 16:46:56');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (113, 3, 'RFID_SCAN', 'Processed entry for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-27 16:50:40', '2026-04-27 16:50:40');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (114, 3, 'MANUAL_OVERRIDE', 'Processed exit for Wilferd Jude A Perante [4129679834] (YLM 518)', '127.0.0.1', '2026-04-27 17:07:26', '2026-04-27 17:07:26');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (115, 3, 'MANUAL_OVERRIDE', 'Processed exit for Marvin P Cuyos [3594711415] (H3409V)', '127.0.0.1', '2026-04-27 17:07:35', '2026-04-27 17:07:35');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (116, 3, 'MANUAL_OVERRIDE', 'Processed exit for Joseph A Gariando [3594558695] (H8604C)', '127.0.0.1', '2026-04-27 17:08:13', '2026-04-27 17:08:13');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (117, 3, 'MANUAL_OVERRIDE', 'Processed exit for Marika L Villapania [3594565863] (AMD528)', '127.0.0.1', '2026-04-27 17:22:00', '2026-04-27 17:22:00');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (118, 3, 'MANUAL_OVERRIDE', 'Processed entry for Wilferd Jude A Perante [4129679834] (YLM 518)', '127.0.0.1', '2026-04-28 07:32:25', '2026-04-28 07:32:25');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (119, 3, 'MANUAL_OVERRIDE', 'Processed exit for Jude I Jabilles [4129679846] (H3405L)', '127.0.0.1', '2026-04-28 07:32:35', '2026-04-28 07:32:35');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (120, 3, 'MANUAL_OVERRIDE', 'Processed entry for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-28 07:32:45', '2026-04-28 07:32:45');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (121, 3, 'MANUAL_OVERRIDE', 'Processed exit for Filipe F Mangahoc [3594562791] (070102)', '127.0.0.1', '2026-04-28 07:32:53', '2026-04-28 07:32:53');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (122, 3, 'MANUAL_OVERRIDE', 'Processed exit for Ramir PO Capuyan [3594566887] (HG 9360)', '127.0.0.1', '2026-04-28 07:33:03', '2026-04-28 07:33:03');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (123, 3, 'MANUAL_OVERRIDE', 'Processed entry for Joseph A Gariando [3594558695] (H8604C)', '127.0.0.1', '2026-04-28 07:33:15', '2026-04-28 07:33:15');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (124, 3, 'MANUAL_OVERRIDE', 'Processed entry for Jan Anthony Paredes [3594704247] (251HRS)', '127.0.0.1', '2026-04-28 07:33:34', '2026-04-28 07:33:34');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (125, 3, 'MANUAL_OVERRIDE', 'Processed exit for Elmer Jaca Alema [3594567911] (547UPP)', '127.0.0.1', '2026-04-28 07:33:54', '2026-04-28 07:33:54');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (126, 3, 'MANUAL_OVERRIDE', 'Processed entry for Elmer Jaca Alema [3594567911] (547UPP)', '127.0.0.1', '2026-04-28 07:48:38', '2026-04-28 07:48:38');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (127, 3, 'MANUAL_OVERRIDE', 'Processed entry for Ramir PO Capuyan [3594566887] (HG 9360)', '127.0.0.1', '2026-04-28 07:48:51', '2026-04-28 07:48:51');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (128, 3, 'MANUAL_OVERRIDE', 'Processed entry for Filipe F Mangahoc [3594562791] (070102)', '127.0.0.1', '2026-04-28 07:49:04', '2026-04-28 07:49:04');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (129, 3, 'MANUAL_OVERRIDE', 'Processed entry for Jude I Jabilles [4129679846] (H3405L)', '127.0.0.1', '2026-04-28 07:49:13', '2026-04-28 07:49:13');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (130, 3, 'MANUAL_OVERRIDE', 'Processed exit for Beatrice D. Mabitad [4129679826] (GBG 5162)', '127.0.0.1', '2026-04-28 10:32:26', '2026-04-28 10:32:26');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (131, 3, 'MANUAL_OVERRIDE', 'Processed entry for Beatrice D. Mabitad [4129679826] (GBG 5162)', '127.0.0.1', '2026-04-28 10:32:34', '2026-04-28 10:32:34');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (132, 3, 'MANUAL_OVERRIDE', 'Processed entry for Wenilyn A Belesencio [3594710391] (408HSD)', '127.0.0.1', '2026-04-28 10:33:02', '2026-04-28 10:33:02');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (133, 3, 'MANUAL_OVERRIDE', 'Processed entry for Marvin P Cuyos [3594711415] (H3409V)', '127.0.0.1', '2026-04-28 10:33:22', '2026-04-28 10:33:22');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (134, 3, 'MANUAL_OVERRIDE', 'Processed entry for Little Legend A Malinao [3594712439] (642HDA)', '127.0.0.1', '2026-04-28 10:33:42', '2026-04-28 10:33:42');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (135, 3, 'MANUAL_OVERRIDE', 'Processed exit for Joseph A Gariando [3594558695] (H8604C)', '127.0.0.1', '2026-04-28 10:34:24', '2026-04-28 10:34:24');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (136, 3, 'MANUAL_OVERRIDE', 'Processed entry for Joseph A Gariando [3594558695] (H8604C)', '127.0.0.1', '2026-04-28 10:34:40', '2026-04-28 10:34:40');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (137, 3, 'MANUAL_OVERRIDE', 'Processed exit for Joseph A Gariando [3594558695] (H8604C)', '127.0.0.1', '2026-04-28 19:40:31', '2026-04-28 19:40:31');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (138, 3, 'MANUAL_OVERRIDE', 'Processed exit for Little Legend A Malinao [3594712439] (642HDA)', '127.0.0.1', '2026-04-28 19:40:41', '2026-04-28 19:40:41');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (139, 3, 'MANUAL_OVERRIDE', 'Processed exit for Marvin P Cuyos [3594711415] (H3409V)', '127.0.0.1', '2026-04-28 19:40:54', '2026-04-28 19:40:54');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (140, 3, 'MANUAL_OVERRIDE', 'Processed exit for Wenilyn A Belesencio [3594710391] (408HSD)', '127.0.0.1', '2026-04-28 19:41:08', '2026-04-28 19:41:08');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (141, 3, 'MANUAL_OVERRIDE', 'Processed exit for Beatrice D. Mabitad [4129679826] (GBG 5162)', '127.0.0.1', '2026-04-28 19:41:28', '2026-04-28 19:41:28');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (142, 3, 'MANUAL_OVERRIDE', 'Processed exit for Ramir PO Capuyan [3594566887] (HG 9360)', '127.0.0.1', '2026-04-28 19:41:37', '2026-04-28 19:41:37');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (143, 3, 'MANUAL_OVERRIDE', 'Processed exit for Filipe F Mangahoc [3594562791] (070102)', '127.0.0.1', '2026-04-28 19:41:48', '2026-04-28 19:41:48');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (144, 3, 'MANUAL_OVERRIDE', 'Processed exit for Jude I Jabilles [4129679846] (H3405L)', '127.0.0.1', '2026-04-28 19:41:59', '2026-04-28 19:41:59');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (145, 3, 'MANUAL_OVERRIDE', 'Processed exit for Wilferd Jude A Perante [4129679834] (YLM 518)', '127.0.0.1', '2026-04-30 08:26:02', '2026-04-30 08:26:02');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (146, 3, 'MANUAL_OVERRIDE', 'Processed exit for Angelito A Laureano [3594560743] (916HAL)', '127.0.0.1', '2026-04-30 08:26:11', '2026-04-30 08:26:11');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (147, 3, 'MANUAL_OVERRIDE', 'Processed exit for Jan Anthony Paredes [3594704247] (251HRS)', '127.0.0.1', '2026-04-30 08:26:21', '2026-04-30 08:26:21');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (148, 3, 'MANUAL_OVERRIDE', 'Processed exit for Elmer Jaca Alema [3594567911] (547UPP)', '127.0.0.1', '2026-04-30 08:26:31', '2026-04-30 08:26:31');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (149, 3, 'MANUAL_OVERRIDE', 'Processed entry for Elmer Jaca Alema [3594567911] (547UPP)', '127.0.0.1', '2026-04-30 10:40:41', '2026-04-30 10:40:41');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`, `updated_at`) VALUES (150, 3, 'MANUAL_OVERRIDE', 'Processed exit for Elmer Jaca Alema [3594567911] (547UPP)', '127.0.0.1', '2026-05-05 12:38:04', '2026-05-05 12:38:04');

-- --------------------------------------------------------
-- Table structure for table `notifications`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(255) NOT NULL,
  `notifiable_type` VARCHAR(255) NOT NULL,
  `notifiable_id` INT(11) NOT NULL,
  `data` TEXT NOT NULL,
  `read_at` DATETIME NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for table `login_logs`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `login_logs`;
CREATE TABLE `login_logs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `ip_address` VARCHAR(255) NULL,
  `user_agent` VARCHAR(255) NULL,
  `login_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `login_logs`
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (1, 1, '143.44.165.157', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-20 01:26:59');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (2, 1, '143.44.165.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-20 01:29:25');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (3, 2, '143.44.165.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-20 01:34:34');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (4, 1, '143.44.165.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-20 01:36:14');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (5, 2, '143.44.165.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-20 02:46:46');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (6, 2, '143.44.167.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-20 02:56:14');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (7, 2, '143.44.167.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 [FBAN/FBIOS;FBAV/555.0.0.37.106;FBBV/923361586;FBDV/iPhone14,5;FBMD/iPhone;FBSN/iOS;FBSV/26.3.1;FBSS/3;FBCR/;FBID/phone;FBLC/en_US;FBOP/80]', '2026-04-20 05:32:29');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (8, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-20 13:08:38');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (9, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-20 20:41:56');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (10, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-20 20:43:14');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (11, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-21 06:24:05');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (12, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-21 06:39:49');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (13, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-21 07:50:44');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (14, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-22 05:40:00');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (15, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-22 05:59:08');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (16, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-22 23:53:46');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (17, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-22 23:54:00');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (18, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 00:06:22');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (19, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 00:09:21');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (20, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 00:11:29');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (21, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 00:26:42');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (22, 2, '119.92.152.243', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36', '2026-04-23 02:32:56');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (23, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 09:17:42');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (24, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-25 03:48:30');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (25, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-25 03:56:42');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (26, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-25 08:53:08');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (27, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-25 17:48:25');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (28, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-25 17:49:30');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (29, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-25 17:55:17');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (30, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-25 17:57:18');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (31, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-25 18:04:16');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (32, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-25 18:07:35');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (33, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-25 18:26:40');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (34, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-27 00:12:10');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (35, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-27 00:13:13');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (36, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-27 08:40:50');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (37, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-27 08:53:06');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (38, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-27 13:24:15');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (39, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-27 22:43:39');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (40, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-27 22:44:04');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (41, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-28 11:40:16');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (42, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-28 21:56:03');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (43, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-28 21:57:54');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (44, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 00:24:35');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (45, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 00:46:25');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (46, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 00:49:55');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (47, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 00:52:49');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (48, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 00:58:59');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (49, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 01:00:45');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (50, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 01:02:23');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (51, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 01:09:17');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (52, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 01:12:20');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (53, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 01:12:54');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (54, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 01:24:32');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (55, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 01:25:45');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (56, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 01:52:58');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (57, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 02:35:59');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (58, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-30 10:49:28');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (59, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-05 04:21:13');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (60, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-05 04:48:11');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (61, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-05 05:47:45');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (62, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-05-08 06:51:43');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (63, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-19 06:23:29');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (64, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-19 12:29:00');
INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `user_agent`, `login_at`) VALUES (65, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', '2026-05-19 12:50:58');

-- --------------------------------------------------------
-- Table structure for table `system_logs`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `system_logs`;
CREATE TABLE `system_logs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(255) NOT NULL DEFAULT 'info',
  `source` VARCHAR(255) NOT NULL DEFAULT 'bridge',
  `message` VARCHAR(255) NOT NULL,
  `details` TEXT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for table `lockdown_records`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `lockdown_records`;
CREATE TABLE `lockdown_records` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `started_at` DATETIME NOT NULL,
  `ended_at` DATETIME NULL,
  `admin_id` INT(11) NOT NULL,
  `reason` TEXT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for table `system_settings`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `system_settings`;
CREATE TABLE `system_settings` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `key` VARCHAR(255) NOT NULL,
  `value` TEXT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `system_settings`
INSERT INTO `system_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES (1, 'rfid_fee', '100', '2026-04-20 09:18:24', '2026-04-20 09:18:24');

-- --------------------------------------------------------
-- Table structure for table `vehicles`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `plate_number` VARCHAR(255) NOT NULL,
  `vehicle_details` VARCHAR(255) NULL,
  `rfid_tag` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `expiry_date` VARCHAR(255) NULL,
  `vehicle_type` VARCHAR(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `vehicles`
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (1, 1, 'YLM 518', 'KIA Other', '4129679834', '2026-04-20 11:05:45', '2026-04-20 21:32:10', '2027-04-19 00:00:00', 'Car / Sedan');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (2, 2, 'H3405L', 'Motor Other', '4129679846', '2026-04-20 21:31:39', '2026-04-20 22:08:13', '2027-04-19 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (3, 3, '916HAL', 'Motor Star Motor Star', '3594560743', '2026-04-20 21:39:57', '2026-04-20 21:39:57', '2027-04-20 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (4, 4, '070102', 'Honda Other', '3594562791', '2026-04-20 21:41:01', '2026-04-20 22:06:04', '2027-04-17 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (5, 5, 'HG 9360', 'Honda Wave 125', '3594566887', '2026-04-20 21:43:26', '2026-04-20 21:43:26', '2027-04-20 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (6, 6, 'H8604C', 'Honda wave 2005', '3594558695', '2026-04-20 21:46:08', '2026-04-20 21:46:08', '2027-04-20 00:00:00', 'Sidecar Motorcycles');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (7, 7, '699HSM', 'Honda Click 125i', '3594561767', '2026-04-20 21:49:59', '2026-04-20 21:49:59', '2027-04-20 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (10, 8, '642HDA', 'Yamaha Mio i 125', '3594712439', '2026-04-21 14:30:27', '2026-04-21 14:30:27', '2027-04-21 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (11, 9, 'H3866K', 'Yamaha Aerox', '3594708343', '2026-04-21 14:32:43', '2026-04-21 14:32:43', '2027-04-21 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (12, 10, 'H3409V', 'Suzuki Burgman Street', '3594711415', '2026-04-21 14:34:15', '2026-04-21 14:34:15', '2027-04-21 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (13, 11, '408HSD', 'Honda Click 125i', '3594710391', '2026-04-21 14:36:44', '2026-04-21 14:36:44', '2027-04-21 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (14, 12, 'H97021', 'Honda Other', '3594706295', '2026-04-21 14:39:35', '2026-04-21 14:42:57', '2027-04-20 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (15, 13, 'AMD528', 'Honda Click 125i', '3594565863', '2026-04-21 14:42:24', '2026-04-23 13:11:13', '2027-04-20 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (16, 14, '251HRS', 'Honda Click 125i', '3594704247', '2026-04-21 16:38:01', '2026-04-21 16:38:01', '2027-04-21 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (17, 15, '585HRB', 'Yamaha Aerox', '3594563815', '2026-04-21 16:42:02', '2026-05-05 12:53:46', '2027-04-20 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (18, 16, 'PW9829', 'Mitsubishi Montero Sport', '4129679822', '2026-04-23 10:42:39', '2026-04-23 10:42:39', '2027-04-23 00:00:00', 'Pickup');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (19, 17, '547UPP', 'Honda Other', '3594567911', '2026-04-23 14:41:36', '2026-04-23 14:56:21', '2027-04-22 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (20, 18, 'HA4850', 'Suzuki Celerio', '4129679838', '2026-04-23 14:45:04', '2026-04-23 14:45:04', '2027-04-23 00:00:00', 'Car / Sedan');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (21, 19, 'GBG 5162', 'Honda BR-V', '4129679826', '2026-04-23 15:44:44', '2026-04-23 15:53:25', '2027-04-22 00:00:00', 'Car / Sedan');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (22, 21, 'GAW 4823', 'Toyota Rush', '1111111', '2026-05-19 20:37:21', '2026-05-19 20:37:21', '2027-05-19 00:00:00', 'Car / Sedan');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (23, 22, '893H03', 'Honda Click V3', '122355566', '2026-05-19 20:41:17', '2026-05-19 20:41:17', '2027-05-19 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (24, 23, '356', 'Suzuki SMASH', '1234567', '2026-05-19 20:44:07', '2026-05-19 20:44:07', '2027-05-19 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (25, 24, 'H769CR', 'Honda Click 160', '3345566', '2026-05-19 20:46:36', '2026-05-19 20:46:36', '2027-05-19 00:00:00', 'Motorcycle');
INSERT INTO `vehicles` (`id`, `user_id`, `plate_number`, `vehicle_details`, `rfid_tag`, `created_at`, `updated_at`, `expiry_date`, `vehicle_type`) VALUES (26, 25, 'ERE322', 'Motor Mio Gare S', '234567788', '2026-05-19 21:09:51', '2026-05-19 21:09:51', '2027-05-19 00:00:00', 'Motorcycle');

-- --------------------------------------------------------
-- Table structure for table `vehicle_logs`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `vehicle_logs`;
CREATE TABLE `vehicle_logs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `vehicle_registration_id` INT(11) NULL,
  `rfid_tag_id` VARCHAR(255) NULL,
  `type` VARCHAR(255) NOT NULL,
  `timestamp` DATETIME NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `vehicle_id` INT(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `vehicle_logs`
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (1, 11, '3594710391', 'entry', '2026-04-21 16:59:46', '2026-04-21 16:59:46', '2026-04-21 16:59:46', 13);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (2, 3, '3594560743', 'entry', '2026-04-21 17:05:07', '2026-04-21 17:05:07', '2026-04-21 17:05:07', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (3, 3, '3594560743', 'exit', '2026-04-21 17:10:48', '2026-04-21 17:10:48', '2026-04-21 17:10:48', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (4, 11, '3594710391', 'exit', '2026-04-21 17:11:01', '2026-04-21 17:11:01', '2026-04-21 17:11:01', 13);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (5, 3, '3594560743', 'entry', '2026-04-22 14:00:07', '2026-04-22 14:00:07', '2026-04-22 14:00:07', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (6, 4, '3594562791', 'entry', '2026-04-22 14:00:21', '2026-04-22 14:00:21', '2026-04-22 14:00:21', 4);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (7, 2, '4129679846', 'entry', '2026-04-22 14:00:32', '2026-04-22 14:00:32', '2026-04-22 14:00:32', 2);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (8, 1, '4129679834', 'entry', '2026-04-22 14:00:42', '2026-04-22 14:00:42', '2026-04-22 14:00:42', 1);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (9, 5, '3594566887', 'entry', '2026-04-22 14:01:02', '2026-04-22 14:01:02', '2026-04-22 14:01:02', 5);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (10, 14, '3594704247', 'entry', '2026-04-22 14:05:14', '2026-04-22 14:05:14', '2026-04-22 14:05:14', 16);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (11, 2, '4129679846', 'exit', '2026-04-22 14:18:34', '2026-04-22 14:18:34', '2026-04-22 14:18:34', 2);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (12, 2, '4129679846', 'entry', '2026-04-22 14:18:56', '2026-04-22 14:18:56', '2026-04-22 14:18:56', 2);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (13, 3, '3594560743', 'exit', '2026-04-22 15:15:29', '2026-04-22 15:15:29', '2026-04-22 15:15:29', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (14, 3, '3594560743', 'entry', '2026-04-22 15:28:44', '2026-04-22 15:28:44', '2026-04-22 15:28:44', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (15, 3, '3594560743', 'exit', '2026-04-22 15:37:21', '2026-04-22 15:37:21', '2026-04-22 15:37:21', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (16, 3, '3594560743', 'entry', '2026-04-22 17:02:33', '2026-04-22 17:02:33', '2026-04-22 17:02:33', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (17, 14, '3594704247', 'exit', '2026-04-22 17:05:10', '2026-04-22 17:05:10', '2026-04-22 17:05:10', 16);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (18, 3, '3594560743', 'exit', '2026-04-22 17:07:39', '2026-04-22 17:07:39', '2026-04-22 17:07:39', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (19, 1, '4129679834', 'exit', '2026-04-22 17:08:56', '2026-04-22 17:08:56', '2026-04-22 17:08:56', 1);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (20, 5, '3594566887', 'exit', '2026-04-22 17:11:44', '2026-04-22 17:11:44', '2026-04-22 17:11:44', 5);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (21, 4, '3594562791', 'exit', '2026-04-22 17:14:33', '2026-04-22 17:14:33', '2026-04-22 17:14:33', 4);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (22, 9, '3594708343', 'entry', '2026-04-22 17:19:30', '2026-04-22 17:19:30', '2026-04-22 17:19:30', 11);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (23, 2, '4129679846', 'exit', '2026-04-22 17:30:18', '2026-04-22 17:30:18', '2026-04-22 17:30:18', 2);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (24, 9, '3594708343', 'exit', '2026-04-23 07:54:46', '2026-04-23 07:54:46', '2026-04-23 07:54:46', 11);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (25, 14, '3594704247', 'entry', '2026-04-23 08:13:19', '2026-04-23 08:13:19', '2026-04-23 08:13:19', 16);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (26, 12, '3594706295', 'entry', '2026-04-23 08:13:32', '2026-04-23 08:13:32', '2026-04-23 08:13:32', 14);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (27, 6, '3594558695', 'entry', '2026-04-23 08:13:51', '2026-04-23 08:13:51', '2026-04-23 08:13:51', 6);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (28, 5, '3594566887', 'entry', '2026-04-23 08:14:01', '2026-04-23 08:14:01', '2026-04-23 08:14:01', 5);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (29, 4, '3594562791', 'entry', '2026-04-23 08:14:09', '2026-04-23 08:14:09', '2026-04-23 08:14:09', 4);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (30, 3, '3594560743', 'entry', '2026-04-23 08:14:16', '2026-04-23 08:14:16', '2026-04-23 08:14:16', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (31, 2, '4129679846', 'entry', '2026-04-23 08:14:26', '2026-04-23 08:14:26', '2026-04-23 08:14:26', 2);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (32, 12, '3594706295', 'exit', '2026-04-23 08:32:36', '2026-04-23 08:32:36', '2026-04-23 08:32:36', 14);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (33, 12, '3594706295', 'entry', '2026-04-23 08:37:36', '2026-04-23 08:37:36', '2026-04-23 08:37:36', 14);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (34, 12, '3594706295', 'exit', '2026-04-23 10:45:49', '2026-04-23 10:45:49', '2026-04-23 10:45:49', 14);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (35, 12, '3594706295', 'entry', '2026-04-23 11:02:44', '2026-04-23 11:02:44', '2026-04-23 17:10:05', 14);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (36, 10, '3594711415', 'entry', '2026-04-23 13:13:28', '2026-04-23 13:13:28', '2026-04-23 15:31:31', 12);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (37, 3, '3594560743', 'exit', '2026-04-23 14:24:39', '2026-04-23 14:24:39', '2026-04-23 14:24:39', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (38, 3, '3594560743', 'entry', '2026-04-23 14:28:11', '2026-04-23 14:28:11', '2026-04-23 14:28:11', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (39, 13, '3594565863', 'entry', '2026-04-23 14:30:32', '2026-04-23 14:30:32', '2026-04-23 14:30:32', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (40, 13, '3594565863', 'exit', '2026-04-23 14:33:35', '2026-04-23 14:33:35', '2026-04-23 14:33:35', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (41, 10, '3594711415', 'exit', '2026-04-23 15:31:39', '2026-04-23 15:31:39', '2026-04-23 15:31:39', 12);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (42, 19, '4129679826', 'entry', '2026-04-23 15:45:11', '2026-04-23 15:45:11', '2026-04-23 15:45:11', 21);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (43, 13, '3594565863', 'entry', '2026-04-23 16:09:44', '2026-04-23 16:09:44', '2026-04-23 16:09:44', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (44, 13, '3594565863', 'exit', '2026-04-23 16:09:56', '2026-04-23 16:09:56', '2026-04-23 16:09:56', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (45, 13, '3594565863', 'entry', '2026-04-23 16:10:05', '2026-04-23 16:10:05', '2026-04-23 16:10:05', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (46, 13, '3594565863', 'exit', '2026-04-23 16:10:16', '2026-04-23 16:10:16', '2026-04-23 16:10:16', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (47, 13, '3594565863', 'entry', '2026-04-23 16:10:26', '2026-04-23 16:10:26', '2026-04-23 16:10:26', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (48, 13, '3594565863', 'exit', '2026-04-23 16:10:36', '2026-04-23 16:10:36', '2026-04-23 16:10:36', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (49, 13, '3594565863', 'entry', '2026-04-23 16:10:45', '2026-04-23 16:10:45', '2026-04-23 16:10:45', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (50, 13, '3594565863', 'exit', '2026-04-23 16:10:51', '2026-04-23 16:10:51', '2026-04-23 16:10:51', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (51, 11, '3594710391', 'entry', '2026-04-23 16:46:02', '2026-04-23 16:46:02', '2026-04-23 16:46:02', 13);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (52, 3, '3594560743', 'exit', '2026-04-23 17:05:06', '2026-04-23 17:05:06', '2026-04-23 17:05:06', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (53, 4, '3594562791', 'exit', '2026-04-23 17:07:29', '2026-04-23 17:07:29', '2026-04-23 17:07:29', 4);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (54, 5, '3594566887', 'exit', '2026-04-23 17:08:15', '2026-04-23 17:08:15', '2026-04-23 17:08:15', 5);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (55, 12, '3594706295', 'exit', '2026-04-23 17:10:12', '2026-04-23 17:10:12', '2026-04-23 17:10:12', 14);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (56, 2, '4129679846', 'exit', '2026-04-23 17:11:37', '2026-04-23 17:11:37', '2026-04-23 17:11:37', 2);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (57, 11, '3594710391', 'exit', '2026-04-23 17:15:05', '2026-04-23 17:15:05', '2026-04-23 17:15:05', 13);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (58, 11, '3594710391', 'entry', '2026-04-23 17:18:08', '2026-04-23 17:18:08', '2026-04-23 17:18:08', 13);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (59, 11, '3594710391', 'exit', '2026-04-23 17:18:18', '2026-04-23 17:18:18', '2026-04-23 17:18:18', 13);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (60, 11, '3594710391', 'entry', '2026-04-23 17:18:31', '2026-04-23 17:18:31', '2026-04-23 17:18:31', 13);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (61, 11, '3594710391', 'exit', '2026-04-23 17:18:56', '2026-04-23 17:18:56', '2026-04-23 17:18:56', 13);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (62, 5, '3594566887', 'entry', '2026-04-27 08:16:08', '2026-04-27 08:16:08', '2026-04-27 08:16:08', 5);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (63, 4, '3594562791', 'entry', '2026-04-27 08:16:17', '2026-04-27 08:16:17', '2026-04-27 08:16:17', 4);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (64, 3, '3594560743', 'entry', '2026-04-27 08:16:26', '2026-04-27 08:16:26', '2026-04-27 08:16:26', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (65, 2, '4129679846', 'entry', '2026-04-27 08:16:35', '2026-04-27 08:16:35', '2026-04-27 08:16:35', 2);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (66, 6, '3594558695', 'exit', '2026-04-27 08:16:50', '2026-04-27 08:16:50', '2026-04-27 08:16:50', 6);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (67, 6, '3594558695', 'entry', '2026-04-27 08:17:04', '2026-04-27 08:17:04', '2026-04-27 08:17:04', 6);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (68, 17, '3594567911', 'entry', '2026-04-27 08:17:19', '2026-04-27 08:17:19', '2026-04-27 08:17:19', 19);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (69, 19, '4129679826', 'exit', '2026-04-27 08:17:27', '2026-04-27 08:17:27', '2026-04-27 08:17:27', 21);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (70, 6, '3594558695', 'exit', '2026-04-27 08:18:00', '2026-04-27 08:18:00', '2026-04-27 08:18:00', 6);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (71, 19, '4129679826', 'entry', '2026-04-27 08:18:24', '2026-04-27 08:18:24', '2026-04-27 08:18:24', 21);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (72, 6, '3594558695', 'entry', '2026-04-27 08:18:34', '2026-04-27 08:18:34', '2026-04-27 08:18:34', 6);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (73, 10, '3594711415', 'entry', '2026-04-27 08:22:26', '2026-04-27 08:22:26', '2026-04-27 08:22:26', 12);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (74, 1, '4129679834', 'entry', '2026-04-27 08:22:33', '2026-04-27 08:22:33', '2026-04-27 08:22:33', 1);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (75, 13, '3594565863', 'entry', '2026-04-27 08:35:43', '2026-04-27 08:35:43', '2026-04-27 08:35:43', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (76, 13, '3594565863', 'exit', '2026-04-27 08:35:54', '2026-04-27 08:35:54', '2026-04-27 08:35:54', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (77, 13, '3594565863', 'entry', '2026-04-27 09:14:13', '2026-04-27 09:14:13', '2026-04-27 09:14:13', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (78, 3, '3594560743', 'exit', '2026-04-27 10:50:48', '2026-04-27 10:50:48', '2026-04-27 10:50:48', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (79, 14, '3594704247', 'exit', '2026-04-27 16:44:46', '2026-04-27 16:44:46', '2026-04-27 16:44:46', 16);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (80, 13, '3594565863', 'exit', '2026-04-27 16:46:56', '2026-04-27 16:46:56', '2026-04-27 16:46:56', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (81, 13, '3594565863', 'entry', '2026-04-27 16:50:40', '2026-04-27 16:50:40', '2026-04-27 16:50:40', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (82, 1, '4129679834', 'exit', '2026-04-27 17:07:26', '2026-04-27 17:07:26', '2026-04-27 17:07:26', 1);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (83, 10, '3594711415', 'exit', '2026-04-27 17:07:35', '2026-04-27 17:07:35', '2026-04-27 17:07:35', 12);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (84, 6, '3594558695', 'exit', '2026-04-27 17:08:13', '2026-04-27 17:08:13', '2026-04-27 17:08:13', 6);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (85, 13, '3594565863', 'exit', '2026-04-27 17:22:00', '2026-04-27 17:22:00', '2026-04-27 17:22:00', 15);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (86, 1, '4129679834', 'entry', '2026-04-28 07:32:25', '2026-04-28 07:32:25', '2026-04-28 07:32:25', 1);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (87, 2, '4129679846', 'exit', '2026-04-28 07:32:35', '2026-04-28 07:32:35', '2026-04-28 07:32:35', 2);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (88, 3, '3594560743', 'entry', '2026-04-28 07:32:45', '2026-04-28 07:32:45', '2026-04-28 07:32:45', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (89, 4, '3594562791', 'exit', '2026-04-28 07:32:53', '2026-04-28 07:32:53', '2026-04-28 07:32:53', 4);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (90, 5, '3594566887', 'exit', '2026-04-28 07:33:03', '2026-04-28 07:33:03', '2026-04-28 07:33:03', 5);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (91, 6, '3594558695', 'entry', '2026-04-28 07:33:15', '2026-04-28 07:33:15', '2026-04-28 07:33:15', 6);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (92, 14, '3594704247', 'entry', '2026-04-28 07:33:34', '2026-04-28 07:33:34', '2026-04-28 07:33:34', 16);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (93, 17, '3594567911', 'exit', '2026-04-28 07:33:54', '2026-04-28 07:33:54', '2026-04-28 07:33:54', 19);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (94, 17, '3594567911', 'entry', '2026-04-28 07:48:38', '2026-04-28 07:48:38', '2026-04-28 07:48:38', 19);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (95, 5, '3594566887', 'entry', '2026-04-28 07:48:51', '2026-04-28 07:48:51', '2026-04-28 07:48:51', 5);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (96, 4, '3594562791', 'entry', '2026-04-28 07:49:04', '2026-04-28 07:49:04', '2026-04-28 07:49:04', 4);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (97, 2, '4129679846', 'entry', '2026-04-28 07:49:13', '2026-04-28 07:49:13', '2026-04-28 07:49:13', 2);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (98, 19, '4129679826', 'exit', '2026-04-28 10:32:26', '2026-04-28 10:32:26', '2026-04-28 10:32:26', 21);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (99, 19, '4129679826', 'entry', '2026-04-28 10:32:34', '2026-04-28 10:32:34', '2026-04-28 10:32:34', 21);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (100, 11, '3594710391', 'entry', '2026-04-28 10:33:02', '2026-04-28 10:33:02', '2026-04-28 10:33:02', 13);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (101, 10, '3594711415', 'entry', '2026-04-28 10:33:22', '2026-04-28 10:33:22', '2026-04-28 10:33:22', 12);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (102, 8, '3594712439', 'entry', '2026-04-28 10:33:42', '2026-04-28 10:33:42', '2026-04-28 10:33:42', 10);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (103, 6, '3594558695', 'exit', '2026-04-28 10:34:24', '2026-04-28 10:34:24', '2026-04-28 10:34:24', 6);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (104, 6, '3594558695', 'entry', '2026-04-28 10:34:40', '2026-04-28 10:34:40', '2026-04-28 10:34:40', 6);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (105, 6, '3594558695', 'exit', '2026-04-28 19:40:31', '2026-04-28 19:40:31', '2026-04-28 19:40:31', 6);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (106, 8, '3594712439', 'exit', '2026-04-28 19:40:41', '2026-04-28 19:40:41', '2026-04-28 19:40:41', 10);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (107, 10, '3594711415', 'exit', '2026-04-28 19:40:54', '2026-04-28 19:40:54', '2026-04-28 19:40:54', 12);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (108, 11, '3594710391', 'exit', '2026-04-28 19:41:08', '2026-04-28 19:41:08', '2026-04-28 19:41:08', 13);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (109, 19, '4129679826', 'exit', '2026-04-28 19:41:28', '2026-04-28 19:41:28', '2026-04-28 19:41:28', 21);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (110, 5, '3594566887', 'exit', '2026-04-28 19:41:37', '2026-04-28 19:41:37', '2026-04-28 19:41:37', 5);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (111, 4, '3594562791', 'exit', '2026-04-28 19:41:48', '2026-04-28 19:41:48', '2026-04-28 19:41:48', 4);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (112, 2, '4129679846', 'exit', '2026-04-28 19:41:59', '2026-04-28 19:41:59', '2026-04-28 19:41:59', 2);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (113, 1, '4129679834', 'exit', '2026-04-30 08:26:02', '2026-04-30 08:26:02', '2026-04-30 08:26:02', 1);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (114, 3, '3594560743', 'exit', '2026-04-30 08:26:11', '2026-04-30 08:26:11', '2026-04-30 08:26:11', 3);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (115, 14, '3594704247', 'exit', '2026-04-30 08:26:21', '2026-04-30 08:26:21', '2026-04-30 08:26:21', 16);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (116, 17, '3594567911', 'exit', '2026-04-30 08:26:31', '2026-04-30 08:26:31', '2026-04-30 08:26:31', 19);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (117, 17, '3594567911', 'entry', '2026-04-30 10:40:41', '2026-04-30 10:40:41', '2026-04-30 10:40:41', 19);
INSERT INTO `vehicle_logs` (`id`, `vehicle_registration_id`, `rfid_tag_id`, `type`, `timestamp`, `created_at`, `updated_at`, `vehicle_id`) VALUES (118, 17, '3594567911', 'exit', '2026-05-05 12:38:04', '2026-05-05 12:38:04', '2026-05-05 12:38:04', 19);

-- --------------------------------------------------------
-- Table structure for table `vehicle_models`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `vehicle_models`;
CREATE TABLE `vehicle_models` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `vehicle_brand_id` INT(11) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `vehicle_models`
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (1, 1, 'Vios', '2026-04-20 09:19:12', '2026-04-20 09:19:12');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (2, 1, 'Hilux', '2026-04-20 09:19:12', '2026-04-20 09:19:12');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (3, 1, 'Fortuner', '2026-04-20 09:19:13', '2026-04-20 09:19:13');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (4, 1, 'Wigo', '2026-04-20 09:19:13', '2026-04-20 09:19:13');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (5, 1, 'Innova', '2026-04-20 09:19:13', '2026-04-20 09:19:13');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (6, 1, 'Camry', '2026-04-20 09:19:13', '2026-04-20 09:19:13');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (7, 1, 'Raize', '2026-04-20 09:19:13', '2026-04-20 09:19:13');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (8, 2, 'Civic', '2026-04-20 09:19:14', '2026-04-20 09:19:14');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (9, 2, 'CR-V', '2026-04-20 09:19:14', '2026-04-20 09:19:14');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (10, 2, 'City', '2026-04-20 09:19:15', '2026-04-20 09:19:15');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (11, 2, 'BR-V', '2026-04-20 09:19:15', '2026-04-20 09:19:15');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (12, 2, 'ADV 160', '2026-04-20 09:19:15', '2026-04-20 09:19:15');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (13, 2, 'Click 125i', '2026-04-20 09:19:16', '2026-04-20 09:19:16');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (14, 2, 'PCX 160', '2026-04-20 09:19:16', '2026-04-20 09:19:16');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (15, 3, 'Montero Sport', '2026-04-20 09:19:17', '2026-04-20 09:19:17');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (16, 3, 'Mirage', '2026-04-20 09:19:17', '2026-04-20 09:19:17');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (17, 3, 'L300', '2026-04-20 09:19:17', '2026-04-20 09:19:17');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (18, 3, 'Xpander', '2026-04-20 09:19:17', '2026-04-20 09:19:17');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (19, 3, 'Strada', '2026-04-20 09:19:17', '2026-04-20 09:19:17');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (20, 4, 'Navara', '2026-04-20 09:19:18', '2026-04-20 09:19:18');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (21, 4, 'Terra', '2026-04-20 09:19:18', '2026-04-20 09:19:18');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (22, 4, 'Almera', '2026-04-20 09:19:18', '2026-04-20 09:19:18');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (23, 4, 'Urvan', '2026-04-20 09:19:19', '2026-04-20 09:19:19');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (24, 5, 'Ertiga', '2026-04-20 09:19:19', '2026-04-20 09:19:19');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (25, 5, 'Jimny', '2026-04-20 09:19:20', '2026-04-20 09:19:20');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (26, 5, 'Swift', '2026-04-20 09:19:20', '2026-04-20 09:19:20');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (27, 5, 'S-Presso', '2026-04-20 09:19:20', '2026-04-20 09:19:20');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (28, 5, 'Burgman Street', '2026-04-20 09:19:20', '2026-04-20 09:19:20');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (29, 5, 'Raider R150', '2026-04-20 09:19:20', '2026-04-20 09:19:20');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (30, 6, 'NMAX', '2026-04-20 09:19:21', '2026-04-20 09:19:21');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (31, 6, 'Aerox', '2026-04-20 09:19:21', '2026-04-20 09:19:21');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (32, 6, 'Mio i 125', '2026-04-20 09:19:21', '2026-04-20 09:19:21');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (33, 6, 'YZF-R15', '2026-04-20 09:19:21', '2026-04-20 09:19:21');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (34, 6, 'Sniper 155', '2026-04-20 09:19:21', '2026-04-20 09:19:21');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (35, 7, 'D-MAX', '2026-04-20 09:19:22', '2026-04-20 09:19:22');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (36, 7, 'mu-X', '2026-04-20 09:19:22', '2026-04-20 09:19:22');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (37, 7, 'Elf', '2026-04-20 09:19:22', '2026-04-20 09:19:22');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (38, 7, 'Forward', '2026-04-20 09:19:22', '2026-04-20 09:19:22');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (39, 8, 'Ranger', '2026-04-20 09:19:23', '2026-04-20 09:19:23');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (40, 8, 'Everest', '2026-04-20 09:19:23', '2026-04-20 09:19:23');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (41, 8, 'Territory', '2026-04-20 09:19:23', '2026-04-20 09:19:23');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (42, 8, 'Explorer', '2026-04-20 09:19:23', '2026-04-20 09:19:23');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (43, 9, 'Staria', '2026-04-20 09:19:24', '2026-04-20 09:19:24');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (44, 9, 'Accent', '2026-04-20 09:19:24', '2026-04-20 09:19:24');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (45, 9, 'Verna', '2026-04-20 09:19:24', '2026-04-20 09:19:24');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (46, 9, 'Tucson', '2026-04-20 09:19:24', '2026-04-20 09:19:24');
INSERT INTO `vehicle_models` (`id`, `vehicle_brand_id`, `name`, `created_at`, `updated_at`) VALUES (47, 9, 'Creta', '2026-04-20 09:19:25', '2026-04-20 09:19:25');

-- --------------------------------------------------------
-- Table structure for table `vehicle_categories`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `vehicle_categories`;
CREATE TABLE `vehicle_categories` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `icon` VARCHAR(255) NULL,
  `is_active` INT(11) NOT NULL DEFAULT '1',
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `vehicle_categories`
INSERT INTO `vehicle_categories` (`id`, `name`, `icon`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Motorcycle', 'bicycle', 1, '2026-04-20 09:19:11', '2026-04-20 09:19:11');
INSERT INTO `vehicle_categories` (`id`, `name`, `icon`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Car / Sedan', 'car', 1, '2026-04-20 09:19:11', '2026-04-20 09:19:11');
INSERT INTO `vehicle_categories` (`id`, `name`, `icon`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'SUV / Van', 'jeep', 1, '2026-04-20 09:19:11', '2026-04-20 09:19:11');
INSERT INTO `vehicle_categories` (`id`, `name`, `icon`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'Pickup', 'truck', 1, '2026-04-20 09:19:11', '2026-04-20 09:19:11');
INSERT INTO `vehicle_categories` (`id`, `name`, `icon`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Truck', 'car-profile', 1, '2026-04-20 09:19:11', '2026-04-20 09:19:11');
INSERT INTO `vehicle_categories` (`id`, `name`, `icon`, `is_active`, `created_at`, `updated_at`) VALUES (6, 'Sidecar Motorcycles', 'motorcycle', 1, '2026-04-20 09:19:12', '2026-04-20 09:19:12');

-- --------------------------------------------------------
-- Table structure for table `colleges`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `colleges`;
CREATE TABLE `colleges` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `code` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `category` VARCHAR(255) NOT NULL DEFAULT 'academic',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `colleges`
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (1, 'Department of Computer Studies', NULL, '2026-04-20 09:19:25', '2026-04-20 09:19:25', 'academic');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (2, 'Department of Teacher Education', NULL, '2026-04-20 09:19:25', '2026-04-20 09:19:25', 'academic');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (3, 'Department of Business Management', NULL, '2026-04-20 09:19:26', '2026-04-20 09:19:26', 'academic');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (4, 'Department of Engineering', NULL, '2026-04-20 09:19:26', '2026-04-20 09:19:26', 'academic');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (5, 'Department of Industrial Technology', NULL, '2026-04-20 09:19:27', '2026-04-20 09:19:27', 'academic');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (6, 'Office of the Campus Director', 'OFFICE', '2026-04-20 09:19:27', '2026-04-20 09:19:27', 'administrative');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (7, 'Registrar Office', 'OFFICE', '2026-04-20 09:19:28', '2026-04-20 09:19:28', 'administrative');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (8, 'Administrative and Finance Services', 'OFFICE', '2026-04-20 09:19:28', '2026-04-20 09:19:28', 'administrative');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (9, 'Human Resource Management Office (HRMO)', 'OFFICE', '2026-04-20 09:19:28', '2026-04-20 09:19:28', 'administrative');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (10, 'Guidance Office', 'OFFICE', '2026-04-20 09:19:28', '2026-04-20 09:19:28', 'administrative');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (11, 'Student Affairs and Services Offices (SASO)', 'OFFICE', '2026-04-20 09:19:28', '2026-04-20 09:19:28', 'administrative');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (12, 'Alumni Relations and Affairs Office', 'OFFICE', '2026-04-20 09:19:28', '2026-04-20 09:19:28', 'administrative');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (13, 'Maintenance and Engineering Services Office(MESO)', 'OFFICE', '2026-04-20 09:19:29', '2026-04-20 09:47:58', 'administrative');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (14, 'Library', 'OFFICE', '2026-04-20 09:19:29', '2026-04-20 09:19:29', 'administrative');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (15, 'Campus Clinic', 'OFFICE', '2026-04-20 09:19:29', '2026-04-20 09:19:29', 'administrative');
INSERT INTO `colleges` (`id`, `name`, `code`, `created_at`, `updated_at`, `category`) VALUES (16, 'Supply Office', 'OFFICE', '2026-04-20 09:19:29', '2026-04-20 09:19:29', 'administrative');

-- --------------------------------------------------------
-- Table structure for table `courses`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `college_id` INT(11) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `code` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `courses`
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (1, 1, 'Bachelor of Science in Information Technology (BSIT)', NULL, '2026-04-20 09:19:25', '2026-04-20 09:19:25');
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (2, 2, 'Bachelor of Elementary Education (BEED)', NULL, '2026-04-20 09:19:25', '2026-04-20 09:19:25');
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (3, 2, 'Bachelor of Secondary Education (BSEd) major in Mathematics', NULL, '2026-04-20 09:19:25', '2026-04-20 09:19:25');
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (4, 2, 'Bachelor of Secondary Education (BSEd) major in Science', NULL, '2026-04-20 09:19:25', '2026-04-20 09:19:25');
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (5, 2, 'Bachelor of Physical Education (BPEd)', NULL, '2026-04-20 09:19:25', '2026-04-20 09:19:25');
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (6, 2, 'Bachelor of Technical-Vocational Teacher Education (BTVTEd)', NULL, '2026-04-20 09:19:26', '2026-04-20 09:19:26');
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (7, 2, 'Diploma in Teaching Secondary (DTS)', NULL, '2026-04-20 09:19:26', '2026-04-20 09:19:26');
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (8, 3, 'Bachelor of Science in Hospitality Management (BSHM)', NULL, '2026-04-20 09:19:26', '2026-04-20 09:19:26');
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (9, 4, 'Bachelor of Science in Civil Engineering (BSCE)', NULL, '2026-04-20 09:19:26', '2026-04-20 09:19:26');
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (10, 4, 'Bachelor of Science in Electrical Engineering (BSEE)', NULL, '2026-04-20 09:19:27', '2026-04-20 09:19:27');
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (11, 4, 'Bachelor of Science in Mechanical Engineering (BSME)', NULL, '2026-04-20 09:19:27', '2026-04-20 09:19:27');
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (12, 5, 'Bachelor of Industrial Technology (BIT) major in Culinary Arts (CA)', NULL, '2026-04-20 09:19:27', '2026-04-20 09:19:27');
INSERT INTO `courses` (`id`, `college_id`, `name`, `code`, `created_at`, `updated_at`) VALUES (13, 5, 'Bachelor of Industrial Technology (BIT) major in Electronics (ET)', NULL, '2026-04-20 09:19:27', '2026-04-20 09:19:27');

-- --------------------------------------------------------
-- Table structure for table `rfid_tags`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `rfid_tags`;
CREATE TABLE `rfid_tags` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `tag_id` VARCHAR(255) NOT NULL,
  `status` VARCHAR(255) NOT NULL DEFAULT 'available',
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Table structure for table `payments`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `vehicle_registration_id` INT(11) NOT NULL,
  `or_number` VARCHAR(255) NOT NULL,
  `amount` VARCHAR(255) NOT NULL,
  `paid_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `payments`
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (1, 1, 'REG-7DC8C97D', 100, '2026-04-20 11:05:45', '2026-04-20 11:05:45', '2026-04-20 11:05:45');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (2, 2, 'REG-3F627FC0', 100, '2026-04-20 21:31:39', '2026-04-20 21:31:39', '2026-04-20 21:31:39');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (3, 3, 'REG-37FC311A', 100, '2026-04-20 21:39:57', '2026-04-20 21:39:57', '2026-04-20 21:39:57');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (4, 4, 'REG-CA63DF16', 100, '2026-04-20 21:41:01', '2026-04-20 21:41:01', '2026-04-20 21:41:01');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (5, 5, 'REG-9305065E', 100, '2026-04-20 21:43:26', '2026-04-20 21:43:26', '2026-04-20 21:43:26');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (6, 6, 'REG-A5B99812', 100, '2026-04-20 21:46:08', '2026-04-20 21:46:08', '2026-04-20 21:46:08');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (7, 7, 'REG-216AD538', 100, '2026-04-20 21:50:00', '2026-04-20 21:50:00', '2026-04-20 21:50:00');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (8, 8, 'REG-3337A205', 100, '2026-04-21 14:30:27', '2026-04-21 14:30:27', '2026-04-21 14:30:27');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (9, 9, 'REG-B9574D84', 100, '2026-04-21 14:32:43', '2026-04-21 14:32:43', '2026-04-21 14:32:43');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (10, 10, 'REG-BE0D43A4', 100, '2026-04-21 14:34:15', '2026-04-21 14:34:15', '2026-04-21 14:34:15');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (11, 11, 'REG-30214C0A', 100, '2026-04-21 14:36:44', '2026-04-21 14:36:44', '2026-04-21 14:36:44');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (12, 12, 'REG-51AE7495', 100, '2026-04-21 14:39:35', '2026-04-21 14:39:35', '2026-04-21 14:39:35');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (13, 13, 'REG-86B5389B', 100, '2026-04-21 14:42:25', '2026-04-21 14:42:25', '2026-04-21 14:42:25');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (14, 14, 'REG-36E11F05', 100, '2026-04-21 16:38:01', '2026-04-21 16:38:01', '2026-04-21 16:38:01');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (15, 15, 'REG-8781B081', 100, '2026-04-21 16:42:02', '2026-04-21 16:42:02', '2026-04-21 16:42:02');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (16, 16, 'REG-5FBD1760', 100, '2026-04-23 10:42:39', '2026-04-23 10:42:39', '2026-04-23 10:42:39');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (17, 17, 'REG-D83DDA61', 100, '2026-04-23 14:41:36', '2026-04-23 14:41:36', '2026-04-23 14:41:36');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (18, 18, 'REG-D39FD51A', 100, '2026-04-23 14:45:04', '2026-04-23 14:45:04', '2026-04-23 14:45:04');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (19, 19, 'REG-BDF61F90', 100, '2026-04-23 15:44:44', '2026-04-23 15:44:44', '2026-04-23 15:44:44');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (20, 21, 'REG-6190A37C', 100, '2026-05-19 20:37:21', '2026-05-19 20:37:21', '2026-05-19 20:37:21');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (21, 22, 'REG-FC28F1BF', 100, '2026-05-19 20:41:17', '2026-05-19 20:41:17', '2026-05-19 20:41:17');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (22, 23, 'REG-4C3459F6', 100, '2026-05-19 20:44:07', '2026-05-19 20:44:07', '2026-05-19 20:44:07');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (23, 24, 'REG-EA0E2251', 100, '2026-05-19 20:46:36', '2026-05-19 20:46:36', '2026-05-19 20:46:36');
INSERT INTO `payments` (`id`, `vehicle_registration_id`, `or_number`, `amount`, `paid_at`, `created_at`, `updated_at`) VALUES (24, 25, 'REG-5203349E', 100, '2026-05-19 21:09:51', '2026-05-19 21:09:51', '2026-05-19 21:09:51');

-- --------------------------------------------------------
-- Table structure for table `vehicle_brand_category`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `vehicle_brand_category`;
CREATE TABLE `vehicle_brand_category` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `vehicle_category_id` INT(11) NOT NULL,
  `vehicle_brand_id` INT(11) NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `vehicle_brand_category`
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (1, 2, 1, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (2, 3, 1, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (3, 4, 1, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (4, 2, 2, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (5, 3, 2, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (6, 1, 2, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (7, 6, 2, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (8, 2, 3, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (9, 3, 3, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (10, 4, 3, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (11, 2, 4, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (12, 3, 4, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (13, 4, 4, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (14, 2, 5, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (15, 3, 5, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (16, 1, 5, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (17, 6, 5, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (18, 1, 6, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (19, 6, 6, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (20, 3, 7, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (21, 4, 7, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (22, 5, 7, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (23, 3, 8, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (24, 4, 8, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (25, 2, 9, NULL, NULL);
INSERT INTO `vehicle_brand_category` (`id`, `vehicle_category_id`, `vehicle_brand_id`, `created_at`, `updated_at`) VALUES (26, 3, 9, NULL, NULL);

-- --------------------------------------------------------
-- Table structure for table `vehicle_brands`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `vehicle_brands`;
CREATE TABLE `vehicle_brands` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `vehicle_category_id` INT(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `vehicle_brands`
INSERT INTO `vehicle_brands` (`id`, `name`, `created_at`, `updated_at`, `vehicle_category_id`) VALUES (1, 'Toyota', '2026-04-20 09:19:12', '2026-04-20 09:19:12', NULL);
INSERT INTO `vehicle_brands` (`id`, `name`, `created_at`, `updated_at`, `vehicle_category_id`) VALUES (2, 'Honda', '2026-04-20 09:19:13', '2026-04-20 09:19:13', NULL);
INSERT INTO `vehicle_brands` (`id`, `name`, `created_at`, `updated_at`, `vehicle_category_id`) VALUES (3, 'Mitsubishi', '2026-04-20 09:19:16', '2026-04-20 09:19:16', NULL);
INSERT INTO `vehicle_brands` (`id`, `name`, `created_at`, `updated_at`, `vehicle_category_id`) VALUES (4, 'Nissan', '2026-04-20 09:19:18', '2026-04-20 09:19:18', NULL);
INSERT INTO `vehicle_brands` (`id`, `name`, `created_at`, `updated_at`, `vehicle_category_id`) VALUES (5, 'Suzuki', '2026-04-20 09:19:19', '2026-04-20 09:19:19', NULL);
INSERT INTO `vehicle_brands` (`id`, `name`, `created_at`, `updated_at`, `vehicle_category_id`) VALUES (6, 'Yamaha', '2026-04-20 09:19:20', '2026-04-20 09:19:20', NULL);
INSERT INTO `vehicle_brands` (`id`, `name`, `created_at`, `updated_at`, `vehicle_category_id`) VALUES (7, 'Isuzu', '2026-04-20 09:19:21', '2026-04-20 09:19:21', NULL);
INSERT INTO `vehicle_brands` (`id`, `name`, `created_at`, `updated_at`, `vehicle_category_id`) VALUES (8, 'Ford', '2026-04-20 09:19:23', '2026-04-20 09:19:23', NULL);
INSERT INTO `vehicle_brands` (`id`, `name`, `created_at`, `updated_at`, `vehicle_category_id`) VALUES (9, 'Hyundai', '2026-04-20 09:19:24', '2026-04-20 09:19:24', NULL);

-- --------------------------------------------------------
-- Table structure for table `vehicle_registrations`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `vehicle_registrations`;
CREATE TABLE `vehicle_registrations` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `role` VARCHAR(255) NOT NULL,
  `full_name` VARCHAR(255) NOT NULL,
  `university_id` VARCHAR(255) NULL,
  `college_dept` VARCHAR(255) NULL,
  `contact_number` VARCHAR(255) NULL,
  `email_address` VARCHAR(255) NULL,
  `course` VARCHAR(255) NULL,
  `year_level` VARCHAR(255) NULL,
  `rank` VARCHAR(255) NULL,
  `office` VARCHAR(255) NULL,
  `business_stall_name` VARCHAR(255) NULL,
  `vendor_address` VARCHAR(255) NULL,
  `vehicle_type` VARCHAR(255) NOT NULL,
  `registered_owner` VARCHAR(255) NULL,
  `make_brand` VARCHAR(255) NOT NULL,
  `model_year` VARCHAR(255) NULL,
  `color` VARCHAR(255) NULL,
  `plate_number` VARCHAR(255) NOT NULL,
  `engine_number` VARCHAR(255) NULL,
  `sticker_classification` TEXT NULL,
  `requirements` TEXT NULL,
  `validity_from` VARCHAR(255) NULL,
  `validity_to` VARCHAR(255) NULL,
  `rfid_tag_id` VARCHAR(255) NULL,
  `status` VARCHAR(255) NOT NULL DEFAULT 'pending',
  `office_user_id` INT(11) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `cr_path` VARCHAR(255) NULL,
  `or_path` VARCHAR(255) NULL,
  `cor_path` VARCHAR(255) NULL,
  `student_id_path` VARCHAR(255) NULL,
  `license_path` VARCHAR(255) NULL,
  `employee_id_path` VARCHAR(255) NULL,
  `payment_receipt_path` VARCHAR(255) NULL,
  `rejection_reason` TEXT NULL,
  `first_name` VARCHAR(255) NULL,
  `last_name` VARCHAR(255) NULL,
  `middle_name` VARCHAR(255) NULL,
  `model_name` VARCHAR(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table `vehicle_registrations`
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (1, 'faculty', 'Wilferd Jude A Perante', 'N/A', 'Department of Computer Studies', '09153872377', 'wilferdjude.perante@evsu.edu.ph', NULL, NULL, NULL, NULL, NULL, NULL, 'Car / Sedan', 'N/A', 'KIA', 'N/A', 'N/A', 'YLM 518', 'N/A', '[]', '[]', '2026-04-19 00:00:00', '2027-04-19 00:00:00', '4129679834', 'approved', 2, '2026-04-20 11:05:45', '2026-04-21 14:46:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wilferd Jude', 'Perante', 'A', 'Other');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (2, 'faculty', 'Jude I Jabilles', 'N/A', 'Maintenance and Engineering Services Office(MESO)', '9927825687', 'judejabilles74@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Motorcycle', 'N/A', 'Motor', 'N/A', 'N/A', 'H3405L', 'N/A', '[]', '[]', '2026-04-19 00:00:00', '2027-04-19 00:00:00', '4129679846', 'approved', 2, '2026-04-20 21:31:39', '2026-04-21 14:45:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jude', 'Jabilles', 'I', 'Other');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (3, 'faculty', 'Angelito A Laureano', NULL, 'Maintenance and Engineering Services Office(MESO)', NULL, 'N/A', NULL, NULL, NULL, 'Maintenance and Engineering Services Office(MESO)', NULL, NULL, 'Motorcycle', 'Angelito A Laureano', 'Motor Star', NULL, NULL, '916HAL', NULL, '["faculty"]', NULL, '2026-04-20 00:00:00', '2027-04-20 00:00:00', '3594560743', 'approved', 2, '2026-04-20 21:39:57', '2026-04-21 14:45:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Angelito', 'Laureano', 'A', 'Motor Star');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (4, 'faculty', 'Filipe F Mangahoc', 'N/A', 'Maintenance and Engineering Services Office(MESO)', '09158516702', 'felipemangahoc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Motorcycle', 'N/A', 'Honda', 'N/A', 'N/A', '070102', 'N/A', '[]', '[]', '2026-04-17 00:00:00', '2027-04-17 00:00:00', '3594562791', 'approved', 2, '2026-04-20 21:41:01', '2026-04-21 14:44:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Filipe', 'Mangahoc', 'F', 'Other');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (5, 'faculty', 'Ramir PO Capuyan', NULL, 'Maintenance and Engineering Services Office(MESO)', '09630381315', 'N/A', NULL, NULL, NULL, 'Maintenance and Engineering Services Office(MESO)', NULL, NULL, 'Motorcycle', 'Ramir PO Capuyan', 'Honda', NULL, NULL, 'HG 9360', NULL, '["faculty"]', NULL, '2026-04-20 00:00:00', '2027-04-20 00:00:00', '3594566887', 'approved', 2, '2026-04-20 21:43:26', '2026-04-21 14:44:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ramir', 'Capuyan', 'PO', 'Wave 125');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (6, 'staff', 'Joseph A Gariando', 'N/A', NULL, '090', 'josephapasgariando@gmail.com', NULL, NULL, NULL, NULL, 'Gariando''s Eatery', 'Stall 5', 'Sidecar Motorcycles', 'Joseph A Gariando', 'Honda', NULL, NULL, 'H8604C', NULL, '["staff"]', NULL, '2026-04-20 00:00:00', '2027-04-20 00:00:00', '3594558695', 'approved', 2, '2026-04-20 21:46:08', '2026-04-21 14:45:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Joseph', 'Gariando', 'A', 'wave 2005');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (7, 'student', 'Gerard Q Matin-ao', '2025-34013', 'Department of Teacher Education', '09949470897', 'gerard.matinao@evsu.edu.ph', 'Bachelor of Elementary Education (BEED)', '1st Year', NULL, NULL, NULL, NULL, 'Motorcycle', 'Gerard Q Matin-ao', 'Honda', NULL, NULL, '699HSM', NULL, '["student"]', NULL, '2026-04-20 00:00:00', '2027-04-20 00:00:00', '3594561767', 'approved', 2, '2026-04-20 21:49:59', '2026-04-21 14:44:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerard', 'Matin-ao', 'Q', 'Click 125i');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (8, 'student', 'Little Legend A Malinao', '2022-32262', 'Department of Teacher Education', '09073008325', 'littlelegend.malinao@evsu.edu.ph', 'Bachelor of Elementary Education (BEED)', '4th Year', NULL, NULL, NULL, NULL, 'Motorcycle', 'Little Legend A Malinao', 'Yamaha', NULL, NULL, '642HDA', NULL, '["student"]', NULL, '2026-04-21 00:00:00', '2027-04-21 00:00:00', '3594712439', 'approved', 2, '2026-04-21 14:30:27', '2026-04-21 14:44:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Little Legend', 'Malinao', 'A', 'Mio i 125');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (9, 'student', 'Jacob Israel D Cantay', '2025-30029', 'Department of Teacher Education', '09486066485', 'jacobisrael.cantay@evsu.edu.ph', 'Bachelor of Secondary Education (BSEd) major in Mathematics', '1st Year', NULL, NULL, NULL, NULL, 'Motorcycle', 'Jacob Israel D Cantay', 'Yamaha', NULL, NULL, 'H3866K', NULL, '["student"]', NULL, '2026-04-21 00:00:00', '2027-04-21 00:00:00', '3594708343', 'approved', 2, '2026-04-21 14:32:43', '2026-04-21 14:44:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jacob Israel', 'Cantay', 'D', 'Aerox');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (10, 'student', 'Marvin P Cuyos', '2024-32409', 'Department of Industrial Technology', '0995762695', 'marvin.cuyos@evsu.edu.ph', 'Bachelor of Industrial Technology (BIT) major in Electronics (ET)', '2nd Year', NULL, NULL, NULL, NULL, 'Motorcycle', 'Marvin P Cuyos', 'Suzuki', NULL, NULL, 'H3409V', NULL, '["student"]', NULL, '2026-04-21 00:00:00', '2027-04-21 00:00:00', '3594711415', 'approved', 2, '2026-04-21 14:34:15', '2026-04-21 14:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Marvin', 'Cuyos', 'P', 'Burgman Street');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (11, 'student', 'Wenilyn A Belesencio', '2015-61061', 'Department of Teacher Education', '09092985519', 'wenilyn.belesencio@evsu.edu.ph', 'Bachelor of Elementary Education (BEED)', '3rd Year', NULL, NULL, NULL, NULL, 'Motorcycle', 'Wenilyn A Belesencio', 'Honda', NULL, NULL, '408HSD', NULL, '["student"]', NULL, '2026-04-21 00:00:00', '2027-04-21 00:00:00', '3594710391', 'approved', 2, '2026-04-21 14:36:44', '2026-04-21 14:43:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wenilyn', 'Belesencio', 'A', 'Click 125i');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (12, 'staff', 'Feliciano C Sidlakan', 'N/A', 'N/A', '0927288232', 'asdasd@gmail.com', NULL, NULL, NULL, NULL, 'Sidlakan Eatery', 'Stall 3', 'Motorcycle', 'N/A', 'Honda', 'N/A', 'N/A', 'H97021', 'N/A', '[]', '[]', '2026-04-20 00:00:00', '2027-04-20 00:00:00', '3594706295', 'approved', 2, '2026-04-21 14:39:34', '2026-04-21 14:43:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Feliciano', 'Sidlakan', 'C', 'Other');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (13, 'staff', 'Marika L Villapania', 'N/A', 'N/A', '09534459615', 'beshy@gmail.com', NULL, NULL, NULL, NULL, 'Beshy Eatery', 'Stall 4', 'Motorcycle', 'N/A', 'Honda', 'N/A', 'N/A', 'AMD528', 'N/A', '[]', '[]', '2026-04-20 00:00:00', '2027-04-20 00:00:00', '3594565863', 'approved', 2, '2026-04-21 14:42:24', '2026-04-23 13:11:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Marika', 'Villapania', 'L', 'Click 125i');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (14, 'faculty', 'Jan Anthony Paredes', NULL, 'Supply Office', '09306674153', 'jananthony.paredes@evsu.edu.ph', NULL, NULL, NULL, 'Supply Office', NULL, NULL, 'Motorcycle', 'Jan Anthony Paredes', 'Honda', NULL, NULL, '251HRS', NULL, '["faculty"]', NULL, '2026-04-21 00:00:00', '2027-04-21 00:00:00', '3594704247', 'approved', 2, '2026-04-21 16:38:01', '2026-04-23 08:38:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jan Anthony', 'Paredes', NULL, 'Click 125i');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (15, 'student', 'Jerome Subiera Barquio', '2021-31428', 'Department of Engineering', '09917514520', 'jerome.barquio@evsu.edu.ph', 'Bachelor of Science in Civil Engineering (BSCE)', '2nd Year', NULL, NULL, NULL, NULL, 'Motorcycle', 'N/A', 'Yamaha', 'N/A', 'N/A', '585HRB', 'N/A', '[]', '[]', '2026-04-20 00:00:00', '2027-04-20 00:00:00', '3594563815', 'approved', 2, '2026-04-21 16:42:02', '2026-05-05 12:53:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jerome', 'Barquio', 'Subiera', 'Aerox');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (16, 'faculty', 'Richard Impas', NULL, 'Administrative and Finance Services', NULL, 'richard.impas@evsu.edu.ph', NULL, NULL, NULL, 'Administrative and Finance Services', NULL, NULL, 'Pickup', 'Richard Impas', 'Mitsubishi', NULL, NULL, 'pw9829', NULL, '["faculty"]', NULL, '2026-04-23 00:00:00', '2027-04-23 00:00:00', '4129679822', 'ACTIVE', 2, '2026-04-23 10:42:39', '2026-04-23 10:42:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Richard', 'Impas', NULL, 'Montero Sport');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (17, 'faculty', 'Elmer Jaca Alema', 'N/A', 'Administrative and Finance Services', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, 'Motorcycle', 'N/A', 'Honda', 'N/A', 'N/A', '547UPP', 'N/A', '[]', '[]', '2026-04-22 00:00:00', '2027-04-22 00:00:00', '3594567911', 'ACTIVE', 2, '2026-04-23 14:41:36', '2026-04-23 14:56:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elmer', 'Alema', 'Jaca', 'Other');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (18, 'faculty', 'Georgina M Orbita', 'O061317GM', 'Department of Teacher Education', '09281689679', 'georgina.orbita@evsu.edu.ph', NULL, NULL, NULL, 'Department of Teacher Education', NULL, NULL, 'Car / Sedan', 'Georgina M Orbita', 'Suzuki', NULL, NULL, 'Ha4850', NULL, '["faculty"]', NULL, '2026-04-23 00:00:00', '2027-04-23 00:00:00', '4129679838', 'ACTIVE', 2, '2026-04-23 14:45:04', '2026-04-23 14:45:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Georgina', 'Orbita', 'M', 'Celerio');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (19, 'faculty', 'Beatrice D. Mabitad', 'M060203BD', 'Department of Teacher Education', NULL, 'beatrice.mabitad@evsu.edu.ph', NULL, NULL, NULL, NULL, NULL, NULL, 'Car / Sedan', 'N/A', 'Honda', 'N/A', 'N/A', 'GBG 5162', 'N/A', '[]', '[]', '2026-04-22 00:00:00', '2027-04-22 00:00:00', '4129679826', 'ACTIVE', 2, '2026-04-23 15:44:44', '2026-04-23 15:53:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Beatrice', 'Mabitad', 'D.', 'BR-V');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (21, 'student', 'Nathan Dhale Marabiles', '2021-30125`', 'Department of Computer Studies', NULL, 'nathandhale.marabiles10@evsu.edu.ph', 'Bachelor of Science in Information Technology (BSIT)', '4th Year', NULL, NULL, NULL, NULL, 'Car / Sedan', 'Nathan Dhale Marabiles', 'Toyota', NULL, NULL, 'GAW 4823', NULL, '["student"]', NULL, '2026-05-19 00:00:00', '2027-05-19 00:00:00', '1111111', 'ACTIVE', 2, '2026-05-19 20:37:21', '2026-05-19 20:37:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nathan Dhale', 'Marabiles', NULL, 'Rush');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (22, 'student', 'None None', '2023-31325', 'Department of Engineering', NULL, 'none@evsu.edu.ph', 'Bachelor of Science in Electrical Engineering (BSEE)', '3rd Year', NULL, NULL, NULL, NULL, 'Motorcycle', 'None None', 'Honda', NULL, NULL, '893H03', NULL, '["student"]', NULL, '2026-05-19 00:00:00', '2027-05-19 00:00:00', '122355566', 'ACTIVE', 2, '2026-05-19 20:41:17', '2026-05-19 20:41:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'None', 'None', NULL, 'Click V3');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (23, 'student', 'Mark Alferez', '2022-30888', 'Department of Computer Studies', '09975283200', 'alferezalbertmark@gmail.com', 'Bachelor of Science in Information Technology (BSIT)', '3rd Year', NULL, NULL, NULL, NULL, 'Motorcycle', 'Mark Alferez', 'Suzuki', NULL, NULL, '356', NULL, '["student"]', NULL, '2026-05-19 00:00:00', '2027-05-19 00:00:00', '1234567', 'ACTIVE', 2, '2026-05-19 20:44:07', '2026-05-19 20:44:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mark', 'Alferez', NULL, 'SMASH');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (24, 'student', 'Julianna Junio', '2021-31443', 'Department of Computer Studies', '09982016283', 'jmaejunio263@gmail.com', 'Bachelor of Science in Information Technology (BSIT)', '4th Year', NULL, NULL, NULL, NULL, 'Motorcycle', 'Julianna Junio', 'Honda', NULL, NULL, 'H769CR', NULL, '["student"]', NULL, '2026-05-19 00:00:00', '2027-05-19 00:00:00', '3345566', 'ACTIVE', 2, '2026-05-19 20:46:36', '2026-05-19 20:46:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Julianna', 'Junio', NULL, 'Click 160');
INSERT INTO `vehicle_registrations` (`id`, `role`, `full_name`, `university_id`, `college_dept`, `contact_number`, `email_address`, `course`, `year_level`, `rank`, `office`, `business_stall_name`, `vendor_address`, `vehicle_type`, `registered_owner`, `make_brand`, `model_year`, `color`, `plate_number`, `engine_number`, `sticker_classification`, `requirements`, `validity_from`, `validity_to`, `rfid_tag_id`, `status`, `office_user_id`, `created_at`, `updated_at`, `cr_path`, `or_path`, `cor_path`, `student_id_path`, `license_path`, `employee_id_path`, `payment_receipt_path`, `rejection_reason`, `first_name`, `last_name`, `middle_name`, `model_name`) VALUES (25, 'student', 'Radiant Zion Madula', '2017-40383', 'Department of Computer Studies', '09193721514', 'radiantzion.madula@evsu.edu.ph', 'Bachelor of Science in Information Technology (BSIT)', '3rd Year', NULL, NULL, NULL, NULL, 'Motorcycle', 'Radiant Zion Madula', 'Motor', NULL, NULL, 'ere322', NULL, '["student"]', NULL, '2026-05-19 00:00:00', '2027-05-19 00:00:00', '234567788', 'ACTIVE', 2, '2026-05-19 21:09:51', '2026-05-19 21:09:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Radiant Zion', 'Madula', NULL, 'Mio Gare S');

SET FOREIGN_KEY_CHECKS = 1;
