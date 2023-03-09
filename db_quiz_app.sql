-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.11-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table db_quizz_app.admins: ~0 rows (approximately)
DELETE FROM `admins`;
INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$AiipY7MFQ8y3psWUf4vIAuzCXyLS2KhxO9kABbn.1ZRHdQgnZu.S.', NULL, '2023-03-08 09:35:15', '2023-03-08 09:35:15');

-- Dumping data for table db_quizz_app.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping data for table db_quizz_app.migrations: ~10 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2021_12_06_091650_create_admins_table', 1),
	(6, '2021_12_06_163848_create_oex_categories_table', 1),
	(7, '2021_12_06_164100_create_oex_exam_masters_table', 1),
	(8, '2021_12_06_164245_create_oex_question_masters_table', 1),
	(9, '2021_12_06_164519_create_oex_results_table', 1),
	(10, '2021_12_07_160154_create_user_exams_table', 1);

-- Dumping data for table db_quizz_app.oex_categories: ~0 rows (approximately)
DELETE FROM `oex_categories`;
INSERT INTO `oex_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'General Knowledge', 1, '2023-03-08 09:35:15', '2023-03-08 09:35:15');

-- Dumping data for table db_quizz_app.oex_exam_masters: ~1 rows (approximately)
DELETE FROM `oex_exam_masters`;
INSERT INTO `oex_exam_masters` (`id`, `title`, `category`, `exam_date`, `exam_duration`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Test quizz', '1', '2023-03-08', '15', '1', '2023-03-08 09:39:20', '2023-03-08 12:47:39');

-- Dumping data for table db_quizz_app.oex_question_masters: ~13 rows (approximately)
DELETE FROM `oex_question_masters`;
INSERT INTO `oex_question_masters` (`id`, `exam_id`, `questions`, `ans`, `options`, `status`, `created_at`, `updated_at`) VALUES
	(1, '1', 'Binatang yang bisa hidup di air dan di darat disebut', 'amphibi', '{"option1":"darat","option2":"burung","option3":"air","option4":"amphibi"}', '1', '2023-03-08 09:41:04', '2023-03-08 09:41:04'),
	(2, '1', 'Negara terluas keempat di dunia adalah', 'amerika', '{"option1":"india","option2":"indonesia","option3":"amerika","option4":"filipina"}', '1', '2023-03-08 09:46:27', '2023-03-08 09:46:27'),
	(3, '1', 'Bahan bakar kereta api adalah', 'batubara', '{"option1":"pertamax","option2":"pertalite","option3":"batubara","option4":"solar"}', '1', '2023-03-08 09:47:15', '2023-03-08 09:47:15'),
	(4, '1', 'Ilmu Pengetahuan Alam disebut juga ilmu', 'sains', '{"option1":"geologi","option2":"matematika","option3":"sains","option4":"fisika"}', '1', '2023-03-08 09:48:25', '2023-03-08 09:48:25'),
	(5, '1', 'Pusat peredaran tata surya adalah', 'matahari', '{"option1":"matahari","option2":"pluto","option3":"mars","option4":"jupiter"}', '1', '2023-03-08 09:48:56', '2023-03-08 09:48:56'),
	(6, '1', 'Mata uang negara Jepang yaitu', 'Yen', '{"option1":"Rupiah","option2":"Yen","option3":"Dollar","option4":"Euro"}', '1', '2023-03-08 09:49:34', '2023-03-08 09:49:34'),
	(7, '1', 'Ibukota negara Rusia yaitu', 'Moscow', '{"option1":"New Delhi","option2":"Moscow","option3":"Jakarta","option4":"Berlin"}', '1', '2023-03-08 09:50:32', '2023-03-08 09:50:32'),
	(8, '1', 'Makanan pokok terfavorit di benua Asia adalah', 'Nasi', '{"option1":"Jagung","option2":"Nasi","option3":"Roti","option4":"Mie"}', '1', '2023-03-08 09:51:30', '2023-03-08 09:51:30'),
	(9, '1', 'Mamalia tertinggi adalah', 'Jerapah', '{"option1":"Tikus","option2":"Kambing","option3":"Sapi","option4":"Jerapah"}', '1', '2023-03-08 09:57:19', '2023-03-08 09:57:19'),
	(10, '1', 'Sword adalah bahasa Inggris dari', 'Pedang', '{"option1":"Meja","option2":"Kuda","option3":"Pedang","option4":"Sepatu"}', '1', '2023-03-08 10:40:53', '2023-03-08 10:40:53'),
	(11, '2', 'Daerah pulau Jawa yang terkenal ubi-nya yaitu', 'Cilembu', '{"option1":"Cilembu","option2":"Jakarta","option3":"Surakarta","option4":"Ciamis"}', '1', '2023-03-08 11:02:30', '2023-03-08 11:02:30'),
	(12, '2', 'Binatang yang bisa hidup di air dan di darat disebut', 'Amfibi', '{"option1":"Amfibi","option2":"Burung","option3":"Darat","option4":"Air"}', '1', '2023-03-08 11:03:11', '2023-03-08 11:03:11'),
	(13, '2', 'Ilmu Pengetahuan Alam disebut juga ilmu', 'darat', '{"option1":"darat","option2":"burung","option3":"amerika","option4":"solar"}', '1', '2023-03-08 12:47:21', '2023-03-08 12:47:21');

-- Dumping data for table db_quizz_app.oex_results: ~14 rows (approximately)
DELETE FROM `oex_results`;
INSERT INTO `oex_results` (`id`, `exam_id`, `user_id`, `yes_ans`, `no_ans`, `result_json`, `created_at`, `updated_at`) VALUES
	(1, '1', '2', '6', '4', '{"1":"YES","2":"YES","3":"NO","4":"YES","5":"NO","6":"YES","7":"YES","8":"NO","9":"NO","10":"YES"}', '2023-03-08 10:42:40', '2023-03-08 10:42:40'),
	(2, '1', '2', '2', '8', '{"1":"NO","2":"YES","3":"NO","4":"NO","5":"NO","6":"YES","7":"NO","8":"NO","9":"NO","10":"NO"}', '2023-03-08 12:54:02', '2023-03-08 12:54:02'),
	(3, '1', '2', '2', '8', '{"1":"NO","2":"YES","3":"NO","4":"NO","5":"NO","6":"YES","7":"NO","8":"NO","9":"NO","10":"NO"}', '2023-03-08 12:59:03', '2023-03-08 12:59:03'),
	(4, '1', '2', '2', '8', '{"1":"NO","2":"YES","3":"NO","4":"NO","5":"NO","6":"YES","7":"NO","8":"NO","9":"NO","10":"NO"}', '2023-03-08 12:59:45', '2023-03-08 12:59:45'),
	(5, '1', '2', '2', '8', '{"1":"NO","2":"YES","3":"NO","4":"NO","5":"NO","6":"YES","7":"NO","8":"NO","9":"NO","10":"NO"}', '2023-03-08 12:59:56', '2023-03-08 12:59:56'),
	(6, '1', '2', '2', '8', '{"1":"NO","2":"YES","3":"NO","4":"NO","5":"NO","6":"YES","7":"NO","8":"NO","9":"NO","10":"NO"}', '2023-03-08 13:00:09', '2023-03-08 13:00:09'),
	(7, '2', '2', '1', '2', '{"11":"NO","12":"NO","13":"YES"}', '2023-03-08 13:03:10', '2023-03-08 13:03:10'),
	(8, '2', '2', '1', '2', '{"11":"NO","12":"NO","13":"YES"}', '2023-03-08 13:04:39', '2023-03-08 13:04:39'),
	(9, '2', '2', '1', '2', '{"11":"NO","12":"NO","13":"YES"}', '2023-03-08 13:04:54', '2023-03-08 13:04:54'),
	(10, '2', '2', '1', '2', '{"11":"NO","12":"NO","13":"YES"}', '2023-03-08 13:05:03', '2023-03-08 13:05:03'),
	(11, '2', '2', '1', '2', '{"11":"NO","12":"NO","13":"YES"}', '2023-03-08 13:15:05', '2023-03-08 13:15:05'),
	(12, '2', '2', '1', '2', '{"11":"NO","12":"NO","13":"YES"}', '2023-03-08 13:17:20', '2023-03-08 13:17:20'),
	(13, '2', '2', '1', '2', '{"11":"NO","12":"NO","13":"YES"}', '2023-03-08 13:22:59', '2023-03-08 13:22:59'),
	(14, '1', '2', '9', '1', '{"1":"YES","2":"YES","3":"YES","4":"YES","5":"NO","6":"YES","7":"YES","8":"YES","9":"YES","10":"YES"}', '2023-03-08 15:26:14', '2023-03-08 15:26:14');

-- Dumping data for table db_quizz_app.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;

-- Dumping data for table db_quizz_app.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
	(1, 'App\\Models\\User', 2, 'token-name', '3a9ba6fe216a1c59b1455971008ad4123abc9a16e0d7ab102d18de08fa3253dd', '["*"]', '2023-03-08 17:55:59', '2023-03-08 17:55:10', '2023-03-08 17:55:59');

-- Dumping data for table db_quizz_app.users: ~2 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `mobile_no`, `exam`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'student', 'student@gmail.com', NULL, '$2y$10$cUfRJ/QqbEAaoWpcp3RUAeSGn1m9fQcUZSPwB0HIWuFqsYVuJ.m..', NULL, NULL, NULL, NULL, '2023-03-08 09:35:15', '2023-03-08 09:35:15'),
	(2, 'fadjar', 'dark.fir21@gmail.com', NULL, '$2y$10$JfYThwM7sbZOQ2ZkeXxAhuJKg3Q7WGf0KgSuYTdP1fuJM2qpB3mH2', NULL, NULL, NULL, NULL, '2023-03-08 09:38:03', '2023-03-08 09:38:03');

-- Dumping data for table db_quizz_app.user_exams: ~1 rows (approximately)
DELETE FROM `user_exams`;
INSERT INTO `user_exams` (`id`, `user_id`, `exam_id`, `std_status`, `exam_joined`, `created_at`, `updated_at`) VALUES
	(4, '2', '1', '1', '1', '2023-03-08 15:25:27', '2023-03-08 15:26:14');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
