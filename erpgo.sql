-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         8.0.29 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla erpgo.activity_logs
CREATE TABLE IF NOT EXISTS `activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `task_id` int NOT NULL DEFAULT '0',
  `deal_id` int NOT NULL DEFAULT '0',
  `log_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.activity_logs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.admin_payment_settings
CREATE TABLE IF NOT EXISTS `admin_payment_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_payment_settings_name_created_by_unique` (`name`,`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.admin_payment_settings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `admin_payment_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_payment_settings` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.allowances
CREATE TABLE IF NOT EXISTS `allowances` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `allowance_option` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.allowances: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `allowances` DISABLE KEYS */;
/*!40000 ALTER TABLE `allowances` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.allowance_options
CREATE TABLE IF NOT EXISTS `allowance_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.allowance_options: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `allowance_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `allowance_options` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.announcements
CREATE TABLE IF NOT EXISTS `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `branch_id` int NOT NULL,
  `department_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.announcements: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.announcement_employees
CREATE TABLE IF NOT EXISTS `announcement_employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `announcement_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.announcement_employees: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `announcement_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_employees` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.appraisals
CREATE TABLE IF NOT EXISTS `appraisals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch` int NOT NULL DEFAULT '0',
  `employee` int NOT NULL DEFAULT '0',
  `rating` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appraisal_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_experience` int NOT NULL DEFAULT '0',
  `marketing` int NOT NULL DEFAULT '0',
  `administration` int NOT NULL DEFAULT '0',
  `professionalism` int NOT NULL DEFAULT '0',
  `integrity` int NOT NULL DEFAULT '0',
  `attendance` int NOT NULL DEFAULT '0',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.appraisals: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `appraisals` DISABLE KEYS */;
/*!40000 ALTER TABLE `appraisals` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.assets
CREATE TABLE IF NOT EXISTS `assets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `supported_date` date NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.assets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.attendance_employees
CREATE TABLE IF NOT EXISTS `attendance_employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `date` date NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_in` time NOT NULL,
  `clock_out` time NOT NULL,
  `late` time NOT NULL,
  `early_leaving` time NOT NULL,
  `overtime` time NOT NULL,
  `total_rest` time NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.attendance_employees: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `attendance_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_employees` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.awards
CREATE TABLE IF NOT EXISTS `awards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `award_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `gift` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.awards: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.award_types
CREATE TABLE IF NOT EXISTS `award_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.award_types: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `award_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `award_types` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.bank_accounts
CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `holder_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` double(15,2) NOT NULL DEFAULT '0.00',
  `contact_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.bank_accounts: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `bank_accounts` DISABLE KEYS */;
INSERT INTO `bank_accounts` (`id`, `holder_name`, `bank_name`, `account_number`, `opening_balance`, `contact_number`, `bank_address`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'cash', '', '-', -80.00, '-', '-', 2, '2022-10-19 16:51:53', '2022-10-27 17:49:19'),
	(2, 'MARCOS MEDINA', 'BANPRO', '112313333', 3000.00, '9989999', 'PLAZA CARACOL CENTRAL', 2, '2022-10-27 16:13:38', '2022-10-27 16:13:38'),
	(3, 'LUISA ARROLIGA', 'BANCO DE AMERICA CENTRAL', '123999919', 350.00, '989123123', 'CASA MATRIZ CTA A MASAYA,', 2, '2022-10-27 17:56:52', '2022-10-27 18:02:11'),
	(4, 'JUAN LOPEZ', 'AVAN ZA', '1233336666', 500.00, '9899999', 'SEDE CENTRAL AVANZ AVENIDA JEAN PAUL', 2, '2022-10-27 18:16:06', '2022-10-27 18:16:06');
/*!40000 ALTER TABLE `bank_accounts` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.bank_transfers
CREATE TABLE IF NOT EXISTS `bank_transfers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_account` int NOT NULL DEFAULT '0',
  `to_account` int NOT NULL DEFAULT '0',
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `payment_method` int NOT NULL DEFAULT '0',
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.bank_transfers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bank_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transfers` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.bills
CREATE TABLE IF NOT EXISTS `bills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bill_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `vender_id` int NOT NULL,
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `order_number` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `shipping_display` int NOT NULL DEFAULT '1',
  `send_date` date DEFAULT NULL,
  `discount_apply` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.bills: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` (`id`, `bill_id`, `vender_id`, `bill_date`, `due_date`, `order_number`, `status`, `shipping_display`, `send_date`, `discount_apply`, `category_id`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, '1', 1, '2022-10-06', '2022-10-31', 2, 0, 1, NULL, 0, 5, 2, '2022-10-27 17:50:51', '2022-10-27 17:50:51');
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.bill_payments
CREATE TABLE IF NOT EXISTS `bill_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bill_id` int NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int NOT NULL,
  `payment_method` int NOT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_receipt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.bill_payments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bill_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_payments` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.bill_products
CREATE TABLE IF NOT EXISTS `bill_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bill_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `tax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.bill_products: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `bill_products` DISABLE KEYS */;
INSERT INTO `bill_products` (`id`, `bill_id`, `product_id`, `quantity`, `tax`, `discount`, `price`, `description`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 5, '1', 0.00, 5.00, NULL, '2022-10-27 17:50:51', '2022-10-27 17:50:51'),
	(2, 1, 1, 221, '1', 0.00, 5.00, NULL, '2022-10-27 17:50:51', '2022-10-27 17:50:51'),
	(3, 1, 2, 2, '1', 0.00, 10.00, NULL, '2022-10-27 17:50:51', '2022-10-27 17:50:51');
/*!40000 ALTER TABLE `bill_products` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.branches
CREATE TABLE IF NOT EXISTS `branches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.branches: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.budgets
CREATE TABLE IF NOT EXISTS `budgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `expense_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.budgets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `budgets` DISABLE KEYS */;
INSERT INTO `budgets` (`id`, `name`, `period`, `from`, `to`, `income_data`, `expense_data`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'PLAN 2022', 'monthly', '2022', NULL, '{"3":{"January":"2000","February":"2000","March":"0","April":"0","May":"0","June":"0","July":"0","August":"0","September":"0","October":"0","November":"0","December":"0","Jan-Mar":"0","Apr-Jun":"0","Jul-Sep":"0","Oct-Dec":"0","Jan-Jun":"0","Jul-Dec":"0","Jan-Dec":"0"},"4":{"January":"0","February":"0","March":"2000","April":"0","May":"0","June":"0","July":"0","August":"0","September":"0","October":"0","November":"0","December":"0","Jan-Mar":"0","Apr-Jun":"0","Jul-Sep":"0","Oct-Dec":"0","Jan-Jun":"0","Jul-Dec":"0","Jan-Dec":"0"}}', '{"5":{"January":"050","February":"2000","March":"0","April":"0","May":"0","June":"0","July":"0","August":"0","September":"0","October":"0","November":"0","December":"0","Jan-Mar":"0","Apr-Jun":"0","Jul-Sep":"0","Oct-Dec":"0","Jan-Jun":"0","Jul-Dec":"0","Jan-Dec":"0"},"6":{"January":"500","February":"0","March":"0","April":"0","May":"0","June":"0","July":"0","August":"0","September":"0","October":"0","November":"0","December":"0","Jan-Mar":"0","Apr-Jun":"0","Jul-Sep":"0","Oct-Dec":"0","Jan-Jun":"0","Jul-Dec":"0","Jan-Dec":"0"}}', 2, '2022-10-27 18:10:30', '2022-10-27 18:10:30');
/*!40000 ALTER TABLE `budgets` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.bugs
CREATE TABLE IF NOT EXISTS `bugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int NOT NULL DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `assign_to` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.bugs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.bug_comments
CREATE TABLE IF NOT EXISTS `bug_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug_id` int NOT NULL DEFAULT '0',
  `user_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.bug_comments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bug_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `bug_comments` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.bug_files
CREATE TABLE IF NOT EXISTS `bug_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug_id` int NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.bug_files: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bug_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `bug_files` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.bug_statuses
CREATE TABLE IF NOT EXISTS `bug_statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.bug_statuses: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `bug_statuses` DISABLE KEYS */;
INSERT INTO `bug_statuses` (`id`, `title`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
	(1, 'Confirmed', 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(2, 'Resolved', 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(3, 'Unconfirmed', 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(4, 'In Progress', 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(5, 'Verified', 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54');
/*!40000 ALTER TABLE `bug_statuses` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.chart_of_accounts
CREATE TABLE IF NOT EXISTS `chart_of_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `sub_type` int NOT NULL DEFAULT '0',
  `is_enabled` int NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.chart_of_accounts: ~32 rows (aproximadamente)
/*!40000 ALTER TABLE `chart_of_accounts` DISABLE KEYS */;
INSERT INTO `chart_of_accounts` (`id`, `name`, `code`, `type`, `sub_type`, `is_enabled`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Cuentas por cobrar', 120, 1, 1, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:15:23'),
	(2, 'Equipo de computadora', 160, 1, 2, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:15:37'),
	(3, 'Equipo de oficina', 150, 1, 2, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:15:52'),
	(4, 'Inventario', 140, 1, 3, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:16:03'),
	(5, 'Personal de Presupuesto - Finanzas', 857, 1, 6, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:16:24'),
	(6, 'Depreciación acumulada', 170, 1, 7, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:16:39'),
	(7, 'Cuentas por pagar', 200, 2, 8, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:17:03'),
	(8, 'acumulaciones', 205, 2, 8, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:17:18'),
	(9, 'Equipo de oficina', 150, 2, 8, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:17:35'),
	(10, 'Cuenta de compensación', 855, 2, 8, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:18:06'),
	(11, 'Beneficios del empleado por pagar', 235, 2, 8, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:18:33'),
	(12, 'Deducciones de empleados por pagar', 236, 2, 8, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:18:54'),
	(13, 'Ajustes históricos', 255, 2, 8, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:19:10'),
	(14, 'Ingresos recibidos por adelantado', 835, 2, 8, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:19:32'),
	(15, 'Redondeo', 260, 2, 8, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:19:47'),
	(16, 'Costos de bienes vendidos', 500, 3, 11, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:20:07'),
	(17, 'Publicidad', 600, 3, 12, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:20:24'),
	(18, 'Gastos de Automóvil', 644, 3, 12, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:20:47'),
	(19, 'deudas incobrables', 684, 3, 12, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:21:05'),
	(20, 'Revalorizaciones Bancarias', 810, 3, 12, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:21:23'),
	(21, 'Cargos por servicios bancarios', 605, 3, 12, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:21:38'),
	(22, 'Consultoría y Contabilidad', 615, 3, 12, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:21:53'),
	(23, 'Depreciación', 700, 3, 12, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:22:09'),
	(24, 'Gastos generales', 628, 3, 12, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:41:58'),
	(25, 'Ingresos por intereses', 460, 4, 13, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:42:19'),
	(26, 'Otros ingresos', 470, 4, 13, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:42:36'),
	(27, 'Descuento de la compra', 475, 4, 13, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:42:55'),
	(28, 'Ventas', 400, 4, 13, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:44:34'),
	(29, 'Acciones comunes', 330, 5, 16, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:44:49'),
	(30, 'Contribución de los propietarios', 300, 5, 16, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:45:33'),
	(31, 'Sorteo de propietarios', 310, 5, 16, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:45:46'),
	(32, 'Ganancias retenidas', 320, 5, 16, 1, NULL, 2, '2022-10-19 16:51:54', '2022-10-27 16:46:01');
/*!40000 ALTER TABLE `chart_of_accounts` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.chart_of_account_sub_types
CREATE TABLE IF NOT EXISTS `chart_of_account_sub_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `type` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.chart_of_account_sub_types: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `chart_of_account_sub_types` DISABLE KEYS */;
INSERT INTO `chart_of_account_sub_types` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
	(1, 'Activo corriente', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(2, 'Activo fijo', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(3, 'Inventario', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(4, 'Activo no corriente', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(5, 'Pre pago', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(6, 'Banco & Efectivo', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(7, 'Depreciacion', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(8, 'Responsabilidad actual', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(9, 'Responsabilidad', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(10, 'Pasivo no corriente', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(11, 'Costos Directos', 3, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(12, 'Gastos', 3, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(13, 'Ingresos', 4, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(14, 'Ventas', 4, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(15, 'Otras Entradas', 4, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(16, 'Equidad', 5, '2022-10-19 16:51:54', '2022-10-19 16:51:54');
/*!40000 ALTER TABLE `chart_of_account_sub_types` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.chart_of_account_types
CREATE TABLE IF NOT EXISTS `chart_of_account_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.chart_of_account_types: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `chart_of_account_types` DISABLE KEYS */;
INSERT INTO `chart_of_account_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Activos', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(2, 'Pasivo', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(3, 'Gastos', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(4, 'Ingreso', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(5, 'Equidad', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54');
/*!40000 ALTER TABLE `chart_of_account_types` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.ch_favorites
CREATE TABLE IF NOT EXISTS `ch_favorites` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `favorite_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.ch_favorites: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ch_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `ch_favorites` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.ch_messages
CREATE TABLE IF NOT EXISTS `ch_messages` (
  `id` bigint NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint NOT NULL,
  `to_id` bigint NOT NULL,
  `body` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.ch_messages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ch_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ch_messages` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.client_deals
CREATE TABLE IF NOT EXISTS `client_deals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `deal_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_deals_client_id_foreign` (`client_id`),
  KEY `client_deals_deal_id_foreign` (`deal_id`),
  CONSTRAINT `client_deals_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `client_deals_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.client_deals: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `client_deals` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_deals` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.commissions
CREATE TABLE IF NOT EXISTS `commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.commissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `commissions` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.company_payment_settings
CREATE TABLE IF NOT EXISTS `company_payment_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `company_payment_settings_name_created_by_unique` (`name`,`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.company_payment_settings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `company_payment_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_payment_settings` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.company_policies
CREATE TABLE IF NOT EXISTS `company_policies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.company_policies: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `company_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_policies` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.competencies
CREATE TABLE IF NOT EXISTS `competencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.competencies: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `competencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `competencies` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.complaints
CREATE TABLE IF NOT EXISTS `complaints` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `complaint_from` int NOT NULL,
  `complaint_against` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_date` date NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.complaints: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.contracts
CREATE TABLE IF NOT EXISTS `contracts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_name` int NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `client_signature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_signature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.contracts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.contract_attachment
CREATE TABLE IF NOT EXISTS `contract_attachment` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `files` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.contract_attachment: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contract_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_attachment` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.contract_comment
CREATE TABLE IF NOT EXISTS `contract_comment` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `comment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.contract_comment: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contract_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_comment` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.contract_notes
CREATE TABLE IF NOT EXISTS `contract_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `notes` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.contract_notes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contract_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_notes` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.contract_types
CREATE TABLE IF NOT EXISTS `contract_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.contract_types: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contract_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_types` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.coupons
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `limit` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.coupons: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.credit_notes
CREATE TABLE IF NOT EXISTS `credit_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice` int NOT NULL DEFAULT '0',
  `customer` int NOT NULL DEFAULT '0',
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.credit_notes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `credit_notes` DISABLE KEYS */;
INSERT INTO `credit_notes` (`id`, `invoice`, `customer`, `amount`, `date`, `description`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 79.35, '2022-10-27', 'CREDITO TEMPORAL', '2022-10-27 17:27:35', '2022-10-27 17:27:35');
/*!40000 ALTER TABLE `credit_notes` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int NOT NULL DEFAULT '0',
  `is_active` int NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.customers: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `customer_id`, `name`, `email`, `tax_number`, `password`, `contact`, `avatar`, `created_by`, `is_active`, `email_verified_at`, `billing_name`, `billing_country`, `billing_state`, `billing_city`, `billing_phone`, `billing_zip`, `billing_address`, `shipping_name`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_phone`, `shipping_zip`, `shipping_address`, `lang`, `balance`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 1, 'gamaliel jose mejia sanchez', 'gjms2018@gmail.com', '111213', '', '89900002', '', 2, 1, NULL, 'casa local', 'Nicaragua', 'Managua', 'Managua', '244444', '5054', NULL, 'casa local', 'Nicaragua', 'Managua', 'Managua', '244444', '5054', 'NO DADA', '', 40.65, NULL, '2022-10-27 15:41:28', '2022-10-27 18:01:09'),
	(2, 2, 'MARIO LOPEZ', 'bros@gmil.com', '12123', '', '89900045', '', 2, 1, NULL, 'AKSDKASD', 'Nicaragua', 'MANAGUA', 'MANAGUA', NULL, '5054', 'CASSA UBER 2L ZONA 7', 'AKSDKASD', 'Nicaragua', 'MANAGUA', 'MANAGUA', NULL, '5054', 'CASSA UBER 2L ZONA 7', '', 0.00, NULL, '2022-10-27 15:45:22', '2022-10-27 15:45:22'),
	(3, 3, 'JOSE SANTANA', 'SANTAN@GMAIL.COM', '991293', '', '88899292', '', 2, 1, NULL, 'CASA HOGAR LUCITO', 'NICARAGUA', 'MANAGUA', 'MANAGUA', '88989998', '11201', 'CASA HOGAR LUCITO MANAGUA BARRIO DOLORES ESTRADA', 'CASA HOGAR LUCITO', 'NICARAGUA', 'MANAGUA', 'MANAGUA', '88989998', '11201', 'CASA HOGAR LUCITO MANAGUA BARRIO DOLORES ESTRADA', '', 0.00, NULL, '2022-10-27 17:54:21', '2022-10-27 17:54:21');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.custom_fields
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.custom_fields: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.custom_field_values
CREATE TABLE IF NOT EXISTS `custom_field_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint unsigned NOT NULL,
  `field_id` bigint unsigned NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `custom_field_values_record_id_field_id_unique` (`record_id`,`field_id`),
  KEY `custom_field_values_field_id_foreign` (`field_id`),
  CONSTRAINT `custom_field_values_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.custom_field_values: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_values` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.custom_questions
CREATE TABLE IF NOT EXISTS `custom_questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.custom_questions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `custom_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_questions` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.deals
CREATE TABLE IF NOT EXISTS `deals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `pipeline_id` int NOT NULL,
  `stage_id` int NOT NULL,
  `sources` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `labels` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.deals: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `deals` DISABLE KEYS */;
/*!40000 ALTER TABLE `deals` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.deal_calls
CREATE TABLE IF NOT EXISTS `deal_calls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint unsigned NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `call_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_calls_deal_id_foreign` (`deal_id`),
  CONSTRAINT `deal_calls_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.deal_calls: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `deal_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_calls` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.deal_discussions
CREATE TABLE IF NOT EXISTS `deal_discussions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint unsigned NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_discussions_deal_id_foreign` (`deal_id`),
  CONSTRAINT `deal_discussions_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.deal_discussions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `deal_discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_discussions` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.deal_emails
CREATE TABLE IF NOT EXISTS `deal_emails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint unsigned NOT NULL,
  `to` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_emails_deal_id_foreign` (`deal_id`),
  CONSTRAINT `deal_emails_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.deal_emails: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `deal_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_emails` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.deal_files
CREATE TABLE IF NOT EXISTS `deal_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint unsigned NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_files_deal_id_foreign` (`deal_id`),
  CONSTRAINT `deal_files_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.deal_files: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `deal_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_files` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.deal_tasks
CREATE TABLE IF NOT EXISTS `deal_tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `priority` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_tasks_deal_id_foreign` (`deal_id`),
  CONSTRAINT `deal_tasks_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.deal_tasks: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `deal_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_tasks` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.debit_notes
CREATE TABLE IF NOT EXISTS `debit_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bill` int NOT NULL DEFAULT '0',
  `vendor` int NOT NULL DEFAULT '0',
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.debit_notes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `debit_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `debit_notes` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.deduction_options
CREATE TABLE IF NOT EXISTS `deduction_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.deduction_options: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `deduction_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `deduction_options` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.departments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.designations
CREATE TABLE IF NOT EXISTS `designations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.designations: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `designations` DISABLE KEYS */;
/*!40000 ALTER TABLE `designations` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.documents
CREATE TABLE IF NOT EXISTS `documents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.documents: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.ducument_uploads
CREATE TABLE IF NOT EXISTS `ducument_uploads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.ducument_uploads: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ducument_uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ducument_uploads` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.email_templates
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.email_templates: ~23 rows (aproximadamente)
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` (`id`, `name`, `from`, `slug`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Create User', 'erpgo_saas', 'create_user', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(2, 'Create Client', 'erpgo_saas', 'create_client', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(3, 'Create Support', 'erpgo_saas', 'create_support', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(4, 'Lead Assign', 'erpgo_saas', 'lead_assign', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(5, 'Deal Assign', 'erpgo_saas', 'deal_assign', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(6, 'Award Send', 'erpgo_saas', 'award_send', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(7, 'Customer Invoice Send', 'erpgo_saas', 'customer_invoice_send', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(8, 'Invoice Payment', 'erpgo_saas', 'invoice_payment', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(9, 'Payment Reminder', 'erpgo_saas', 'payment_reminder', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(10, 'Bill Payment', 'erpgo_saas', 'bill_payment', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(11, 'Bill Resend', 'erpgo_saas', 'bill_resend', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(12, 'Proposal Send', 'erpgo_saas', 'proposal_send', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(13, 'Complaint Resend', 'erpgo_saas', 'complaint_resend', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(14, 'Leave Action Send', 'erpgo_saas', 'leave_action_send', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(15, 'Payslip Send', 'erpgo_saas', 'payslip_send', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(16, 'Promotion Send', 'erpgo_saas', 'promotion_send', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(17, 'Resignation Send', 'erpgo_saas', 'resignation_send', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(18, 'Termination Send', 'erpgo_saas', 'termination_send', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(19, 'Transfer Send', 'erpgo_saas', 'transfer_send', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(20, 'Trip Send', 'erpgo_saas', 'trip_send', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(21, 'Vender Bill Send', 'erpgo_saas', 'vender_bill_send', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(22, 'Warning Send', 'erpgo_saas', 'warning_send', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(23, 'Create Contract', 'erpgo_saas', 'create_contract', 1, '2022-10-19 16:51:54', '2022-10-19 16:51:54');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.email_template_langs
CREATE TABLE IF NOT EXISTS `email_template_langs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.email_template_langs: ~276 rows (aproximadamente)
/*!40000 ALTER TABLE `email_template_langs` DISABLE KEYS */;
INSERT INTO `email_template_langs` (`id`, `parent_id`, `lang`, `subject`, `content`, `created_at`, `updated_at`) VALUES
	(1, 1, 'ar', 'Create User', '<p>مرحبا،&nbsp;<br>مرحبا بك في {app_name}.</p><p><b>البريد الإلكتروني </b>: {email}<br><b>كلمه السر</b> : {password}</p><p>{app_url}</p><p>شكر،<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(2, 1, 'da', 'Create User', '<p>Hej,&nbsp;<br>Velkommen til {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Adgangskode</b> : {password}</p><p>{app_url}</p><p>Tak,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(3, 1, 'de', 'Create User', '<p>Hallo,&nbsp;<br>Willkommen zu {app_name}.</p><p><b>Email </b>: {email}<br><b>Passwort</b> : {password}</p><p>{app_url}</p><p>Vielen Dank,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(4, 1, 'en', 'Create User', '<p>Hello,&nbsp;<br>Welcome to {app_name}.</p><p><b>Email </b>: {email}<br><b>Password</b> : {password}</p><p>{app_url}</p><p>Thanks,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(5, 1, 'es', 'Create User', '<p>Hola,&nbsp;<br>Bienvenido a {app_name}.</p><p><b>Correo electrónico </b>: {email}<br><b>Contraseña</b> : {password}</p><p>{app_url}</p><p>Gracias,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(6, 1, 'fr', 'Create User', '<p>Bonjour,&nbsp;<br>Bienvenue à {app_name}.</p><p><b>Email </b>: {email}<br><b>Mot de passe</b> : {password}</p><p>{app_url}</p><p>Merci,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(7, 1, 'it', 'Create User', '<p>Ciao,&nbsp;<br>Benvenuto a {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Parola d\'ordine</b> : {password}</p><p>{app_url}</p><p>Grazie,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(8, 1, 'ja', 'Create User', '<p>こんにちは、&nbsp;<br>へようこそ {app_name}.</p><p><b>Eメール </b>: {email}<br><b>パスワード</b> : {password}</p><p>{app_url}</p><p>おかげで、<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(9, 1, 'nl', 'Create User', '<p>Hallo,&nbsp;<br>Welkom bij {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Wachtwoord</b> : {password}</p><p>{app_url}</p><p>Bedankt,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(10, 1, 'pl', 'Create User', '<p>Witaj,&nbsp;<br>Witamy w {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Hasło</b> : {password}</p><p>{app_url}</p><p>Dzięki,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(11, 1, 'ru', 'Create User', '<p>Привет,&nbsp;<br>Добро пожаловать в {app_name}.</p><p><b>Электронное письмо </b>: {email}<br><b>пароль</b> : {password}</p><p>{app_url}</p><p>Спасибо,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(12, 1, 'pt', 'Create User', '<p>Olá,<br>Bem-vindo ao {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Senha</b> : {password}</p><p>{app_url}</p><p>Obrigada,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(13, 2, 'ar', 'Create Client', '<p>مرحبا { client_name } ، </p><p>أنت الآن Client ..</p><p>البريد الالكتروني : { client_email } </p><p>كلمة السرية : { client_password }</p><p>{ app_url }</p><p>شكرا</p><p>{ app_name }</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(14, 2, 'da', 'Create Client', '<p>Hej { client_name },</p><p> Du er nu klient ..</p><p>E-mail: { client_email } </p><p>Password: { client_password }</p><p>{ app_url }</p><p>Tak.</p><p>{ app_name }</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(15, 2, 'de', 'Create Client', '<p>Hallo {client_name}, </p><p>Sie sind jetzt Client ..</p><p>E-Mail: {client_email}</p><p> Kennwort: {client_password}</p><p>{app_url}</p><p>Danke,</p><p>{Anwendungsname}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(16, 2, 'en', 'Create Client', '<p><span style="color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);">Hello {client_name},</span><br style="box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);"><span style="color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);">You are now Client..</span><br style="box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);"><b data-stringify-type="bold" style="box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);">Email&nbsp;</b><span style="color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);">: {client_email}</span><br style="box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);"><b data-stringify-type="bold" style="box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);">Password</b><span style="color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);">&nbsp;: {client_password}</span><br style="box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);"><span style="color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);">{app_url}</span><br style="box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);"><span style="color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);">Thanks,</span><br style="box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);"><span style="color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);">{app_name}</span><br></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(17, 2, 'es', 'Create Client', '<p>Hola {nombre_cliente},</p><p> ahora es Cliente ..</p><p>Correo electrónico: {client_email}</p><p> Contraseña: {client_password}</p><p>{app_url}</p><p>Gracias,</p><p>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(18, 2, 'fr', 'Create Client', '<p>Bonjour { client_name }, </p><p>Vous êtes maintenant Client ..</p><p>Adresse électronique: { client_email } </p><p>Mot de passe: { client_password }</p><p>{ app_url }</p><p>Merci,</p><p>{ app_name }</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(19, 2, 'it', 'Create Client', '<p>Hello {client_name}, </p><p>Tu ora sei Client ..</p><p>Email: {client_email} </p><p>Password: {client_password}</p><p>{app_url}</p><p>Grazie,</p><p>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(20, 2, 'ja', 'Create Client', '<p>こんにちは {client_name} 、</p><p>お客様になりました。</p><p>E メール : {client_email}</p><p> パスワード : {client_password}</p><p>{app_url}</p><p>ありがとう。</p><p>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(21, 2, 'nl', 'Create Client', '<p>Hallo { client_name }, </p><p>U bent nu Client ..</p><p>E-mail: { client_email } </p><p>Wachtwoord: { client_password }</p><p>{ app_url }</p><p>Bedankt.</p><p>{ app_name }</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(22, 2, 'pl', 'Create Client', '<p>Witaj {client_name }, </p><p>jesteś teraz Client ..</p><p>E-mail: {client_email }</p><p> Hasło: {client_password }</p><p>{app_url }</p><p>Dziękuję,</p><p>{app_name }</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(23, 2, 'ru', 'Create Client', '<p>Hello { client_name }, </p><p>Вы теперь клиент ..</p><p>Адрес электронной почты: { client_email } </p><p>Пароль: { client_password }</p><p>{ app_url }</p><p>Спасибо.</p><p>{ app_name }</p><p>Olá {client_name}, </p><p>Você agora é Client ..</p><p>E-mail: {client_email} </p><p>Senha: {client_password}</p><p>{app_url}</p><p>Obrigado,</p><p>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(24, 2, 'pt', 'Create Client', '<p>Olá {client_name}, </p><p>Você agora é Client ..</p><p>E-mail: {client_email} </p><p>Senha: {client_password}</p><p>{app_url}</p><p>Obrigado,</p><p>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(25, 3, 'ar', 'Create Support', '<p><span style="background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;">مرحبا</span><span style="font-size: 12pt;">&nbsp;{support_name}</span><br><br></p><p><span style="background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;">تم فتح تذكرة دعم جديدة.</span><span style="font-size: 12pt;">.</span><br><br></p><p><span style="background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;">عنوان</span><span style="font-size: 12pt;"><strong>:</strong>&nbsp;{support_title}</span><br></p><p><span style="background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;">أفضلية</span><span style="font-size: 12pt;"><strong>:</strong>&nbsp;{support_priority}</span><span style="font-size: 12pt;"><br></span></p><p><span style="background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;">تاريخ الانتهاء</span><span style="font-size: 12pt;">: {support_end_date}</span></p><p><span style="background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;">رسالة دعم</span><span style="font-size: 12pt;"><strong>:</strong></span><br><span style="font-size: 12pt;">{support_description}</span><span style="font-size: 12pt;"><br><br></span></p><p><span style="background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;">أطيب التحيات،</span><span style="font-size: 12pt;">,</span><br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(26, 3, 'da', 'Create Support', '<p><b>Hej</b>&nbsp;{support_name}<br><br></p><p>Ny supportbillet er blevet åbnet.<br><br></p><p><b>Titel</b>: {support_title}<br></p><p><b>Prioritet</b>: {support_priority}<br></p><p><b>Slutdato</b>: {support_end_date}</p><p><br></p><p><b>Supportmeddelelse</b>:<br>{support_description}<br><br></p><p><b>Med venlig hilsen</b>,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(27, 3, 'de', 'Create Support', '<p><b>Hallo</b>&nbsp;{support_name}<br><br></p><p>Neues Support-Ticket wurde eröffnet.<br><br></p><p><b>Titel</b>: {support_title}<br></p><p><b>Priorität</b>: {support_priority}<br></p><p><b>Endtermin</b>: {support_end_date}</p><p><br></p><p><b>Support-Nachricht</b>:<br>{support_description}<br><br></p><p><b>Mit freundlichen Grüßen</b>,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(28, 3, 'en', 'Create Support', '<p><span style="font-size: 12pt;"><b>Hi</b>&nbsp;{support_name}</span><br><br><span style="font-size: 12pt;">New support ticket has been opened.</span><br><br><span style="font-size: 12pt;"><strong>Title:</strong>&nbsp;{support_title}</span><br><span style="font-size: 12pt;"><strong>Priority:</strong>&nbsp;{support_priority}</span><span style="font-size: 12pt;"><br></span><span style="font-size: 12pt;"><b>End Date</b>: {support_end_date}</span></p><p><br><span style="font-size: 12pt;"><strong>Support message:</strong></span><br><span style="font-size: 12pt;">{support_description}</span><span style="font-size: 12pt;"><br><br><b>Kind Regards</b>,</span><br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(29, 3, 'es', 'Create Support', '<p><b>Hola</b>&nbsp;{support_name}<br><br></p><p>Se ha abierto un nuevo ticket de soporte.<br><br></p><p><b>Título</b>: {support_title}<br></p><p><b>Prioridad</b>: {support_priority}<br></p><p><b>Fecha final</b>: {support_end_date}</p><p><br></p><p><b>Mensaje de apoyo</b>:<br>{support_description}<br><br></p><p><b>Saludos cordiales</b>,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(30, 3, 'fr', 'Create Support', '<p><b>salut</b>&nbsp;{support_name}<br><br></p><p>Un nouveau ticket d\'assistance a été ouvert.<br><br></p><p><b>Titre</b>: {support_title}<br></p><p><b>Priorité</b>: {support_priority}<br></p><p><b>Date de fin</b>: {support_end_date}</p><p><b>Message d\'assistance</b>:<br>{support_description}<br><br></p><p><b>Sincères amitiés</b>,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(31, 3, 'it', 'Create Support', '<p><b>Ciao</b>&nbsp;{support_name},<br><br></p><p>È stato aperto un nuovo ticket di supporto.<br><br></p><p><b>Titolo</b>: {support_title}<br></p><p><b>Priorità</b>: {support_priority}<br></p><p><b>Data di fine</b>: {support_end_date}</p><p><br></p><p><b>Messaggio di supporto</b>:<br>{support_description}</p><p><b>Cordiali saluti</b>,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(32, 3, 'ja', 'Create Support', '<p>こんにちは {support_name}<br><br></p><p>新しいサポートチケットがオープンしました。.<br><br></p><p>題名: {support_title}<br></p><p>優先: {support_priority}<br></p><p>終了日: {support_end_date}</p><p><br></p><p>サポートメッセージ:<br>{support_description}<br><br></p><div class="tw-ta-container hide-focus-ring tw-lfl focus-visible" id="tw-target-text-container" tabindex="0" data-focus-visible-added="" style="overflow: hidden; position: relative; outline: 0px;"><pre class="tw-data-text tw-text-large XcVN5d tw-ta" data-placeholder="Translation" id="tw-target-text" dir="ltr" style="unicode-bidi: isolate; line-height: 32px; border: none; padding: 2px 0.14em 2px 0px; position: relative; margin-top: -2px; margin-bottom: -2px; resize: none; overflow: hidden; width: 277px; overflow-wrap: break-word;"><span lang="ja">敬具、</span>,</pre></div><p>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(33, 3, 'nl', 'Create Support', '<p><b>Hoi</b>&nbsp;{support_name}<br><br></p><p>Er is een nieuw supportticket geopend.<br><br></p><p><b>Titel</b>: {support_title}<br></p><p><b>Prioriteit</b>: {support_priority}<br></p><p><b>Einddatum</b>: {support_end_date}</p><p><br></p><p><b>Ondersteuningsbericht</b>:<br>{support_description}<br><br></p><p><b>Vriendelijke groeten</b>,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(34, 3, 'pl', 'Create Support', '<p><b>cześć</b>&nbsp;{support_name}<br><br></p><p>Nowe zgłoszenie do pomocy technicznej zostało otwarte.<br><br></p><p><b>Tytuł</b>: {support_title}<br></p><p><b>Priorytet</b>: {support_priority}<br></p><p><b>Data końcowa</b>: {support_end_date}</p><p><br></p><p><b>Wiadomość pomocy</b>:<br>{support_description}<br><br></p><p><b>Z poważaniem</b>,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(35, 3, 'ru', 'Create Support', '<p><b>Здравствуй</b>&nbsp;{support_name}<br><br></p><p>Открыта новая заявка в службу поддержки.<br><br></p><p><b>заглавие</b>: {support_title}<br></p><p><b>Приоритет</b>: {support_priority}<br></p><p><b>Дата окончания</b>: {support_end_date}</p><p><br></p><p><b>Сообщение поддержки</b>:<br>{support_description}<br><br></p><p><b>С уважением</b>,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(36, 3, 'pt', 'Create Support', '<p><b>Oi</b>&nbsp;{support_name}<br><br></p><p>ОNovo ticket de suporte foi aberto.<br><br></p><p><b>Título</b>: {support_title}<br></p><p><b>Prioridade</b>: {support_priority}<br></p><p><b>Data final</b>: {support_end_date}</p><p><br></p><p><b>Mensagem de suporte</b>:<br>{support_description}<br><br></p><p><b>С Atenciosamente</b>,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(37, 4, 'ar', 'Lead Assign', '<p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="font-family: " open="" sans";"="">﻿</span><span style="font-family: " open="" sans";"="">مرحبا,</span><br style="font-family: sans-serif;"></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="" open="" sans";"="">تم تعيين عميل محتمل جديد لك.</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="" open="" sans";"="">اسم العميل المحتمل&nbsp;: {lead_name}</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span open="" sans";"="" style="">الرصاص البريد الإلكتروني<span style="font-size: 1rem;">&nbsp;: {lead_email}</span></span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="" open="" sans";"="">خط أنابيب الرصاص&nbsp;: {lead_pipeline}</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="" open="" sans";"="">مرحلة الرصاص&nbsp;: {lead_stage}</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="" open="" sans";"="">الموضوع الرئيسي: {lead_subject}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(38, 4, 'da', 'Lead Assign', '<p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="font-family: " open="" sans";"="">Hej,</span><br style="font-family: sans-serif;"></p><p><span style="font-family: " open="" sans";"="">Ny bly er blevet tildelt dig.</span></p><p><span style="font-size: 1rem; font-weight: bolder; font-family: " open="" sans";"="">Lead-e-mail</span><span style="font-size: 1rem; font-family: " open="" sans";"="">&nbsp;</span><span style="font-size: 1rem; font-family: " open="" sans";"="">: {lead_email}</span></p><p><span style="font-family: sans-serif;"><span style="font-weight: bolder; font-family: " open="" sans";"="">Blyrørledning</span><span style="font-family: " open="" sans";"="">&nbsp;</span><span style="font-family: " open="" sans";"="">: {lead_pipeline}</span></span></p><p><span style="font-size: 1rem; font-weight: bolder; font-family: " open="" sans";"="">Lead scenen</span><span style="font-size: 1rem; font-family: " open="" sans";"="">&nbsp;</span><span style="font-size: 1rem; font-family: " open="" sans";"="">: {lead_stage}</span></p><p></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="font-family: sans-serif;"><span style="font-weight: bolder; font-family: " open="" sans";"="">Blynavn</span><span style="font-family: " open="" sans";"="">&nbsp;</span><span style="font-family: " open="" sans";"="">: {lead_name}</span></span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span open="" sans";"=""><b>Lead Emne</b>: {lead_subject}</span><span style="font-family: sans-serif;"><span style="font-family: " open="" sans";"=""><br></span><br></span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(39, 4, 'de', 'Lead Assign', '<p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="font-family: sans-serif;">Hallo,</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">Neuer Lead wurde Ihnen zugewiesen.</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="font-family: sans-serif; font-weight: bolder;" open="" sans";"="">Lead Name</span><span style="font-family: sans-serif;" open="" sans";"="">&nbsp;</span><span style="" open="" sans";"=""><font face="sans-serif">:</font> {lead_name}</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="font-family: sans-serif; font-weight: bolder;" open="" sans";"="">Lead-E-Mail</span><span style="font-family: sans-serif;" open="" sans";"="">&nbsp;</span><span style="" open="" sans";"=""><font face="sans-serif">: </font>{lead_email}</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="font-family: sans-serif; font-weight: bolder;" open="" sans";"="">Lead Pipeline</span><span style="font-family: sans-serif;" open="" sans";"="">&nbsp;</span><span style="" open="" sans";"=""><font face="sans-serif">:</font> {lead_pipeline}</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="font-family: sans-serif; font-weight: bolder;" open="" sans";"="">Lead Stage</span><span style="font-family: sans-serif;" open="" sans";"="">&nbsp;</span><span style="" open="" sans";"=""><font face="sans-serif">: </font>{lead_stage}</span></p><p style="line-height: 28px;"><span style="font-family: " open="" sans";"=""><b>Lead Emne</b>: {lead_subject}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(40, 4, 'en', 'Lead Assign', '<p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="font-family: " open="" sans";"="">﻿</span><span style="font-family: " open="" sans";"="">Hello,</span><br style="font-family: sans-serif;"><span style="font-family: " open="" sans";"="">New Lead has been Assign to you.</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="" open="" sans";"=""><b>Lead Name</b></span><span style="" open="" sans";"="">&nbsp;: {lead_name}</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span open="" sans";"="" style="font-size: 1rem;"><b>Lead Email</b></span><span open="" sans";"="" style="font-size: 1rem;">&nbsp;: {lead_email}</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="" open="" sans";"=""><b>Lead Pipeline</b></span><span style="" open="" sans";"="">&nbsp;: {lead_pipeline}</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="" open="" sans";"=""><b>Lead Stage</b></span><span style="" open="" sans";"="">&nbsp;: {lead_stage}</span></p><p style="line-height: 28px;"><span style="" open="" sans";"=""><b>Lead Subject</b>: {lead_subject}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(41, 4, 'es', 'Lead Assign', '<p style="line-height: 28px;">Hola,<br style=""></p><p>Se le ha asignado un nuevo plomo.</p><p></p><p style="line-height: 28px;"><b>Nombre principal</b>&nbsp;: {lead_name}</p><p style="line-height: 28px;"><b>Correo electrónico</b> principal&nbsp;: {lead_email}</p><p style="line-height: 28px;"><b>Tubería de plomo</b>&nbsp;: {lead_pipeline}</p><p style="line-height: 28px;"><b>Etapa de plomo</b>&nbsp;: {lead_stage}</p><p style="line-height: 28px;"><span open="" sans";"=""><b>Hauptthema</b>: {lead_subject}</span><br></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(42, 4, 'fr', 'Lead Assign', '<p style="line-height: 28px;">Bonjour,<br style=""></p><p style="">Un nouveau prospect vous a été attribué.</p><p></p><p style="line-height: 28px;"><b>Nom du responsable</b>&nbsp;: {lead_name}</p><p style="line-height: 28px;"><b>Courriel principal</b>&nbsp;: {lead_email}</p><p style="line-height: 28px;"><b>Pipeline de plomb</b>&nbsp;: {lead_pipeline}</p><p style="line-height: 28px;"><b>Étape principale</b>&nbsp;: {lead_stage}</p><p style="line-height: 28px;"><span style="" open="" sans";"=""><b>Sujet principal</b>: {lead_subject}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(43, 4, 'it', 'Lead Assign', '<p style="line-height: 28px;">Ciao,<br style=""></p><p>New Lead è stato assegnato a te.</p><p><b>Lead Email</b>&nbsp;: {lead_email}</p><p><b>Conduttura di piombo&nbsp;: {lead_pipeline}</b></p><p><b>Lead Stage</b>&nbsp;: {lead_stage}</p><p></p><p style="line-height: 28px;"><b>Nome del lead</b>&nbsp;: {lead_name}<br></p><p style="line-height: 28px;"><span style="" open="" sans";"=""><b>Soggetto principale</b>: {lead_subject}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(44, 4, 'ja', 'Lead Assign', '<p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="font-family: " open="" sans";"="">こんにちは、</span><br style="font-family: sans-serif;"></p><p><span style="font-family: " open="" sans";"="">新しいリードが割り当てられました。</span><br><span style="font-family: sans-serif;"><span style="font-weight: bolder; font-family: " open="" sans";"="">リードメール</span><span style="font-family: " open="" sans";"="">&nbsp;</span><span style="font-family: " open="" sans";"="">: {lead_email}</span></span><br><span style="font-family: sans-serif;"><span style="font-weight: bolder; font-family: " open="" sans";"="">リードパイプライン</span><span style="font-family: " open="" sans";"="">&nbsp;</span><span style="font-family: " open="" sans";"="">: {lead_pipeline}</span></span><br><span style="font-family: sans-serif;"><span style="font-weight: bolder; font-family: " open="" sans";"="">リードステージ</span><span style="font-family: " open="" sans";"="">&nbsp;: {lead_stage}</span></span></p><p></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="font-family: sans-serif;"><span style="font-weight: bolder; font-family: " open="" sans";"="">リード名</span><span style="font-family: " open="" sans";"="">&nbsp;</span><span style="font-family: " open="" sans";"="">: {lead_name}</span><br></span></p><p style="line-height: 28px;"><span open="" sans";"="" style=""><span style="font-family: " open="" sans";"="">リードサブジェクト</span><span style="font-size: 1rem; font-family: " open="" sans";"="">: {lead_subject}</span></span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(45, 4, 'nl', 'Lead Assign', '<p style="line-height: 28px;">Hallo,<br style=""></p><p style="">Nieuwe lead is aan u toegewezen.<br><b>E-mail leiden</b>&nbsp;: {lead_email}<br><b>Lead Pipeline</b>&nbsp;: {lead_pipeline}<br><b>Hoofdfase</b>&nbsp;: {lead_stage}</p><p></p><p style="line-height: 28px;"><b>Lead naam</b>&nbsp;: {lead_name}<br></p><p style="line-height: 28px;"><span style="" open="" sans";"=""><b>Hoofdonderwerp</b>: {lead_subject}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(46, 4, 'pl', 'Lead Assign', '<p style="line-height: 28px;">Witaj,<br style="">Nowy potencjalny klient został do ciebie przypisany.</p><p style="line-height: 28px;"><b>Imię i nazwisko</b>&nbsp;: {lead_name}<br><b>Główny adres e-mail</b>&nbsp;: {lead_email}<br><b>Ołów rurociągu</b>&nbsp;: {lead_pipeline}<br><b>Etap prowadzący</b>&nbsp;: {lead_stage}</p><p style="line-height: 28px;"><span style="" open="" sans";"=""><b>Główny temat</b>: {lead_subject}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(47, 4, 'ru', 'Lead Assign', '<p style="line-height: 28px;">Привет,<br style="">Новый Лид был назначен вам.</p><p style="line-height: 28px;"><b>Имя лидера</b>&nbsp;: {lead_name}<br><b>Ведущий Email</b>&nbsp;: {lead_email}<br><b>Ведущий трубопровод</b>&nbsp;: {lead_pipeline}<br><b>Ведущий этап</b>&nbsp;: {lead_stage}</p><p style="line-height: 28px;"><span style="" open="" sans";"=""><b>Ведущая тема</b>: {lead_subject}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(48, 4, 'pt', 'Lead Assign', '<p style="line-height: 28px;">Olá,<br style="">O novo lead foi atribuído a você.</p><p style="line-height: 28px;"><b>Nome do lead</b>&nbsp;: {lead_name}<br><b>E-mail principal</b>&nbsp;: {lead_email}<br><b>Pipeline principal</b>&nbsp;: {lead_pipeline}<br><b>Estágio principal</b>&nbsp;: {lead_stage}</p><p style="line-height: 28px;"><span style="" open="" sans";"=""><b>Assunto principal</b>: {lead_subject}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(49, 5, 'ar', 'Deal Assign', '<p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;">مرحبا،</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">تم تعيين صفقة جديدة لك.</span></p><p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;"><span style="font-weight: bolder;">اسم الصفقة</span>&nbsp;: {deal_name}<br><span style="font-weight: bolder;">خط أنابيب الصفقة</span>&nbsp;: {deal_pipeline}<br><span style="font-weight: bolder;">مرحلة الصفقة</span>&nbsp;: {deal_stage}<br><span style="font-weight: bolder;">حالة الصفقة</span>&nbsp;: {deal_status}<br><span style="font-weight: bolder;">سعر الصفقة</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(50, 5, 'da', 'Deal Assign', '<p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;">Hej,</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">New Deal er blevet tildelt til dig.</span></p><p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;"><span style="font-weight: bolder;">Deal Navn</span>&nbsp;: {deal_name}<br><span style="font-weight: bolder;">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style="font-weight: bolder;">Deal Fase</span>&nbsp;: {deal_stage}<br><span style="font-weight: bolder;">Deal status</span>&nbsp;: {deal_status}<br><span style="font-weight: bolder;">Deal pris</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(51, 5, 'de', 'Deal Assign', '<p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;">Hallo,</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">New Deal wurde Ihnen zugewiesen.</span></p><p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;"><span style="font-weight: bolder;">Geschäftsname</span>&nbsp;: {deal_name}<br><span style="font-weight: bolder;">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style="font-weight: bolder;">Deal Stage</span>&nbsp;: {deal_stage}<br><span style="font-weight: bolder;">Deal Status</span>&nbsp;: {deal_status}<br><span style="font-weight: bolder;">Ausgehandelter Preis</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(52, 5, 'en', 'Deal Assign', '<p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;">Hello,</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">New Deal has been Assign to you.</span></p><p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;"><span style="font-weight: bolder;">Deal Name</span>&nbsp;: {deal_name}<br><span style="font-weight: bolder;">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style="font-weight: bolder;">Deal Stage</span>&nbsp;: {deal_stage}<br><span style="font-weight: bolder;">Deal Status</span>&nbsp;: {deal_status}<br><span style="font-weight: bolder;">Deal Price</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(53, 5, 'es', 'Deal Assign', '<p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;">Hola,</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">New Deal ha sido asignado a usted.</span></p><p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;"><span style="font-weight: bolder;">Nombre del trato</span>&nbsp;: {deal_name}<br><span style="font-weight: bolder;">Tubería de reparto</span>&nbsp;: {deal_pipeline}<br><span style="font-weight: bolder;">Etapa de reparto</span>&nbsp;: {deal_stage}<br><span style="font-weight: bolder;">Estado del acuerdo</span>&nbsp;: {deal_status}<br><span style="font-weight: bolder;">Precio de oferta</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(54, 5, 'fr', 'Deal Assign', '<p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;">Bonjour,</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">Le New Deal vous a été attribué.</span></p><p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;"><span style="font-weight: bolder;">Nom de l\'accord</span>&nbsp;: {deal_name}<br><span style="font-weight: bolder;">Pipeline de transactions</span>&nbsp;: {deal_pipeline}<br><span style="font-weight: bolder;">Étape de l\'opération</span>&nbsp;: {deal_stage}<br><span style="font-weight: bolder;">Statut de l\'accord</span>&nbsp;: {deal_status}<br><span style="font-weight: bolder;">Prix ​​de l\'offre</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(55, 5, 'it', 'Deal Assign', '<p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;">Ciao,</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">New Deal è stato assegnato a te.</span></p><p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;"><span style="font-weight: bolder;">Nome dell\'affare</span>&nbsp;: {deal_name}<br><span style="font-weight: bolder;">Pipeline di offerte</span>&nbsp;: {deal_pipeline}<br><span style="font-weight: bolder;">Stage Deal</span>&nbsp;: {deal_stage}<br><span style="font-weight: bolder;">Stato dell\'affare</span>&nbsp;: {deal_status}<br><span style="font-weight: bolder;">Prezzo dell\'offerta</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(56, 5, 'ja', 'Deal Assign', '<p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;">こんにちは、</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">新しい取引が割り当てられました。</span></p><p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;"><span style="font-weight: bolder;">取引名</span>&nbsp;: {deal_name}<br><span style="font-weight: bolder;">取引パイプライン</span>&nbsp;: {deal_pipeline}<br><span style="font-weight: bolder;">取引ステージ</span>&nbsp;: {deal_stage}<br><span style="font-weight: bolder;">取引状況</span>&nbsp;: {deal_status}<br><span style="font-weight: bolder;">取引価格</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(57, 5, 'nl', 'Deal Assign', '<p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;">Hallo,</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">New Deal is aan u toegewezen.</span></p><p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;"><span style="font-weight: bolder;">Dealnaam</span>&nbsp;: {deal_name}<br><span style="font-weight: bolder;">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style="font-weight: bolder;">Deal Stage</span>&nbsp;: {deal_stage}<br><span style="font-weight: bolder;">Dealstatus</span>&nbsp;: {deal_status}<br><span style="font-weight: bolder;">Deal prijs</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(58, 5, 'pl', 'Deal Assign', '<p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;">Witaj,</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">Umowa została przeniesiona {deal_old_stage} do&nbsp; {deal_new_stage}.</span></p><p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;"><span style="font-weight: bolder;">Nazwa oferty</span>&nbsp;: {deal_name}<br><span style="font-weight: bolder;">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style="font-weight: bolder;">Etap transakcji</span>&nbsp;: {deal_stage}<br><span style="font-weight: bolder;">Status oferty</span>&nbsp;: {deal_status}<br><span style="font-weight: bolder;">Cena oferty</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(59, 5, 'ru', 'Deal Assign', '<p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;">Привет,</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">Сделка была перемещена из {deal_old_stage} в&nbsp; {deal_new_stage}.</span></p><p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;"><span style="font-weight: bolder;">Название сделки</span>&nbsp;: {deal_name}<br><span style="font-weight: bolder;">Трубопровод сделки</span>&nbsp;: {deal_pipeline}<br><span style="font-weight: bolder;">Этап сделки</span>&nbsp;: {deal_stage}<br><span style="font-weight: bolder;">Статус сделки</span>&nbsp;: {deal_status}<br><span style="font-weight: bolder;">Цена сделки</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(60, 5, 'pt', 'Deal Assign', '<p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;">Olá,</span><br style="font-family: sans-serif;"><span style="font-family: sans-serif;">Сделка была перемещена из {deal_old_stage} в&nbsp; {deal_new_stage}.</span></p><p style="line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;"><span style="font-family: sans-serif;"><span style="font-weight: bolder;">Nome do negócio</span>&nbsp;: {deal_name}<br><span style="font-weight: bolder;">Pipeline de negócios</span>&nbsp;: {deal_pipeline}<br><span style="font-weight: bolder;">Estágio do negócio</span>&nbsp;: {deal_stage}<br><span style="font-weight: bolder;">Status da transação</span>&nbsp;: {deal_status}<br><span style="font-weight: bolder;">Preço da oferta</span>&nbsp;: {deal_price}</span></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(61, 6, 'ar', 'Award Send', '<p>مرحبا،&nbsp;<br>مرحبا بك في {app_name}.</p><p><b>البريد الإلكتروني </b>: {email}<br><b>كلمه السر</b> : {password}</p><p>{app_url}</p><p>شكر،<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(62, 6, 'da', 'Award Send', '<p>Hej,&nbsp;<br>Velkommen til {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Adgangskode</b> : {password}</p><p>{app_url}</p><p>Tak,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(63, 6, 'de', 'Award Send', '<p>Hallo,&nbsp;<br>Willkommen zu {app_name}.</p><p><b>Email </b>: {email}<br><b>Passwort</b> : {password}</p><p>{app_url}</p><p>Vielen Dank,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(64, 6, 'en', 'Award Send', '<p>Hi , <span style="font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{award_name}</span></p><p>I am much pleased to nominate .</p><p>I am satisfied that he/she is the best employee for the award. </p><p>I have realized  that he/she is a goal-oriented person, efficient and very punctual .</p><p>Feel free to reach out if you have any question.<br></p><p>Thank You, </p><p>{app_name}</p><p>{app_url}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(65, 6, 'es', 'Award Send', '<p>Hola,&nbsp;<br>Bienvenido a {app_name}.</p><p><b>Correo electrónico </b>: {email}<br><b>Contraseña</b> : {password}</p><p>{app_url}</p><p>Gracias,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(66, 6, 'fr', 'Award Send', '<p>Bonjour,&nbsp;<br>Bienvenue à {app_name}.</p><p><b>Email </b>: {email}<br><b>Mot de passe</b> : {password}</p><p>{app_url}</p><p>Merci,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(67, 6, 'it', 'Award Send', '<p>Ciao,&nbsp;<br>Benvenuto a {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Parola d\'ordine</b> : {password}</p><p>{app_url}</p><p>Grazie,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(68, 6, 'ja', 'Award Send', '<p>こんにちは、&nbsp;<br>へようこそ {app_name}.</p><p><b>Eメール </b>: {email}<br><b>パスワード</b> : {password}</p><p>{app_url}</p><p>おかげで、<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(69, 6, 'nl', 'Award Send', '<p>Hallo,&nbsp;<br>Welkom bij {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Wachtwoord</b> : {password}</p><p>{app_url}</p><p>Bedankt,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(70, 6, 'pl', 'Award Send', '<p>Witaj,&nbsp;<br>Witamy w {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Hasło</b> : {password}</p><p>{app_url}</p><p>Dzięki,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(71, 6, 'ru', 'Award Send', '<p>Привет,&nbsp;<br>Добро пожаловать в {app_name}.</p><p><b>Электронное письмо </b>: {email}<br><b>пароль</b> : {password}</p><p>{app_url}</p><p>Спасибо,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(72, 6, 'pt', 'Award Send', '<p>Olá,<br>Bem-vindo ao {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Senha</b> : {password}</p><p>{app_url}</p><p>Obrigada,<br>{app_name}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(73, 7, 'ar', 'Customer Invoice Send', '<p>مرحب<span style="text-align: var(--bs-body-text-align);">مرحبا ، { invoice_name }</span></p><p>مرحبا بك في { app_name }</p><p>أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى رقم الفاتورة الملحقة { invoice_number } للخدمة / الخدمة.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">ببساطة ، اضغط على الاختيار بأسفل :&nbsp;</span></p><p>{ invoice_url }</p><p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p><p>شكرا لك</p><p>Regards,</p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(74, 7, 'da', 'Customer Invoice Send', '<p>Hej, { invoice_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Velkommen til { app_name }</span></p><p>Håber denne e-mail finder dig godt! Se vedlagte fakturanummer { invoice_number } for product/service.</p><p>Klik på knappen nedenfor:&nbsp;</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ invoice_url }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Du er velkommen til at række ud, hvis du har nogen spørgsmål.</span></p><p>Tak.</p><p>Med venlig hilsen</p><p>{ company_name }</p><p>{ app_url }</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(75, 7, 'de', 'Customer Invoice Send', '<p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Hi, {invoice_name}</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Willkommen bei {app_name}</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Hoffe, diese E-Mail findet dich gut! Bitte beachten Sie die beigefügte Rechnungsnummer {invoice_number} für Produkt/Service.</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Klicken Sie einfach auf den Button unten:&nbsp;</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">{invoice_url}</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Fühlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Vielen Dank,</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Betrachtet,</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">{company_name}</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">{app_url}</font></p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(76, 7, 'en', 'Customer Invoice Send', '<p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><span style="font-family: " open="" sans";"="">﻿</span><span style="text-align: var(--bs-body-text-align);">Hi ,{invoice_name}</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"="">Welcome to {app_name}</p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"="">Hope this email finds you well! Please see attached invoice number {invoice_number}<span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">} for product/service.</span></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"="">Simply click on the button below: </p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"="">{invoice_url}</p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"="">Feel free to reach out if you have any questions.</p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"="">Thank You,</p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"="">Regards,</p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"="">{company_name}</p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"="">{app_url}</p><p></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(77, 7, 'es', 'Customer Invoice Send', '<p>Hi, {invoice_name}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Bienvenido a {app_name}</span></p><p>¡Espero que este email le encuentre bien! Consulte el número de factura adjunto {invoice_number} para el producto/servicio.</p><p>Simplemente haga clic en el botón de abajo:&nbsp;</p><p>{invoice_url}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Siéntase libre de llegar si usted tiene alguna pregunta.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Gracias,</span></p><p>Considerando,</p><p>{nombre_empresa}</p><p>{app_url}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(78, 7, 'fr', 'Customer Invoice Send', '<p>Bonjour, { nom_appel }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Bienvenue dans { app_name }</span></p><p>J espère que ce courriel vous trouve bien ! Voir le numéro de facture { invoice_number } pour le produit/service.</p><p>Cliquez simplement sur le bouton ci-dessous:&nbsp;</p><p>{ url-invoque_utilisateur }</p><p>N hésitez pas à nous contacter si vous avez des questions.</p><p>Merci,</p><p>Regards,</p><p>{ nom_entreprise }</p><p>{ adresse_url }</p><div><br></div>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(79, 7, 'it', 'Customer Invoice Send', '<p>Ciao, {nome_invoca_}</p><p>Benvenuti in {app_name}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Spero che questa email ti trovi bene! Si prega di consultare il numero di fattura collegato {invoice_number} per il prodotto/servizio.</span></p><p>Semplicemente clicca sul pulsante sottostante:&nbsp;</p><p>{invoice_url}</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Grazie,</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Riguardo,</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{company_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_url}</span><br></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(80, 7, 'ja', 'Customer Invoice Send', '<p>こんにちは、 {請求書名}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_name} へようこそ</span></p><p>この E メールでよくご確認ください。 製品 / サービスについては、添付された請求書番号 {invoice_number} を参照してください。</p><p>以下のボタンをクリックしてください。&nbsp;</p><p>{請求書 URL}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">質問がある場合は、自由に連絡してください。</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">ありがとうございます</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">よろしく</span></p><p>{ company_name}</p><p>{app_url}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(81, 7, 'nl', 'Customer Invoice Send', '<p>Hallo, { invoice_name }</p><p>Welkom bij { app_name }</p><p>Hoop dat deze e-mail je goed vindt! Zie bijgevoegde factuurnummer { invoice_number } voor product/service.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Klik gewoon op de knop hieronder:&nbsp;</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ invoice_url }</span></p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p>Dank U,</p><p>Betreft:</p><p>{ bedrijfsnaam }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ app_url }</span><br></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(82, 7, 'pl', 'Customer Invoice Send', '<p>Witaj, {invoice_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Witamy w aplikacji {app_name }</span></p><p>Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Sprawdź załączoną fakturę numer {invoice_number } dla produktu/usługi.</p><p>Wystarczy kliknąć na przycisk poniżej:&nbsp;</p><p>{adres_URL_faktury }</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p>Dziękuję,</p><p>W odniesieniu do</p><p>{company_name }</p><p>{app_url }</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(83, 7, 'ru', 'Customer Invoice Send', '<p>Привет, { invoice_name }</p><p>Вас приветствует { app_name }</p><p>Надеюсь, это электронное письмо найдет вас хорошо! См. вложенный номер счета-фактуры { invoice_number } для производства/услуги.</p><p>Просто нажмите на кнопку ниже:&nbsp;</p><p>{ invoice_url }</p><p>Не стеснитесь, если у вас есть вопросы.</p><p>Спасибо.</p><p>С уважением,</p><p>{ company_name }</p><p>{ app_url }</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(84, 7, 'pt', 'Customer Invoice Send', '<p><span style="font-size: 14.4px;">Oi, {invoice_name}</span></p><p><span style="font-size: 14.4px;">Bem-vindo a {app_name}</span></p><p><span style="font-size: 14.4px;">Espero que este e-mail encontre você bem! Por favor, consulte o número da fatura anexa {invoice_number} para produto/serviço.</span></p><p><span style="font-size: 14.4px;">Basta clicar no botão abaixo:&nbsp;</span></p><p><span style="font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{invoice_url}</span></p><p><span style="font-size: 14.4px;">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style="font-size: 14.4px;">Obrigado,</span></p><p><span style="font-size: 14.4px;">Considera,</span></p><p><span style="font-size: 14.4px;">{company_name}</span></p><p><span style="font-size: 14.4px;">{app_url}</span></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(85, 8, 'ar', 'Invoice Payment', '<p>Hej.</p>\n                    <p>Velkommen til { app_name }</p>\n                    <p>K&aelig;re { invoice_payment_name }</p>\n                    <p>Vi har modtaget din m&aelig;ngde { invoice_payment_amount } betaling for { invoice_number } undert.d. p&aring; dato { invoice_payment_date }</p>\n                    <p>Dit { invoice_number } Forfaldsbel&oslash;b er { payment_dueAmount }</p>\n                    <p>Vi s&aelig;tter pris p&aring; din hurtige betaling og ser frem til fortsatte forretninger med dig i fremtiden.</p>\n                    <p>Mange tak, og ha en god dag!</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(86, 8, 'da', 'Invoice Payment', '<p>Hej.</p>\n                    <p>Velkommen til { app_name }</p>\n                    <p>K&aelig;re { invoice_payment_name }</p>\n                    <p>Vi har modtaget din m&aelig;ngde { invoice_payment_amount } betaling for { invoice_number } undert.d. p&aring; dato { invoice_payment_date }</p>\n                    <p>Dit { invoice_number } Forfaldsbel&oslash;b er { payment_dueAmount }</p>\n                    <p>Vi s&aelig;tter pris p&aring; din hurtige betaling og ser frem til fortsatte forretninger med dig i fremtiden.</p>\n                    <p>Mange tak, og ha en god dag!</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(87, 8, 'de', 'Invoice Payment', '<p>Hi,</p>\n                    <p>Willkommen bei {app_name}</p>\n                    <p>Sehr geehrter {invoice_payment_name}</p>\n                    <p>Wir haben Ihre Zahlung {invoice_payment_amount} f&uuml;r {invoice_number}, die am Datum {invoice_payment_date} &uuml;bergeben wurde, erhalten.</p>\n                    <p>Ihr {invoice_number} -f&auml;lliger Betrag ist {payment_dueAmount}</p>\n                    <p>Wir freuen uns &uuml;ber Ihre prompte Bezahlung und freuen uns auf das weitere Gesch&auml;ft mit Ihnen in der Zukunft.</p>\n                    <p>Vielen Dank und habe einen guten Tag!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betrachtet,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(88, 8, 'en', 'Invoice Payment', '<p><span style="color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">Hi,</span></span></p>\n                    <p><span style="color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">Welcome to {app_name}</span></span></p>\n                    <p><span style="color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">Dear {invoice_payment_name}</span></span></p>\n                    <p><span style="color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">We have recieved your amount {invoice_payment_amount} payment for {invoice_number} submited on date {invoice_payment_date}</span></span></p>\n                    <p><span style="color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">Your {invoice_number} Due amount is {payment_dueAmount}</span></span></p>\n                    <p><span style="color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">We appreciate your prompt payment and look forward to continued business with you in the future.</span></span></p>\n                    <p><span style="color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">Thank you very much and have a good day!!</span></span></p>\n                    <p>&nbsp;</p>\n                    <p><span style="color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">Regards,</span></span></p>\n                    <p><span style="color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">{company_name}</span></span></p>\n                    <p><span style="color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">{app_url}</span></span></p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(89, 8, 'es', 'Invoice Payment', '<p>Hola,</p>\n                    <p>Bienvenido a {app_name}</p>\n                    <p>Estimado {invoice_payment_name}</p>\n                    <p>Hemos recibido su importe {invoice_payment_amount} pago para {invoice_number} submitado en la fecha {invoice_payment_date}</p>\n                    <p>El importe de {invoice_number} Due es {payment_dueAmount}</p>\n                    <p>Agradecemos su pronto pago y esperamos continuar con sus negocios con usted en el futuro.</p>\n                    <p>Muchas gracias y que tengan un buen d&iacute;a!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considerando,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(90, 8, 'fr', 'Invoice Payment', '<p>Salut,</p>\n                    <p>Bienvenue dans { app_name }</p>\n                    <p>Cher { invoice_payment_name }</p>\n                    <p>Nous avons re&ccedil;u votre montant { invoice_payment_amount } de paiement pour { invoice_number } soumis le { invoice_payment_date }</p>\n                    <p>Votre {invoice_number} Montant d&ucirc; est { payment_dueAmount }</p>\n                    <p>Nous appr&eacute;cions votre rapidit&eacute; de paiement et nous attendons avec impatience de poursuivre vos activit&eacute;s avec vous &agrave; lavenir.</p>\n                    <p>Merci beaucoup et avez une bonne journ&eacute;e ! !</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(91, 8, 'it', 'Invoice Payment', '<p>Ciao,</p>\n                    <p>Benvenuti in {app_name}</p>\n                    <p>Caro {invoice_payment_name}</p>\n                    <p>Abbiamo ricevuto la tua quantit&agrave; {invoice_payment_amount} pagamento per {invoice_number} subita alla data {invoice_payment_date}</p>\n                    <p>Il tuo {invoice_number} A somma cifra &egrave; {payment_dueAmount}</p>\n                    <p>Apprezziamo il tuo tempestoso pagamento e non vedo lora di continuare a fare affari con te in futuro.</p>\n                    <p>Grazie mille e buona giornata!!</p>\n                    <p>&nbsp;</p>\n                    <p>Riguardo,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(92, 8, 'ja', 'Invoice Payment', '<p>こんにちは。</p>\n                    <p>{app_name} へようこそ</p>\n                    <p>{ invoice_payment_name} に出れます</p>\n                    <p>{ invoice_payment_date} 日付で提出された {請求書番号} の支払金額 } の金額を回収しました。 }</p>\n                    <p>お客様の {請求書番号} 予定額は {payment_dueAmount} です</p>\n                    <p>お客様の迅速な支払いを評価し、今後も継続してビジネスを継続することを期待しています。</p>\n                    <p>ありがとうございます。良い日をお願いします。</p>\n                    <p>&nbsp;</p>\n                    <p>よろしく</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(93, 8, 'nl', 'Invoice Payment', '<p>Hallo,</p>\n                    <p>Welkom bij { app_name }</p>\n                    <p>Beste { invoice_payment_name }</p>\n                    <p>We hebben uw bedrag ontvangen { invoice_payment_amount } betaling voor { invoice_number } ingediend op datum { invoice_payment_date }</p>\n                    <p>Uw { invoice_number } verschuldigde bedrag is { payment_dueAmount }</p>\n                    <p>Wij waarderen uw snelle betaling en kijken uit naar verdere zaken met u in de toekomst.</p>\n                    <p>Hartelijk dank en hebben een goede dag!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betreft:</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(94, 8, 'pl', 'Invoice Payment', '<p>Witam,</p>\n                    <p>Witamy w aplikacji {app_name }</p>\n                    <p>Droga {invoice_payment_name }</p>\n                    <p>Odebrano kwotę {invoice_payment_amount } płatności za {invoice_number } w dniu {invoice_payment_date }, kt&oacute;ry został zastąpiony przez użytkownika.</p>\n                    <p>{invoice_number } Kwota należna: {payment_dueAmount }</p>\n                    <p>Doceniamy Twoją szybką płatność i czekamy na kontynuację działalności gospodarczej z Tobą w przyszłości.</p>\n                    <p>Dziękuję bardzo i mam dobry dzień!!</p>\n                    <p>&nbsp;</p>\n                    <p>W odniesieniu do</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(95, 8, 'ru', 'Invoice Payment', '<p>Привет.</p>\n                    <p>Вас приветствует { app_name }</p>\n                    <p>Дорогая { invoice_payment_name }</p>\n                    <p>Мы получили вашу сумму оплаты {invoice_payment_amount} для { invoice_number }, подавшей на дату { invoice_payment_date }</p>\n                    <p>Ваша { invoice_number } Должная сумма-{ payment_dueAmount }</p>\n                    <p>Мы ценим вашу своевременную оплату и надеемся на продолжение бизнеса с вами в будущем.</p>\n                    <p>Большое спасибо и хорошего дня!!</p>\n                    <p>&nbsp;</p>\n                    <p>С уважением,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(96, 8, 'pt', 'Invoice Payment', '<p>Oi,</p>\n                    <p>Bem-vindo a {app_name}</p>\n                    <p>Querido {invoice_payment_name}</p>\n                    <p>N&oacute;s recibimos sua quantia {invoice_payment_amount} pagamento para {invoice_number} requisitado na data {invoice_payment_date}</p>\n                    <p>Sua quantia {invoice_number} Due &eacute; {payment_dueAmount}</p>\n                    <p>Agradecemos o seu pronto pagamento e estamos ansiosos para continuarmos os neg&oacute;cios com voc&ecirc; no futuro.</p>\n                    <p>Muito obrigado e tenha um bom dia!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(97, 9, 'ar', 'Payment Reminder', '<p>عزيزي ، { payment_reminder_name }</p>\n                    <p>آمل أن تكون بخير. هذا مجرد تذكير بأن الدفع على الفاتورة { invoice_payment_number } الاجمالي { invoice_payment_dueAmount } ، والتي قمنا بارسالها على { payment_reminder_date } مستحق اليوم.</p>\n                    <p>يمكنك دفع مبلغ لحساب البنك المحدد على الفاتورة.</p>\n                    <p>أنا متأكد أنت مشغول ، لكني أقدر إذا أنت يمكن أن تأخذ a لحظة ونظرة على الفاتورة عندما تحصل على فرصة.</p>\n                    <p>إذا كان لديك أي سؤال مهما يكن ، يرجى الرد وسأكون سعيدا لتوضيحها.</p>\n                    <p>&nbsp;</p>\n                    <p>شكرا&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(98, 9, 'da', 'Payment Reminder', '<p>K&aelig;re, { payment_reminder_name }</p>\n                    <p>Dette er blot en p&aring;mindelse om, at betaling p&aring; faktura { invoice_payment_number } i alt { invoice_payment_dueAmount}, som vi sendte til { payment_reminder_date }, er forfalden i dag.</p>\n                    <p>Du kan foretage betalinger til den bankkonto, der er angivet p&aring; fakturaen.</p>\n                    <p>Jeg er sikker p&aring; du har travlt, men jeg ville s&aelig;tte pris p&aring;, hvis du kunne tage et &oslash;jeblik og se p&aring; fakturaen, n&aring;r du f&aring;r en chance.</p>\n                    <p>Hvis De har nogen sp&oslash;rgsm&aring;l, s&aring; svar venligst, og jeg vil med gl&aelig;de tydeligg&oslash;re dem.</p>\n                    <p>&nbsp;</p>\n                    <p>Tak.&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(99, 9, 'de', 'Payment Reminder', '<p>Sehr geehrte/r, {payment_reminder_name}</p>\n                    <p>Ich hoffe, Sie sind gut. Dies ist nur eine Erinnerung, dass die Zahlung auf Rechnung {invoice_payment_number} total {invoice_payment_dueAmount}, die wir gesendet am {payment_reminder_date} ist heute f&auml;llig.</p>\n                    <p>Sie k&ouml;nnen die Zahlung auf das auf der Rechnung angegebene Bankkonto vornehmen.</p>\n                    <p>Ich bin sicher, Sie sind besch&auml;ftigt, aber ich w&uuml;rde es begr&uuml;&szlig;en, wenn Sie einen Moment nehmen und &uuml;ber die Rechnung schauen k&ouml;nnten, wenn Sie eine Chance bekommen.</p>\n                    <p>Wenn Sie irgendwelche Fragen haben, antworten Sie bitte und ich w&uuml;rde mich freuen, sie zu kl&auml;ren.</p>\n                    <p>&nbsp;</p>\n                    <p>Danke,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(100, 9, 'en', 'Payment Reminder', '<p>Dear, {payment_reminder_name}</p>\n                    <p>I hope you&rsquo;re well.This is just a reminder that payment on invoice {invoice_payment_number} total dueAmount {invoice_payment_dueAmount} , which we sent on {payment_reminder_date} is due today.</p>\n                    <p>You can make payment to the bank account specified on the invoice.</p>\n                    <p>I&rsquo;m sure you&rsquo;re busy, but I&rsquo;d appreciate if you could take a moment and look over the invoice when you get a chance.</p>\n                    <p>If you have any questions whatever, please reply and I&rsquo;d be happy to clarify them.</p>\n                    <p>&nbsp;</p>\n                    <p>Thanks,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(101, 9, 'es', 'Payment Reminder', '<p>Estimado, {payment_reminder_name}</p>\n                    <p>Espero que est&eacute;s bien. Esto es s&oacute;lo un recordatorio de que el pago en la factura {invoice_payment_number} total {invoice_payment_dueAmount}, que enviamos en {payment_reminder_date} se vence hoy.</p>\n                    <p>Puede realizar el pago a la cuenta bancaria especificada en la factura.</p>\n                    <p>Estoy seguro de que est&aacute;s ocupado, pero agradecer&iacute;a si podr&iacute;as tomar un momento y mirar sobre la factura cuando tienes una oportunidad.</p>\n                    <p>Si tiene alguna pregunta, por favor responda y me gustar&iacute;a aclararlas.</p>\n                    <p>&nbsp;</p>\n                    <p>Gracias,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(102, 9, 'fr', 'Payment Reminder', '<p>Cher, { payment_reminder_name }</p>\n                    <p>Jesp&egrave;re que vous &ecirc;tes bien, ce nest quun rappel que le paiement sur facture {invoice_payment_number}total { invoice_payment_dueAmount }, que nous avons envoy&eacute; le {payment_reminder_date} est d&ucirc; aujourdhui.</p>\n                    <p>Vous pouvez effectuer le paiement sur le compte bancaire indiqu&eacute; sur la facture.</p>\n                    <p>Je suis s&ucirc;r que vous &ecirc;tes occup&eacute;, mais je vous serais reconnaissant de prendre un moment et de regarder la facture quand vous aurez une chance.</p>\n                    <p>Si vous avez des questions, veuillez r&eacute;pondre et je serais heureux de les clarifier.</p>\n                    <p>&nbsp;</p>\n                    <p>Merci,&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(103, 9, 'it', 'Payment Reminder', '<p>Caro, {payment_reminder_name}</p>\n                    <p>Spero che tu stia bene, questo &egrave; solo un promemoria che il pagamento sulla fattura {invoice_payment_number} totale {invoice_payment_dueAmount}, che abbiamo inviato su {payment_reminder_date} &egrave; dovuto oggi.</p>\n                    <p>&Egrave; possibile effettuare il pagamento al conto bancario specificato sulla fattura.</p>\n                    <p>Sono sicuro che sei impegnato, ma apprezzerei se potessi prenderti un momento e guardare la fattura quando avrai una chance.</p>\n                    <p>Se avete domande qualunque, vi prego di rispondere e sarei felice di chiarirle.</p>\n                    <p>&nbsp;</p>\n                    <p>Grazie,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(104, 9, 'ja', 'Payment Reminder', '<p>ID、 {payment_reminder_name}</p>\n                    <p>これは、 { invoice_payment_dueAmount} の合計 {invoice_payment_dueAmount } に対する支払いが今日予定されていることを思い出させていただきたいと思います。</p>\n                    <p>請求書に記載されている銀行口座に対して支払いを行うことができます。</p>\n                    <p>お忙しいのは確かですが、機会があれば、少し時間をかけてインボイスを見渡すことができればありがたいのですが。</p>\n                    <p>何か聞きたいことがあるなら、お返事をお願いしますが、喜んでお答えします。</p>\n                    <p>&nbsp;</p>\n                    <p>ありがとう。&nbsp;</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(105, 9, 'nl', 'Payment Reminder', '<p>Geachte, { payment_reminder_name }</p>\n                    <p>Ik hoop dat u goed bent. Dit is gewoon een herinnering dat betaling op factuur { invoice_payment_number } totaal { invoice_payment_dueAmount }, die we verzonden op { payment_reminder_date } is vandaag verschuldigd.</p>\n                    <p>U kunt betaling doen aan de bankrekening op de factuur.</p>\n                    <p>Ik weet zeker dat je het druk hebt, maar ik zou het op prijs stellen als je even over de factuur kon kijken als je een kans krijgt.</p>\n                    <p>Als u vragen hebt, beantwoord dan uw antwoord en ik wil ze graag verduidelijken.</p>\n                    <p>&nbsp;</p>\n                    <p>Bedankt.&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(106, 9, 'pl', 'Payment Reminder', '<p>Drogi, {payment_reminder_name }</p>\n                    <p>Mam nadzieję, że jesteś dobrze. To jest tylko przypomnienie, że płatność na fakturze {invoice_payment_number } total {invoice_payment_dueAmount }, kt&oacute;re wysłaliśmy na {payment_reminder_date } jest dzisiaj.</p>\n                    <p>Płatność można dokonać na rachunek bankowy podany na fakturze.</p>\n                    <p>Jestem pewien, że jesteś zajęty, ale byłbym wdzięczny, gdybyś m&oacute;gł wziąć chwilę i spojrzeć na fakturę, kiedy masz szansę.</p>\n                    <p>Jeśli masz jakieś pytania, proszę o odpowiedź, a ja chętnie je wyjaśniam.</p>\n                    <p>&nbsp;</p>\n                    <p>Dziękuję,&nbsp;</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>\n                    <p>&nbsp;</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(107, 9, 'ru', 'Payment Reminder', '<p>Уважаемый, { payment_reminder_name }</p>\n                    <p>Я надеюсь, что вы хорошо. Это просто напоминание о том, что оплата по счету { invoice_payment_number } всего { invoice_payment_dueAmount }, которое мы отправили в { payment_reminder_date }, сегодня.</p>\n                    <p>Вы можете произвести платеж на банковский счет, указанный в счете-фактуре.</p>\n                    <p>Я уверена, что ты занята, но я была бы признательна, если бы ты смог бы поглядеться на счет, когда у тебя появится шанс.</p>\n                    <p>Если у вас есть вопросы, пожалуйста, ответьте, и я буду рад их прояснить.</p>\n                    <p>&nbsp;</p>\n                    <p>Спасибо.&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(108, 9, 'pt', 'Payment Reminder', '<p>Querido, {payment_reminder_name}</p>\n                    <p>Espero que voc&ecirc; esteja bem. Este &eacute; apenas um lembrete de que o pagamento na fatura {invoice_payment_number} total {invoice_payment_dueAmount}, que enviamos em {payment_reminder_date} &eacute; devido hoje.</p>\n                    <p>Voc&ecirc; pode fazer o pagamento &agrave; conta banc&aacute;ria especificada na fatura.</p>\n                    <p>Eu tenho certeza que voc&ecirc; est&aacute; ocupado, mas eu agradeceria se voc&ecirc; pudesse tirar um momento e olhar sobre a fatura quando tiver uma chance.</p>\n                    <p>Se voc&ecirc; tiver alguma d&uacute;vida o que for, por favor, responda e eu ficaria feliz em esclarec&ecirc;-las.</p>\n                    <p>&nbsp;</p>\n                    <p>Obrigado,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(109, 10, 'ar', 'Bill Payment', '<p>مرحبا ، { payment_name }</p><p>مرحبا بك في { app_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">نحن نكتب لإبلاغكم بأننا قد أرسلنا مدفوعات (payment_الفاتورة) } الخاصة بك.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">لقد أرسلنا قيمتك { payment_cama } لأجل { payment_فاتورة } قمت بالاحالة في التاريخ { payment_date } من خلال { payment_method }.</span></p><p>شكرا جزيلا لك وطاب يومك ! !!!</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ company_name }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ app_url }</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(110, 10, 'da', 'Bill Payment', '', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(111, 10, 'de', 'Bill Payment', '<p>Hallo, {payment_name}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Willkommen bei {app_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Wir schreiben Ihnen mitzuteilen, dass wir Ihre Zahlung von {payment_bill} gesendet haben.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Wir haben Ihre Zahlung {payment_amount} Zahlung für {payment_bill} am Datum {payment_date} über {payment_method} gesendet.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Vielen Dank und haben einen guten Tag! !!!</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{company_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_url}</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(112, 10, 'en', 'Bill Payment', '<p>Hi , {payment_name}</p><p>Welcome to {app_name}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">We are writing to inform you that we has sent your {payment_bill} payment.</span></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">We has sent your amount {payment_amount} payment for {payment_bill} submited&nbsp; on date {payment_date} via {payment_method}.</span></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Thank You very much and have a good day !!!!</span></p><p>{company_name}</p><p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(113, 10, 'es', 'Bill Payment', '<p>Hola, {nombre_pago}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Bienvenido a {app_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Estamos escribiendo para informarle que hemos enviado su pago {payment_bill}.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Hemos enviado su importe {payment_amount} pago para {payment_bill} submitado en la fecha {payment_date} a través de {payment_method}.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Thank You very much and have a good day! !!!</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{nombre_empresa}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_url}</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(114, 10, 'fr', 'Bill Payment', '<p>Salut, { payment_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Bienvenue dans { app_name }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Nous vous écrivons pour vous informer que nous avons envoyé votre paiement { payment_bill }.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Nous avons envoyé votre paiement { payment_amount } pour { payment_bill } soumis à la date { payment_date } via { payment_method }.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Merci beaucoup et avez un bon jour ! !!!</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ nom_entreprise }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ adresse_url }</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(115, 10, 'it', 'Bill Payment', '<p>Ciao, {payment_name}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Benvenuti in {app_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Scriviamo per informarti che abbiamo inviato il tuo pagamento {payment_bill}.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Abbiamo inviato la tua quantità {payment_amount} pagamento per {payment_bill} subita alla data {payment_date} tramite {payment_method}.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Grazie mille e buona giornata! !!!</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{company_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_url}</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(116, 10, 'ja', 'Bill Payment', '<p>こんにちは、 {payment_name}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_name} へようこそ</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{payment_紙幣} の支払いを送信したことをお知らせするために執筆しています。</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{payment_date } に提出された {payment_議案} に対する金額 {payment_金額} の支払いは、 {payment_method}を介して送信されました。</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">ありがとうございます。良い日をお願いします。</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ company_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_url}</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(117, 10, 'nl', 'Bill Payment', '<p>Hallo, { payment_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Welkom bij { app_name }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Wij schrijven u om u te informeren dat wij uw betaling van { payment_bill } hebben verzonden.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">We hebben uw bedrag { payment_amount } betaling voor { payment_bill } verzonden op datum { payment_date } via { payment_method }.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Hartelijk dank en hebben een goede dag! !!!</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ bedrijfsnaam }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ app_url }</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(118, 10, 'pl', 'Bill Payment', '<p>Witaj, {payment_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Witamy w aplikacji {app_name }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Piszemy, aby poinformować Cię, że wysłaliśmy Twoją płatność {payment_bill }.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Twoja kwota {payment_amount } została wysłana przez użytkownika {payment_bill } w dniu {payment_date } za pomocą metody {payment_method }.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Dziękuję bardzo i mam dobry dzień! !!!</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{company_name }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_url }</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(119, 10, 'ru', 'Bill Payment', '<p>Привет, { payment_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Вас приветствует { app_name }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Мы пишем, чтобы сообщить вам, что мы отправили вашу оплату { payment_bill }.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Мы отправили вашу сумму оплаты { payment_amoon } для { payment_bill }, подав на дату { payment_date } через { payment_method }.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Большое спасибо и хорошего дня! !!!</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ company_name }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ app_url }</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(120, 10, 'pt', 'Bill Payment', '<p>Oi, {payment_name}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Bem-vindo a {app_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Estamos escrevendo para informá-lo que enviamos o seu pagamento {payment_bill}.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Nós enviamos sua quantia {payment_amount} pagamento por {payment_bill} requisitado na data {payment_date} via {payment_method}.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Muito obrigado e tenha um bom dia! !!!</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{company_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_url}</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(121, 11, 'ar', 'Bill Resend', '<p>مرحبا ، { bill_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">مرحبا بك في { app_name }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى رقم الفاتورة الملحقة { bill_bill } لخدمة المنتج / الخدمة.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ببساطة اضغط على الاختيار بأسفل.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { bill_url }</p><p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">شكرا لعملك ! !!!</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Regards,</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ company_name }</span></p><p>{ app_url }</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(122, 11, 'da', 'Bill Resend', '<p>Hej, { bill_name }</p><p>Velkommen til { app_name }</p><p>Håber denne e-mail finder dig godt! Se vedlagte fakturanummer { bill_bill } for product/service.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Klik på knappen nedenfor.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ bill_url }</p><p>Du er velkommen til at række ud, hvis du har nogen spørgsmål.</p><p>Tak for din virksomhed! !!!</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Med venlig hilsen</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ company_name }</span></p><p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(123, 11, 'de', 'Bill Resend', '<p>Hi, {bill_name}</p><p>Willkommen bei {app_name}</p><p>Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie die angehängte Rechnungsnummer {bill_bill} für Produkt/Service an.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Klicken Sie einfach auf den Button unten.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {bill_url}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Fühlen Sie sich frei, wenn Sie Fragen haben.</span></p><p>Vielen Dank für Ihr Geschäft! !!!</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Betrachtet,</span></p><p>{company_name}</p><p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(124, 11, 'en', 'Bill Resend', '<p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Hi , {bill_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Welcome to {app_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Hope this email finds you well! Please see attached bill number {bill_bill} for product/service.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Simply click on the button below .</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</span></p><p>Feel free to reach out if you have any questions.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Thank You for your business !!!!</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Regards,</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{company_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_url}</span><br></p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(125, 11, 'es', 'Bill Resend', '<p>Hi, {nombre_billar}</p><p>Bienvenido a {app_name}</p><p>¡Espero que este email le encuentre bien! Consulte el número de factura adjunto {bill_bill} para el producto/servicio.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Simplemente haga clic en el botón de abajo.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Siéntase libre de llegar si usted tiene alguna pregunta.</p><p>Thank You for your business! !!!</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Considerando,</span></p><p>{nombre_empresa}</p><p>{app_url}</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(126, 11, 'fr', 'Bill Resend', '<p>Salut, { nom_facturation }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Bienvenue dans { app_name }</span></p><p>Jespère que ce courriel vous trouve bien ! Veuillez consulter le numéro de facture { factur_bill } associé au produit / service.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Cliquez simplement sur le bouton ci-dessous.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ url-facturation }</span></p><p>Nhésitez pas à nous contacter si vous avez des questions.</p><p>Merci pour votre entreprise ! !!!</p><p>Regards,</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ nom_entreprise }</span></p><p>{ adresse_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(127, 11, 'it', 'Bill Resend', '<p>Ciao, {bill_name}</p><p>Benvenuti in {app_name}</p><p>Spero che questa email ti trovi bene! Si prega di consultare il numero di fattura allegato {bill_bill} per il prodotto/servizio.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Semplicemente clicca sul pulsante sottostante.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Grazie per il tuo business! !!!</p><p>Riguardo,</p><p>{company_name}</p><p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(128, 11, 'ja', 'Bill Resend', '<p>こんにちは、 {bill_name}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_name} へようこそ</span></p><p>この E メールでよくご確認ください。 製品 / サービスの添付された請求番号 {bill_紙幣} を参照してください。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 以下のボタンをクリックしてください。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">質問がある場合は、自由に連絡してください。</span></p><p>お客様のビジネスに感謝しています。</p><p>よろしく</p><p>{ company_name}</p><p>{app_url}</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(129, 11, 'nl', 'Bill Resend', '<p>Hallo, { bill_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Welkom bij { app_name }</span></p><p>Hoop dat deze e-mail je goed vindt! Zie het bijgesloten factuurnummer { bill_bill } voor product/service.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Klik gewoon op de knop hieronder.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ bill_url }</p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Dank U voor uw bedrijf! !!!</span></p><p>Betreft:</p><p>{ bedrijfsnaam }</p><p>{ app_url }</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(130, 11, 'pl', 'Bill Resend', '<p>Witaj, {nazwa_faktury }</p><p>Witamy w aplikacji {app_name }</p><p>Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Zapoznaj się z załączonym numerem rachunku {bill_bill } dla produktu/usługi.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Wystarczy kliknąć na przycisk poniżej.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{adres_URL_faktury }</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p>Dziękujemy za swój biznes! !!!</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">W odniesieniu do</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{company_name }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_url }</span><br></p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(131, 11, 'ru', 'Bill Resend', '<p>Привет, { bill_name }</p><p>Вас приветствует { app_name }</p><p>Надеюсь, это электронное письмо найдет вас хорошо! См. прилагаемый номер счета { bill_bill } для product/service.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Просто нажмите на кнопку внизу.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { bill_url }</p><p>Не стеснитесь, если у вас есть вопросы.</p><p>Спасибо за ваш бизнес! !!!</p><p>С уважением,</p><p>{ company_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{ app_url }</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(132, 11, 'pt', 'Bill Resend', '<p>Oi, {bill_name}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Bem-vindo a {app_name}</span></p><p>Espero que este e-mail encontre você bem! Por favor, consulte o número de faturamento conectado {bill_bill} para produto/serviço.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Basta clicar no botão abaixo.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</p><p>Obrigado pelo seu negócio! !!!</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Considera,</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{company_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_url}</span><br></p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(133, 12, 'ar', 'Proposal Send', '<p>مرحبا ، { proposal_name }</p>\n                    <p>أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى رقم الاقتراح المرفق { proposal_number } للمنتج / الخدمة.</p>\n                    <p>اضغط ببساطة على الاختيار بأسفل</p>\n                    <p>{ proposal_url }</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لعملك ! !</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(134, 12, 'da', 'Proposal Send', '<p>Hej, {proposal__name }</p>\n                    <p>H&aring;ber denne e-mail finder dig godt! Se det vedh&aelig;ftede forslag nummer { proposal_number } for product/service.</p>\n                    <p>klik bare p&aring; knappen nedenfor</p>\n                    <p>{ proposal_url }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak for din virksomhed!</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(135, 12, 'de', 'Proposal Send', '<p>Hi, {proposal_name}</p>\n                    <p>Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie die angeh&auml;ngte Vorschlagsnummer {proposal_number} f&uuml;r Produkt/Service an.</p>\n                    <p>Klicken Sie einfach auf den Button unten</p>\n                    <p>{proposal_url}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Vielen Dank f&uuml;r Ihr Unternehmen!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betrachtet,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(136, 12, 'en', 'Proposal Send', '<p>Hi, {proposal_name}</p>\n                    <p>Hope this email ﬁnds you well! Please see attached proposal number {proposal_number} for product/service.</p>\n                    <p>simply click on the button below</p>\n                    <p>{proposal_url}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you for your business!!</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(137, 12, 'es', 'Proposal Send', '<p>Hi, {proposal_name}</p>\n                    <p>&iexcl;Espero que este email le encuentre bien! Consulte el n&uacute;mero de propuesta adjunto {proposal_number} para el producto/servicio.</p>\n                    <p>simplemente haga clic en el bot&oacute;n de abajo</p>\n                    <p>{proposal_url}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias por su negocio!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considerando,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(138, 12, 'fr', 'Proposal Send', '<p>Salut, {proposal_name}</p>\n                    <p>Jesp&egrave;re que ce courriel vous trouve bien ! Veuillez consulter le num&eacute;ro de la proposition jointe {proposal_number} pour le produit/service.</p>\n                    <p>Il suffit de cliquer sur le bouton ci-dessous</p>\n                    <p>{proposal_url}</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Merci pour votre entreprise ! !</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(139, 12, 'it', 'Proposal Send', '<p>Ciao, {proposal_name}</p>\n                    <p>Spero che questa email ti trovi bene! Si prega di consultare il numero di proposta allegato {proposal_number} per il prodotto/servizio.</p>\n                    <p>semplicemente clicca sul pulsante sottostante</p>\n                    <p>{proposal_url}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie per il tuo business!!</p>\n                    <p>&nbsp;</p>\n                    <p>Riguardo,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(140, 12, 'ja', 'Proposal Send', '<p>こんにちは、 {proposal_name}</p>\n                    <p>この E メールでよくご確認ください。 製品 / サービスの添付されたプロポーザル番号 {proposal_number} を参照してください。</p>\n                    <p>下のボタンをクリックするだけで</p>\n                    <p>{proposal_url}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>お客様のビジネスに感謝します。</p>\n                    <p>&nbsp;</p>\n                    <p>よろしく</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(141, 12, 'nl', 'Proposal Send', '<p>Hallo, {proposal_name}</p>\n                    <p>Hoop dat deze e-mail je goed vindt! Zie bijgevoegde nummer { proposal_number } voor product/service.</p>\n                    <p>gewoon klikken op de knop hieronder</p>\n                    <p>{ proposal_url }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u voor uw bedrijf!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betreft:</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(142, 12, 'pl', 'Proposal Send', '<p>Witaj, {proposal_name}</p>\n                    <p>Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Proszę zapoznać się z załączonym numerem wniosku {proposal_number} dla produktu/usługi.</p>\n                    <p>po prostu kliknij na przycisk poniżej</p>\n                    <p>{proposal_url}</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy za prowadzenie działalności!!</p>\n                    <p>&nbsp;</p>\n                    <p>W odniesieniu do</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(143, 12, 'ru', 'Proposal Send', '<p>Здравствуйте, { proposal_name }</p>\n                    <p>Надеюсь, это электронное письмо найдет вас хорошо! См. вложенное предложение номер { proposal_number} для product/service.</p>\n                    <p>просто нажмите на кнопку внизу</p>\n                    <p>{ proposal_url}</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо за ваше дело!</p>\n                    <p>&nbsp;</p>\n                    <p>С уважением,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(144, 12, 'pt', 'Proposal Send', '<p>Oi, {proposal_name}</p>\n                    <p>Espero que este e-mail encontre voc&ecirc; bem! Por favor, consulte o n&uacute;mero da proposta anexada {proposal_number} para produto/servi&ccedil;o.</p>\n                    <p>basta clicar no bot&atilde;o abaixo</p>\n                    <p>{proposal_url}</p>\n                    <p>Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p>Obrigado pelo seu neg&oacute;cio!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(145, 13, 'ar', 'Complaint Resend', '<p>مرحبا</p><p>مرحبا بك في { app_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">(د) إدارة الموارد البشرية / الشركة لإرسال خطاب الشكاوى.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">عزيزي { demyt_name }</span></p><p>أود أن أبلغ عن صراع بينك وبين الشخص الآخر وقد وقعت عدة حوادث خلال الأيام القليلة الماضية ، وأشعر أن الوقت قد حان للإبلاغ عن شكوى رسمية ضده / هي.</p><p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p><p>شكرا لك</p><p>Regards,</p><p>قسم الموارد البشرية</p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(146, 13, 'da', 'Complaint Resend', '<p>Hej.</p><p>Velkommen til { app_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">HR department/company to send klager brev.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Kære { klaint_name }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Jeg vil gerne anmelde en konflikt mellem dig og den anden person. Der har været flere tilfælde i løbet af de seneste dage, og jeg mener, at tiden er inde til at anmelde en formel klage over for ham.</span></p><p>Du er velkommen til at række ud, hvis du har nogen spørgsmål.</p><p>Tak.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Med venlig hilsen</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">HR-afdelingen.</span></p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(147, 13, 'de', 'Complaint Resend', '<p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Hi,</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Willkommen bei {app_name}</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Personalabteilung/Unternehmen, um Beschwerdeschreiben zu versenden.</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Sehr geehrter {beanstandname}</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Ich möchte einen Konflikt zwischen Ihnen und der anderen Person melden. Es gab in den letzten Tagen mehrere Zwischenfälle, und ich bin der Meinung, dass es an der Zeit ist, eine formelle Beschwerde gegen ihn zu erstatten.</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Fühlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Vielen Dank,</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Betrachtet,</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Personalabteilung.</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">{company_name}</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">{app_url}</font></p><div><br></div><p></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(148, 13, 'en', 'Complaint Resend', '<p><font color="#1d1c1d" face="Slack-Lato, Slack-Fractions, appleLogo, sans-serif"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">Hi ,</span></font></p><p><span style="font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Welcome to {app_name}</span><br></p><p><font color="#1d1c1d" face="Slack-Lato, Slack-Fractions, appleLogo, sans-serif"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">HR department/company to send complaints letter.<br></span></font></p><p><font color="#1d1c1d" face="Slack-Lato, Slack-Fractions, appleLogo, sans-serif"><span style="font-size: 15px; font-variant-ligatures: common-ligatures;">Dear {complaint_name}</span></font></p><p>I would like to report a conflict between you and the other person. There  have been several incidents over the last few days, and I feel that its is time to report a formal complaint against him/her.</p><p>Feel free to reach out if you have any questions.</p><p><span style="color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Thank You,</span></p><p><span style="color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Regards,</span></p><p><span style="color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">HR Department.</span></p><p><span style="color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{company_name}</span><span style="color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);"><br></span></p><p><span style="font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_url}</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(149, 13, 'es', 'Complaint Resend', '<p>Hola,</p><p>Bienvenido a {app_name}</p><p>Departamento de Recursos Humanos/Empresa para enviar una carta de reclamaciones.</p><p>Estimado {nombre_reclamación}</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Me gustaría informar de un conflicto entre usted y la otra persona. Ha habido varios incidentes en los últimos días, y siento que ha llegado el momento de denunciar una queja formal contra él.</span></p><p>Siéntase libre de llegar si usted tiene alguna pregunta.</p><p>Gracias,</p><p>Considerando,</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Departamento de Recursos Humanos.</span></p><p>{nombre_empresa}</p><p>{app_url}</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(150, 13, 'fr', 'Complaint Resend', '<p>Salut,</p><p>Bienvenue dans { app_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Ministère / entreprise des RH pour envoyer une lettre de plainte.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Cher { nom_plainte }</span></p><p>Je voudrais signaler un conflit entre vous et lautre personne. Il y a eu plusieurs incidents au cours des derniers jours, et je pense quil est temps de signaler une plainte officielle contre lui.</p><p>N hésitez pas à nous contacter si vous avez des questions.</p><p>Merci,</p><p>Regards,</p><p>Département des RH.</p><p>{ nom_entreprise }</p><p>{ adresse_url }</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(151, 13, 'it', 'Complaint Resend', '<p>Ciao,</p><p>Benvenuti in {app_name}</p><p>HR dipartimenta/azienda per inviare la lettera dei reclami.</p><p>Caro {nome_denuncia}</p><p>Vorrei segnalare un conflitto tra lei e l altra persona. Ci sono stati diversi incidenti negli ultimi giorni e sento che il suo è il momento di denunciare una denuncia formale contro di lui.</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Grazie,</p><p>Riguardo,</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Dipartimento HR.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{company_name}</span></p><p>{app_url}</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(152, 13, 'ja', 'Complaint Resend', '<p>こんにちは。</p><p>{app_name} へようこそ</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">苦情の手紙を送信するための HR 部門 / 会社。</span></p><p>{ complaint_name} に Dear があります</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">あなたと他の人との間の争いを報告したい この数日間で数件の事件があったが、私はそれが彼女に対する公式の申し立てを報告する時であると感じている。</span></p><p>質問がある場合は、自由に連絡してください。</p><p>ありがとうございます</p><p>よろしく</p><p>HR 部門</p><p>{ company_name}</p><p>{app_url}</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(153, 13, 'nl', 'Complaint Resend', '<p>Hallo,</p><p>Welkom bij { app_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">HR-afdelings/bedrijf om klachten brief te sturen.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Geachte { klacht_naam }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Ik zou een conflict willen melden tussen u en de andere persoon. Er zijn de afgelopen dagen verschillende incidenten geweest en ik vind dat het tijd is om een formele klacht tegen hem/haar in te dienen.</span></p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p>Dank U,</p><p>Betreft:</p><p>HR-afdeling.</p><p>{ bedrijfsnaam }</p><p>{ app_url }</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(154, 13, 'pl', 'Complaint Resend', '<p>Witam,</p><p>Witamy w aplikacji {app_name }</p><p>Dział kadr/firma, aby wysłać reklamacje.</p><p>Szanowny {skarga }</p><p>Chciałbym zgłosić konflikt między tobą a drugą osobą. W ciągu ostatnich kilku dni doszło do kilku incydentów i uważam, że nadszedł czas, aby zgłosić przeciwko nim formalną skargę.</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Dziękuję,</span></p><p>W odniesieniu do</p><p>Dział HR.</p><p>{company_name }</p><p>{app_url }</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(155, 13, 'ru', 'Complaint Resend', '<p>Привет.</p><p>Вас приветствует { app_name }</p><p>Отдел кадров/компания для направления письма с жалобами.</p><p>Уважаемый { имя-жалобы }</p><p>Я хотел бы сообщить о конфликте между вами и другим человеком. За последние несколько дней произошло несколько инцидентов, и я считаю, что настало время для того, чтобы сообщить об официальной жалобе против него.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Не стеснитесь, если у вас есть вопросы.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Спасибо.</span></p><p>С уважением,</p><p>Отдел кадров.</p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(156, 13, 'pt', 'Complaint Resend', '<p style=""><span style="font-size: 14.4px;">Oi,</span></p><p style=""><span style="font-size: 14.4px;">Bem-vindo a {app_name}</span></p><p style=""><span style="font-size: 14.4px;">HR department/empresa para enviar carta de reclamações.</span></p><p style=""><span style="font-size: 14.4px;">Querido {reclamnome_}</span></p><p style=""><span style="font-size: 14.4px;">Eu gostaria de relatar um conflito entre você e a outra pessoa. Houve vários incidentes ao longo dos últimos dias, e eu sinto que o seu é tempo de relatar uma queixa formal contra him/her.</span></p><p style=""><span style="font-size: 14.4px;">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p style=""><span style="font-size: 14.4px;">Obrigado,</span></p><p style=""><span style="font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Considera,</span></p><p style=""><span style="font-size: 14.4px;">Departamento de RH.</span></p><p style=""><span style="font-size: 14.4px;">{company_name}</span></p><p style=""><span style="font-size: 14.4px;">{app_url}</span></p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(157, 14, 'ar', 'Leave Action Send', '<p>الموضوع : " إدارة الموارد البشرية / الشركة لإرسال رسالة موافقة إلى { leave_status } إجازة أو إجازة ".</p><p>مرحبا ، { leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; لدي { leave_status } طلب ترك لأجل { leave_لسبب } من { leave_start_date } الى { leave_end_date }. { total_leave_yأيام } أيام لدي { leave_status } طلب الخروج الخاص بك الى { leave_لسبب }.</p><p>ونحن نطلب منكم أن تكملوا كل أعمالكم المعلقة أو أي قضية مهمة أخرى لكي لا تواجه الشركة أي خسارة أو مشكلة أثناء غيابكم ونحن نقدر لكم مدى عمق تفكيركم في إبلاغنا بذلك مسبقا.</p><p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p><p>شكرا لك</p><p>Regards,</p><p>إدارة الموارد البشرية ،</p><p>{ app_name }</p><p>{ app_url }</p><div><br></div>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(158, 14, 'da', 'Leave Action Send', '<p>Emne: " HR-afdeling / virksomhed, der skal sende godkendelsesbrev til { leave_status } en ferie eller orlov ".</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Hej, { leave_name }</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Jeg har { leave_status } din orlov-anmodning for { leave_reason } fra { leave_start_date } til { leave_end_date }. { total_leave_days } dage Jeg har { leave_status } din anmodning om { leave_reason }.</p><p>Vi beder dig om at færdiggøre alt dit udestående arbejde eller et andet vigtigt spørgsmål, så virksomheden ikke står over for nogen tab eller problemer under dit fravær. Vi sætter pris på Deres betænksomhed, for at informere os godt på forhånd.</p><p>Du er velkommen til at række ud, hvis du har nogen spørgsmål.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Tak.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Med venlig hilsen</span></p><p>HR-afdelingen,</p><p>{ app_name }</p><p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(159, 14, 'de', 'Leave Action Send', '<p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Betreff: " Personalabteilung/Firma, um den Zulassungsbescheid an {leave_status} einen Urlaub oder Urlaub zu schicken ".</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Hi, {leave_name}</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ich habe {leave_status} Ihre Urlaubsanforderung für {leave_reason} von {leave_start_date} bis {leave_end_date}. {total_leave_days} Tage Ich habe {leave_status} Ihre Urlaubs-Anfrage für {leave_reason}.</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Wir bitten Sie, Ihre gesamte anstehende Arbeit oder ein anderes wichtiges Thema abzuschließen, so dass das Unternehmen während Ihrer Abwesenheit keinerlei Verlust oder kein Problem zu bewältigen hat. Wir freuen uns über Ihre Nachdenklichkeit, um uns im Vorfeld gut zu informieren.</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Fühlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Vielen Dank,</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Betrachtet,</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Personalabteilung,</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">{Anwendungsname}</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">{app_url}</font></p><p></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(160, 14, 'en', 'Leave Action Send', '<p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">Subject : "HR department/company to send approval letter to {leave_status} a vacation or leave" .</p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">﻿Hi ,{leave_name}</p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;"><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I have {leave_status} your leave request for&nbsp; {leave_reason} from {leave_start_date} to {leave_end_date}. {total_leave_days}\n days I have&nbsp; {leave_status} your leave request for {leave_reason}.</span><br></p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;"><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">We request you to complete all your pending work or any other important issue so that the company does not face any any loss or problem during your absence. We appreciate your thoughtfulness to inform us well in advance.</span></p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">Feel free to reach out if you have any questions.</p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">Thank You,</p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">Regards,</p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">HR Department,</p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">{app_name}</p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">{app_url}</p><p></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(161, 14, 'es', 'Leave Action Send', '<p>Asunto: " Departamento de RR.HH./compañía para enviar la carta de aprobación a {leave_status} unas vacaciones o vacaciones ".</p><p>Hi, {nombre_archivo}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tengo {leave_status} la solicitud de licencia para {leave_reason} de {leave_start_date} a {leave_end_date}. {total_leave_days} días tengo {leave_status} la solicitud de licencia para {leave_reason}.</p><p>Le solicitamos que complete todos sus trabajos pendientes o cualquier otro asunto importante para que la empresa no se enfrente a ninguna pérdida o problema durante su ausencia. Agradecemos su consideración para informarnos con mucha antelación.</p><p>Siéntase libre de llegar si usted tiene alguna pregunta.</p><p>Gracias,</p><p>Considerando,</p><p>Departamento de Recursos Humanos,</p><p>{app_name}</p><p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(162, 14, 'fr', 'Leave Action Send', '<p>Objet: " Service des ressources humaines /entreprise pour envoyer une lettre d approbation à { leave_status } un congé annuel ou un congé ".</p><p>Salut, { nom_onde }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; J ai { leave_status } votre demande de permission pour { leave_reason } de { leave_start_date } à { leave_end_date }. { total_leave_days } jours, j ai { leave_status } votre demande de congé pour { leave_reason }.</span></p><p>Nous vous demandons de remplir tous vos travaux en cours ou toute autre question importante afin que l entreprise ne soit pas confrontée à une perte ou à un problème pendant votre absence. Nous apprécions votre attention pour nous informer longtemps à l avance.</p><p>N hésitez pas à nous contacter si vous avez des questions.</p><p>Merci,</p><p>Regards,</p><p>Département des RH,</p><p>{ nom_app }</p><p>{ adresse_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(163, 14, 'it', 'Leave Action Send', '<p>Oggetto: " HR department /company per inviare lettera di approvazione a {leave_status} una vacanza o un congedo ".</p><p>Ciao, {leave_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ho {leave_status} la tua richiesta di permesso per {leave_ragione} da {leave_start_date} a {leave_end_date}. {total_leave_days} giorni I ho {leave_status} la tua richiesta di permesso per {leave_ragione}.</p><p>Ti richiediamo di completare tutte le tue lavorazioni in sospeso o qualsiasi altra questione importante in modo che lazienda non faccia alcuna perdita o problema durante la tua assenza. Apprezziamo la vostra premura per informarci bene in anticipo.</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Sentiti libero di raggiungere se hai domande.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Grazie,</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Riguardo,</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Dipartimento HR,</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_name}</span></p><p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(164, 14, 'ja', 'Leave Action Send', '<p>件名 : " 承認レターを { leave_status} に休暇または休暇に送信するための人事部門 / 企業。</p><p>こんにちは、 {leave_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { leave_start_date} から {leave_end_date}までの { leave_reason} { leave_reason} { leave_status} { leave_status } { leave_status } { total_leave_status } { leave_reason } { leave_reason} に対するあなたの休暇リクエストをお願いします。</p><p>お客様は、お客様がお客様の不在中に損失や問題が発生しないように、保留中のすべての作業やその他の重要な問題を完了するよう要求します。 事前にお知らせするためには、あなたの思慮深さに感謝します。</p><p>質問がある場合は、自由に連絡してください。</p><p>ありがとうございます</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">よろしく</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">HR 部門</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_name}</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_url}</span><br></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(165, 14, 'nl', 'Leave Action Send', '<p>Onderwerp: " HR-afdeling/bedrijf om een goedkeuringsbrief te sturen naar { leave_status } een vakantie of verlof ".</p><p>Hallo, { leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ik heb { leave_status } uw verzoek om verlof voor { leave_reason } van { leave_start_date } aan { leave_end_date }. { total_leave_days } dagen Ik heb { leave_status } uw verzoek om verlof voor { leave_reason }.</p><p>Wij vragen u om al uw lopende werk of een andere belangrijke kwestie, zodat het bedrijf geen verlies of probleem tijdens uw afwezigheid geconfronteerd. Wij waarderen uw bedachtzaamheid om ons van tevoren goed te informeren.</p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p>Dank U,</p><p>Betreft:</p><p>HR-afdeling,</p><p>{ app_name }</p><p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(166, 14, 'pl', 'Leave Action Send', '<p>Temat: " Dział HR /firma, aby wysłać list zatwierdzający do {leave_status } urlop lub urlop ".</p><p>Cześć, {leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mam {leave_status } żądanie pozostania dla {leave_reason } od {leave_start_date } do {leave_end_date }. {total_leave_days } dni mam {leave_status } żądanie opuszczenia użytkownika dla {leave_reason }.</p><p>Prosimy o wypełnienie wszystkich oczekujących prac lub innych ważnych spraw, tak aby firma nie borykała się z żadną stratą lub problemem w czasie Twojej nieobecności. Doceniamy twoją przemyślność, aby poinformować nas z wyprzedzeniem.</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p>Dziękuję,</p><p>W odniesieniu do</p><p>Dział HR,</p><p>{app_name }</p><p>{app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(167, 14, 'ru', 'Leave Action Send', '<p>Тема: " Отдел кадров/компания для отправки письма с утверждением в { leave_status } отпуск или отпуск ".</p><p>Привет, { leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; У меня есть { leave_status } ваш запрос на отпуск для { leave_reason } из { leave_start_date } в { leave_end_date }. { total_leave_days } дней { leave_status } ваш запрос на отпуск для { leave_reason }.</p><p>Мы просим вас завершить все ваши ожидающие работы или любой другой важный вопрос, чтобы компания не сталкивалась с какими-либо потерям или проблемой во время вашего отсутствия. Мы ценим вашу задумчивость, чтобы сообщить нам заранее.</p><p>Не стеснитесь, если у вас есть вопросы.</p><p>Спасибо.</p><p>С уважением,</p><p>Отдел кадров,</p><p>{ имя_программы }</p><p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(168, 14, 'pt', 'Leave Action Send', '<p><span style="font-size: 14.4px;">Assunto: " Departamento de RH /empresa para enviar carta de aprovação para {leave_status} férias ou licença ".</span></p><p><span style="font-size: 14.4px;">Oi, {leave_name}</span></p><p><span style="font-size: 14.4px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Eu tenho {leave_status} sua solicitação de licença para {leave_reason} de {leave_start_date} para {leave_end_date}. {total_leave_days} dias eu tenho {leave_status} sua solicitação de licença para {leave_reason}.</span></p><p><span style="font-size: 14.4px;">Solicitamos que você complete todo o seu trabalho pendente ou qualquer outra questão importante para que a empresa não enfrente qualquer perda ou problema durante a sua ausência. Agradecemos a sua atenciosidade para nos informar com bastante antecedência.</span></p><p><span style="font-size: 14.4px;">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style="font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Obrigado,</span><br></p><p><span style="font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Considera,</span></p><p><span style="font-size: 14.4px;">Departamento de RH,</span></p><p><span style="font-size: 14.4px;">{app_name}</span></p><p><span style="font-size: 14.4px;">{app_url}</span></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(169, 15, 'ar', 'Payslip Send', '<p>الموضوع : " إدارة الموارد البشرية / الشركة لإرسال شظية عن طريق البريد الإلكتروني في وقت تأكيد الدفع. "</p><p>عزيزي ، { paysp_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp; &nbsp; &nbsp; أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى payalp المرفقة الى { payplip_salary_شهر }. اضغط ببساطة على الاختيار في أسفل : { payspp_url }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</span></p><p>Regards,</p><p>إدارة الموارد البشرية ،</p><p>{ app_name }</p><p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(170, 15, 'da', 'Payslip Send', '<p>Emne: " HR-afdeling / Kompagni til at sende lønsedler via e-mail på tidspunktet for bekræftelsen af lønsedlerne. "</p><p>Kære, { payslip_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; Håber denne e-mail finder dig godt! Se vedhæftet payseddel for { payslip_salary_month }. Klik på knappen nedenfor: { payslip_url }</p><p>Du er velkommen til at række ud, hvis du har nogen spørgsmål.</p><p>Med venlig hilsen</p><p>HR-afdelingen,</p><p>{ app_name }</p><p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(171, 15, 'de', 'Payslip Send', '<p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Betreff: " Personalabteilung/Firma, um payslips per E-Mail zum Zeitpunkt der Bestätigung des Auszahlungsscheins zu senden. "</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Sehr geehrte, {payslip_name}</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie den angehängten payslip für {payslip_salary_month}. Klicken Sie einfach auf die folgende Schaltfläche: {payslip_url}</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Fühlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Betrachtet,</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">Personalabteilung,</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">{Anwendungsname}</font></p><p style="line-height: 28px; font-family: Nunito, " segoe="" ui",="" arial;="" font-size:="" 14px;"=""><font face="sans-serif">{app_url}</font></p><p></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(172, 15, 'en', 'Payslip Send', '<p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">Subject :&nbsp; " HR&nbsp; Department / Company to send&nbsp; payslips by email at time of confirmation of payslip. "</p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">﻿Dear ,{payslip_name}</p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;"><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp;&nbsp;</span>&nbsp; &nbsp; Hope this email finds you well! Please see attached payslip for {payslip_salary_month} . Simply click on the button below :&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {payslip_url}</p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">Feel free to&nbsp; reach out if you have any questions.</p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">Regards ,</p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;"><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">HR Department ,</span></p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;"><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">{app_name}</span><br></p><p segoe="" ui",="" arial;="" font-size:="" 14px;"="" style="line-height: 28px;">{app_url}</p><p></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(173, 15, 'es', 'Payslip Send', '<p>Asunto: " Departamento de Recursos Humanos/Empresa para enviar nóminas por correo electrónico en el momento de la confirmación de payslip. "</p><p>Estimado, {payslip_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; ¡Espero que este email le encuentre bien! Consulte la ficha de pago adjunta para {payslip_salary_month}. Simplemente haga clic en el botón de abajo: {payslip_url}</p><p>Siéntase libre de llegar si usted tiene alguna pregunta.</p><p>Considerando,</p><p>Departamento de Recursos Humanos,</p><p>{app_name}</p><p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(174, 15, 'fr', 'Payslip Send', '<p>Objet: " HR Department / Company to send payborderby email at time of confirmation of payslip. "</p><p>Cher, { nom_décalage }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; J espère que ce courriel vous trouve bien ! Veuillez consulter le bordereau de paiement ci-joint pour { payement_salary_month }. Cliquez simplement sur le bouton ci-dessous: { payslip_url }</p><p>N hésitez pas à nous contacter si vous avez des questions.</p><p>Regards,</p><p>Département des RH,</p><p>{ nom_app }</p><p>{ adresse_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(175, 15, 'it', 'Payslip Send', '<p>Oggetto: " HR Department / Company per inviare busta paga via email al momento della conferma della busta paga ".</p><p>Caro, {payslip_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; Spero che questa email ti trovi bene! Si prega di consultare la busta paga per {payslip_salary_month}. Semplicemente clicca sul pulsante sottostante: {payslip_url}</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Riguardo,</p><p>Dipartimento HR,</p><p>{app_name}</p><p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(176, 15, 'ja', 'Payslip Send', '<p>件名 : " 給与明細書の確認時に、給与明細書を電子メールで送信するための HR 部門 / 企業。</p><p>{ payslip_name} を実行します。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; この E メールでよくご確認ください。 {payslip_salary_month} の添付された給与明細書を参照してください。 以下のボタンをクリックするだけで、 { payslip_url} をクリックしてください。</p><p>質問がある場合は、自由に連絡してください。</p><p>よろしく</p><p>HR 部門</p><p>{app_name}</p><p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(177, 15, 'nl', 'Payslip Send', '<p>Onderwerp: " HR Department/Company om betalingen te sturen per e-mail op het moment van de bevestiging van de payslip. "</p><p>Schat, { payslip_name }</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp; &nbsp; &nbsp; Hoop dat deze e-mail je goed vindt! Zie bijgevoegde payslip voor { payslip_salary_month }. Klik gewoon op de knop hieronder: { payslip_url }</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Voel je vrij om uit te reiken als je vragen hebt.</span><br></p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Betreft:</span></p><p>HR-afdeling,</p><p>{ app_name }</p><p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(178, 15, 'pl', 'Payslip Send', '<p>Temat: " Dział HR/Firma, aby wysłać payslips pocztą elektroniczną w momencie potwierdzenia payslip. "</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Szanowny, {payslip_name }</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Patrz załączony payslip dla {payslip_salary_month }. Wystarczy kliknąć na przycisk poniżej: {payslip_url }</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p>W odniesieniu do</p><p>Dział HR,</p><p>{app_name }</p><p>{app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(179, 15, 'ru', 'Payslip Send', '<p>Тема: " Отдел кадров/Компания для отправки пастор по электронной почте во время подтверждения паузлиса ".</p><p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Уважаемый, { payslip_name }</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; Надеюсь, это электронное письмо найдет вас хорошо! См. вложенный раздел для { payslip_salary_month }. Просто нажмите на кнопку ниже: { payslip_url }</p><p>Не стеснитесь, если у вас есть вопросы.</p><p>С уважением,</p><p>Отдел кадров,</p><p>{ имя_программы }</p><p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(180, 15, 'pt', 'Payslip Send', '<p><span style="font-size: 14.4px;">Assunto: " Departamento / Companhia de RH para enviar payslips por e-mail a hora da confirmação de payslip. "</span></p><p><span style="font-size: 14.4px;">Querido, {payslip_name}</span></p><p><span style="font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp; &nbsp; &nbsp; &nbsp; Espero que este e-mail encontre você bem! Por favor, consulte o payslip anexo para {payslip_salary_month}. Basta clicar no botão abaixo: {payslip_url}</span></p><p><span style="font-size: 14.4px;">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style="font-size: 14.4px;">Considera,</span></p><p><span style="font-size: 14.4px;">Departamento de RH,</span></p><p><span style="font-size: 14.4px;">{app_name}</span></p><p><span style="font-size: 14.4px;">{app_url}</span></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(181, 16, 'ar', 'Promotion Send', '<p>Subject : -HR القسم / الشركة لارسال رسالة تهنئة الى العمل للتهنئة بالعمل.</p>\n                    <p>عزيزي { employee_name },</p>\n                    <p>تهاني على ترقيتك الى { promotion_designation } { promotion_title } الفعال { promotion_date }.</p>\n                    <p>وسنواصل توقع تحقيق الاتساق وتحقيق نتائج عظيمة منكم في دوركم الجديد. ونأمل أن تكون قدوة للموظفين الآخرين في المنظمة.</p>\n                    <p>ونتمنى لكم التوفيق في أداءكم في المستقبل ، وتهانينا !</p>\n                    <p>ومرة أخرى ، تهانئي على الموقف الجديد.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(182, 16, 'da', 'Promotion Send', '<p>Om: HR-afdelingen / Virksomheden om at sende en lyk&oslash;nskning til jobfremst&oslash;d.</p>\n                    <p>K&aelig;re { employee_name },</p>\n                    <p>Tillykke med din forfremmelse til { promotion_designation } { promotion_title } effektiv { promotion_date }.</p>\n                    <p>Vi vil fortsat forvente konsekvens og store resultater fra Dem i Deres nye rolle. Vi h&aring;ber, at De vil foreg&aring; med et godt eksempel for de &oslash;vrige ansatte i organisationen.</p>\n                    <p>Vi &oslash;nsker Dem held og lykke med Deres fremtidige optr&aelig;den, og tillykke!</p>\n                    <p>Endnu en gang tillykke med den nye holdning.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(183, 16, 'de', 'Promotion Send', '<p>Betrifft: -Personalabteilung/Unternehmen, um einen Gl&uuml;ckwunschschreiben zu senden.</p>\n                    <p>Sehr geehrter {employee_name},</p>\n                    <p>Herzlichen Gl&uuml;ckwunsch zu Ihrer Werbeaktion an {promotion_designation} {promotion_title} wirksam {promotion_date}.</p>\n                    <p>Wir werden von Ihnen in Ihrer neuen Rolle weiterhin Konsistenz und gro&szlig;e Ergebnisse erwarten. Wir hoffen, dass Sie ein Beispiel f&uuml;r die anderen Mitarbeiter der Organisation setzen werden.</p>\n                    <p>Wir w&uuml;nschen Ihnen viel Gl&uuml;ck f&uuml;r Ihre zuk&uuml;nftige Leistung, und gratulieren!</p>\n                    <p>Nochmals herzlichen Gl&uuml;ckwunsch zu der neuen Position.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(184, 16, 'en', 'Promotion Send', '<p>&nbsp;</p>\n                    <p><strong>Subject:-HR department/Company to send job promotion congratulation letter.</strong></p>\n                    <p><strong>Dear {employee_name},</strong></p>\n                    <p>Congratulations on your promotion to {promotion_designation} {promotion_title} effective {promotion_date}.</p>\n                    <p>We shall continue to expect consistency and great results from you in your new role. We hope that you will set an example for the other employees of the organization.</p>\n                    <p>We wish you luck for your future performance, and congratulations!.</p>\n                    <p>Again, congratulations on the new position.</p>\n                    <p>&nbsp;</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(185, 16, 'es', 'Promotion Send', '<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de felicitaci&oacute;n de promoci&oacute;n de empleo.</p>\n                    <p>Estimado {employee_name},</p>\n                    <p>Felicidades por su promoci&oacute;n a {promotion_designation} {promotion_title} efectiva {promotion_date}.</p>\n                    <p>Seguiremos esperando la coherencia y los grandes resultados de ustedes en su nuevo papel. Esperamos que usted ponga un ejemplo para los otros empleados de la organizaci&oacute;n.</p>\n                    <p>Le deseamos suerte para su futuro rendimiento, y felicitaciones!.</p>\n                    <p>Una vez m&aacute;s, felicidades por la nueva posici&oacute;n.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(186, 16, 'fr', 'Promotion Send', '<p>Objet: -D&eacute;partement RH / Soci&eacute;t&eacute; denvoi dune lettre de f&eacute;licitations pour la promotion de lemploi.</p>\n                    <p>Cher { employee_name },</p>\n                    <p>F&eacute;licitations pour votre promotion &agrave; { promotion_d&eacute;signation } { promotion_title } effective { promotion_date }.</p>\n                    <p>Nous continuerons &agrave; vous attendre &agrave; une coh&eacute;rence et &agrave; de grands r&eacute;sultats de votre part dans votre nouveau r&ocirc;le. Nous esp&eacute;rons que vous trouverez un exemple pour les autres employ&eacute;s de lorganisation.</p>\n                    <p>Nous vous souhaitons bonne chance pour vos performances futures et f&eacute;licitations !</p>\n                    <p>Encore une fois, f&eacute;licitations pour le nouveau poste.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(187, 16, 'it', 'Promotion Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare la lettera di congratulazioni alla promozione del lavoro.</p>\n                    <p>Caro {employee_name},</p>\n                    <p>Complimenti per la tua promozione a {promotion_designation} {promotion_title} efficace {promotion_date}.</p>\n                    <p>Continueremo ad aspettarci coerenza e grandi risultati da te nel tuo nuovo ruolo. Ci auguriamo di impostare un esempio per gli altri dipendenti dellorganizzazione.</p>\n                    <p>Ti auguriamo fortuna per le tue prestazioni future, e complimenti!.</p>\n                    <p>Ancora, complimenti per la nuova posizione.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(188, 16, 'ja', 'Promotion Send', '<p>件名:-HR 部門/企業は、求人広告の祝賀状を送信します。</p>\n                    <p>{ employee_name} に出庫します。</p>\n                    <p>{promotion_designation } { promotion_title} {promotion_date} 販促に対するお祝いのお祝いがあります。</p>\n                    <p>今後とも、お客様の新しい役割において一貫性と大きな成果を期待します。 組織の他の従業員の例を設定したいと考えています。</p>\n                    <p>あなたの未来のパフォーマンスをお祈りします。おめでとうございます。</p>\n                    <p>また、新しい地位について祝意を表する。</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(189, 16, 'nl', 'Promotion Send', '<p>Betreft: -HR-afdeling/Bedrijf voor het versturen van de aanbevelingsbrief voor taakpromotie.</p>\n                    <p>Geachte { employee_name },</p>\n                    <p>Gefeliciteerd met uw promotie voor { promotion_designation } { promotion_title } effective { promotion_date }.</p>\n                    <p>Wij zullen de consistentie en de grote resultaten van u in uw nieuwe rol blijven verwachten. Wij hopen dat u een voorbeeld zult stellen voor de andere medewerkers van de organisatie.</p>\n                    <p>Wij wensen u geluk voor uw toekomstige prestaties, en gefeliciteerd!.</p>\n                    <p>Nogmaals, gefeliciteerd met de nieuwe positie.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(190, 16, 'pl', 'Promotion Send', '<p>Temat: -Dział kadr/Firma w celu wysłania listu gratulacyjnego dla promocji zatrudnienia.</p>\n                    <p>Szanowny {employee_name },</p>\n                    <p>Gratulacje dla awansowania do {promotion_designation } {promotion_title } efektywnej {promotion_date }.</p>\n                    <p>W dalszym ciągu oczekujemy konsekwencji i wspaniałych wynik&oacute;w w Twojej nowej roli. Mamy nadzieję, że postawicie na przykład dla pozostałych pracownik&oacute;w organizacji.</p>\n                    <p>Życzymy powodzenia dla przyszłych wynik&oacute;w, gratulujemy!.</p>\n                    <p>Jeszcze raz gratulacje na nowej pozycji.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(191, 16, 'ru', 'Promotion Send', '<p>Тема: -HR отдел/Компания для отправки письма с поздравлением.</p>\n                    <p>Уважаемый { employee_name },</p>\n                    <p>Поздравляем вас с продвижением в { promotion_designation } { promotion_title } эффективная { promotion_date }.</p>\n                    <p>Мы будем и впредь ожидать от вас соответствия и больших результатов в вашей новой роли. Мы надеемся, что вы станете примером для других сотрудников организации.</p>\n                    <p>Желаем вам удачи и поздравлений!</p>\n                    <p>Еще раз поздравляю с новой позицией.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(192, 16, 'pt', 'Promotion Send', '<p style="font-size: 14.4px;">Assunto:-Departamento de RH / Empresa para enviar carta de felicita&ccedil;&atilde;o de promo&ccedil;&atilde;o de emprego.</p>\n                    <p style="font-size: 14.4px;">Querido {employee_name},</p>\n                    <p style="font-size: 14.4px;">Parab&eacute;ns pela sua promo&ccedil;&atilde;o para {promotion_designation} {promotion_title} efetivo {promotion_date}.</p>\n                    <p style="font-size: 14.4px;">Continuaremos a esperar consist&ecirc;ncia e grandes resultados a partir de voc&ecirc; em seu novo papel. Esperamos que voc&ecirc; defina um exemplo para os demais funcion&aacute;rios da organiza&ccedil;&atilde;o.</p>\n                    <p style="font-size: 14.4px;">Desejamos sorte para o seu desempenho futuro, e parab&eacute;ns!.</p>\n                    <p style="font-size: 14.4px;">Novamente, parab&eacute;ns pela nova posi&ccedil;&atilde;o.</p>\n                    <p style="font-size: 14.4px;">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style="font-size: 14.4px;">Obrigado</p>\n                    <p style="font-size: 14.4px;">Considera,</p>\n                    <p style="font-size: 14.4px;">Departamento de RH,</p>\n                    <p style="font-size: 14.4px;">{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(193, 17, 'ar', 'Resignation Send', '<p>Subject :-قسم الموارد البشرية / الشركة لإرسال خطاب استقالته.</p>\n                    <p>عزيزي { assign_user } ،</p>\n                    <p>إنه لمن دواعي الأسف الشديد أن أعترف رسميا باستلام إشعار استقالتك في { notice_date } الى { resignation_date } هو اليوم الأخير لعملك.</p>\n                    <p>لقد كان من دواعي سروري العمل معكم ، وبالنيابة عن الفريق ، أود أن أتمنى لكم أفضل جدا في جميع مساعيكم في المستقبل. ومن خلال هذه الرسالة ، يرجى العثور على حزمة معلومات تتضمن معلومات مفصلة عن عملية الاستقالة.</p>\n                    <p>شكرا لكم مرة أخرى على موقفكم الإيجابي والعمل الجاد كل هذه السنوات.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(194, 17, 'da', 'Resignation Send', '<p>Om: HR-afdelingen / Kompagniet, for at sende en opsigelse.</p>\n                    <p>K&aelig;re { assign_user },</p>\n                    <p>Det er med stor beklagelse, at jeg formelt anerkender modtagelsen af din opsigelsesmeddelelse p&aring; { notice_date } til { resignation_date } er din sidste arbejdsdag</p>\n                    <p>Det har v&aelig;ret en forn&oslash;jelse at arbejde sammen med Dem, og p&aring; vegne af teamet vil jeg &oslash;nske Dem det bedste i alle Deres fremtidige bestr&aelig;belser. Med dette brev kan du finde en informationspakke med detaljerede oplysninger om tilbagetr&aelig;delsesprocessen.</p>\n                    <p>Endnu en gang tak for Deres positive holdning og h&aring;rde arbejde i alle disse &aring;r.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(195, 17, 'de', 'Resignation Send', '<p>Betreff: -Personalabteilung/Firma, um R&uuml;ckmeldungsschreiben zu senden.</p>\n                    <p>Sehr geehrter {assign_user},</p>\n                    <p>Es ist mit gro&szlig;em Bedauern, dass ich den Eingang Ihrer R&uuml;cktrittshinweis auf {notice_date} an {resignation_date} offiziell best&auml;tige, ist Ihr letzter Arbeitstag.</p>\n                    <p>Es war eine Freude, mit Ihnen zu arbeiten, und im Namen des Teams m&ouml;chte ich Ihnen w&uuml;nschen, dass Sie in allen Ihren zuk&uuml;nftigen Bem&uuml;hungen am besten sind. In diesem Brief finden Sie ein Informationspaket mit detaillierten Informationen zum R&uuml;cktrittsprozess.</p>\n                    <p>Vielen Dank noch einmal f&uuml;r Ihre positive Einstellung und harte Arbeit all die Jahre.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(196, 17, 'en', 'Resignation Send', '<p ><b>Subject:-HR department/Company to send resignation letter .</b></p>\n                    <p ><b>Dear {assign_user},</b></p>\n                    <p >It is with great regret that I formally acknowledge receipt of your resignation notice on {notice_date} to {resignation_date} is your final day of work. </p>\n                    <p >It has been a pleasure working with you, and on behalf of the team, I would like to wish you the very best in all your future endeavors. Included with this letter, please find an information packet with detailed information on the resignation process. </p>\n                    <p>Thank you again for your positive attitude and hard work all these years.</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><b>Regards,</b></p>\n                    <p><b>HR Department,</b></p>\n                    <p><b>{app_name}</b></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(197, 17, 'es', 'Resignation Send', '<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de renuncia.</p>\n                    <p>Estimado {assign_user},</p>\n                    <p>Es con gran pesar que recibo formalmente la recepci&oacute;n de su aviso de renuncia en {notice_date} a {resignation_date} es su &uacute;ltimo d&iacute;a de trabajo.</p>\n                    <p>Ha sido un placer trabajar con usted, y en nombre del equipo, me gustar&iacute;a desearle lo mejor en todos sus esfuerzos futuros. Incluido con esta carta, por favor encuentre un paquete de informaci&oacute;n con informaci&oacute;n detallada sobre el proceso de renuncia.</p>\n                    <p>Gracias de nuevo por su actitud positiva y trabajo duro todos estos a&ntilde;os.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(198, 17, 'fr', 'Resignation Send', '<p>Objet: -D&eacute;partement RH / Soci&eacute;t&eacute; denvoi dune lettre de d&eacute;mission.</p>\n                    <p>Cher { assign_user },</p>\n                    <p>Cest avec grand regret que je reconnais officiellement la r&eacute;ception de votre avis de d&eacute;mission sur { notice_date } &agrave; { resignation_date } est votre dernier jour de travail.</p>\n                    <p>Cest un plaisir de travailler avec vous, et au nom de l&eacute;quipe, jaimerais vous souhaiter le meilleur dans toutes vos activit&eacute;s futures. Inclus avec cette lettre, veuillez trouver un paquet dinformation contenant des informations d&eacute;taill&eacute;es sur le processus de d&eacute;mission.</p>\n                    <p>Je vous remercie encore de votre attitude positive et de votre travail acharne durant toutes ces ann&eacute;es.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(199, 17, 'it', 'Resignation Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di dimissioni.</p>\n                    <p>Caro {assign_user},</p>\n                    <p>&Egrave; con grande dispiacere che riconosca formalmente la ricezione del tuo avviso di dimissioni su {notice_date} a {resignation_date} &egrave; la tua giornata di lavoro finale.</p>\n                    <p>&Egrave; stato un piacere lavorare con voi, e a nome della squadra, vorrei augurarvi il massimo in tutti i vostri futuri sforzi. Incluso con questa lettera, si prega di trovare un pacchetto informativo con informazioni dettagliate sul processo di dimissioni.</p>\n                    <p>Grazie ancora per il vostro atteggiamento positivo e duro lavoro in tutti questi anni.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(200, 17, 'ja', 'Resignation Send', '<p>件名:-HR 部門/企業は辞表を送信します。</p>\n                    <p>{assign_user} の認証を解除します。</p>\n                    <p>{ notice_date} に対するあなたの辞任通知を { resignation_date} に正式に受理することを正式に確認することは、非常に残念です。</p>\n                    <p>あなたと一緒に仕事をしていて、チームのために、あなたの将来の努力において、あなたのことを最高のものにしたいと思っています。 このレターには、辞任プロセスに関する詳細な情報が記載されている情報パケットをご覧ください。</p>\n                    <p>これらの長年の前向きな姿勢と努力を重ねて感謝します。</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(201, 17, 'nl', 'Resignation Send', '<p>Betreft: -HR-afdeling/Bedrijf om ontslagbrief te sturen.</p>\n                    <p>Geachte { assign_user },</p>\n                    <p>Het is met grote spijt dat ik de ontvangst van uw ontslagbrief op { notice_date } tot { resignation_date } formeel de ontvangst van uw laatste dag van het werk bevestigt.</p>\n                    <p>Het was een genoegen om met u samen te werken, en namens het team zou ik u het allerbeste willen wensen in al uw toekomstige inspanningen. Vermeld bij deze brief een informatiepakket met gedetailleerde informatie over het ontslagproces.</p>\n                    <p>Nogmaals bedankt voor uw positieve houding en hard werken al die jaren.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(202, 17, 'pl', 'Resignation Send', '<p>Temat: -Dział HR/Firma do wysyłania listu rezygnacyjnego.</p>\n                    <p>Drogi użytkownika {assign_user },</p>\n                    <p>Z wielkim żalem, że oficjalnie potwierdzam otrzymanie powiadomienia o rezygnacji w dniu {notice_date } to {resignation_date } to tw&oacute;j ostatni dzień pracy.</p>\n                    <p>Z przyjemnością wsp&oacute;łpracujemy z Tobą, a w imieniu zespołu chciałbym życzyć Wam wszystkiego najlepszego we wszystkich swoich przyszłych przedsięwzięciu. Dołączone do tego listu prosimy o znalezienie pakietu informacyjnego ze szczeg&oacute;łowymi informacjami na temat procesu dymisji.</p>\n                    <p>Jeszcze raz dziękuję za pozytywne nastawienie i ciężką pracę przez te wszystkie lata.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(203, 17, 'ru', 'Resignation Send', '<p>Тема: -HR отдел/Компания отправить письмо об отставке.</p>\n                    <p>Уважаемый пользователь { assign_user },</p>\n                    <p>С большим сожалением я официально подтверждаю получение вашего уведомления об отставке { notice_date } в { resignation_date }-это ваш последний день работы.</p>\n                    <p>С Вами было приятно работать, и от имени команды я хотел бы по# желать вам самого лучшего во всех ваших будущих начинаниях. В этом письме Вы можете найти информационный пакет с подробной информацией об отставке.</p>\n                    <p>Еще раз спасибо за ваше позитивное отношение и трудолюбие все эти годы.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(204, 17, 'pt', 'Resignation Send', '<p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Assunto:-Departamento de RH / Empresa para enviar carta de demiss&atilde;o.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Querido {assign_user},</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">&Eacute; com grande pesar que reconhe&ccedil;o formalmente o recebimento do seu aviso de demiss&atilde;o em {notice_date} a {resignation_date} &eacute; o seu dia final de trabalho.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Foi um prazer trabalhar com voc&ecirc;, e em nome da equipe, gostaria de desej&aacute;-lo o melhor em todos os seus futuros empreendimentos. Inclu&iacute;dos com esta carta, por favor, encontre um pacote de informa&ccedil;&otilde;es com informa&ccedil;&otilde;es detalhadas sobre o processo de demiss&atilde;o.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Obrigado novamente por sua atitude positiva e trabalho duro todos esses anos.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Obrigado</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Considera,</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Departamento de RH,</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">{app_name}</span></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(205, 18, 'ar', 'Termination Send', '<p style="text-align: left;"><span style="font-size: 12pt;"><span style="color: #222222;"><span style="white-space: pre-wrap;"><span style="font-size: 12pt; white-space: pre-wrap;">Subject :-ادارة / شركة HR لارسال رسالة انهاء. عزيزي { </span><span style="white-space: pre-wrap;">employee_termination_name</span><span style="font-size: 12pt; white-space: pre-wrap;"> } ، هذه الرسالة مكتوبة لإعلامك بأن عملك مع شركتنا قد تم إنهاؤه مزيد من التفاصيل عن الانهاء : تاريخ الاشعار : { </span><span style="white-space: pre-wrap;">notice_date</span><span style="font-size: 12pt; white-space: pre-wrap;"> } تاريخ الانهاء : { </span><span style="white-space: pre-wrap;">termination_date</span><span style="font-size: 12pt; white-space: pre-wrap;"> } نوع الانهاء : { termination_type } إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة. شكرا لك Regards, إدارة الموارد البشرية ، { app_name }</span></span></span></span></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(206, 18, 'da', 'Termination Send', '<p>Emne:-HR-afdelingen / Virksomheden om at sende afslutningstskrivelse.</p>\n                    <p>K&aelig;re { employee_termination_name },</p>\n                    <p>Dette brev er skrevet for at meddele dig, at dit arbejde med vores virksomhed er afsluttet.</p>\n                    <p>Flere oplysninger om oph&aelig;velse:</p>\n                    <p>Adviseringsdato: { notifice_date }</p>\n                    <p>Opsigelsesdato: { termination_date }</p>\n                    <p>Opsigelsestype: { termination_type }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(207, 18, 'de', 'Termination Send', '<p>Betreff: -Personalabteilung/Firma zum Versenden von K&uuml;ndigungsschreiben.</p>\n                    <p>Sehr geehrter {employee_termination_name},</p>\n                    <p>Dieser Brief wird Ihnen schriftlich mitgeteilt, dass Ihre Besch&auml;ftigung mit unserem Unternehmen beendet ist.</p>\n                    <p>Weitere Details zur K&uuml;ndigung:</p>\n                    <p>K&uuml;ndigungsdatum: {notice_date}</p>\n                    <p>Beendigungsdatum: {termination_date}</p>\n                    <p>Abbruchstyp: {termination_type}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(208, 18, 'en', 'Termination Send', '<p><strong>Subject:-HR department/Company to send termination letter.</strong></p>\n                    <p><strong>Dear {employee_termination_name},</strong></p>\n                    <p>This letter is written to notify you that your employment with our company is terminated.</p>\n                    <p>More detail about termination:</p>\n                    <p>Notice Date :{notice_date}</p>\n                    <p>Termination Date:{termination_date}</p>\n                    <p>Termination Type:{termination_type}</p>\n                    <p>&nbsp;</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(209, 18, 'es', 'Termination Send', '<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de rescisi&oacute;n.</p>\n                    <p>Estimado {employee_termination_name},</p>\n                    <p>Esta carta est&aacute; escrita para notificarle que su empleo con nuestra empresa ha terminado.</p>\n                    <p>M&aacute;s detalles sobre la terminaci&oacute;n:</p>\n                    <p>Fecha de aviso: {notice_date}</p>\n                    <p>Fecha de terminaci&oacute;n: {termination_date}</p>\n                    <p>Tipo de terminaci&oacute;n: {termination_type}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(210, 18, 'fr', 'Termination Send', '<p>Objet: -HR department / Company to send termination letter.</p>\n                    <p>Cher { employee_termination_name },</p>\n                    <p>Cette lettre est r&eacute;dig&eacute;e pour vous aviser que votre emploi aupr&egrave;s de notre entreprise prend fin.</p>\n                    <p>Plus de d&eacute;tails sur larr&ecirc;t:</p>\n                    <p>Date de lavis: { notice_date }</p>\n                    <p>Date de fin: { termination_date}</p>\n                    <p>Type de terminaison: { termination_type }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(211, 18, 'it', 'Termination Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di terminazione.</p>\n                    <p>Caro {employee_termination_name},</p>\n                    <p>Questa lettera &egrave; scritta per comunicarti che la tua occupazione con la nostra azienda &egrave; terminata.</p>\n                    <p>Pi&ugrave; dettagli sulla cessazione:</p>\n                    <p>Data avviso: {notice_data}</p>\n                    <p>Data di chiusura: {termination_date}</p>\n                    <p>Tipo di terminazione: {termination_type}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(212, 18, 'ja', 'Termination Send', '<p>件名:-HR 部門/企業は終了文字を送信します。</p>\n                    <p>{ employee_termination_name} を終了します。</p>\n                    <p>この手紙は、当社の雇用が終了していることをあなたに通知するために書かれています。</p>\n                    <p>終了についての詳細 :</p>\n                    <p>通知日 :{notice_date}</p>\n                    <p>終了日:{termination_date}</p>\n                    <p>終了タイプ:{termination_type}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(213, 18, 'nl', 'Termination Send', '<p>Betreft: -HR-afdeling/Bedrijf voor verzending van afgiftebrief.</p>\n                    <p>Geachte { employee_termination_name },</p>\n                    <p>Deze brief is geschreven om u te melden dat uw werk met ons bedrijf wordt be&euml;indigd.</p>\n                    <p>Meer details over be&euml;indiging:</p>\n                    <p>Datum kennisgeving: { notice_date }</p>\n                    <p>Be&euml;indigingsdatum: { termination_date }</p>\n                    <p>Be&euml;indigingstype: { termination_type }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(214, 18, 'pl', 'Termination Send', '<p>Temat: -Dział kadr/Firma do wysyłania listu zakańczego.</p>\n                    <p>Droga {employee_termination_name },</p>\n                    <p>Ten list jest napisany, aby poinformować Cię, że Twoje zatrudnienie z naszą firmą zostaje zakończone.</p>\n                    <p>Więcej szczeg&oacute;ł&oacute;w na temat zakończenia pracy:</p>\n                    <p>Data ogłoszenia: {notice_date }</p>\n                    <p>Data zakończenia: {termination_date }</p>\n                    <p>Typ zakończenia: {termination_type }</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(215, 18, 'ru', 'Termination Send', '<p>Тема: -HR отдел/Компания отправить письмо о прекращении.</p>\n                    <p>Уважаемый { employee_termination_name },</p>\n                    <p>Это письмо написано, чтобы уведомить вас о том, что ваше трудоустройство с нашей компанией прекратилось.</p>\n                    <p>Более подробная информация о завершении:</p>\n                    <p>Дата уведомления: { notice_date }</p>\n                    <p>Дата завершения: { termination_date }</p>\n                    <p>Тип завершения: { termination_type }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(216, 18, 'pt', 'Termination Send', '<p style="font-size: 14.4px;">Assunto:-Departamento de RH / Empresa para enviar carta de rescis&atilde;o.</p>\n                    <p style="font-size: 14.4px;">Querido {employee_termination_name},</p>\n                    <p style="font-size: 14.4px;">Esta carta &eacute; escrita para notific&aacute;-lo de que seu emprego com a nossa empresa est&aacute; finalizado.</p>\n                    <p style="font-size: 14.4px;">Mais detalhes sobre a finaliza&ccedil;&atilde;o:</p>\n                    <p style="font-size: 14.4px;">Data de Aviso: {notice_date}</p>\n                    <p style="font-size: 14.4px;">Data de Finaliza&ccedil;&atilde;o: {termination_date}</p>\n                    <p style="font-size: 14.4px;">Tipo de Rescis&atilde;o: {termination_type}</p>\n                    <p style="font-size: 14.4px;">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style="font-size: 14.4px;">Obrigado</p>\n                    <p style="font-size: 14.4px;">Considera,</p>\n                    <p style="font-size: 14.4px;">Departamento de RH,</p>\n                    <p style="font-size: 14.4px;">{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(217, 19, 'ar', 'Transfer Send', '<p>Subject : -HR ادارة / شركة لارسال خطاب نقل الى موظف من مكان الى آخر.</p>\n                    <p>عزيزي { transfer_name },</p>\n                    <p>وفقا لتوجيهات الادارة ، يتم نقل الخدمات الخاصة بك w.e.f. { transfer_date }.</p>\n                    <p>مكان الادخال الجديد الخاص بك هو { transfer_department } قسم من فرع { transfer_branch } وتاريخ التحويل { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(218, 19, 'da', 'Transfer Send', '<p>Emne:-HR-afdelingen / kompagniet om at sende overf&oslash;rsels brev til en medarbejder fra den ene lokalitet til den anden.</p>\n                    <p>K&aelig;re { transfer_name },</p>\n                    <p>Som Styring af direktiver overf&oslash;res dine serviceydelser w.e.f. { transfer_date }.</p>\n                    <p>Dit nye sted for postering er { transfer_departement } afdeling af { transfer_branch } gren og dato for overf&oslash;rsel { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(219, 19, 'de', 'Transfer Send', '<p>Betreff: -Personalabteilung/Unternehmen, um einen &Uuml;berweisungsschreiben an einen Mitarbeiter von einem Standort an einen anderen zu senden.</p>\n                    <p>Sehr geehrter {transfer_name},</p>\n                    <p>Wie pro Management-Direktiven werden Ihre Dienste &uuml;ber w.e.f. {transfer_date} &uuml;bertragen.</p>\n                    <p>Ihr neuer Ort der Entsendung ist {transfer_department} Abteilung von {transfer_branch} Niederlassung und Datum der &Uuml;bertragung {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(220, 19, 'en', 'Transfer Send', '<p ><b>Subject:-HR department/Company to send transfer letter to be issued to an employee from one location to another.</b></p>\n                    <p ><b>Dear {transfer_name},</b></p>\n                    <p >As per Management directives, your services are being transferred w.e.f.{transfer_date}. </p>\n                    <p >Your new place of posting is {transfer_department} department of {transfer_branch} branch and date of transfer {transfer_date}. </p>\n                    {transfer_description}.\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p><b>Thank you</b></p>\n                    <p><b>Regards,</b></p>\n                    <p><b>HR Department,</b></p>\n                    <p><b>{app_name}</b></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(221, 19, 'es', 'Transfer Send', '<p>Asunto: -Departamento de RR.HH./Empresa para enviar carta de transferencia a un empleado de un lugar a otro.</p>\n                    <p>Estimado {transfer_name},</p>\n                    <p>Seg&uacute;n las directivas de gesti&oacute;n, los servicios se transfieren w.e.f. {transfer_date}.</p>\n                    <p>El nuevo lugar de publicaci&oacute;n es el departamento {transfer_department} de la rama {transfer_branch} y la fecha de transferencia {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(222, 19, 'fr', 'Transfer Send', '<p>Objet: -Minist&egrave;re des RH / Soci&eacute;t&eacute; denvoi dune lettre de transfert &agrave; un employ&eacute; dun endroit &agrave; un autre.</p>\n                    <p>Cher { transfer_name },</p>\n                    <p>Selon les directives de gestion, vos services sont transf&eacute;r&eacute;s dans w.e.f. { transfer_date }.</p>\n                    <p>Votre nouveau lieu daffectation est le d&eacute;partement { transfer_department } de la branche { transfer_branch } et la date de transfert { transfer_date }.</p>\n                    <p>{ description_transfert }.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(223, 19, 'it', 'Transfer Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di trasferimento da rilasciare a un dipendente da una localit&agrave; allaltra.</p>\n                    <p>Caro {transfer_name},</p>\n                    <p>Come per le direttive di Management, i tuoi servizi vengono trasferiti w.e.f. {transfer_date}.</p>\n                    <p>Il tuo nuovo luogo di distacco &egrave; {transfer_department} dipartimento di {transfer_branch} ramo e data di trasferimento {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(224, 19, 'ja', 'Transfer Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di trasferimento da rilasciare a un dipendente da una localit&agrave; allaltra.</p>\n                    <p>Caro {transfer_name},</p>\n                    <p>Come per le direttive di Management, i tuoi servizi vengono trasferiti w.e.f. {transfer_date}.</p>\n                    <p>Il tuo nuovo luogo di distacco &egrave; {transfer_department} dipartimento di {transfer_branch} ramo e data di trasferimento {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(225, 19, 'nl', 'Transfer Send', '<p>Betreft: -HR-afdeling/Bedrijf voor verzending van overdrachtsbrief aan een werknemer van de ene plaats naar de andere.</p>\n                    <p>Geachte { transfer_name },</p>\n                    <p>Als per beheerinstructie worden uw services overgebracht w.e.f. { transfer_date }.</p>\n                    <p>Uw nieuwe plaats van post is { transfer_department } van de afdeling { transfer_branch } en datum van overdracht { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(226, 19, 'pl', 'Transfer Send', '<p>Temat:-Dział HR/Firma do wysyłania listu przelewowego, kt&oacute;ry ma być wydany pracownikowi z jednego miejsca do drugiego.</p>\n                    <p>Droga {transfer_name },</p>\n                    <p>Zgodnie z dyrektywami zarządzania, Twoje usługi są przesyłane w.e.f. {transfer_date }.</p>\n                    <p>Twoje nowe miejsce delegowania to {transfer_department } dział {transfer_branch } gałąź i data transferu {transfer_date }.</p>\n                    <p>{transfer_description }.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(227, 19, 'ru', 'Transfer Send', '<p>Тема: -HR отдел/Компания для отправки трансферного письма сотруднику из одного места в другое.</p>\n                    <p>Уважаемый { transfer_name },</p>\n                    <p>В соответствии с директивами управления ваши службы передаются .ef. { transfer_date }.</p>\n                    <p>Новое место разноски: { transfer_department} подразделение { transfer_branch } и дата передачи { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(228, 19, 'pt', 'Transfer Send', '<p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Assunto:-Departamento de RH / Empresa para enviar carta de transfer&ecirc;ncia para ser emitida para um funcion&aacute;rio de um local para outro.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Querido {transfer_name},</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Conforme diretivas de Gerenciamento, seus servi&ccedil;os est&atilde;o sendo transferidos w.e.f. {transfer_date}.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">O seu novo local de postagem &eacute; {transfer_departamento} departamento de {transfer_branch} ramo e data de transfer&ecirc;ncia {transfer_date}.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">{transfer_description}.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Obrigado</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Considera,</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Departamento de RH,</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">{app_name}</span></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(229, 20, 'ar', 'Trip Send', '<p>Subject : -HR ادارة / شركة لارسال رسالة رحلة.</p>\n                    <p>عزيزي { employee_name },</p>\n                    <p>قمة الصباح إليك ! أكتب إلى مكتب إدارتكم بطلب متواضع للسفر من أجل زيارة إلى الخارج عن قصد.</p>\n                    <p>وسيكون هذا المنتدى هو المنتدى الرئيسي لأعمال المناخ في العام ، وقد كان محظوظا بما فيه الكفاية لكي يرشح لتمثيل شركتنا والمنطقة خلال الحلقة الدراسية.</p>\n                    <p>إن عضويتي التي دامت ثلاث سنوات كجزء من المجموعة والمساهمات التي قدمتها إلى الشركة ، ونتيجة لذلك ، كانت مفيدة من الناحية التكافلية. وفي هذا الصدد ، فإنني أطلب منكم بصفتي الرئيس المباشر لي أن يسمح لي بالحضور.</p>\n                    <p>مزيد من التفاصيل عن الرحلة :&nbsp;</p>\n                    <p>مدة الرحلة : { start_date } الى { end_date }</p>\n                    <p>الغرض من الزيارة : { purpose_of_visit }</p>\n                    <p>مكان الزيارة : { place_of_visit }</p>\n                    <p>الوصف : { trip_description }</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(230, 20, 'da', 'Trip Send', '<p>Om: HR-afdelingen / Kompagniet, der skal sende udflugten.</p>\n                    <p>K&aelig;re { employee_name },</p>\n                    <p>Godmorgen til dig! Jeg skriver til dit kontor med en ydmyg anmodning om at rejse for en { purpose_of_visit } i udlandet.</p>\n                    <p>Det ville v&aelig;re &aring;rets f&oslash;rende klimaforum, og det ville v&aelig;re heldigt nok at blive nomineret til at repr&aelig;sentere vores virksomhed og regionen under seminaret.</p>\n                    <p>Mit tre&aring;rige medlemskab som en del af den gruppe og de bidrag, jeg har givet til virksomheden, har som f&oslash;lge heraf v&aelig;ret symbiotisk fordelagtigt. I den henseende anmoder jeg om, at De som min n&aelig;rmeste overordnede giver mig lov til at deltage.</p>\n                    <p>Flere oplysninger om turen:</p>\n                    <p>Trip Duration: { start_date } til { end_date }</p>\n                    <p>Form&aring;let med Bes&oslash;g: { purpose_of_visit }</p>\n                    <p>Plads af bes&oslash;g: { place_of_visit }</p>\n                    <p>Beskrivelse: { trip_description }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(231, 20, 'de', 'Trip Send', '<p>Betreff: -Personalabteilung/Firma, um Reisebrief zu schicken.</p>\n                    <p>Sehr geehrter {employee_name},</p>\n                    <p>Top of the morning to you! Ich schreibe an Ihre Dienststelle mit dem&uuml;tiger Bitte um eine Reise nach einem {purpose_of_visit} im Ausland.</p>\n                    <p>Es w&auml;re das f&uuml;hrende Klima-Business-Forum des Jahres und hatte das Gl&uuml;ck, nominiert zu werden, um unser Unternehmen und die Region w&auml;hrend des Seminars zu vertreten.</p>\n                    <p>Meine dreij&auml;hrige Mitgliedschaft als Teil der Gruppe und die Beitr&auml;ge, die ich an das Unternehmen gemacht habe, sind dadurch symbiotisch vorteilhaft gewesen. In diesem Zusammenhang ersuche ich Sie als meinen unmittelbaren Vorgesetzten, mir zu gestatten, zu besuchen.</p>\n                    <p>Mehr Details zu Reise:</p>\n                    <p>Dauer der Fahrt: {start_date} bis {end_date}</p>\n                    <p>Zweck des Besuchs: {purpose_of_visit}</p>\n                    <p>Ort des Besuchs: {place_of_visit}</p>\n                    <p>Beschreibung: {trip_description}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(232, 20, 'en', 'Trip Send', '<p><strong>Subject:-HR department/Company to send trip letter .</strong></p>\n                    <p><strong>Dear {employee_name},</strong></p>\n                    <p>Top of the morning to you! I am writing to your department office with a humble request to travel for a {purpose_of_visit} abroad.</p>\n                    <p>It would be the leading climate business forum of the year and have been lucky enough to be nominated to represent our company and the region during the seminar.</p>\n                    <p>My three-year membership as part of the group and contributions I have made to the company, as a result, have been symbiotically beneficial. In that regard, I am requesting you as my immediate superior to permit me to attend.</p>\n                    <p>More detail about trip:{start_date} to {end_date}</p>\n                    <p>Trip Duration:{start_date} to {end_date}</p>\n                    <p>Purpose of Visit:{purpose_of_visit}</p>\n                    <p>Place of Visit:{place_of_visit}</p>\n                    <p>Description:{trip_description}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(233, 20, 'es', 'Trip Send', '<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de viaje.</p>\n                    <p>Estimado {employee_name},</p>\n                    <p>&iexcl;Top de la ma&ntilde;ana para ti! Estoy escribiendo a su oficina del departamento con una humilde petici&oacute;n de viajar para un {purpose_of_visit} en el extranjero.</p>\n                    <p>Ser&iacute;a el principal foro de negocios clim&aacute;ticos del a&ntilde;o y han tenido la suerte de ser nominados para representar a nuestra compa&ntilde;&iacute;a y a la regi&oacute;n durante el seminario.</p>\n                    <p>Mi membres&iacute;a de tres a&ntilde;os como parte del grupo y las contribuciones que he hecho a la compa&ntilde;&iacute;a, como resultado, han sido simb&oacute;ticamente beneficiosos. En ese sentido, le estoy solicitando como mi superior inmediato que me permita asistir.</p>\n                    <p>M&aacute;s detalles sobre el viaje:&nbsp;</p>\n                    <p>Duraci&oacute;n del viaje: {start_date} a {end_date}</p>\n                    <p>Finalidad de la visita: {purpose_of_visit}</p>\n                    <p>Lugar de visita: {place_of_visit}</p>\n                    <p>Descripci&oacute;n: {trip_description}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(234, 20, 'fr', 'Trip Send', '<p>Objet: -Service des RH / Compagnie pour envoyer une lettre de voyage.</p>\n                    <p>Cher { employee_name },</p>\n                    <p>Top of the morning to you ! J&eacute;crai au bureau de votre minist&egrave;re avec une humble demande de voyage pour une {purpose_of_visit } &agrave; l&eacute;tranger.</p>\n                    <p>Il sagit du principal forum sur le climat de lann&eacute;e et a eu la chance d&ecirc;tre d&eacute;sign&eacute; pour repr&eacute;senter notre entreprise et la r&eacute;gion au cours du s&eacute;minaire.</p>\n                    <p>Mon adh&eacute;sion de trois ans au groupe et les contributions que jai faites &agrave; lentreprise, en cons&eacute;quence, ont &eacute;t&eacute; b&eacute;n&eacute;fiques sur le plan symbiotique. &Agrave; cet &eacute;gard, je vous demande d&ecirc;tre mon sup&eacute;rieur imm&eacute;diat pour me permettre dy assister.</p>\n                    <p>Plus de d&eacute;tails sur le voyage:</p>\n                    <p>Dur&eacute;e du voyage: { start_date } &agrave; { end_date }</p>\n                    <p>Objet de la visite: { purpose_of_visit}</p>\n                    <p>Lieu de visite: { place_of_visit }</p>\n                    <p>Description: { trip_description }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(235, 20, 'it', 'Trip Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di viaggio.</p>\n                    <p>Caro {employee_name},</p>\n                    <p>In cima al mattino a te! Scrivo al tuo ufficio dipartimento con umile richiesta di viaggio per un {purpose_of_visit} allestero.</p>\n                    <p>Sarebbe il forum aziendale sul clima leader dellanno e sono stati abbastanza fortunati da essere nominati per rappresentare la nostra azienda e la regione durante il seminario.</p>\n                    <p>La mia adesione triennale come parte del gruppo e i contributi che ho apportato allazienda, di conseguenza, sono stati simbioticamente vantaggiosi. A tal proposito, vi chiedo come mio immediato superiore per consentirmi di partecipare.</p>\n                    <p>Pi&ugrave; dettagli sul viaggio:</p>\n                    <p>Trip Duration: {start_date} a {end_date}</p>\n                    <p>Finalit&agrave; di Visita: {purpose_of_visit}</p>\n                    <p>Luogo di Visita: {place_of_visit}</p>\n                    <p>Descrizione: {trip_description}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(236, 20, 'ja', 'Trip Send', '<p>件名:-HR 部門/会社は出張レターを送信します。</p>\n                    <p>{ employee_name} に出庫します。</p>\n                    <p>朝のトップだ ! 海外で {purpose_of_visit} をお願いしたいという謙虚な要求をもって、私はあなたの部署に手紙を書いています。</p>\n                    <p>これは、今年の主要な気候ビジネス・フォーラムとなり、セミナーの開催中に当社と地域を代表する候補になるほど幸運にも恵まれています。</p>\n                    <p>私が会社に対して行った 3 年間のメンバーシップは、その結果として、共生的に有益なものでした。 その点では、私は、私が出席することを許可することを、私の即座の上司として</p>\n                    <p>トリップについての詳細 :</p>\n                    <p>トリップ期間:{start_date} を {end_date} に設定します</p>\n                    <p>アクセスの目的 :{purpose_of_visit}</p>\n                    <p>訪問の場所 :{place_of_visit}</p>\n                    <p>説明:{trip_description}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(237, 20, 'nl', 'Trip Send', '<p>Betreft: -HR-afdeling/Bedrijf om reisbrief te sturen.</p>\n                    <p>Geachte { employee_name },</p>\n                    <p>Top van de ochtend aan u! Ik schrijf uw afdelingsbureau met een bescheiden verzoek om een { purpose_of_visit } in het buitenland te bezoeken.</p>\n                    <p>Het zou het toonaangevende klimaatforum van het jaar zijn en hebben het geluk gehad om genomineerd te worden om ons bedrijf en de regio te vertegenwoordigen tijdens het seminar.</p>\n                    <p>Mijn driejarige lidmaatschap als onderdeel van de groep en bijdragen die ik heb geleverd aan het bedrijf, als gevolg daarvan, zijn symbiotisch gunstig geweest. Wat dat betreft, verzoek ik u als mijn directe chef mij in staat te stellen aanwezig te zijn.</p>\n                    <p>Meer details over reis:</p>\n                    <p>Duur van reis: { start_date } tot { end_date }</p>\n                    <p>Doel van bezoek: { purpose_of_visit }</p>\n                    <p>Plaats van bezoek: { place_of_visit }</p>\n                    <p>Beschrijving: { trip_description }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u we</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(238, 20, 'pl', 'Trip Send', '<p>Temat:-Dział HR/Firma do wysyłania listu podr&oacute;ży.</p>\n                    <p>Szanowny {employee_name },</p>\n                    <p>Od samego rana do Ciebie! Piszę do twojego biura, z pokornym prośbą o wyjazd na {purpose_of_visit&nbsp;} za granicą.</p>\n                    <p>Byłoby to wiodącym forum biznesowym w tym roku i miało szczęście być nominowane do reprezentowania naszej firmy i regionu podczas seminarium.</p>\n                    <p>Moje trzyletnie członkostwo w grupie i składkach, kt&oacute;re uczyniłem w firmie, w rezultacie, były symbiotycznie korzystne. W tym względzie, zwracam się do pana o m&oacute;j bezpośredni przełożony, kt&oacute;ry pozwoli mi na udział w tej sprawie.</p>\n                    <p>Więcej szczeg&oacute;ł&oacute;w na temat wyjazdu:</p>\n                    <p>Czas trwania rejsu: {start_date } do {end_date }</p>\n                    <p>Cel wizyty: {purpose_of_visit }</p>\n                    <p>Miejsce wizyty: {place_of_visit }</p>\n                    <p>Opis: {trip_description }</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(239, 20, 'ru', 'Trip Send', '<p>Тема: -HR отдел/Компания для отправки письма на поездку.</p>\n                    <p>Уважаемый { employee_name },</p>\n                    <p>С утра до тебя! Я пишу в ваш отдел с смиренным запросом на поездку за границу.</p>\n                    <p>Это был бы ведущий климатический бизнес-форум года и по везло, что в ходе семинара он будет представлять нашу компанию и регион.</p>\n                    <p>Мое трехлетнее членство в составе группы и взносы, которые я внес в компанию, в результате, были симбиотически выгодны. В этой связи я прошу вас как моего непосредственного начальника разрешить мне присутствовать.</p>\n                    <p>Подробнее о поездке:</p>\n                    <p>Длительность поездки: { start_date } в { end_date }</p>\n                    <p>Цель посещения: { purpose_of_visit }</p>\n                    <p>Место посещения: { place_of_visit }</p>\n                    <p>Описание: { trip_description }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(240, 20, 'pt', 'Trip Send', '<p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Assunto:-Departamento de RH / Empresa para enviar carta de viagem.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Querido {employee_name},</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Topo da manh&atilde; para voc&ecirc;! Estou escrevendo para o seu departamento de departamento com um humilde pedido para viajar por um {purpose_of_visit} no exterior.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Seria o principal f&oacute;rum de neg&oacute;cios clim&aacute;tico do ano e teve a sorte de ser indicado para representar nossa empresa e a regi&atilde;o durante o semin&aacute;rio.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">A minha filia&ccedil;&atilde;o de tr&ecirc;s anos como parte do grupo e contribui&ccedil;&otilde;es que fiz &agrave; empresa, como resultado, foram simbioticamente ben&eacute;fico. A esse respeito, solicito que voc&ecirc; seja meu superior imediato para me permitir comparecer.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Mais detalhes sobre viagem:</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Trip Dura&ccedil;&atilde;o: {start_date} a {end_date}</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Objetivo da Visita: {purpose_of_visit}</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Local de Visita: {place_of_visit}</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Descri&ccedil;&atilde;o: {trip_description}</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Obrigado</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Considera,</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Departamento de RH,</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">{app_name}</span></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(241, 21, 'ar', 'Vendor Bill Send', '<p>مرحبا ، { bill_name }</p>\n                    <p>مرحبا بك في { app_name }</p>\n                    <p>أتمنى أن يجدك هذا البريد الإلكتروني جيدا ! ! برجاء الرجوع الى رقم الفاتورة الملحقة { bill_number } للحصول على المنتج / الخدمة.</p>\n                    <p>ببساطة اضغط على الاختيار بأسفل.</p>\n                    <p>{ bill_url }</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(242, 21, 'da', 'Vendor Bill Send', '<p>Hej, { bill_name }</p>\n                    <p>Velkommen til { app_name }</p>\n                    <p>H&aring;ber denne e-mail finder dig godt! Se vedlagte fakturanummer } { bill_number } for product/service.</p>\n                    <p>Klik p&aring; knappen nedenfor.</p>\n                    <p>{ bill_url }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(243, 21, 'de', 'Vendor Bill Send', '<p>Hi, {bill_name}</p>\n                    <p>Willkommen bei {app_name}</p>\n                    <p>Hoffe, diese E-Mail findet dich gut!! Sehen Sie sich die beigef&uuml;gte Rechnungsnummer {bill_number} f&uuml;r Produkt/Service an.</p>\n                    <p>Klicken Sie einfach auf den Button unten.</p>\n                    <p>{bill_url}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Vielen Dank,</p>\n                    <p>&nbsp;</p>\n                    <p>Betrachtet,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(244, 21, 'en', 'Vendor Bill Send', '<p style="line-height: 28px; font-family: Nunito,;"><span style="font-family: sans-serif;">Hi, {bill_name}</span></p>\n                    <p style="line-height: 28px; font-family: Nunito,;"><span style="font-family: sans-serif;">Welcome to {app_name}</span></p>\n                    <p style="line-height: 28px; font-family: Nunito,;"><span style="font-family: sans-serif;">Hope this email finds you well!! Please see attached bill number {bill_number} for product/service.</span></p>\n                    <p style="line-height: 28px; font-family: Nunito,;"><span style="font-family: sans-serif;">Simply click on the button below.</span></p>\n                    <p style="line-height: 28px; font-family: Nunito,;"><span style="font-family: sans-serif;">{bill_url}</span></p>\n                    <p style="line-height: 28px; font-family: Nunito,;"><span style="font-family: sans-serif;">Feel free to reach out if you have any questions.</span></p>\n                    <p style="line-height: 28px; font-family: Nunito,;"><span style="font-family: sans-serif;">Thank You,</span></p>\n                    <p style="line-height: 28px; font-family: Nunito,;"><span style="font-family: sans-serif;">Regards,</span></p>\n                    <p style="line-height: 28px; font-family: Nunito,;"><span style="font-family: sans-serif;">{company_name}</span></p>\n                    <p style="line-height: 28px; font-family: Nunito,;"><span style="font-family: sans-serif;">{app_url}</span></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(245, 21, 'es', 'Vendor Bill Send', '<p>Hi, {bill_name}</p>\n                    <p>Bienvenido a {app_name}</p>\n                    <p>&iexcl;Espero que este correo te encuentre bien!! Consulte el n&uacute;mero de factura adjunto {bill_number} para el producto/servicio.</p>\n                    <p>Simplemente haga clic en el bot&oacute;n de abajo.</p>\n                    <p>{bill_url}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>Gracias,</p>\n                    <p>&nbsp;</p>\n                    <p>Considerando,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(246, 21, 'fr', 'Vendor Bill Send', '<p>Salut, { bill_name }</p>\n                    <p>Bienvenue dans { app_name }</p>\n                    <p>Jesp&egrave;re que ce courriel vous trouve bien ! ! Veuillez consulter le num&eacute;ro de facture { bill_number } associ&eacute; au produit / service.</p>\n                    <p>Cliquez simplement sur le bouton ci-dessous.</p>\n                    <p>{bill_url }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Merci,</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(247, 21, 'it', 'Vendor Bill Send', '<p>Ciao, {bill_name}</p>\n                    <p>Benvenuti in {app_name}</p>\n                    <p>Spero che questa email ti trovi bene!! Si prega di consultare il numero di fattura allegato {bill_number} per il prodotto/servizio.</p>\n                    <p>Semplicemente clicca sul pulsante sottostante.</p>\n                    <p>{bill_url}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie,</p>\n                    <p>&nbsp;</p>\n                    <p>Riguardo,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(248, 21, 'ja', 'Vendor Bill Send', '<p>こんにちは、 {bill_name}</p>\n                    <p>{app_name} へようこそ</p>\n                    <p>この E メールによりよく検出されます !! 製品 / サービスの添付された請求番号 {bill_number} を参照してください。</p>\n                    <p>以下のボタンをクリックしてください。</p>\n                    <p>{bill_url}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとうございます</p>\n                    <p>&nbsp;</p>\n                    <p>よろしく</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(249, 21, 'nl', 'Vendor Bill Send', '<p>Hallo, { bill_name }</p>\n                    <p>Welkom bij { app_name }</p>\n                    <p>Hoop dat deze e-mail je goed vindt!! Zie bijgevoegde factuurnummer { bill_number } voor product/service.</p>\n                    <p>Klik gewoon op de knop hieronder.</p>\n                    <p>{ bill_url }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank U,</p>\n                    <p>&nbsp;</p>\n                    <p>Betreft:</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(250, 21, 'pl', 'Vendor Bill Send', '<p>Witaj, {bill_name }</p>\n                    <p>Witamy w aplikacji {app_name }</p>\n                    <p>Mam nadzieję, że ta wiadomość e-mail znajduje Cię dobrze!! Zapoznaj się z załączonym numerem rachunku {bill_number } dla produktu/usługi.</p>\n                    <p>Wystarczy kliknąć na przycisk poniżej.</p>\n                    <p>{bill_url}</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękuję,</p>\n                    <p>&nbsp;</p>\n                    <p>W odniesieniu do</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(251, 21, 'ru', 'Vendor Bill Send', '<p>Привет, { bill_name }</p>\n                    <p>Вас приветствует { app_name }</p>\n                    <p>Надеюсь, это письмо найдет вас хорошо! См. прилагаемый номер счета { bill_number } для product/service.</p>\n                    <p>Просто нажмите на кнопку внизу.</p>\n                    <p>{ bill_url }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>&nbsp;</p>\n                    <p>С уважением,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(252, 21, 'pt', 'Vendor Bill Send', '<p>Oi, {bill_name}</p>\n                    <p>Bem-vindo a {app_name}</p>\n                    <p>Espero que este e-mail encontre voc&ecirc; bem!! Por favor, consulte o n&uacute;mero de faturamento conectado {bill_number} para produto/servi&ccedil;o.</p>\n                    <p>Basta clicar no bot&atilde;o abaixo.</p>\n                    <p>{bill_url}</p>\n                    <p>Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p>Obrigado,</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(253, 22, 'ar', 'Warning Send', '<p style="text-align: left;"><span style="font-size: 12pt;"><span style="color: #222222;"><span style="white-space: pre-wrap;">Subject : -HR ادارة / شركة لارسال رسالة تحذير. عزيزي { employe_warning_name }, { warning_subject } { warning_description } إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة. شكرا لك Regards, إدارة الموارد البشرية ، { app_name }</span></span></span></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(254, 22, 'da', 'Warning Send', '<p>Om: HR-afdelingen / kompagniet for at sende advarselsbrev.</p>\n                    <p>K&aelig;re { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(255, 22, 'de', 'Warning Send', '<p>Betreff: -Personalabteilung/Unternehmen zum Senden von Warnschreiben.</p>\n                    <p>Sehr geehrter {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(256, 22, 'en', 'Warning Send', '<p><strong>Subject:-HR department/Company to send warning letter.</strong></p>\n                    <p><strong>Dear {employee_warning_name},</strong></p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(257, 22, 'es', 'Warning Send', '<p>Asunto: -Departamento de RR.HH./Empresa para enviar carta de advertencia.</p>\n                    <p>Estimado {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(258, 22, 'fr', 'Warning Send', '<p>Objet: -HR department / Company to send warning letter.</p>\n                    <p>Cher { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(259, 22, 'it', 'Warning Send', '<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di avvertimento.</p>\n                    <p>Caro {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(260, 22, 'ja', 'Warning Send', '<p><span style="font-size: 12pt;"><span style="color: #222222;"><span style="white-space: pre-wrap;">件名:-HR 部門/企業は警告レターを送信します。 { employee_warning_name} を出庫します。 {warning_subject} {warning_description} 質問がある場合は、自由に連絡してください。 ありがとう よろしく HR 部門 {app_name}</span></span></span></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(261, 22, 'nl', 'Warning Send', '<p>Betreft: -HR-afdeling/bedrijf om een waarschuwingsbrief te sturen.</p>\n                    <p>Geachte { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(262, 22, 'pl', 'Warning Send', '<p>Temat: -Dział HR/Firma do wysyłania listu ostrzegawczego.</p>\n                    <p>Szanowny {employee_warning_name },</p>\n                    <p>{warning_subject }</p>\n                    <p>{warning_description }</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(263, 22, 'ru', 'Warning Send', '<p>Тема: -HR отдел/Компания для отправки предупреждающего письма.</p>\n                    <p>Уважаемый { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(264, 22, 'pt', 'Warning Send', '<p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Assunto:-Departamento de RH / Empresa para enviar carta de advert&ecirc;ncia.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Querido {employee_warning_name},</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">{warning_subject}</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">{warning_description}</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Obrigado</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Considera,</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">Departamento de RH,</span></p>\n                    <p style="font-size: 14.4px;"><span style="font-size: 14.4px;">{app_name}</span></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(265, 23, 'ar', 'Create Contract', '<p>&nbsp;</p>\n                    <p><b>مرحبا</b> { contract_client }</p>\n                    <p><b>موضوع العقد</b> : { contract_subject }</p>\n                    <p><b>مشروع العقد </b>: { contract_project }</p>\n                    <p><b>تاريخ البدء</b> : { contract_start_date }</p>\n                    <p><b>تاريخ الانتهاء</b> : { contract_end_date }</p>\n                    <p>. أتطلع لسماع منك</p>\n                    <p><b>Regards نوع ،</b></p>\n                    <p>{ company_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(266, 23, 'da', 'Create Contract', '<p>&nbsp;</p>\n                    <p><b>Hej </b>{ contract_client }</p>\n                    <p><b>Kontraktemne :&nbsp;</b>{ contract_subject }</p>\n                    <p><b>Kontrakt-projekt :&nbsp;</b>{ contract_project }</p>\n                    <p><b>Startdato&nbsp;</b>: { contract_start_date }</p>\n                    <p><b>Slutdato&nbsp;</b>: { contract_end_date }</p>\n                    <p>Jeg glæder mig til at høre fra dig.</p>\n                    <p><b>Kind Hilds,</b></p>\n                    <p>{ company_name }</p><p></p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(267, 23, 'de', 'Create Contract', '<p>&nbsp;</p>\n                    <p><b>Hi</b> {contract_client}</p>\n                    <p>&nbsp;<b style="font-family: var(--bs-body-font-family); text-align: var(--bs-body-text-align);">Vertragsgegenstand :</b><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);"> {contract_subject}</span></p>\n                    <p><b>Vertragsprojekt :&nbsp;</b>{contract_project}</p>\n                    <p><b>Startdatum&nbsp;</b>: {contract_start_date}</p>\n                    <p><b>Enddatum&nbsp;</b>: {contract_end_date}</p>\n                    <p>Freuen Sie sich auf das Hören von Ihnen.</p>\n                    <p><b>Gütige Grüße,</b></p>\n                    <p>{company_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(268, 23, 'en', 'Create Contract', '<p>&nbsp;</p>\n                    <p><strong>Hi</strong> {contract_client}</p>\n                    <p><b>Contract Subject</b>&nbsp;: {contract_subject}</p>\n                    <p><b>Contract Project</b>&nbsp;: {contract_project}</p>\n                    <p><b>Start Date&nbsp;</b>: {contract_start_date}</p>\n                    <p><b>End Date&nbsp;</b>: {contract_end_date}</p>\n                    <p>Looking forward to hear from you.</p>\n                    <p><strong>Kind Regards, </strong></p>\n                    <p>{company_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(269, 23, 'es', 'Create Contract', '<p><b>Hi </b>{contract_client} </p><p><span style="text-align: var(--bs-body-text-align);"><b>asunto del contrato</b></span><b>&nbsp;:</b> {contract_subject}</p><p><b>contrato proyecto </b>: {<span style="font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">contract_project</span><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">}</span></p><p> </p><p><b>Start Date :</b> {contract_start_date} </p><p><b>Fecha de finalización :</b> {contract_end_date} </p><p>Con ganas de escuchar de usted. </p><p><b>Regards de tipo, </b></p><p>{contract_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(270, 23, 'fr', 'Create Contract', '<p><b>Bonjour</b> { contract_client }</p>\n                    <p><b>Objet du contrat :</b> { contract_subject } </p><p><span style="text-align: var(--bs-body-text-align);"><b>contrat projet :</b></span>&nbsp;{ contract_project } </p><p><b>Date de début&nbsp;</b>: { contract_start_date } </p><p><b>Date de fin&nbsp;</b>: { contract_end_date } </p><p>Regard sur lavenir.</p>\n                    <p><b>Sincères amitiés,</b></p>\n                    <p>{ nom_entreprise }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(271, 23, 'it', 'Create Contract', '<p>&nbsp;</p>\n                    <p>Ciao {contract_client}</p>\n                    <p><b>Oggetto contratto :&nbsp;</b>{contract_subject} </p><p><b>Contract Project :</b> {contract_project} </p><p><b>Data di inizio</b>: {contract_start_date} </p><p><b>Data di fine</b>: {contract_end_date} </p><p>Non vedo lora di sentirti<br></p>\n                    <p><b>Kind Regards,</b></p>\n                    <p>{company_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(272, 23, 'ja', 'Create Contract', '<p><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">こんにちは {contract_client}</span><br></p>\n                    <p><b>契約件名&nbsp;</b>: {contract subject}</p>\n                    <p><b>契約プロジェクト :</b> {contract_project}</p>\n                    <p><b>開始日</b>: {contract_start_date}</p>\n                    <p>&nbsp;<b style="font-family: var(--bs-body-font-family); text-align: var(--bs-body-text-align);">終了日</b><span style="font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">: {contract_end_date}</span></p><p><span style="text-align: var(--bs-body-text-align);">あなたから聞いて楽しみにして</span></p><p><span style="text-align: var(--bs-body-text-align);"><b>敬具、</b><br></span></p>\n                    <p>{ company_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(273, 23, 'nl', 'Create Contract', '<p>&nbsp;</p>\n                    <p><b>Hallo</b> { contract_client }</p>\n                    <p><b>Contractonderwerp</b> : { contract_subject } </p><p><b>Contractproject</b> : { contract_project } </p><p><b>Begindatum</b> : { contract_start_date } </p><p><b>Einddatum&nbsp;</b>: { contract_end_date } </p><p>Naar voren komen om van u te horen.</p><p><b>Met vriendelijke groeten</b>,<br></p>\n                    <p>{ bedrijfsnaam }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(274, 23, 'pl', 'Create Contract', '<p>&nbsp;</p>\n                    <p><b>Witaj</b> {contract_client }</p>\n                    <p><b>Temat umowy :&nbsp;</b>{contract_subject } </p><p><b>Projekt kontraktu</b>&nbsp;: {contract_project } </p><p><b>Data rozpoczęcia&nbsp;</b>: {contract_start_date } </p><p><b>Data zakończenia&nbsp;</b>: {contract_end_date } </p><p>Z niecierżną datą i z niecierżką na Ciebie.</p>\n                    <p><b>W Odniesieniu Do Rodzaju,</b></p>\n                    <p>{company_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(275, 23, 'ru', 'Create Contract', '<p></p>\n                    <p><b>Здравствуйте</b> { contract_client }</p>\n                    <p><b>Субъект договора :</b> { contract_subject } </p><p><b>Проект договора</b>: { contract_project } </p><p><b>Начальная дата </b>: { contract_start_date } </p><p><b>Конечная дата </b>: { contract_end_date } </p><p>нетерпением ожидаю услышать от вас.</p>\n                    <p><b>Привет.</b></p>\n                    <p>{ company_name }</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(276, 23, 'pt', 'Create Contract', '<p>&nbsp;</p>\n                    <p><span style="text-align: var(--bs-body-text-align);"><b>Olá</b></span>&nbsp;{contract_client}</p>\n                    <p><span style="text-align: var(--bs-body-text-align);"><b>Assunto do Contrato</b></span>&nbsp;: {contract_subject}</p>\n                    <p><span style="text-align: var(--bs-body-text-align);"><b>Projeto de contrato&nbsp;</b></span>: {contract_project}</p>\n                    <p><span style="text-align: var(--bs-body-text-align);"><b>Data de início</b></span><b>&nbsp;</b>: {contract_start_date}</p>\n                    <p><span style="text-align: var(--bs-body-text-align);"><b>Data final</b></span><b>&nbsp;</b>: {contract_end_date}</p>\n                    <p>Ansioso para ouvir de você.</p>\n                    <p><b>Atenciosamente,</b><br></p>\n                    <p>{company_name}</p>', '2022-10-19 16:51:55', '2022-10-19 16:51:55');
/*!40000 ALTER TABLE `email_template_langs` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `branch_id` int NOT NULL DEFAULT '0',
  `department_id` int NOT NULL DEFAULT '0',
  `designation_id` int NOT NULL DEFAULT '0',
  `company_doj` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_identifier_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_payer_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.employees: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `user_id`, `name`, `dob`, `gender`, `phone`, `address`, `email`, `password`, `employee_id`, `branch_id`, `department_id`, `designation_id`, `company_doj`, `documents`, `account_holder_name`, `account_number`, `bank_name`, `bank_identifier_code`, `branch_location`, `tax_payer_id`, `salary_type`, `salary`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 3, 'accountant', NULL, NULL, NULL, NULL, 'accountant@example.com', '$2y$10$bKBWO5ThbzzOZqtIHbdbtOmmRxmfWIUxeLzmXJpKbHQWy8DmwbbNC', '1', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.employee_documents
CREATE TABLE IF NOT EXISTS `employee_documents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `document_id` int NOT NULL,
  `document_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.employee_documents: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `employee_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_documents` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.estimations
CREATE TABLE IF NOT EXISTS `estimations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `estimation_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_date` date NOT NULL,
  `discount` double(8,2) NOT NULL,
  `tax_id` bigint unsigned NOT NULL,
  `terms` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.estimations: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `estimations` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimations` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.events
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `department_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.events: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.event_employees
CREATE TABLE IF NOT EXISTS `event_employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.event_employees: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `event_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_employees` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.expenses
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int NOT NULL DEFAULT '0',
  `task_id` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.expenses: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.experience_certificates
CREATE TABLE IF NOT EXISTS `experience_certificates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.experience_certificates: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `experience_certificates` DISABLE KEYS */;
INSERT INTO `experience_certificates` (`id`, `lang`, `content`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'ar', '<h3 style="text-align: center;">بريد إلكتروني تجربة</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>إلي من يهمه الامر</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>مدة الخدمة {duration} في {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>الادوار والمسؤوليات</p>\n\n\n\n            <p>وصف موجز لمسار عمل الموظف وبيان إيجابي من المدير أو المشرف.</p>\n\n\n\n            <p>بإخلاص،</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>التوقيع</p>\n\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(2, 'da', '<h3 style="text-align: center;">Erfaringsbrev</h3>\n\n            <p>{app_name}</p>\n\n            <p>TIL HVEM DET M&Aring;TTE VEDR&Oslash;RE</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Tjenesteperiode {duration} i {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Roller og ansvar</p>\n\n\n\n            <p>Kort beskrivelse af medarbejderens ans&aelig;ttelsesforl&oslash;b og positiv udtalelse fra leder eller arbejdsleder.</p>\n\n\n\n            <p>Med venlig hilsen</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Underskrift</p>\n\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(3, 'de', '<h3 style="text-align: center;">Erfahrungsbrief</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>WEN ES ANGEHT</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Dienstzeit {duration} in {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Rollen und Verantwortlichkeiten</p>\n\n\n\n            <p>Kurze Beschreibung des beruflichen Werdegangs des Mitarbeiters und eine positive Stellungnahme des Vorgesetzten oder Vorgesetzten.</p>\n\n\n\n            <p>Aufrichtig,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Unterschrift</p>\n\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(4, 'en', '<p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: center;" align="center"><span style="font-size: 18pt;"><strong>Experience Letter</strong></span></p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">&nbsp;</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">{app_name}</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">TO WHOM IT MAY CONCERN</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">{date}</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">{employee_name}</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">Tenure of Service {duration} in {app_name}.</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">{designation}</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">{payroll}</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">Roles and Responsibilities</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">&nbsp;</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">Brief description of the employee&rsquo;s course of employment and a positive statement from the manager or supervisor.</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">&nbsp;</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">Sincerely,</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">{employee_name}</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">{designation}</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">Signature</p>\n            <p lang="en-IN" style="margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;" align="center">{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(5, 'es', '<h3 style="text-align: center;">Carta de experiencia</h3>\n\n\n            <p>{app_name}</p>\n\n            <p>A QUIEN LE INTERESE</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Duraci&oacute;n del servicio {duration} en {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Funciones y responsabilidades</p>\n\n\n\n            <p>Breve descripci&oacute;n del curso de empleo del empleado y una declaraci&oacute;n positiva del gerente o supervisor.</p>\n\n\n\n            <p>Sinceramente,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Firma</p>\n\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(6, 'fr', '<h3 style="text-align: center;">Lettre dexp&eacute;rience</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>&Agrave; QUI DE DROIT</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Dur&eacute;e du service {duration} dans {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>R&ocirc;les et responsabilit&eacute;s</p>\n\n\n\n            <p>Br&egrave;ve description de l&eacute;volution de lemploi de lemploy&eacute; et une d&eacute;claration positive du gestionnaire ou du superviseur.</p>\n\n\n\n            <p>Sinc&egrave;rement,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Signature</p>\n\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(7, 'id', '<h3 style="text-align: center;">Surat Pengalaman</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>UNTUK PERHATIAN</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Jangka Waktu Layanan {duration} di {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Peran dan Tanggung Jawab</p>\n\n\n\n            <p>Deskripsi singkat tentang pekerjaan karyawan dan pernyataan positif dari manajer atau supervisor.</p>\n\n\n\n            <p>Sungguh-sungguh,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Tanda tangan</p>\n\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(8, 'it', '<h3 style="text-align: center;">Lettera di esperienza</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>PER CHI &Egrave; COINVOLTO</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Durata del servizio {duration} in {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Ruoli e responsabilit&agrave;</p>\n\n\n\n            <p>Breve descrizione del percorso lavorativo del dipendente e dichiarazione positiva del manager o supervisore.</p>\n\n\n\n            <p>Cordiali saluti,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Firma</p>\n\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(9, 'ja', '\n            <h3 style="text-align: center;">体験談</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>ご担当者様</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>{app_name} のサービス {duration} の保有期間。</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>役割と責任</p>\n\n\n\n            <p>従業員の雇用コースの簡単な説明と、マネージャーまたはスーパーバイザーからの肯定的な声明。</p>\n\n\n\n            <p>心から、</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>サイン</p>\n\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(10, 'nl', '<h3 style="text-align: center;">Ervaringsbrief</h3>\n\n\n            <p>{app_name}</p>\n\n            <p>VOOR WIE HET AANGAAT</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Diensttijd {duration} in {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Rollen en verantwoordelijkheden</p>\n\n\n\n            <p>Korte omschrijving van het dienstverband van de medewerker en een positieve verklaring van de leidinggevende of leidinggevende.</p>\n\n\n\n            <p>Eerlijk,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Handtekening</p>\n\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(11, 'pl', '<h3 style="text-align: center;">Doświadczenie List</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>DO TYCH KT&Oacute;RYCH MOŻE TO DOTYCZYĆ</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Okres świadczenia usług {duration} w aplikacji {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Role i obowiązki</p>\n\n\n\n            <p>Kr&oacute;tki opis przebiegu zatrudnienia pracownika oraz pozytywna opinia kierownika lub przełożonego.</p>\n\n\n\n            <p>Z poważaniem,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Podpis</p>\n\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(12, 'pt', '<h3 style="text-align: center;">Carta de Experi&ecirc;ncia</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>A QUEM POSSA INTERESSAR</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Tempo de servi&ccedil;o {duration} em {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Pap&eacute;is e responsabilidades</p>\n\n\n\n            <p>Breve descri&ccedil;&atilde;o do curso de emprego do funcion&aacute;rio e uma declara&ccedil;&atilde;o positiva do gerente ou supervisor.</p>\n\n\n\n            <p>Sinceramente,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Assinatura</p>\n\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(13, 'ru', '<h3 style="text-align: center;">Письмо об опыте</h3>\n\n\n\n            <p>{app_name}</p>\n\n            <p>ДЛЯ ПРЕДЪЯВЛЕНИЯ ПО МЕСТУ ТРЕБОВАНИЯ</p>\n\n            <p>{date}</p>\n\n            <p>{employee_name}</p>\n\n            <p>Срок службы {duration} в {app_name}.</p>\n\n            <p>{designation}</p>\n\n            <p>{payroll}</p>\n\n            <p>Роли и обязанности</p>\n\n\n\n            <p>Краткое описание трудового стажа работника и положительное заключение руководителя или руководителя.</p>\n\n\n\n            <p>Искренне,</p>\n\n            <p>{employee_name}</p>\n\n            <p>{designation}</p>\n\n            <p>Подпись</p>\n\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56');
/*!40000 ALTER TABLE `experience_certificates` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.form_builders
CREATE TABLE IF NOT EXISTS `form_builders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `is_lead_active` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_builders_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.form_builders: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `form_builders` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_builders` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.form_fields
CREATE TABLE IF NOT EXISTS `form_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.form_fields: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `form_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_fields` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.form_field_responses
CREATE TABLE IF NOT EXISTS `form_field_responses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint unsigned NOT NULL,
  `subject_id` int NOT NULL,
  `name_id` int NOT NULL,
  `email_id` int NOT NULL,
  `user_id` int NOT NULL,
  `pipeline_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.form_field_responses: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `form_field_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_field_responses` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.form_responses
CREATE TABLE IF NOT EXISTS `form_responses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint unsigned NOT NULL,
  `response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.form_responses: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `form_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_responses` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.generate_offer_letters
CREATE TABLE IF NOT EXISTS `generate_offer_letters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.generate_offer_letters: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `generate_offer_letters` DISABLE KEYS */;
INSERT INTO `generate_offer_letters` (`id`, `lang`, `content`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'ar', '<p style="text-align: center;"><span style="font-size: 18pt;"><strong>رسالة عرض</strong></span></p>\n\n\n                    <p>عزيزي {applicationant_name} ،</p>\n\n\n                    <p>{app_name} متحمس لاصطحابك على متن الطائرة بصفتك {job_title}.</p>\n\n                    <p>كنت على بعد خطوات قليلة من الشروع في العمل. يرجى أخذ الوقت الكافي لمراجعة عرضنا الرسمي. يتضمن تفاصيل مهمة حول راتبك ومزاياك وبنود وشروط عملك المتوقع مع {app_name}.</p>\n\n\n                    <p>{app_name} يقدم {job_type}. المنصب بالنسبة لك كـ {job_title} ، تقديم التقارير إلى [المدير المباشر / المشرف] بدءًا من {start_date} في {workplace_location}. ساعات العمل المتوقعة هي {days_of_week}.</p>\n\n\n                    <p>في هذا المنصب ، يعرض عليك {app_name}&nbsp; {salary}أن تبدأ لك بمعدل دفع {salary_type} لكل {salary_duration}. سوف يتم الدفع لك على أساس.</p>\n\n\n                    <p>كجزء من تعويضك ، إذا كان ذلك ممكنًا ، ستصف مكافأتك ومشاركة الأرباح وهيكل العمولة وخيارات الأسهم وقواعد لجنة التعويضات هنا.</p>\n\n\n                    <p>بصفتك موظفًا في {app_name} ، ستكون مؤهلاً للحصول على مزايا الاسم المختصر ، مثل التأمين الصحي ، وخطة الأسهم ، والتأمين على الأسنان ، وما إلى ذلك.</p>\n\n\n                    <p>الرجاء توضيح موافقتك على هذه البنود وقبول هذا العرض عن طريق التوقيع على هذه الاتفاقية وتأريخها في أو قبل {offer_expiration_date}.</p>\n\n                    <p>بإخلاص،</p>\n\n                    <p>{app_name}</p>\n                    ', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(2, 'da', '<p style="text-align: center;"><span style="font-size: 18pt;"><strong>Tilbudsbrev</strong></span></p>\n\n                    <p>K&aelig;re {applicant_name}</p>\n\n                    <p>{app_name} er glade for at f&aring; dig med som {job_title}.</p>\n\n                    <p>Der var kun et par formaliteter fra at komme p&aring; arbejde. Tag dig tid til at gennemg&aring; vores formelle tilbud. Den indeholder vigtige oplysninger om din kompensation, fordele og vilk&aring;rene og betingelserne for din forventede ans&aelig;ttelse hos {app_name}.</p>\n\n                    <p>{app_name} tilbyder en {job_type}. stilling til dig som {job_title}, der rapporterer til [n&aelig;rmeste leder/supervisor] fra og med {start_date} p&aring;{workplace_location}. Forventet arbejdstid er {days_of_week}.</p>\n\n\n                    <p>I denne stilling tilbyder {app_name} at starte dig med en l&oslash;nsats p&aring; {salary} pr. {salary_type}. Du vil blive betalt p&aring; {salary_duration}-basis.</p>\n\n                    <p>Som en del af din kompensation, du ogs&aring; tilbyder, hvis det er relevant, vil du beskrive din bonus, overskudsdeling, kommissionsstruktur, aktieoptioner og regler for kompensationsudvalget her.</p>\n\n\n                    <p>Som ansat hos {app_name} vil du v&aelig;re berettiget til kort navnefordele, s&aring;som sundhedsforsikring, aktieplan, tandforsikring osv.</p>\n\n                    <p>Angiv venligst din accept af disse vilk&aring;r og accepter dette tilbud ved at underskrive og datere denne aftale p&aring; eller f&oslash;r {offer_expiration_date}.</p>\n\n                    <p>Med venlig hilsen</p>\n\n                    <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(3, 'de', '<p style="text-align: center;"><span style="font-size: 18pt;"><strong>Angebotsschreiben</strong></span></p>\n\n\n                    <p>Sehr geehrter {applicant_name},</p>\n\n\n                    <p>{app_name} freut sich, Sie als {job_title} an Bord zu holen.</p>\n\n\n                    <p>Nur noch wenige Formalit&auml;ten bis zur Arbeit. Bitte nehmen Sie sich die Zeit, unser formelles Angebot zu pr&uuml;fen. Es enth&auml;lt wichtige Details zu Ihrer Verg&uuml;tung, Ihren Leistungen und den Bedingungen Ihrer voraussichtlichen Anstellung bei {app_name}.</p>\n\n\n                    <p>{app_name} bietet einen {job_type} an. Position f&uuml;r Sie als {job_title}, ab {start_date} am {workplace_location} unterstellt an unmittelbarer Manager/Vorgesetzter. Erwartete Arbeitszeiten sind {days_of_week}.</p>\n\n\n                    <p>In dieser Position bietet {app_name} Ihnen an, mit einem Gehaltssatz von {salary} pro {salary_type} zu beginnen. Sie werden auf Basis von {salary_duration} bezahlt.</p>\n\n\n                    <p>Als Teil Ihrer Verg&uuml;tung, die Sie gegebenenfalls auch anbieten, beschreiben Sie hier Ihren Bonus, Ihre Gewinnbeteiligung, Ihre Provisionsstruktur, Ihre Aktienoptionen und die Regeln des Verg&uuml;tungsausschusses.</p>\n\n\n                    <p>Als Mitarbeiter von {app_name} haben Sie Anspruch auf Kurznamenvorteile wie Krankenversicherung, Aktienplan, Zahnversicherung usw.</p>\n\n\n\n                    <p>Bitte erkl&auml;ren Sie Ihr Einverst&auml;ndnis mit diesen Bedingungen und nehmen Sie dieses Angebot an, indem Sie diese Vereinbarung am oder vor dem {offer_expiration_date} unterzeichnen und datieren.</p>\n\n\n                    <p>Aufrichtig,</p>\n\n                    <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(4, 'en', '<p style="text-align: center;"><strong>Offer Letter</strong></p>\n\n                    <p>Dear {applicant_name},</p>\n\n                    <p>{app_name} is excited to bring you on board as {job_title}.</p>\n\n                    <p>Were just a few formalities away from getting down to work. Please take the time to review our formal offer. It includes important details about your compensation, benefits, and the terms and conditions of your anticipated employment with {app_name}.</p>\n\n                    <p>{app_name} is offering a {job_type}. position for you as {job_title}, reporting to [immediate manager/supervisor] starting on {start_date} at{workplace_location}. Expected hours of work are{days_of_week}.</p>\n\n                    <p>In this position, {app_name} is offering to start you at a pay rate of {salary} per {salary_type}. You will be paid on a{salary_duration} basis.&nbsp;</p>\n\n                    <p>As part of your compensation, were also offering [if applicable, youll describe your bonus, profit sharing, commission structure, stock options, and compensation committee rules here].</p>\n\n                    <p>As an employee of {app_name} , you will be eligible for briefly name benefits, such as health insurance, stock plan, dental insurance, etc.</p>\n\n                    <p>Please indicate your agreement with these terms and accept this offer by signing and dating this agreement on or before {offer_expiration_date}.</p>\n\n                    <p>Sincerely,</p>\n                    <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(5, 'es', '<p style="text-align: center;"><span style="font-size: 18pt;"><strong>Carta de oferta</strong></span></p>\n\n\n                    <p>Estimado {applicant_name},</p>\n\n                    <p>{app_name} se complace en incorporarlo como {job_title}.</p>\n\n\n                    <p>Faltaban s&oacute;lo unos tr&aacute;mites para ponerse manos a la obra. T&oacute;mese el tiempo para revisar nuestra oferta formal. Incluye detalles importantes sobre su compensaci&oacute;n, beneficios y los t&eacute;rminos y condiciones de su empleo anticipado con {app_name}.</p>\n\n\n                    <p>{app_name} est&aacute; ofreciendo {job_type}. posici&oacute;n para usted como {job_title}, reportando al gerente/supervisor inmediato a partir del {start_date} en {workplace_location}. Las horas de trabajo esperadas son {days_of_week}.</p>\n\n\n                    <p>En este puesto, {app_name} te ofrece comenzar con una tarifa de pago de {salary} por {salary_type}. Se le pagar&aacute; sobre la base de {salary_duration}.</p>\n\n\n                    <p>Como parte de su compensaci&oacute;n, tambi&eacute;n ofrecemos, si corresponde, aqu&iacute; describir&aacute; su bonificaci&oacute;n, participaci&oacute;n en las ganancias, estructura de comisiones, opciones sobre acciones y reglas del comit&eacute; de compensaci&oacute;n.</p>\n\n\n                    <p>Como empleado de {app_name}, ser&aacute; elegible para beneficios de nombre breve, como seguro m&eacute;dico, plan de acciones, seguro dental, etc.</p>\n\n\n                    <p>Indique su acuerdo con estos t&eacute;rminos y acepte esta oferta firmando y fechando este acuerdo el {offer_expiration_date} o antes.</p>\n\n\n                    <p>Sinceramente,</p>\n\n                    <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(6, 'fr', '<p style="text-align: center;"><span style="font-size: 18pt;"><strong>Lettre doffre</strong></span></p>\n\n\n                    <p>Cher {applicant_name},</p>\n\n\n                    <p>{app_name} est ravi de vous accueillir en tant que {job_title}.</p>\n\n\n                    <p>&Eacute;taient juste quelques formalit&eacute;s loin de se mettre au travail. Veuillez prendre le temps dexaminer notre offre formelle. Il comprend des d&eacute;tails importants sur votre r&eacute;mun&eacute;ration, vos avantages et les termes et conditions de votre emploi pr&eacute;vu avec {app_name}.</p>\n\n\n                    <p>{app_name} propose un {job_type}. poste pour vous en tant que {job_title}, relevant du directeur/superviseur imm&eacute;diat &agrave; partir du {start_date} &agrave; {workplace_location}. Les heures de travail pr&eacute;vues sont de {days_of_week}.</p>\n\n\n                    <p>&Agrave; ce poste, {app_name} vous propose de commencer avec un taux de r&eacute;mun&eacute;ration de {salary} par {salary_type}. Vous serez pay&eacute; sur une base de {salary_duration}.</p>\n\n\n                    <p>Dans le cadre de votre r&eacute;mun&eacute;ration, le cas &eacute;ch&eacute;ant, vous d&eacute;crivez ici votre bonus, votre participation aux b&eacute;n&eacute;fices, votre structure de commission, vos options sur actions et les r&egrave;gles du comit&eacute; de r&eacute;mun&eacute;ration.</p>\n\n\n                    <p>En tant quemploy&eacute; de {app_name}, vous aurez droit &agrave; des avantages bri&egrave;vement nomm&eacute;s, tels que lassurance maladie, le plan dactionnariat, lassurance dentaire, etc.</p>\n\n\n                    <p>Veuillez indiquer votre accord avec ces conditions et accepter cette offre en signant et en datant cet accord au plus tard le {offer_expiration_date}.</p>\n\n\n                    <p>Sinc&egrave;rement,</p>\n                    <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(7, 'id', '<p style="text-align: center;"><span style="font-size: 18pt;"><strong>Surat penawaran</strong></span></p>\n\n\n                    <p>{applicant_name} yang terhormat,</p>\n\n\n                    <p>{app_name} dengan senang hati membawa Anda sebagai {job_title}.</p>\n\n\n                    <p>Tinggal beberapa formalitas lagi untuk mulai bekerja. Harap luangkan waktu untuk meninjau penawaran resmi kami. Ini mencakup detail penting tentang kompensasi, tunjangan, serta persyaratan dan ketentuan pekerjaan yang Anda harapkan dengan {app_name}.</p>\n\n\n                    <p>{app_name} menawarkan {job_type}. posisi untuk Anda sebagai {job_title}, melapor ke manajer/penyelia langsung mulai {start_date} di{workplace_location}. Jam kerja yang diharapkan adalah{days_of_week}.</p>\n\n\n                    <p>Di posisi ini, {app_name} menawarkan untuk memulai Anda dengan tarif pembayaran {salary} per {salary_type}. Anda akan dibayar berdasarkan {salary_duration}.</p>\n\n\n                    <p>Sebagai bagian dari kompensasi Anda, yang juga ditawarkan jika berlaku, Anda akan menjelaskan bonus, pembagian keuntungan, struktur komisi, opsi saham, dan aturan komite kompensasi Anda di sini.</p>\n\n\n                    <p>Sebagai karyawan {app_name} , Anda akan memenuhi syarat untuk mendapatkan manfaat singkat, seperti asuransi kesehatan, paket saham, asuransi gigi, dll.</p>\n\n\n                    <p>Harap tunjukkan persetujuan Anda dengan persyaratan ini dan terima penawaran ini dengan menandatangani dan memberi tanggal pada perjanjian ini pada atau sebelum {offer_expiration_date}.</p>\n\n\n                    <p>Sungguh-sungguh,</p>\n\n                    <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(8, 'it', '<p style="text-align: center;"><span style="font-size: 18pt;"><strong>Lettera di offerta</strong></span></p>\n\n\n                    <p>Gentile {nome_richiedente},</p>\n\n\n                    <p>{app_name} &egrave; entusiasta di portarti a bordo come {job_title}.</p>\n\n\n                    <p>Mancavano solo poche formalit&agrave; per mettersi al lavoro. Per favore, prenditi del tempo per rivedere la nostra offerta formale. Include dettagli importanti sul compenso, i vantaggi e i termini e le condizioni del tuo impiego previsto con {app_name}.</p>\n\n\n                    <p>{app_name} offre un {job_type}. posizione per te come {job_title}, riportando al manager/supervisore immediato a partire da {start_date} a {workplace_location}. Lorario di lavoro previsto &egrave; di {days_of_week}.</p>\n\n\n                    <p>In questa posizione, {app_name} ti offre di iniziare con una paga di {salary} per {salary_type}. Sarai pagato su base {salary_duration}.</p>\n\n\n                    <p>Come parte del tuo compenso, se applicabile, descrivi anche il tuo bonus, la partecipazione agli utili, la struttura delle commissioni, le stock option e le regole del comitato di compensazione qui.</p>\n\n\n                    <p>In qualit&agrave; di dipendente di {app_name} , avrai diritto a vantaggi per nomi brevi, come assicurazione sanitaria, piano azionario, assicurazione dentale, ecc.</p>\n\n\n                    <p>Indica il tuo accordo con questi termini e accetta questa offerta firmando e datando questo accordo entro il {offer_expiration_date}.</p>\n\n\n                    <p>Cordiali saluti,</p>\n\n                    <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(9, 'ja', '<p style="text-align: center;"><span style="font-size: 18pt;"><strong>内定通知</strong></span></p>\n\n\n                    <p>{applicant_name} 様</p>\n\n                    <p>{app_name} は、あなたを {job_title} として迎えることに興奮しています。</p>\n\n                    <p>仕事に取り掛かる前に、ほんの少しの手続きがありました。時間をかけて正式なオファーを確認してください。これには、あなたの報酬、福利厚生、および {app_name} での予想される雇用条件に関する重要な詳細が含まれています。</p>\n\n                    <p>{app_name} が {job_type} を提供しています。 {job_title} として、{start_date} から {workplace_location} の直属のマネージャー/スーパーバイザーに報告します。予想される勤務時間は {days_of_week} です。</p>\n\n                    <p>このポジションでは、{app_name} は、{salary_type} あたり {salary} の賃金率であなたをスタートさせることを提案しています。 {salary_duration} 単位で支払われます。</p>\n\n                    <p>報酬の一部として、該当する場合は提供もしていました。ボーナス、利益分配、手数料体系、ストック オプション、および報酬委員会の規則についてここに説明します。</p>\n\n                    <p>{app_name} の従業員として、健康保険、ストック プラン、歯科保険などの簡単な名前の特典を受ける資格があります。</p>\n\n                    <p>{offer_expiration_date} 日までに本契約に署名し日付を記入して、これらの条件に同意し、このオファーを受け入れてください。</p>\n\n                    <p>心から、</p>\n\n                    <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(10, 'nl', '<p style="text-align: center;"><span style="font-size: 18pt;"><strong>Aanbiedingsbrief</strong></span></p>\n\n\n\n                    <p>Beste {applicant_name},</p>\n\n\n\n                    <p>{app_name} is verheugd je aan boord te mogen verwelkomen als {job_title}.</p>\n\n\n\n                    <p>Waren slechts een paar formaliteiten verwijderd om aan het werk te gaan. Neem de tijd om ons formele aanbod te bekijken. Het bevat belangrijke details over uw vergoeding, voordelen en de voorwaarden van uw verwachte dienstverband bij {app_name}.</p>\n\n\n\n                    <p>{app_name} biedt een {job_type} aan. functie voor jou als {job_title}, rapporterend aan directe manager/supervisor vanaf {start_date} op {workplace_location}. De verwachte werkuren zijn {days_of_week}.</p>\n\n\n\n                    <p>In deze functie biedt {app_name} aan om je te starten tegen een salaris van {salary} per {salary_type}. U wordt betaald op basis van {salary_duration}.</p>\n\n\n\n                    <p>Als onderdeel van uw vergoeding, die u, indien van toepassing, ook aanbiedt, beschrijft u hier uw bonus, winstdeling, commissiestructuur, aandelenopties en regels van het vergoedingscomit&eacute;.</p>\n\n\n\n                    <p>Als medewerker van {app_name} kom je in aanmerking voor korte naamvoordelen, zoals een ziektekostenverzekering, aandelenplan, tandartsverzekering, enz.</p>\n\n\n\n                    <p>Geef aan dat u akkoord gaat met deze voorwaarden en accepteer deze aanbieding door deze overeenkomst op of v&oacute;&oacute;r {offer_expiration_date} te ondertekenen en te dateren.</p>\n\n\n\n                    <p>Eerlijk,</p>\n\n                    <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(11, 'pl', '<p style="text-align: center;"><strong><span style="font-size: 18pt;">List ofertowy</span></strong></p>\n\n                    <p>Drogi {applicant_name},</p>\n\n                    <p>{app_name} z radością zaprasza Cię do wsp&oacute;łpracy jako {job_title}.</p>\n\n                    <p>Od rozpoczęcia pracy dzieliło mnie tylko kilka formalności. Prosimy o poświęcenie czasu na zapoznanie się z naszą oficjalną ofertą. Zawiera ważne szczeg&oacute;ły dotyczące Twojego wynagrodzenia, świadczeń oraz warunk&oacute;w Twojego przewidywanego zatrudnienia w {app_name}.</p>\n\n\n                    <p>{app_name} oferuje {job_type}. stanowisko dla Ciebie jako {job_title}, raportowanie do bezpośredniego przełożonego/przełożonego począwszy od {start_date} w {workplace_location}. Przewidywane godziny pracy to {days_of_week}.</p>\n\n\n                    <p>Na tym stanowisku {app_name} oferuje Ci rozpoczęcie pracy za stawkę {salary} za {salary_type}. Otrzymasz zapłatę na podstawie {salary_duration}.</p>\n\n\n                    <p>W ramach wynagrodzenia, kt&oacute;re oferowaliśmy, jeśli dotyczy, opiszesz tutaj swoją premię, podział zysk&oacute;w, strukturę prowizji, opcje na akcje i zasady komitetu ds. Wynagrodzeń.</p>\n\n\n                    <p>Jako pracownik {app_name} będziesz mieć prawo do kr&oacute;tkich imiennych świadczeń, takich jak ubezpieczenie zdrowotne, plan akcji, ubezpieczenie dentystyczne itp.</p>\n\n                    <p>Zaznacz, że zgadzasz się z tymi warunkami i zaakceptuj tę ofertę, podpisując i datując tę ​​umowę w dniu {offer_expiration_date} lub wcześniej.</p>\n\n                    <p>Z poważaniem,</p>\n\n                    <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(12, 'pt', '<p style="text-align: center;"><span style="font-size: 18pt;"><strong>Carta de oferta</strong></span></p>\n\n\n                    <p>Prezado {applicant_name},</p>\n\n\n                    <p>{app_name} tem o prazer de trazer voc&ecirc; a bordo como {job_title}.</p>\n\n\n                    <p>Faltavam apenas algumas formalidades para come&ccedil;ar a trabalhar. Por favor, reserve um tempo para revisar nossa oferta formal. Ele inclui detalhes importantes sobre sua remunera&ccedil;&atilde;o, benef&iacute;cios e os termos e condi&ccedil;&otilde;es de seu emprego previsto com {app_name}.</p>\n\n\n                    <p>{app_name} est&aacute; oferecendo um {job_type}. posi&ccedil;&atilde;o para voc&ecirc; como {job_title}, reportando-se ao gerente/supervisor imediato a partir de {start_date} em {workplace_location}. As horas de trabalho previstas s&atilde;o {days_of_week}.</p>\n\n\n                    <p>Nesta posi&ccedil;&atilde;o, {app_name} est&aacute; oferecendo para voc&ecirc; come&ccedil;ar com uma taxa de pagamento de {salary} por {salary_type}. Voc&ecirc; ser&aacute; pago em uma base de {salary_duration}.</p>\n\n\n                    <p>Como parte de sua remunera&ccedil;&atilde;o, tamb&eacute;m oferecida, se aplic&aacute;vel, voc&ecirc; descrever&aacute; seu b&ocirc;nus, participa&ccedil;&atilde;o nos lucros, estrutura de comiss&otilde;es, op&ccedil;&otilde;es de a&ccedil;&otilde;es e regras do comit&ecirc; de remunera&ccedil;&atilde;o aqui.</p>\n\n\n                    <p>Como funcion&aacute;rio de {app_name} , voc&ecirc; se qualificar&aacute; para benef&iacute;cios de nome breve, como seguro sa&uacute;de, plano de a&ccedil;&otilde;es, seguro odontol&oacute;gico etc.</p>\n\n\n                    <p>Indique sua concord&acirc;ncia com estes termos e aceite esta oferta assinando e datando este contrato em ou antes de {offer_expiration_date}.</p>\n\n\n                    <p>Sinceramente,</p>\n\n                    <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(13, 'ru', '<p style="text-align: center;"><span style="font-size: 18pt;"><strong>Письмо с предложением</strong></span></p>\n\n\n                    <p>Уважаемый {applicant_name!</p>\n\n\n                    <p>{app_name} рад предложить вам присоединиться к нам в качестве {job_title}.</p>\n\n\n                    <p>Осталось всего несколько формальностей, чтобы приступить к работе. Пожалуйста, найдите время, чтобы ознакомиться с нашим официальным предложением. В нем содержится важная информация о вашем вознаграждении, льготах и ​​условиях вашего предполагаемого трудоустройства в {app_name}.</p>\n\n\n                    <p>{app_name} предлагает {job_type}. должность для вас как {job_title}, подчинение непосредственному руководителю/руководителю начиная с {start_date} в {workplace_location}. Ожидаемое рабочее время: {days_of_week}.</p>\n\n\n                    <p>На этой должности {app_name} предлагает вам начать работу со ставкой заработной платы {salary} за {salary_type}. Вам будут платить на основе {salary_duration}.</p>\n\n\n                    <p>В рамках вашего вознаграждения мы также предлагаем, если это применимо, вы описываете свой бонус, распределение прибыли, структуру комиссионных, опционы на акции и правила компенсационного комитета здесь.</p>\n\n\n                    <p>Как сотрудник {app_name}, вы будете иметь право на краткосрочные льготы, такие как медицинская страховка, план акций, стоматологическая страховка и т. д.</p>\n\n\n                    <p>Пожалуйста, подтвердите свое согласие с этими условиями и примите это предложение, подписав и датировав это соглашение не позднее {offer_expiration_date}.</p>\n\n\n                    <p>Искренне,</p>\n                    <p>{app_name}</p>', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55');
/*!40000 ALTER TABLE `generate_offer_letters` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.genrate_payslip_options
CREATE TABLE IF NOT EXISTS `genrate_payslip_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.genrate_payslip_options: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `genrate_payslip_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `genrate_payslip_options` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.goals
CREATE TABLE IF NOT EXISTS `goals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `is_display` int NOT NULL DEFAULT '1',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.goals: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;
INSERT INTO `goals` (`id`, `name`, `type`, `from`, `to`, `amount`, `is_display`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'VENTAS JULIO', '1', '2022-07-01', '2022-07-31', 300, 1, 2, '2022-10-27 18:11:32', '2022-10-27 18:11:32');
/*!40000 ALTER TABLE `goals` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.goal_trackings
CREATE TABLE IF NOT EXISTS `goal_trackings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch` int NOT NULL,
  `goal_type` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_achievement` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `progress` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.goal_trackings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `goal_trackings` DISABLE KEYS */;
/*!40000 ALTER TABLE `goal_trackings` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.goal_types
CREATE TABLE IF NOT EXISTS `goal_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.goal_types: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `goal_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `goal_types` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.holidays
CREATE TABLE IF NOT EXISTS `holidays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `end_date` date NOT NULL,
  `occasion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.holidays: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.indicators
CREATE TABLE IF NOT EXISTS `indicators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch` int NOT NULL DEFAULT '0',
  `department` int NOT NULL DEFAULT '0',
  `designation` int NOT NULL DEFAULT '0',
  `rating` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_experience` int NOT NULL DEFAULT '0',
  `marketing` int NOT NULL DEFAULT '0',
  `administration` int NOT NULL DEFAULT '0',
  `professionalism` int NOT NULL DEFAULT '0',
  `integrity` int NOT NULL DEFAULT '0',
  `attendance` int NOT NULL DEFAULT '0',
  `created_user` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.indicators: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `indicators` DISABLE KEYS */;
/*!40000 ALTER TABLE `indicators` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.interview_schedules
CREATE TABLE IF NOT EXISTS `interview_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate` int NOT NULL,
  `employee` int NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `employee_response` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.interview_schedules: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `interview_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview_schedules` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.invoices
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int NOT NULL,
  `ref_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `shipping_display` int NOT NULL DEFAULT '1',
  `discount_apply` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.invoices: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` (`id`, `invoice_id`, `customer_id`, `issue_date`, `due_date`, `send_date`, `category_id`, `ref_number`, `status`, `shipping_display`, `discount_apply`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2022-06-08', '2022-10-28', NULL, 3, '00022', 0, 1, 0, 2, '2022-10-27 17:24:15', '2022-10-27 17:24:15'),
	(2, 2, 2, '2022-06-15', '2022-10-31', NULL, 3, '00023', 0, 1, 0, 2, '2022-10-27 17:26:05', '2022-10-27 17:26:05');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.invoice_payments
CREATE TABLE IF NOT EXISTS `invoice_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int NOT NULL,
  `payment_method` int NOT NULL,
  `receipt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Manually',
  `txn_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_receipt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.invoice_payments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `invoice_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_payments` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.invoice_products
CREATE TABLE IF NOT EXISTS `invoice_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `tax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.invoice_products: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `invoice_products` DISABLE KEYS */;
INSERT INTO `invoice_products` (`id`, `invoice_id`, `product_id`, `quantity`, `tax`, `discount`, `price`, `description`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 3, '1', 0.00, 15.00, 'PALA TRADICIONAL', '2022-10-27 17:24:15', '2022-10-27 17:24:15'),
	(2, 1, 1, 2, '1', 0.00, 12.00, NULL, '2022-10-27 17:24:15', '2022-10-27 17:24:15'),
	(3, 2, 2, 2, '1', 0.00, 15.00, 'CEMENTO DE 100 LBS', '2022-10-27 17:26:05', '2022-10-27 17:26:05'),
	(4, 2, 1, 1, '1', 0.00, 12.00, NULL, '2022-10-27 17:26:05', '2022-10-27 17:26:05'),
	(5, 2, 2, 2, '1', 0.00, 15.00, NULL, '2022-10-27 17:26:05', '2022-10-27 17:26:05');
/*!40000 ALTER TABLE `invoice_products` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.ip_restricts
CREATE TABLE IF NOT EXISTS `ip_restricts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.ip_restricts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ip_restricts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_restricts` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `requirement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `branch` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `skill` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `position` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_question` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.job_applications
CREATE TABLE IF NOT EXISTS `job_applications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stage` int NOT NULL DEFAULT '1',
  `order` int NOT NULL DEFAULT '0',
  `skill` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` int NOT NULL DEFAULT '0',
  `is_archive` int NOT NULL DEFAULT '0',
  `custom_question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.job_applications: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.job_application_notes
CREATE TABLE IF NOT EXISTS `job_application_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `application_id` int NOT NULL DEFAULT '0',
  `note_created` int NOT NULL DEFAULT '0',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.job_application_notes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `job_application_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_application_notes` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.job_categories
CREATE TABLE IF NOT EXISTS `job_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.job_categories: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `job_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_categories` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.job_on_boards
CREATE TABLE IF NOT EXISTS `job_on_boards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `application` int NOT NULL,
  `joining_date` date DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `convert_to_employee` int NOT NULL DEFAULT '0',
  `salary_duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `days_of_week` int DEFAULT NULL,
  `job_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.job_on_boards: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `job_on_boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_on_boards` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.job_stages
CREATE TABLE IF NOT EXISTS `job_stages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.job_stages: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `job_stages` DISABLE KEYS */;
INSERT INTO `job_stages` (`id`, `title`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Applied', 0, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(2, 'Phone Screen', 0, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(3, 'Interview', 0, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(4, 'Hired', 0, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(5, 'Rejected', 0, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54');
/*!40000 ALTER TABLE `job_stages` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.joining_letters
CREATE TABLE IF NOT EXISTS `joining_letters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.joining_letters: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `joining_letters` DISABLE KEYS */;
INSERT INTO `joining_letters` (`id`, `lang`, `content`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'ar', '<h2 style="text-align: center;"><strong>خطاب الانضمام</strong></h2>\n            <p>{date}</p>\n            <p>{employee_name}</p>\n            <p>{address}</p>\n            <p>الموضوع: موعد لوظيفة {designation}</p>\n            <p>عزيزي {employee_name} ،</p>\n            <p>يسعدنا أن نقدم لك منصب {designation} مع {app_name} "الشركة" وفقًا للشروط التالية و</p>\n            <p>الظروف:</p>\n            <p>1. بدء العمل</p>\n            <p>سيصبح عملك ساريًا اعتبارًا من {start_date}</p>\n            <p>2. المسمى الوظيفي</p>\n            <p>سيكون المسمى الوظيفي الخاص بك هو {designation}.</p>\n            <p>3. الراتب</p>\n            <p>سيكون راتبك والمزايا الأخرى على النحو المبين في الجدول 1 ، طيه.</p>\n            <p>4. مكان الإرسال</p>\n            <p>سيتم إرسالك إلى {branch}. ومع ذلك ، قد يُطلب منك العمل في أي مكان عمل تمتلكه الشركة ، أو</p>\n            <p>قد تحصل لاحقًا.</p>\n            <p>5. ساعات العمل</p>\n            <p>أيام العمل العادية هي من الاثنين إلى الجمعة. سيُطلب منك العمل لساعات حسب الضرورة لـ</p>\n            <p>أداء واجباتك على النحو الصحيح تجاه الشركة. ساعات العمل العادية من {start_time} إلى {end_time} وأنت</p>\n            <p>من المتوقع أن يعمل ما لا يقل عن {total_hours} ساعة كل أسبوع ، وإذا لزم الأمر لساعات إضافية اعتمادًا على</p>\n            <p>المسؤوليات.</p>\n            <p>6. الإجازة / العطل</p>\n            <p>6.1 يحق لك الحصول على إجازة غير رسمية مدتها 12 يومًا.</p>\n            <p>6.2 يحق لك الحصول على إجازة مرضية مدفوعة الأجر لمدة 12 يوم عمل.</p>\n            <p>6.3 تخطر الشركة بقائمة الإجازات المعلنة في بداية كل عام.</p>\n            <p>7. طبيعة الواجبات</p>\n            <p>ستقوم بأداء أفضل ما لديك من واجبات متأصلة في منصبك ومهام إضافية مثل الشركة</p>\n            <p>قد يدعوك لأداء ، من وقت لآخر. واجباتك المحددة منصوص عليها في الجدول الثاني بهذه الرسالة.</p>\n            <p>8. ممتلكات الشركة</p>\n            <p>ستحافظ دائمًا على ممتلكات الشركة في حالة جيدة ، والتي قد يتم تكليفك بها للاستخدام الرسمي خلال فترة عملها</p>\n            <p>عملك ، ويجب أن تعيد جميع هذه الممتلكات إلى الشركة قبل التخلي عن الرسوم الخاصة بك ، وإلا فإن التكلفة</p>\n            <p>نفس الشيء سوف تسترده منك الشركة.</p>\n            <p>9. الاقتراض / قبول الهدايا</p>\n            <p>لن تقترض أو تقبل أي أموال أو هدية أو مكافأة أو تعويض مقابل مكاسبك الشخصية من أو تضع نفسك بأي طريقة أخرى</p>\n            <p>بموجب التزام مالي تجاه أي شخص / عميل قد تكون لديك تعاملات رسمية معه.</p>\n            <p>10. الإنهاء</p>\n            <p>10.1 يمكن للشركة إنهاء موعدك ، دون أي سبب ، من خلال إعطائك ما لا يقل عن [إشعار] قبل أشهر</p>\n            <p>إشعار خطي أو راتب بدلاً منه. لغرض هذا البند ، يقصد بالراتب المرتب الأساسي.</p>\n            <p>10.2 إنهاء عملك مع الشركة ، دون أي سبب ، من خلال تقديم ما لا يقل عن إشعار الموظف</p>\n            <p>أشهر الإخطار أو الراتب عن الفترة غير المحفوظة ، المتبقية بعد تعديل الإجازات المعلقة ، كما في التاريخ.</p>\n            <p>10.3 تحتفظ الشركة بالحق في إنهاء عملك بإيجاز دون أي فترة إشعار أو مدفوعات إنهاء</p>\n            <p>إذا كان لديه سبب معقول للاعتقاد بأنك مذنب بسوء السلوك أو الإهمال ، أو ارتكبت أي خرق جوهري لـ</p>\n            <p>العقد ، أو تسبب في أي خسارة للشركة.</p>\n            <p>10. 4 عند إنهاء عملك لأي سبب من الأسباب ، ستعيد إلى الشركة جميع ممتلكاتك ؛ المستندات و</p>\n            <p>الأوراق الأصلية ونسخها ، بما في ذلك أي عينات ، وأدبيات ، وعقود ، وسجلات ، وقوائم ، ورسومات ، ومخططات ،</p>\n            <p>الرسائل والملاحظات والبيانات وما شابه ذلك ؛ والمعلومات السرية التي بحوزتك أو تحت سيطرتك والمتعلقة بك</p>\n            <p>التوظيف أو الشؤون التجارية للعملاء.</p>\n            <p>11. المعلومات السرية</p>\n            <p>11. 1 أثناء عملك في الشركة ، سوف تكرس وقتك واهتمامك ومهارتك كلها بأفضل ما لديك من قدرات</p>\n            <p>عملها. لا يجوز لك ، بشكل مباشر أو غير مباشر ، الانخراط أو الارتباط بنفسك ، أو الارتباط به ، أو القلق ، أو التوظيف ، أو</p>\n            <p>الوقت أو متابعة أي دورة دراسية على الإطلاق ، دون الحصول على إذن مسبق من الشركة أو الانخراط في أي عمل آخر أو</p>\n            <p>الأنشطة أو أي وظيفة أخرى أو العمل بدوام جزئي أو متابعة أي دورة دراسية على الإطلاق ، دون إذن مسبق من</p>\n            <p>شركة.</p>\n            <p>11. المعلومات السرية</p>\n            <p>11. 1 أثناء عملك في الشركة ، سوف تكرس وقتك واهتمامك ومهارتك كلها بأفضل ما لديك من قدرات</p>\n            <p>عملها. لا يجوز لك ، بشكل مباشر أو غير مباشر ، الانخراط أو الارتباط بنفسك ، أو الارتباط به ، أو القلق ، أو التوظيف ، أو</p>\n            <p>الوقت أو متابعة أي دورة دراسية على الإطلاق ، دون الحصول على إذن مسبق من الشركة أو الانخراط في أي عمل آخر أو</p>\n            <p>الأنشطة أو أي وظيفة أخرى أو العمل بدوام جزئي أو متابعة أي دورة دراسية على الإطلاق ، دون إذن مسبق من</p>\n            <p>شركة.</p>\n            <p>11.2 يجب عليك دائمًا الحفاظ على أعلى درجة من السرية والحفاظ على سرية السجلات والوثائق وغيرها</p>\n            <p>المعلومات السرية المتعلقة بأعمال الشركة والتي قد تكون معروفة لك أو مخولة لك بأي وسيلة</p>\n            <p>ولن تستخدم هذه السجلات والمستندات والمعلومات إلا بالطريقة المصرح بها حسب الأصول لصالح الشركة. إلى عن على</p>\n            <p>أغراض هذا البند "المعلومات السرية" تعني المعلومات المتعلقة بأعمال الشركة وعملائها</p>\n            <p>التي لا تتوفر لعامة الناس والتي قد تتعلمها أثناء عملك. هذا يشمل،</p>\n            <p>على سبيل المثال لا الحصر ، المعلومات المتعلقة بالمنظمة وقوائم العملاء وسياسات التوظيف والموظفين والمعلومات</p>\n            <p>حول منتجات الشركة وعملياتها بما في ذلك الأفكار والمفاهيم والإسقاطات والتكنولوجيا والكتيبات والرسم والتصاميم ،</p>\n            <p>المواصفات وجميع الأوراق والسير الذاتية والسجلات والمستندات الأخرى التي تحتوي على هذه المعلومات السرية.</p>\n            <p>11.3 لن تقوم في أي وقت بإزالة أي معلومات سرية من المكتب دون إذن.</p>\n            \n            <p>11.4 واجبك في الحماية وعدم الإفشاء</p>\n            \n            <p>تظل المعلومات السرية سارية بعد انتهاء أو إنهاء هذه الاتفاقية و / أو عملك مع الشركة.</p>\n            \n            <p>11.5 سوف يجعلك خرق شروط هذا البند عرضة للفصل بإجراءات موجزة بموجب الفقرة أعلاه بالإضافة إلى أي</p>\n            \n            <p>أي تعويض آخر قد يكون للشركة ضدك في القانون.</p>\n            \n            <p>12. الإخطارات</p>\n            \n            <p>يجوز لك إرسال إخطارات إلى الشركة على عنوان مكتبها المسجل. يمكن أن ترسل لك الشركة إشعارات على</p>\n            \n            <p>العنوان الذي أشرت إليه في السجلات الرسمية.</p>\n            \n            \n            \n            <p>13. تطبيق سياسة الشركة</p>\n            \n            <p>يحق للشركة تقديم إعلانات السياسة من وقت لآخر فيما يتعلق بمسائل مثل استحقاق الإجازة والأمومة</p>\n            \n            <p>الإجازة ، ومزايا الموظفين ، وساعات العمل ، وسياسات النقل ، وما إلى ذلك ، ويمكن تغييرها من وقت لآخر وفقًا لتقديرها الخاص.</p>\n            \n            <p>جميع قرارات سياسة الشركة هذه ملزمة لك ويجب أن تلغي هذه الاتفاقية إلى هذا الحد.</p>\n            \n            \n            \n            <p>14. القانون الحاكم / الاختصاص القضائي</p>\n            \n            <p>يخضع عملك في الشركة لقوانين الدولة. تخضع جميع النزاعات للاختصاص القضائي للمحكمة العليا</p>\n            \n            <p>غوجارات فقط.</p>\n            \n            \n            \n            <p>15. قبول عرضنا</p>\n            \n            <p>يرجى تأكيد قبولك لعقد العمل هذا من خلال التوقيع وإعادة النسخة المكررة.</p>\n            \n            \n            \n            <p>نرحب بكم ونتطلع إلى تلقي موافقتكم والعمل معكم.</p>\n            \n            \n            \n            <p>تفضلوا بقبول فائق الاحترام،</p>\n            \n            <p>{app_name}</p>\n            \n            <p>{date}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(2, 'da', '<h3 style="text-align: center;"><strong>Tilslutningsbrev</strong></h3>\n            \n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{address}</p>\n            \n            <p>Emne: Udn&aelig;vnelse til stillingen som {designation}</p>\n            \n            \n            \n            \n            \n            \n            \n            <p>K&aelig;re {employee_name}</p>\n            \n            \n            \n            <p>Vi er glade for at kunne tilbyde dig stillingen som {designation} hos {app_name} "Virksomheden" p&aring; f&oslash;lgende vilk&aring;r og</p>\n            \n            <p>betingelser:</p>\n            \n            \n            <p>1. P&aring;begyndelse af ans&aelig;ttelse</p>\n            \n            <p>Din ans&aelig;ttelse tr&aelig;der i kraft fra {start_date}</p>\n            \n            \n            \n            <p>2. Jobtitel</p>\n            \n            \n            <p>Din jobtitel vil v&aelig;re {designation}.</p>\n            \n            \n            \n            <p>3. L&oslash;n</p>\n            \n            <p>Din l&oslash;n og andre goder vil v&aelig;re som angivet i skema 1, hertil.</p>\n            \n            \n            \n            <p>4. Udstationeringssted</p>\n            \n            <p>Du vil blive sl&aring;et op p&aring; {branch}. Du kan dog blive bedt om at arbejde p&aring; ethvert forretningssted, som virksomheden har, eller</p>\n            \n            <p>senere kan erhverve.</p>\n            \n            \n            <p>5. Arbejdstimer</p>\n            \n            <p>De normale arbejdsdage er mandag til fredag. Du vil blive forpligtet til at arbejde i de timer, som er n&oslash;dvendige for</p>\n            \n            <p>beh&oslash;rig varetagelse af dine pligter over for virksomheden. Den normale arbejdstid er fra {start_time} til {end_time}, og det er du</p>\n            \n            <p>forventes at arbejde ikke mindre end {total_hours} timer hver uge, og om n&oslash;dvendigt yderligere timer afh&aelig;ngigt af din</p>\n            \n            <p>ansvar.</p>\n            \n            \n            \n            <p>6. Orlov/Ferie</p>\n            \n            <p>6.1 Du har ret til tilf&aelig;ldig ferie p&aring; 12 dage.</p>\n            \n            <p>6.2 Du har ret til 12 arbejdsdages sygefrav&aelig;r med l&oslash;n.</p>\n            \n            <p>6.3 Virksomheden skal meddele en liste over erkl&aelig;rede helligdage i begyndelsen af ​​hvert &aring;r.</p>\n            \n            \n            \n            <p>7. Arbejdsopgavernes art</p>\n            \n            <p>Du vil efter bedste evne udf&oslash;re alle de opgaver, der er iboende i din stilling og s&aring;danne yderligere opgaver som virksomheden</p>\n            \n            <p>kan opfordre dig til at optr&aelig;de, fra tid til anden. Dine specifikke pligter er beskrevet i skema II hertil.</p>\n            \n            \n            <p>8. Firmaejendom</p>\n            \n            <p>Du vil altid vedligeholde virksomhedens ejendom i god stand, som kan blive overdraget til dig til officiel brug i l&oslash;bet af</p>\n            \n            <p>din ans&aelig;ttelse, og skal returnere al s&aring;dan ejendom til virksomheden, f&oslash;r du opgiver din afgift, i modsat fald vil omkostningerne</p>\n            \n            <p>af samme vil blive inddrevet fra dig af virksomheden.</p>\n            \n            \n            \n            <p>9. L&aring;n/modtagelse af gaver</p>\n            \n            <p>Du vil ikke l&aring;ne eller acceptere nogen penge, gave, bel&oslash;nning eller kompensation for dine personlige gevinster fra eller p&aring; anden m&aring;de placere dig selv</p>\n            \n            <p>under en &oslash;konomisk forpligtelse over for enhver person/kunde, som du m&aring;tte have officielle forbindelser med.</p>\n            \n            <p>10. Opsigelse</p>\n            \n            <p>10.1 Din ans&aelig;ttelse kan opsiges af virksomheden uden nogen grund ved at give dig mindst [varsel] m&aring;neder f&oslash;r</p>\n            \n            <p>skriftligt varsel eller l&oslash;n i stedet herfor. Ved l&oslash;n forst&aring;s i denne paragraf grundl&oslash;n.</p>\n            \n            <p>10.2 Du kan opsige dit ans&aelig;ttelsesforhold i virksomheden uden nogen grund ved at give mindst [Medarbejdermeddelelse]</p>\n            \n            <p>m&aring;neders forudg&aring;ende varsel eller l&oslash;n for den ikke-opsparede periode, tilbage efter regulering af afventende orlov, som p&aring; dato.</p>\n            \n            <p>10.3 Virksomheden forbeholder sig retten til at opsige dit ans&aelig;ttelsesforhold midlertidigt uden opsigelsesfrist eller opsigelsesbetaling</p>\n            \n            <p>hvis den har rimelig grund til at tro, at du er skyldig i forseelse eller uagtsomhed, eller har beg&aring;et et grundl&aelig;ggende brud p&aring;</p>\n            \n            <p>kontrakt, eller for&aring;rsaget tab for virksomheden.</p>\n            \n            <p>10. 4 Ved oph&oslash;r af din ans&aelig;ttelse uanset &aring;rsag, vil du returnere al ejendom til virksomheden; dokumenter, og</p>\n            \n            <p>papir, b&aring;de originale og kopier heraf, inklusive pr&oslash;ver, litteratur, kontrakter, optegnelser, lister, tegninger, tegninger,</p>\n            \n            <p>breve, notater, data og lignende; og fortrolige oplysninger, i din besiddelse eller under din kontrol vedr&oslash;rende din</p>\n            \n            <p>ans&aelig;ttelse eller til kunders forretningsforhold.</p>\n            <p>11. Fortrolige oplysninger</p>\n            \n            <p>11. 1 Under din ans&aelig;ttelse i virksomheden vil du bruge al din tid, opm&aelig;rksomhed og dygtighed efter bedste evne til</p>\n            \n            <p>sin virksomhed. Du m&aring; ikke, direkte eller indirekte, engagere eller associere dig med, v&aelig;re forbundet med, bekymret, ansat eller</p>\n            \n            <p>tid eller forf&oslash;lge et hvilket som helst studieforl&oslash;b uden forudg&aring;ende tilladelse fra virksomheden. involveret i anden virksomhed eller</p>\n            \n            <p>aktiviteter eller enhver anden stilling eller arbejde p&aring; deltid eller forf&oslash;lge ethvert studieforl&oslash;b uden forudg&aring;ende tilladelse fra</p>\n            \n            <p>Selskab.</p>\n            <p>11.2 Du skal altid opretholde den h&oslash;jeste grad af fortrolighed og opbevare optegnelser, dokumenter og andre fortrolige oplysninger.</p>\n            \n            <p>Fortrolige oplysninger vedr&oslash;rende virksomhedens virksomhed, som kan v&aelig;re kendt af dig eller betroet dig p&aring; nogen m&aring;de</p>\n            \n            <p>og du vil kun bruge s&aring;danne optegnelser, dokumenter og oplysninger p&aring; en beh&oslash;rigt autoriseret m&aring;de i virksomhedens interesse. Til</p>\n            \n            <p>form&aring;lene med denne paragraf "Fortrolige oplysninger" betyder oplysninger om virksomhedens og dets kunders forretning</p>\n            \n            <p>som ikke er tilg&aelig;ngelig for offentligheden, og som du kan l&aelig;re i l&oslash;bet af din ans&aelig;ttelse. Dette inkluderer,</p>\n            \n            <p>men er ikke begr&aelig;nset til information vedr&oslash;rende organisationen, dens kundelister, ans&aelig;ttelsespolitikker, personale og information</p>\n            \n            <p>om virksomhedens produkter, processer, herunder ideer, koncepter, projektioner, teknologi, manualer, tegning, design,</p>\n            \n            <p>specifikationer og alle papirer, CVer, optegnelser og andre dokumenter, der indeholder s&aring;danne fortrolige oplysninger.</p>\n            \n            <p>11.3 Du vil p&aring; intet tidspunkt fjerne fortrolige oplysninger fra kontoret uden tilladelse.</p>\n            \n            <p>11.4 Din pligt til at beskytte og ikke oplyse</p>\n            \n            <p>e Fortrolige oplysninger vil overleve udl&oslash;bet eller opsigelsen af ​​denne aftale og/eller din ans&aelig;ttelse hos virksomheden.</p>\n            \n            <p>11.5 Overtr&aelig;delse af betingelserne i denne klausul vil g&oslash;re dig ansvarlig for midlertidig afskedigelse i henhold til klausulen ovenfor ud over evt.</p>\n            \n            <p>andre retsmidler, som virksomheden m&aring;tte have mod dig i henhold til loven.</p>\n            <p>12. Meddelelser</p>\n            \n            <p>Meddelelser kan gives af dig til virksomheden p&aring; dets registrerede kontoradresse. Meddelelser kan gives af virksomheden til dig p&aring;</p>\n            \n            <p>den adresse, du har angivet i de officielle optegnelser.</p>\n            \n            \n            \n            <p>13. Anvendelse af virksomhedens politik</p>\n            \n            <p>Virksomheden er berettiget til fra tid til anden at afgive politiske erkl&aelig;ringer vedr&oslash;rende sager som ret til orlov, barsel</p>\n            \n            <p>orlov, ansattes ydelser, arbejdstider, overf&oslash;rselspolitikker osv., og kan &aelig;ndre det samme fra tid til anden efter eget sk&oslash;n.</p>\n            \n            <p>Alle s&aring;danne politiske beslutninger fra virksomheden er bindende for dig og tilsides&aelig;tter denne aftale i det omfang.</p>\n            \n            \n            \n            <p>14. G&aelig;ldende lov/Jurisdiktion</p>\n            \n            <p>Din ans&aelig;ttelse hos virksomheden er underlagt landets love. Alle tvister er underlagt High Courts jurisdiktion</p>\n            \n            <p>Kun Gujarat.</p>\n            \n            \n            \n            <p>15. Accept af vores tilbud</p>\n            \n            <p>Bekr&aelig;ft venligst din accept af denne ans&aelig;ttelseskontrakt ved at underskrive og returnere kopien.</p>\n            \n            \n            \n            <p>Vi byder dig velkommen og ser frem til at modtage din accept og til at arbejde sammen med dig.</p>\n            \n            \n            \n            <p>Venlig hilsen,</p>\n            \n            <p>{app_name}</p>\n            \n            <p>{date}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(3, 'de', '<h3 style="text-align: center;"><strong>Beitrittsbrief</strong></h3>\n            \n            <p>{date}</p>\n            <p>{employee_name}</p>\n            <p>{address}</p>\n            \n            \n            \n            <p>Betreff: Ernennung f&uuml;r die Stelle von {designation}</p>\n            \n            \n            \n            \n            \n            \n            \n            <p>Sehr geehrter {employee_name},</p>\n            \n            \n            \n            <p>Wir freuen uns, Ihnen die Position von {designation} bei {app_name} dem &bdquo;Unternehmen&ldquo; zu den folgenden Bedingungen anbieten zu k&ouml;nnen</p>\n            \n            <p>Bedingungen:</p>\n            \n            \n            <p>1. Aufnahme des Arbeitsverh&auml;ltnisses</p>\n            \n            <p>Ihre Anstellung gilt ab dem {start_date}</p>\n            \n            \n            <p>2. Berufsbezeichnung</p>\n            \n            <p>Ihre Berufsbezeichnung lautet {designation}.</p>\n            \n            \n            <p>3. Gehalt</p>\n            \n            <p>Ihr Gehalt und andere Leistungen sind in Anhang 1 zu diesem Dokument aufgef&uuml;hrt.</p>\n            \n            \n            <p>4. Postort</p>\n            \n            <p>Sie werden bei {branch} eingestellt. Es kann jedoch erforderlich sein, dass Sie an jedem Gesch&auml;ftssitz arbeiten, den das Unternehmen hat, oder</p>\n            \n            <p>sp&auml;ter erwerben kann.</p>\n            \n            \n            <p>5. Arbeitszeit</p>\n            <p>Die normalen Arbeitstage sind Montag bis Freitag. Sie m&uuml;ssen so viele Stunden arbeiten, wie es f&uuml;r die erforderlich ist</p>\n            <p>ordnungsgem&auml;&szlig;e Erf&uuml;llung Ihrer Pflichten gegen&uuml;ber dem Unternehmen. Die normalen Arbeitszeiten sind von {start_time} bis {end_time} und Sie sind es</p>\n            <p>voraussichtlich nicht weniger als {total_hours} Stunden pro Woche arbeiten, und falls erforderlich, abh&auml;ngig von Ihren zus&auml;tzlichen Stunden</p>\n            <p>Verantwortlichkeiten.</p>\n            \n            \n            \n            <p>6. Urlaub/Urlaub</p>\n            \n            <p>6.1 Sie haben Anspruch auf Freizeiturlaub von 12 Tagen.</p>\n            \n            <p>6.2 Sie haben Anspruch auf 12 Arbeitstage bezahlten Krankenurlaub.</p>\n            \n            <p>6.3 Das Unternehmen teilt zu Beginn jedes Jahres eine Liste der erkl&auml;rten Feiertage mit.</p>\n            \n            \n            \n            <p>7. Art der Pflichten</p>\n            \n            <p>Sie werden alle Aufgaben, die mit Ihrer Funktion verbunden sind, sowie alle zus&auml;tzlichen Aufgaben als Unternehmen nach besten Kr&auml;ften erf&uuml;llen</p>\n            \n            <p>kann Sie von Zeit zu Zeit zur Leistung auffordern. Ihre spezifischen Pflichten sind in Anhang II zu diesem Dokument aufgef&uuml;hrt.</p>\n            \n            \n            \n            <p>8. Firmeneigentum</p>\n            \n            <p>Sie werden das Firmeneigentum, das Ihnen im Laufe der Zeit f&uuml;r offizielle Zwecke anvertraut werden kann, stets in gutem Zustand halten</p>\n            \n            <p>Ihrer Anstellung und muss all dieses Eigentum an das Unternehmen zur&uuml;ckgeben, bevor Sie Ihre Geb&uuml;hr aufgeben, andernfalls die Kosten</p>\n            \n            <p>derselben werden von der Gesellschaft von Ihnen zur&uuml;ckgefordert.</p>\n            \n            \n            \n            <p>9. Leihen/Annehmen von Geschenken</p>\n            \n            <p>Sie werden kein Geld, Geschenk, keine Belohnung oder Entsch&auml;digung f&uuml;r Ihre pers&ouml;nlichen Gewinne von sich leihen oder annehmen oder sich anderweitig platzieren</p>\n            \n            <p>unter finanzieller Verpflichtung gegen&uuml;ber Personen/Kunden, mit denen Sie m&ouml;glicherweise dienstliche Beziehungen unterhalten.</p>\n            \n            <p>10. K&uuml;ndigung</p>\n            \n            <p>10.1 Ihre Ernennung kann vom Unternehmen ohne Angabe von Gr&uuml;nden gek&uuml;ndigt werden, indem es Ihnen mindestens [K&uuml;ndigung] Monate im Voraus mitteilt</p>\n            \n            <p>schriftliche K&uuml;ndigung oder Gehalt statt dessen. Gehalt im Sinne dieser Klausel bedeutet Grundgehalt.</p>\n            \n            <p>10.2 Sie k&ouml;nnen Ihre Anstellung beim Unternehmen ohne Angabe von Gr&uuml;nden k&uuml;ndigen, indem Sie mindestens [Mitarbeitermitteilung]</p>\n            \n            <p>K&uuml;ndigungsfrist von Monaten oder Gehalt f&uuml;r den nicht angesparten Zeitraum, der nach Anpassung der anstehenden Urlaubstage &uuml;brig bleibt, zum Stichtag.</p>\n            \n            <p>10.3 Das Unternehmen beh&auml;lt sich das Recht vor, Ihr Arbeitsverh&auml;ltnis ohne K&uuml;ndigungsfrist oder Abfindungszahlung fristlos zu k&uuml;ndigen</p>\n            \n            <p>wenn es begr&uuml;ndeten Anlass zu der Annahme gibt, dass Sie sich eines Fehlverhaltens oder einer Fahrl&auml;ssigkeit schuldig gemacht haben oder einen wesentlichen Versto&szlig; begangen haben</p>\n            \n            <p>oder dem Unternehmen Verluste verursacht haben.</p>\n            \n            <p>10. 4 Bei Beendigung Ihres Besch&auml;ftigungsverh&auml;ltnisses, aus welchem ​​Grund auch immer, werden Sie s&auml;mtliches Eigentum an das Unternehmen zur&uuml;ckgeben; Dokumente und</p>\n            \n            <p>Papier, sowohl Original als auch Kopien davon, einschlie&szlig;lich aller Muster, Literatur, Vertr&auml;ge, Aufzeichnungen, Listen, Zeichnungen, Blaupausen,</p>\n            \n            <p>Briefe, Notizen, Daten und dergleichen; und vertrauliche Informationen, die sich in Ihrem Besitz oder unter Ihrer Kontrolle befinden und sich auf Sie beziehen</p>\n            \n            <p>Besch&auml;ftigung oder f&uuml;r die gesch&auml;ftlichen Angelegenheiten der Kunden.</p>\n            \n            <p>11. Confidential Information</p>\n            \n            <p>11. 1 During your employment with the Company you will devote your whole time, attention, and skill to the best of your ability for</p>\n            \n            <p>its business. You shall not, directly or indirectly, engage or associate yourself with, be connected with, concerned, employed, or</p>\n            \n            <p>time or pursue any course of study whatsoever, without the prior permission of the Company.engaged in any other business or</p>\n            \n            <p>activities or any other post or work part-time or pursue any course of study whatsoever, without the prior permission of the</p>\n            \n            <p>Company.</p>\n            \n            <p>11.2 You must always maintain the highest degree of confidentiality and keep as confidential the records, documents, and other&nbsp;</p>\n            \n            <p>Confidential Information relating to the business of the Company which may be known to you or confided in you by any means</p>\n            \n            <p>and you will use such records, documents and information only in a duly authorized manner in the interest of the Company. For</p>\n            \n            <p>the purposes of this clause &lsquo;Confidential Information&rsquo; means information about the Company&rsquo;s business and that of its customers</p>\n            \n            <p>which is not available to the general public and which may be learned by you in the course of your employment. This includes,</p>\n            \n            <p>but is not limited to, information relating to the organization, its customer lists, employment policies, personnel, and information</p>\n            \n            <p>about the Company&rsquo;s products, processes including ideas, concepts, projections, technology, manuals, drawing, designs,&nbsp;</p>\n            \n            <p>specifications, and all papers, resumes, records and other documents containing such Confidential Information.</p>\n            \n            <p>11.3 At no time, will you remove any Confidential Information from the office without permission.</p>\n            \n            <p>11.4 Your duty to safeguard and not disclos</p>\n            \n            <p>e Confidential Information will survive the expiration or termination of this Agreement and/or your employment with the Company.</p>\n            \n            <p>11.5 Breach of the conditions of this clause will render you liable to summary dismissal under the clause above in addition to any</p>\n            \n            <p>other remedy the Company may have against you in law.</p>\n            <p>12. Notices</p>\n            \n            <p>Notices may be given by you to the Company at its registered office address. Notices may be given by the Company to you at</p>\n            \n            <p>the address intimated by you in the official records.</p>\n            \n            \n            \n            <p>13. Applicability of Company Policy</p>\n            \n            <p>The Company shall be entitled to make policy declarations from time to time pertaining to matters like leave entitlement,maternity</p>\n            \n            <p>leave, employees&rsquo; benefits, working hours, transfer policies, etc., and may alter the same from time to time at its sole discretion.</p>\n            \n            <p>All such policy decisions of the Company shall be binding on you and shall override this Agreement to that&nbsp; extent.</p>\n            \n            \n            \n            <p>14. Governing Law/Jurisdiction</p>\n            \n            <p>Your employment with the Company is subject to Country laws. All disputes shall be subject to the jurisdiction of High Court</p>\n            \n            <p>Gujarat only.</p>\n            \n            \n            \n            <p>15. Acceptance of our offer</p>\n            \n            <p>Please confirm your acceptance of this Contract of Employment by signing and returning the duplicate copy.</p>\n            \n            \n            \n            <p>We welcome you and look forward to receiving your acceptance and to working with you.</p>\n            \n            \n            \n            <p>Yours Sincerely,</p>\n            \n            <p>{app_name}</p>\n            \n            <p>{date}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(4, 'en', '<h3 style="text-align: center;">Joining Letter</h3>\n            <p>{date}</p>\n            <p>{employee_name}</p>\n            <p>{address}</p>\n            <p>Subject: Appointment for the post of {designation}</p>\n            <p>Dear {employee_name},</p>\n            <p>We are pleased to offer you the position of {designation} with {app_name} theCompany on the following terms and</p>\n            <p>conditions:</p>\n            <p>1. Commencement of employment</p>\n            <p>Your employment will be effective, as of {start_date}</p>\n            <p>2. Job title</p>\n            <p>Your job title will be{designation}.</p>\n            <p>3. Salary</p>\n            <p>Your salary and other benefits will be as set out in Schedule 1, hereto.</p>\n            <p>4. Place of posting</p>\n            <p>You will be posted at {branch}. You may however be required to work at any place of business which the Company has, or</p>\n            <p>may later acquire.</p>\n            <p>5. Hours of Work</p>\n            <p>The normal working days are Monday through Friday. You will be required to work for such hours as necessary for the</p>\n            <p>proper discharge of your duties to the Company. The normal working hours are from {start_time} to {end_time} and you are</p>\n            <p>expected to work not less than {total_hours} hours each week, and if necessary for additional hours depending on your</p>\n            <p>responsibilities.</p>\n            <p>6. Leave/Holidays</p>\n            <p>6.1 You are entitled to casual leave of 12 days.</p>\n            <p>6.2 You are entitled to 12 working days of paid sick leave.</p>\n            <p>6.3 The Company shall notify a list of declared holidays at the beginning of each year.</p>\n            <p>7. Nature of duties</p>\n            <p>You will perform to the best of your ability all the duties as are inherent in your post and such additional duties as the company</p>\n            <p>may call upon you to perform, from time to time. Your specific duties are set out in Schedule II hereto.</p>\n            <p>8. Company property</p>\n            <p>You will always maintain in good condition Company property, which may be entrusted to you for official use during the course of</p>\n            <p>your employment, and shall return all such property to the Company prior to relinquishment of your charge, failing which the cost</p>\n            <p>of the same will be recovered from you by the Company.</p>\n            <p>9. Borrowing/accepting gifts</p>\n            <p>You will not borrow or accept any money, gift, reward, or compensation for your personal gains from or otherwise place yourself</p>\n            <p>under pecuniary obligation to any person/client with whom you may be having official dealings.</p>\n            <p>10. Termination</p>\n            <p>10.1 Your appointment can be terminated by the Company, without any reason, by giving you not less than [Notice] months prior</p>\n            <p>notice in writing or salary in lieu thereof. For the purpose of this clause, salary shall mean basic salary.</p>\n            <p>10.2 You may terminate your employment with the Company, without any cause, by giving no less than [Employee Notice]</p>\n            <p>months prior notice or salary for the unsaved period, left after adjustment of pending leaves, as on date.</p>\n            <p>10.3 The Company reserves the right to terminate your employment summarily without any notice period or termination payment</p>\n            <p>if it has reasonable ground to believe you are guilty of misconduct or negligence, or have committed any fundamental breach of</p>\n            <p>contract, or caused any loss to the Company.</p>\n            <p>10. 4 On the termination of your employment for whatever reason, you will return to the Company all property; documents, and</p>\n            <p>paper, both original and copies thereof, including any samples, literature, contracts, records, lists, drawings, blueprints,</p>\n            <p>letters, notes, data and the like; and Confidential Information, in your possession or under your control relating to your</p>\n            <p>employment or to clients business affairs.</p>\n            <p>11. Confidential Information</p>\n            <p>11. 1 During your employment with the Company you will devote your whole time, attention, and skill to the best of your ability for</p>\n            <p>its business. You shall not, directly or indirectly, engage or associate yourself with, be connected with, concerned, employed, or</p>\n            <p>time or pursue any course of study whatsoever, without the prior permission of the Company.engaged in any other business or</p>\n            <p>activities or any other post or work part-time or pursue any course of study whatsoever, without the prior permission of the</p>\n            <p>Company.</p>\n            <p>11.2 You must always maintain the highest degree of confidentiality and keep as confidential the records, documents, and other</p>\n            <p>Confidential Information relating to the business of the Company which may be known to you or confided in you by any means</p>\n            <p>and you will use such records, documents and information only in a duly authorized manner in the interest of the Company. For</p>\n            <p>the purposes of this clauseConfidential Information means information about the Companys business and that of its customers</p>\n            <p>which is not available to the general public and which may be learned by you in the course of your employment. This includes,</p>\n            <p>but is not limited to, information relating to the organization, its customer lists, employment policies, personnel, and information</p>\n            <p>about the Companys products, processes including ideas, concepts, projections, technology, manuals, drawing, designs,</p>\n            <p>specifications, and all papers, resumes, records and other documents containing such Confidential Information.</p>\n            <p>11.3 At no time, will you remove any Confidential Information from the office without permission.</p>\n            <p>11.4 Your duty to safeguard and not disclos</p>\n            <p>e Confidential Information will survive the expiration or termination of this Agreement and/or your employment with the Company.</p>\n            <p>11.5 Breach of the conditions of this clause will render you liable to summary dismissal under the clause above in addition to any</p>\n            <p>other remedy the Company may have against you in law.</p>\n            <p>12. Notices</p>\n            <p>Notices may be given by you to the Company at its registered office address. Notices may be given by the Company to you at</p>\n            <p>the address intimated by you in the official records.</p>\n            <p>13. Applicability of Company Policy</p>\n            <p>The Company shall be entitled to make policy declarations from time to time pertaining to matters like leave entitlement,maternity</p>\n            <p>leave, employees benefits, working hours, transfer policies, etc., and may alter the same from time to time at its sole discretion.</p>\n            <p>All such policy decisions of the Company shall be binding on you and shall override this Agreement to that extent.</p>\n            <p>14. Governing Law/Jurisdiction</p>\n            <p>Your employment with the Company is subject to Country laws. All disputes shall be subject to the jurisdiction of High Court</p>\n            <p>Gujarat only.</p>\n            <p>15. Acceptance of our offer</p>\n            <p>Please confirm your acceptance of this Contract of Employment by signing and returning the duplicate copy.</p>\n            <p>We welcome you and look forward to receiving your acceptance and to working with you.</p>\n            <p>Yours Sincerely,</p>\n            <p>{app_name}</p>\n            <p>{date}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(5, 'es', '<h3 style="text-align: center;"><strong>Carta de uni&oacute;n</strong></h3>\n            \n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{address}</p>\n            \n            \n            \n            <p>Asunto: Nombramiento para el puesto de {designation}</p>\n            \n            \n            \n            <p>Estimado {employee_name},</p>\n            \n            <p>Nos complace ofrecerle el puesto de {designation} con {app_name}, la Compa&ntilde;&iacute;a en los siguientes t&eacute;rminos y</p>\n            \n            <p>condiciones:</p>\n            \n            \n            <p>1. Comienzo del empleo</p>\n            \n            <p>Su empleo ser&aacute; efectivo a partir del {start_date}</p>\n            \n            \n            <p>2. T&iacute;tulo del trabajo</p>\n            <p>El t&iacute;tulo de su trabajo ser&aacute; {designation}.</p>\n            \n            <p>3. Salario</p>\n            \n            <p>Su salario y otros beneficios ser&aacute;n los establecidos en el Anexo 1 del presente.</p>\n            \n            \n            <p>4. Lugar de destino</p>\n            <p>Se le publicar&aacute; en {branch}. Sin embargo, es posible que deba trabajar en cualquier lugar de negocios que tenga la Compa&ntilde;&iacute;a, o</p>\n            \n            <p>puede adquirir posteriormente.</p>\n            \n            \n            \n            <p>5. Horas de trabajo</p>\n            \n            <p>Los d&iacute;as normales de trabajo son de lunes a viernes. Se le pedir&aacute; que trabaje las horas que sean necesarias para el</p>\n            \n            <p>cumplimiento adecuado de sus deberes para con la Compa&ntilde;&iacute;a. El horario normal de trabajo es de {start_time} a {end_time} y usted est&aacute;</p>\n            \n            <p>se espera que trabaje no menos de {total_hours} horas cada semana y, si es necesario, horas adicionales dependiendo de su</p>\n            \n            <p>responsabilidades.</p>\n            \n            \n            \n            <p>6. Licencia/Vacaciones</p>\n            \n            <p>6.1 Tiene derecho a un permiso eventual de 12 d&iacute;as.</p>\n            \n            <p>6.2 Tiene derecho a 12 d&iacute;as laborables de baja por enfermedad remunerada.</p>\n            \n            <p>6.3 La Compa&ntilde;&iacute;a deber&aacute; notificar una lista de d&iacute;as festivos declarados al comienzo de cada a&ntilde;o.</p>\n            \n            \n            \n            <p>7. Naturaleza de los deberes</p>\n            \n            <p>Desempe&ntilde;ar&aacute; lo mejor que pueda todas las funciones inherentes a su puesto y aquellas funciones adicionales que la empresa</p>\n            \n            <p>puede pedirte que act&uacute;es, de vez en cuando. Sus deberes espec&iacute;ficos se establecen en el Anexo II del presente.</p>\n            \n            \n            \n            <p>8. Propiedad de la empresa</p>\n            \n            <p>Siempre mantendr&aacute; en buenas condiciones la propiedad de la Compa&ntilde;&iacute;a, que se le puede confiar para uso oficial durante el curso de</p>\n            \n            <p>su empleo, y devolver&aacute; todos esos bienes a la Compa&ntilde;&iacute;a antes de renunciar a su cargo, en caso contrario, el costo</p>\n            \n            <p>de la misma ser&aacute; recuperada de usted por la Compa&ntilde;&iacute;a.</p>\n            \n            \n            \n            <p>9. Tomar prestado/aceptar regalos</p>\n            \n            <p>No pedir&aacute; prestado ni aceptar&aacute; dinero, obsequios, recompensas o compensaciones por sus ganancias personales o se colocar&aacute; de otra manera</p>\n            \n            <p>bajo obligaci&oacute;n pecuniaria a cualquier persona/cliente con quien pueda tener tratos oficiales.</p>\n            <p>10. Terminaci&oacute;n</p>\n            \n            <p>10.1 Su nombramiento puede ser rescindido por la Compa&ntilde;&iacute;a, sin ning&uacute;n motivo, al darle no menos de [Aviso] meses antes</p>\n            \n            <p>aviso por escrito o salario en su lugar. Para los efectos de esta cl&aacute;usula, se entender&aacute; por salario el salario base.</p>\n            \n            <p>10.2 Puede rescindir su empleo con la Compa&ntilde;&iacute;a, sin ninguna causa, dando no menos de [Aviso al empleado]</p>\n            \n            <p>meses de preaviso o salario por el per&iacute;odo no ahorrado, remanente despu&eacute;s del ajuste de licencias pendientes, a la fecha.</p>\n            \n            <p>10.3 La Compa&ntilde;&iacute;a se reserva el derecho de rescindir su empleo sumariamente sin ning&uacute;n per&iacute;odo de preaviso o pago por rescisi&oacute;n</p>\n            \n            <p>si tiene motivos razonables para creer que usted es culpable de mala conducta o negligencia, o ha cometido una violaci&oacute;n fundamental de</p>\n            \n            <p>contrato, o causado cualquier p&eacute;rdida a la Compa&ntilde;&iacute;a.</p>\n            \n            <p>10. 4 A la terminaci&oacute;n de su empleo por cualquier motivo, devolver&aacute; a la Compa&ntilde;&iacute;a todos los bienes; documentos, y</p>\n            \n            <p>papel, tanto en original como en copia del mismo, incluyendo cualquier muestra, literatura, contratos, registros, listas, dibujos, planos,</p>\n            \n            <p>cartas, notas, datos y similares; e Informaci&oacute;n confidencial, en su posesi&oacute;n o bajo su control en relaci&oacute;n con su</p>\n            \n            <p>empleo o a los asuntos comerciales de los clientes.</p>\n            <p>11. Informaci&oacute;n confidencial</p>\n            \n            <p>11. 1 Durante su empleo en la Compa&ntilde;&iacute;a, dedicar&aacute; todo su tiempo, atenci&oacute;n y habilidad lo mejor que pueda para</p>\n            \n            <p>son negocios. Usted no deber&aacute;, directa o indirectamente, comprometerse o asociarse con, estar conectado, interesado, empleado o</p>\n            \n            <p>tiempo o seguir cualquier curso de estudio, sin el permiso previo de la Compa&ntilde;&iacute;a. participar en cualquier otro negocio o</p>\n            \n            <p>actividades o cualquier otro puesto o trabajo a tiempo parcial o seguir cualquier curso de estudio, sin el permiso previo de la</p>\n            \n            <p>Compa&ntilde;&iacute;a.</p>\n            \n            <p>11.2 Siempre debe mantener el m&aacute;s alto grado de confidencialidad y mantener como confidenciales los registros, documentos y otros</p>\n            \n            <p>Informaci&oacute;n confidencial relacionada con el negocio de la Compa&ntilde;&iacute;a que usted pueda conocer o confiarle por cualquier medio</p>\n            \n            <p>y utilizar&aacute; dichos registros, documentos e informaci&oacute;n solo de manera debidamente autorizada en inter&eacute;s de la Compa&ntilde;&iacute;a. Para</p>\n            \n            <p>A los efectos de esta cl&aacute;usula, "Informaci&oacute;n confidencial" significa informaci&oacute;n sobre el negocio de la Compa&ntilde;&iacute;a y el de sus clientes.</p>\n            \n            <p>que no est&aacute; disponible para el p&uacute;blico en general y que usted puede aprender en el curso de su empleo. Esto incluye,</p>\n            \n            <p>pero no se limita a, informaci&oacute;n relacionada con la organizaci&oacute;n, sus listas de clientes, pol&iacute;ticas de empleo, personal e informaci&oacute;n</p>\n            \n            <p>sobre los productos de la Compa&ntilde;&iacute;a, procesos que incluyen ideas, conceptos, proyecciones, tecnolog&iacute;a, manuales, dibujos, dise&ntilde;os,</p>\n            \n            <p>especificaciones, y todos los papeles, curr&iacute;culos, registros y otros documentos que contengan dicha Informaci&oacute;n Confidencial.</p>\n            \n            <p>11.3 En ning&uacute;n momento, sacar&aacute; ninguna Informaci&oacute;n Confidencial de la oficina sin permiso.</p>\n            \n            <p>11.4 Su deber de salvaguardar y no divulgar</p>\n            \n            <p>La Informaci&oacute;n Confidencial sobrevivir&aacute; a la expiraci&oacute;n o terminaci&oacute;n de este Acuerdo y/o su empleo con la Compa&ntilde;&iacute;a.</p>\n            \n            <p>11.5 El incumplimiento de las condiciones de esta cl&aacute;usula le har&aacute; pasible de despido sumario en virtud de la cl&aacute;usula anterior adem&aacute;s de cualquier</p>\n            \n            <p>otro recurso que la Compa&ntilde;&iacute;a pueda tener contra usted por ley.</p>\n            <p>12. Avisos</p>\n            \n            <p>Usted puede enviar notificaciones a la Compa&ntilde;&iacute;a a su domicilio social. La Compa&ntilde;&iacute;a puede enviarle notificaciones a usted en</p>\n            \n            <p>la direcci&oacute;n indicada por usted en los registros oficiales.</p>\n            \n            \n            \n            <p>13. Aplicabilidad de la pol&iacute;tica de la empresa</p>\n            \n            <p>La Compa&ntilde;&iacute;a tendr&aacute; derecho a hacer declaraciones de pol&iacute;tica de vez en cuando relacionadas con asuntos como el derecho a licencia, maternidad</p>\n            \n            <p>licencia, beneficios de los empleados, horas de trabajo, pol&iacute;ticas de transferencia, etc., y puede modificarlas de vez en cuando a su sola discreci&oacute;n.</p>\n            \n            <p>Todas las decisiones pol&iacute;ticas de la Compa&ntilde;&iacute;a ser&aacute;n vinculantes para usted y anular&aacute;n este Acuerdo en esa medida.</p>\n            \n            \n            \n            <p>14. Ley aplicable/Jurisdicci&oacute;n</p>\n            \n            <p>Su empleo con la Compa&ntilde;&iacute;a est&aacute; sujeto a las leyes del Pa&iacute;s. Todas las disputas estar&aacute;n sujetas a la jurisdicci&oacute;n del Tribunal Superior</p>\n            \n            <p>S&oacute;lo Gujarat.</p>\n            \n            \n            \n            <p>15. Aceptaci&oacute;n de nuestra oferta</p>\n            \n            <p>Por favor, confirme su aceptaci&oacute;n de este Contrato de Empleo firmando y devolviendo el duplicado.</p>\n            \n            \n            \n            <p>Le damos la bienvenida y esperamos recibir su aceptaci&oacute;n y trabajar con usted.</p>\n            \n            \n            \n            <p>Tuyo sinceramente,</p>\n            \n            <p>{app_name}</p>\n            \n            <p>{date}</p>\n            ', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(6, 'fr', '<h3 style="text-align: center;">Lettre dadh&eacute;sion</h3>\n            \n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            <p>{address}</p>\n            \n            \n            <p>Objet : Nomination pour le poste de {designation}</p>\n            \n            \n            \n            <p>Cher {employee_name},</p>\n            \n            \n            <p>Nous sommes heureux de vous proposer le poste de {designation} avec {app_name} la "Soci&eacute;t&eacute;" selon les conditions suivantes et</p>\n            \n            <p>les conditions:</p>\n            \n            <p>1. Entr&eacute;e en fonction</p>\n            \n            <p>Votre emploi sera effectif &agrave; partir du {start_date}</p>\n            \n            \n            \n            <p>2. Intitul&eacute; du poste</p>\n            \n            <p>Votre titre de poste sera {designation}.</p>\n            \n            \n            \n            <p>3. Salaire</p>\n            \n            <p>Votre salaire et vos autres avantages seront tels quindiqu&eacute;s &agrave; lannexe 1 ci-jointe.</p>\n            \n            \n            <p>4. Lieu de d&eacute;tachement</p>\n            <p>Vous serez affect&eacute; &agrave; {branch}. Vous pouvez cependant &ecirc;tre tenu de travailler dans nimporte quel lieu daffaires que la Soci&eacute;t&eacute; a, ou</p>\n            \n            <p>pourra acqu&eacute;rir plus tard.</p>\n            \n            \n            \n            <p>5. Heures de travail</p>\n            \n            <p>Les jours ouvrables normaux sont du lundi au vendredi. Vous devrez travailler les heures n&eacute;cessaires &agrave; la</p>\n            \n            <p>lexercice correct de vos fonctions envers la Soci&eacute;t&eacute;. Les heures normales de travail vont de {start_time} &agrave; {end_time} et vous &ecirc;tes</p>\n            \n            <p>devrait travailler au moins {total_hours} heures par semaine, et si n&eacute;cessaire des heures suppl&eacute;mentaires en fonction de votre</p>\n            \n            <p>responsabilit&eacute;s.</p>\n            \n            <p>6. Cong&eacute;s/Vacances</p>\n            \n            <p>6.1 Vous avez droit &agrave; un cong&eacute; occasionnel de 12 jours.</p>\n            \n            <p>6.2 Vous avez droit &agrave; 12 jours ouvrables de cong&eacute; de maladie pay&eacute;.</p>\n            \n            <p>6.3 La Soci&eacute;t&eacute; communiquera une liste des jours f&eacute;ri&eacute;s d&eacute;clar&eacute;s au d&eacute;but de chaque ann&eacute;e.</p>\n            \n            \n            \n            <p>7. Nature des fonctions</p>\n            \n            <p>Vous ex&eacute;cuterez au mieux de vos capacit&eacute;s toutes les t&acirc;ches inh&eacute;rentes &agrave; votre poste et les t&acirc;ches suppl&eacute;mentaires que lentreprise</p>\n            \n            <p>peut faire appel &agrave; vous pour effectuer, de temps &agrave; autre. Vos fonctions sp&eacute;cifiques sont &eacute;nonc&eacute;es &agrave; lannexe II ci-jointe.</p>\n            \n            \n            \n            <p>8. Biens sociaux</p>\n            \n            <p>Vous maintiendrez toujours en bon &eacute;tat les biens de la Soci&eacute;t&eacute;, qui peuvent vous &ecirc;tre confi&eacute;s pour un usage officiel au cours de votre</p>\n            \n            <p>votre emploi, et doit restituer tous ces biens &agrave; la Soci&eacute;t&eacute; avant labandon de votre charge, &agrave; d&eacute;faut de quoi le co&ucirc;t</p>\n            \n            <p>de m&ecirc;me seront r&eacute;cup&eacute;r&eacute;s aupr&egrave;s de vous par la Soci&eacute;t&eacute;.</p>\n            \n            \n            \n            <p>9. Emprunter/accepter des cadeaux</p>\n            \n            <p>Vous nemprunterez ni naccepterez dargent, de cadeau, de r&eacute;compense ou de compensation pour vos gains personnels ou vous placerez autrement</p>\n            \n            <p>sous obligation p&eacute;cuniaire envers toute personne/client avec qui vous pourriez avoir des relations officielles.</p>\n            <p>10. R&eacute;siliation</p>\n            \n            <p>10.1 Votre nomination peut &ecirc;tre r&eacute;sili&eacute;e par la Soci&eacute;t&eacute;, sans aucune raison, en vous donnant au moins [Pr&eacute;avis] mois avant</p>\n            \n            <p>un pr&eacute;avis &eacute;crit ou un salaire en tenant lieu. Aux fins de la pr&eacute;sente clause, salaire sentend du salaire de base.</p>\n            \n            <p>10.2 Vous pouvez r&eacute;silier votre emploi au sein de la Soci&eacute;t&eacute;, sans motif, en donnant au moins [Avis &agrave; lemploy&eacute;]</p>\n            \n            <p>mois de pr&eacute;avis ou de salaire pour la p&eacute;riode non &eacute;pargn&eacute;e, restant apr&egrave;s r&eacute;gularisation des cong&eacute;s en attente, &agrave; la date.</p>\n            \n            <p>10.3 La Soci&eacute;t&eacute; se r&eacute;serve le droit de r&eacute;silier votre emploi sans pr&eacute;avis ni indemnit&eacute; de licenciement.</p>\n            \n            <p>sil a des motifs raisonnables de croire que vous &ecirc;tes coupable dinconduite ou de n&eacute;gligence, ou que vous avez commis une violation fondamentale de</p>\n            \n            <p>contrat, ou caus&eacute; une perte &agrave; la Soci&eacute;t&eacute;.</p>\n            \n            <p>10. 4 &Agrave; la fin de votre emploi pour quelque raison que ce soit, vous restituerez &agrave; la Soci&eacute;t&eacute; tous les biens ; document, et</p>\n            \n            <p>papier, &agrave; la fois loriginal et les copies de celui-ci, y compris les &eacute;chantillons, la litt&eacute;rature, les contrats, les dossiers, les listes, les dessins, les plans,</p>\n            \n            <p>lettres, notes, donn&eacute;es et similaires; et Informations confidentielles, en votre possession ou sous votre contr&ocirc;le relatives &agrave; votre</p>\n            \n            <p>lemploi ou aux affaires commerciales des clients.</p>\n            <p>11. Informations confidentielles</p>\n            \n            <p>11. 1 Au cours de votre emploi au sein de la Soci&eacute;t&eacute;, vous consacrerez tout votre temps, votre attention et vos comp&eacute;tences au mieux de vos capacit&eacute;s pour</p>\n            \n            <p>son affaire. Vous ne devez pas, directement ou indirectement, vous engager ou vous associer &agrave;, &ecirc;tre li&eacute; &agrave;, concern&eacute;, employ&eacute; ou</p>\n            \n            <p>temps ou poursuivre quelque programme d&eacute;tudes que ce soit, sans lautorisation pr&eacute;alable de la Soci&eacute;t&eacute;. engag&eacute; dans toute autre entreprise ou</p>\n            \n            <p>activit&eacute;s ou tout autre poste ou travail &agrave; temps partiel ou poursuivre des &eacute;tudes quelconques, sans lautorisation pr&eacute;alable du</p>\n            \n            <p>Compagnie.</p>\n            \n            <p>11.2 Vous devez toujours maintenir le plus haut degr&eacute; de confidentialit&eacute; et garder confidentiels les dossiers, documents et autres</p>\n            \n            <p>Informations confidentielles relatives &agrave; lactivit&eacute; de la Soci&eacute;t&eacute; dont vous pourriez avoir connaissance ou qui vous seraient confi&eacute;es par tout moyen</p>\n            \n            <p>et vous nutiliserez ces registres, documents et informations que dune mani&egrave;re d&ucirc;ment autoris&eacute;e dans lint&eacute;r&ecirc;t de la Soci&eacute;t&eacute;. Pour</p>\n            \n            <p>aux fins de la pr&eacute;sente clause &laquo; Informations confidentielles &raquo; d&eacute;signe les informations sur les activit&eacute;s de la Soci&eacute;t&eacute; et celles de ses clients</p>\n            \n            <p>qui nest pas accessible au grand public et dont vous pourriez avoir connaissance dans le cadre de votre emploi. Ceci comprend,</p>\n            \n            <p>mais sans sy limiter, les informations relatives &agrave; lorganisation, ses listes de clients, ses politiques demploi, son personnel et les informations</p>\n            \n            <p>sur les produits, les processus de la Soci&eacute;t&eacute;, y compris les id&eacute;es, les concepts, les projections, la technologie, les manuels, les dessins, les conceptions,</p>\n            \n            <p>sp&eacute;cifications, et tous les papiers, curriculum vitae, dossiers et autres documents contenant de telles informations confidentielles.</p>\n            \n            <p>11.3 &Agrave; aucun moment, vous ne retirerez des informations confidentielles du bureau sans autorisation.</p>\n            \n            <p>11.4 Votre devoir de prot&eacute;ger et de ne pas divulguer</p>\n            \n            <p>Les Informations confidentielles survivront &agrave; lexpiration ou &agrave; la r&eacute;siliation du pr&eacute;sent Contrat et/ou &agrave; votre emploi au sein de la Soci&eacute;t&eacute;.</p>\n            \n            <p>11.5 La violation des conditions de cette clause vous rendra passible dun renvoi sans pr&eacute;avis en vertu de la clause ci-dessus en plus de tout</p>\n            \n            <p>autre recours que la Soci&eacute;t&eacute; peut avoir contre vous en droit.</p>\n            <p>12. Avis</p>\n            \n            <p>Des avis peuvent &ecirc;tre donn&eacute;s par vous &agrave; la Soci&eacute;t&eacute; &agrave; ladresse de son si&egrave;ge social. Des avis peuvent vous &ecirc;tre donn&eacute;s par la Soci&eacute;t&eacute; &agrave;</p>\n            \n            <p>ladresse que vous avez indiqu&eacute;e dans les registres officiels.</p>\n            \n            \n            \n            <p>13. Applicabilit&eacute; de la politique de lentreprise</p>\n            \n            <p>La Soci&eacute;t&eacute; est autoris&eacute;e &agrave; faire des d&eacute;clarations de politique de temps &agrave; autre concernant des questions telles que le droit aux cong&eacute;s, la maternit&eacute;</p>\n            \n            <p>les cong&eacute;s, les avantages sociaux des employ&eacute;s, les heures de travail, les politiques de transfert, etc., et peut les modifier de temps &agrave; autre &agrave; sa seule discr&eacute;tion.</p>\n            \n            <p>Toutes ces d&eacute;cisions politiques de la Soci&eacute;t&eacute; vous lieront et pr&eacute;vaudront sur le pr&eacute;sent Contrat dans cette mesure.</p>\n            \n            \n            \n            <p>14. Droit applicable/juridiction</p>\n            \n            <p>Votre emploi au sein de la Soci&eacute;t&eacute; est soumis aux lois du pays. Tous les litiges seront soumis &agrave; la comp&eacute;tence du tribunal de grande instance</p>\n            \n            <p>Gujarat uniquement.</p>\n            \n            \n            \n            <p>15. Acceptation de notre offre</p>\n            \n            <p>Veuillez confirmer votre acceptation de ce contrat de travail en signant et en renvoyant le duplicata.</p>\n            \n            \n            \n            <p>Nous vous souhaitons la bienvenue et nous nous r&eacute;jouissons de recevoir votre acceptation et de travailler avec vous.</p>\n            \n            \n            \n            <p>Cordialement,</p>\n            \n            <p>{app_name}</p>\n            \n            <p>{date}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(7, 'id', '<h3 style="text-align: center;">Surat Bergabung</h3>\n            \n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{address}</p>\n            \n            \n            \n            <p>Perihal: Pengangkatan untuk jabatan {designation}</p>\n            \n            \n            <p>{employee_name} yang terhormat,</p>\n            \n            <p>Kami dengan senang hati menawarkan kepada Anda, posisi {designation} dengan {app_name} sebagai Perusahaan dengan persyaratan dan</p>\n            \n            <p>kondisi:</p>\n            \n            \n            \n            <p>1. Mulai bekerja</p>\n            \n            <p>Pekerjaan Anda akan efektif, mulai {start_date}</p>\n            \n            \n            <p>2. Jabatan</p>\n            <p>Jabatan Anda adalah {designation}.</p>\n            \n            <p>3. Gaji</p>\n            <p>Gaji Anda dan tunjangan lainnya akan diatur dalam Jadwal 1, di sini.</p>\n            \n            \n            <p>4. Tempat posting</p>\n            \n            <p>Anda akan diposkan di {branch}. Namun Anda mungkin diminta untuk bekerja di tempat bisnis mana pun yang dimiliki Perusahaan, atau</p>\n            \n            <p>nantinya dapat memperoleh.</p>\n            \n            \n            \n            <p>5. Jam Kerja</p>\n            \n            <p>Hari kerja normal adalah Senin sampai Jumat. Anda akan diminta untuk bekerja selama jam-jam yang diperlukan untuk</p>\n            \n            <p>pelaksanaan tugas Anda dengan benar di Perusahaan. Jam kerja normal adalah dari {start_time} hingga {end_time} dan Anda</p>\n            \n            <p>diharapkan bekerja tidak kurang dari {total_hours} jam setiap minggu, dan jika perlu untuk jam tambahan tergantung pada</p>\n            \n            <p>tanggung jawab.</p>\n            \n            \n            \n            <p>6. Cuti/Libur</p>\n            \n            <p>6.1 Anda berhak atas cuti biasa selama 12 hari.</p>\n            \n            <p>6.2 Anda berhak atas 12 hari kerja cuti sakit berbayar.</p>\n            \n            <p>6.3 Perusahaan akan memberitahukan daftar hari libur yang diumumkan pada awal setiap tahun.</p>\n            \n            \n            \n            <p>7. Sifat tugas</p>\n            \n            <p>Anda akan melakukan yang terbaik dari kemampuan Anda semua tugas yang melekat pada jabatan Anda dan tugas tambahan seperti perusahaan</p>\n            \n            <p>dapat memanggil Anda untuk tampil, dari waktu ke waktu. Tugas khusus Anda ditetapkan dalam Jadwal II di sini.</p>\n            \n            \n            \n            <p>8. Properti perusahaan</p>\n            \n            <p>Anda akan selalu menjaga properti Perusahaan dalam kondisi baik, yang dapat dipercayakan kepada Anda untuk penggunaan resmi selama</p>\n            \n            <p>pekerjaan Anda, dan akan mengembalikan semua properti tersebut kepada Perusahaan sebelum melepaskan biaya Anda, jika tidak ada biayanya</p>\n            \n            <p>yang sama akan dipulihkan dari Anda oleh Perusahaan.</p>\n            \n            \n            \n            <p>9. Meminjam/menerima hadiah</p>\n            \n            <p>Anda tidak akan meminjam atau menerima uang, hadiah, hadiah, atau kompensasi apa pun untuk keuntungan pribadi Anda dari atau dengan cara lain menempatkan diri Anda sendiri</p>\n            \n            <p>di bawah kewajiban uang kepada setiap orang/klien dengan siapa Anda mungkin memiliki hubungan resmi.</p>\n            <p>10. Penghentian</p>\n            \n            <p>10.1 Penunjukan Anda dapat diakhiri oleh Perusahaan, tanpa alasan apa pun, dengan memberi Anda tidak kurang dari [Pemberitahuan] bulan sebelumnya</p>\n            \n            <p>pemberitahuan secara tertulis atau gaji sebagai penggantinya. Untuk maksud pasal ini, gaji berarti gaji pokok.</p>\n            \n            <p>10.2 Anda dapat memutuskan hubungan kerja Anda dengan Perusahaan, tanpa alasan apa pun, dengan memberikan tidak kurang dari [Pemberitahuan Karyawan]</p>\n            \n            <p>pemberitahuan atau gaji bulan sebelumnya untuk periode yang belum disimpan, yang tersisa setelah penyesuaian cuti yang tertunda, pada tanggal.</p>\n            \n            <p>10.3 Perusahaan berhak untuk mengakhiri hubungan kerja Anda dengan segera tanpa pemberitahuan jangka waktu atau pembayaran pemutusan hubungan kerja</p>\n            \n            <p>jika memiliki alasan yang masuk akal untuk meyakini bahwa Anda bersalah atas kesalahan atau kelalaian, atau telah melakukan pelanggaran mendasar apa pun terhadap</p>\n            \n            <p>kontrak, atau menyebabkan kerugian bagi Perusahaan.</p>\n            \n            <p>10. 4 Pada pemutusan hubungan kerja Anda karena alasan apa pun, Anda akan mengembalikan semua properti kepada Perusahaan; dokumen, dan</p>\n            \n            <p>kertas, baik asli maupun salinannya, termasuk contoh, literatur, kontrak, catatan, daftar, gambar, cetak biru,</p>\n            \n            <p>surat, catatan, data dan sejenisnya; dan Informasi Rahasia, yang Anda miliki atau di bawah kendali Anda terkait dengan</p>\n            \n            <p>pekerjaan atau untuk urusan bisnis klien.</p>\n            <p>11. Informasi Rahasia</p>\n            \n            <p>11. 1 Selama bekerja di Perusahaan, Anda akan mencurahkan seluruh waktu, perhatian, dan keterampilan Anda sebaik mungkin untuk</p>\n            \n            <p>bisnisnya. Anda tidak boleh, secara langsung atau tidak langsung, terlibat atau mengasosiasikan diri Anda dengan, terhubung dengan, terkait, dipekerjakan, atau</p>\n            \n            <p>waktu atau mengikuti program studi apapun, tanpa izin sebelumnya dari Perusahaan.terlibat dalam bisnis lain atau</p>\n            \n            <p>kegiatan atau pos atau pekerjaan paruh waktu lainnya atau mengejar program studi apa pun, tanpa izin sebelumnya dari</p>\n            \n            <p>Perusahaan.</p>\n            \n            <p>11.2 Anda harus selalu menjaga tingkat kerahasiaan tertinggi dan merahasiakan catatan, dokumen, dan lainnya</p>\n            \n            <p>Informasi Rahasia yang berkaitan dengan bisnis Perusahaan yang mungkin Anda ketahui atau rahasiakan kepada Anda dengan cara apa pun</p>\n            \n            <p>dan Anda akan menggunakan catatan, dokumen, dan informasi tersebut hanya dengan cara yang sah untuk kepentingan Perusahaan. Untuk</p>\n            \n            <p>tujuan klausul ini Informasi Rahasia berarti informasi tentang bisnis Perusahaan dan pelanggannya</p>\n            \n            <p>yang tidak tersedia untuk masyarakat umum dan yang mungkin Anda pelajari selama masa kerja Anda. Ini termasuk,</p>\n            \n            <p>tetapi tidak terbatas pada, informasi yang berkaitan dengan organisasi, daftar pelanggannya, kebijakan ketenagakerjaan, personel, dan informasi</p>\n            \n            <p>tentang produk Perusahaan, proses termasuk ide, konsep, proyeksi, teknologi, manual, gambar, desain,</p>\n            \n            <p>spesifikasi, dan semua makalah, resume, catatan dan dokumen lain yang berisi Informasi Rahasia tersebut.</p>\n            \n            <p>11.3 Kapan pun Anda akan menghapus Informasi Rahasia apa pun dari kantor tanpa izin.</p>\n            \n            <p>11.4 Kewajiban Anda untuk melindungi dan tidak mengungkapkan</p>\n            \n            <p>e Informasi Rahasia akan tetap berlaku setelah berakhirnya atau pengakhiran Perjanjian ini dan/atau hubungan kerja Anda dengan Perusahaan.</p>\n            \n            <p>11.5 Pelanggaran terhadap ketentuan klausul ini akan membuat Anda bertanggung jawab atas pemecatan singkat berdasarkan klausul di atas selain dari:</p>\n            \n            <p>upaya hukum lain yang mungkin dimiliki Perusahaan terhadap Anda secara hukum.</p>\n            <p>12. Pemberitahuan</p>\n            \n            <p>Pemberitahuan dapat diberikan oleh Anda kepada Perusahaan di alamat kantor terdaftarnya. Pemberitahuan dapat diberikan oleh Perusahaan kepada Anda di</p>\n            \n            <p>alamat yang diberitahukan oleh Anda dalam catatan resmi.</p>\n            \n            \n            \n            <p>13. Keberlakuan Kebijakan Perusahaan</p>\n            \n            <p>Perusahaan berhak untuk membuat pernyataan kebijakan dari waktu ke waktu berkaitan dengan hal-hal seperti hak cuti, persalinan</p>\n            \n            <p>cuti, tunjangan karyawan, jam kerja, kebijakan transfer, dll., dan dapat mengubahnya dari waktu ke waktu atas kebijakannya sendiri.</p>\n            \n            <p>Semua keputusan kebijakan Perusahaan tersebut akan mengikat Anda dan akan mengesampingkan Perjanjian ini sejauh itu.</p>\n            \n            \n            \n            <p>14. Hukum/Yurisdiksi yang Mengatur</p>\n            \n            <p>Pekerjaan Anda dengan Perusahaan tunduk pada undang-undang Negara. Semua perselisihan akan tunduk pada yurisdiksi Pengadilan Tinggi</p>\n            \n            <p>Gujarat saja.</p>\n            \n            \n            \n            <p>15. Penerimaan penawaran kami</p>\n            \n            <p>Harap konfirmasikan penerimaan Anda atas Kontrak Kerja ini dengan menandatangani dan mengembalikan salinan duplikatnya.</p>\n            \n            \n            \n            <p>Kami menyambut Anda dan berharap untuk menerima penerimaan Anda dan bekerja sama dengan Anda.</p>\n            \n            \n            \n            <p>Dengan hormat,</p>\n            \n            <p>{app_name}</p>\n            \n            <p>{date}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(8, 'it', '<h3 style="text-align: center;">Lettera di adesione</h3>\n            \n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{address}</p>\n            \n            <p>Oggetto: Appuntamento alla carica di {designation}</p>\n            \n            \n            <p>Gentile {employee_name},</p>\n            \n            <p>Siamo lieti di offrirti la posizione di {designation} con {app_name} la "Societ&agrave;" alle seguenti condizioni e</p>\n            \n            <p>condizioni:</p>\n            \n            \n            <p>1. Inizio del rapporto di lavoro</p>\n            \n            <p>Il tuo impiego sar&agrave; effettivo a partire da {start_date}</p>\n            \n            \n            \n            <p>2. Titolo di lavoro</p>\n            \n            <p>Il tuo titolo di lavoro sar&agrave; {designation}.</p>\n            \n            <p>3. Stipendio</p>\n            \n            <p>Il tuo stipendio e altri benefici saranno come indicato nellAllegato 1, qui di seguito.</p>\n            \n            \n            \n            <p>4. Luogo di invio</p>\n            \n            <p>Sarai inviato a {branch}. Tuttavia, potrebbe essere richiesto di lavorare in qualsiasi luogo di attivit&agrave; che la Societ&agrave; ha, o</p>\n            \n            <p>potr&agrave; successivamente acquisire.</p>\n            \n            \n            \n            <p>5. Orario di lavoro</p>\n            \n            <p>I normali giorni lavorativi sono dal luned&igrave; al venerd&igrave;. Ti verr&agrave; richiesto di lavorare per le ore necessarie per il</p>\n            \n            <p>corretto adempimento dei propri doveri nei confronti della Societ&agrave;. Lorario di lavoro normale va da {start_time} a {end_time} e tu lo sei</p>\n            \n            <p>dovrebbe lavorare non meno di {total_hours} ore ogni settimana e, se necessario, per ore aggiuntive a seconda del tuo</p>\n            \n            <p>responsabilit&agrave;.</p>\n            \n            \n            \n            <p>6. Permessi/Festivit&agrave;</p>\n            \n            <p>6.1 Hai diritto a un congedo occasionale di 12 giorni.</p>\n            \n            <p>6.2 Hai diritto a 12 giorni lavorativi di congedo per malattia retribuito.</p>\n            \n            <p>6.3 La Societ&agrave; comunica allinizio di ogni anno un elenco delle festivit&agrave; dichiarate.</p>\n            \n            \n            \n            <p>7. Natura degli incarichi</p>\n            \n            <p>Eseguirai al meglio delle tue capacit&agrave; tutti i compiti inerenti al tuo incarico e compiti aggiuntivi come lazienda</p>\n            \n            <p>pu&ograve; invitarti a esibirti, di tanto in tanto. I tuoi doveri specifici sono stabiliti nellAllegato II del presente documento.</p>\n            \n            \n            \n            <p>8. Propriet&agrave; aziendale</p>\n            \n            <p>Manterrete sempre in buono stato i beni dellAzienda, che nel corso dellanno potrebbero esservi affidati per uso ufficiale</p>\n            \n            <p>il tuo impiego, e restituir&agrave; tutte queste propriet&agrave; alla Societ&agrave; prima della rinuncia al tuo addebito, in caso contrario il costo</p>\n            \n            <p>degli stessi saranno da voi recuperati dalla Societ&agrave;.</p>\n            \n            \n            \n            <p>9. Prendere in prestito/accettare regali</p>\n            \n            <p>Non prenderai in prestito n&eacute; accetterai denaro, dono, ricompensa o compenso per i tuoi guadagni personali da o altrimenti collocato te stesso</p>\n            \n            <p>sotto obbligazione pecuniaria nei confronti di qualsiasi persona/cliente con cui potresti avere rapporti ufficiali.</p>\n            <p>10. Cessazione</p>\n            \n            <p>10.1 Il tuo incarico pu&ograve; essere risolto dalla Societ&agrave;, senza alcun motivo, dandoti non meno di [Avviso] mesi prima</p>\n            \n            <p>avviso scritto o stipendio in sostituzione di esso. Ai fini della presente clausola, per stipendio si intende lo stipendio base.</p>\n            \n            <p>10.2 &Egrave; possibile terminare il proprio rapporto di lavoro con la Societ&agrave;, senza alcuna causa, fornendo non meno di [Avviso per il dipendente]</p>\n            \n            <p>mesi di preavviso o stipendio per il periodo non risparmiato, lasciato dopo ladeguamento delle ferie pendenti, come alla data.</p>\n            \n            <p>10.3 La Societ&agrave; si riserva il diritto di terminare il rapporto di lavoro sommariamente senza alcun periodo di preavviso o pagamento di cessazione</p>\n            \n            <p>se ha fondati motivi per ritenere che tu sia colpevole di cattiva condotta o negligenza, o abbia commesso una violazione fondamentale</p>\n            \n            <p>contratto, o ha causato danni alla Societ&agrave;.</p>\n            \n            <p>10. 4 Alla cessazione del rapporto di lavoro per qualsiasi motivo, restituirete alla Societ&agrave; tutti i beni; documenti, e</p>\n            \n            <p>carta, sia in originale che in copia, inclusi eventuali campioni, letteratura, contratti, registrazioni, elenchi, disegni, progetti,</p>\n            \n            <p>lettere, note, dati e simili; e Informazioni Riservate, in tuo possesso o sotto il tuo controllo, relative alla tua</p>\n            \n            <p>lavoro o agli affari dei clienti.</p>\n            <p>11. Confidential Information</p>\n            \n            <p>11. 1 During your employment with the Company you will devote your whole time, attention, and skill to the best of your ability for</p>\n            \n            <p>its business. You shall not, directly or indirectly, engage or associate yourself with, be connected with, concerned, employed, or</p>\n            \n            <p>time or pursue any course of study whatsoever, without the prior permission of the Company.engaged in any other business or</p>\n            \n            <p>activities or any other post or work part-time or pursue any course of study whatsoever, without the prior permission of the</p>\n            \n            <p>Company.</p>\n            \n            <p>11.2 You must always maintain the highest degree of confidentiality and keep as confidential the records, documents, and other&nbsp;</p>\n            \n            <p>Confidential Information relating to the business of the Company which may be known to you or confided in you by any means</p>\n            \n            <p>and you will use such records, documents and information only in a duly authorized manner in the interest of the Company. For</p>\n            \n            <p>the purposes of this clause &lsquo;Confidential Information&rsquo; means information about the Company&rsquo;s business and that of its customers</p>\n            \n            <p>which is not available to the general public and which may be learned by you in the course of your employment. This includes,</p>\n            \n            <p>but is not limited to, information relating to the organization, its customer lists, employment policies, personnel, and information</p>\n            \n            <p>about the Company&rsquo;s products, processes including ideas, concepts, projections, technology, manuals, drawing, designs,&nbsp;</p>\n            \n            <p>specifications, and all papers, resumes, records and other documents containing such Confidential Information.</p>\n            \n            <p>11.3 At no time, will you remove any Confidential Information from the office without permission.</p>\n            \n            <p>11.4 Your duty to safeguard and not disclos</p>\n            \n            <p>e Confidential Information will survive the expiration or termination of this Agreement and/or your employment with the Company.</p>\n            \n            <p>11.5 Breach of the conditions of this clause will render you liable to summary dismissal under the clause above in addition to any</p>\n            \n            <p>other remedy the Company may have against you in law.</p>\n            <p>12. Notices</p>\n            \n            <p>Notices may be given by you to the Company at its registered office address. Notices may be given by the Company to you at</p>\n            \n            <p>the address intimated by you in the official records.</p>\n            \n            \n            \n            <p>13. Applicability of Company Policy</p>\n            \n            <p>The Company shall be entitled to make policy declarations from time to time pertaining to matters like leave entitlement,maternity</p>\n            \n            <p>leave, employees&rsquo; benefits, working hours, transfer policies, etc., and may alter the same from time to time at its sole discretion.</p>\n            \n            <p>All such policy decisions of the Company shall be binding on you and shall override this Agreement to that&nbsp; extent.</p>\n            \n            \n            \n            <p>14. Governing Law/Jurisdiction</p>\n            \n            <p>Your employment with the Company is subject to Country laws. All disputes shall be subject to the jurisdiction of High Court</p>\n            \n            <p>Gujarat only.</p>\n            \n            \n            \n            <p>15. Acceptance of our offer</p>\n            \n            <p>Please confirm your acceptance of this Contract of Employment by signing and returning the duplicate copy.</p>\n            \n            \n            \n            <p>We welcome you and look forward to receiving your acceptance and to working with you.</p>\n            \n            \n            \n            <p>Yours Sincerely,</p>\n            \n            <p>{app_name}</p>\n            \n            <p>{date}</p>\n            ', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(9, 'ja', '<h3 style="text-align: center;">入会の手紙</h3>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{address}</p>\n            \n            \n            \n            <p>件名: {designation} の役職への任命</p>\n            \n            \n            \n            <p>{employee_name} 様</p>\n            \n            \n            <p>{app_name} の {designation} の地位を以下の条件で「会社」として提供できることをうれしく思います。</p>\n            \n            <p>条件：</p>\n            \n            \n            <p>1. 雇用開始</p>\n            \n            <p>あなたの雇用は {start_date} から有効になります</p>\n            \n            \n            <p>2. 役職</p>\n            \n            <p>あなたの役職は{designation}になります。</p>\n            \n            \n            <p>3. 給与</p>\n            \n            <p>あなたの給与およびその他の福利厚生は、本明細書のスケジュール 1 に記載されているとおりです。</p>\n            \n            \n            <p>4. 掲示場所</p>\n            \n            <p>{branch} に掲載されます。ただし、会社が所有する事業所で働く必要がある場合があります。</p>\n            \n            <p>後で取得する場合があります。</p>\n            \n            \n            \n            <p>5. 労働時間</p>\n            \n            <p>通常の営業日は月曜日から金曜日です。あなたは、そのために必要な時間働く必要があります。</p>\n            \n            <p>会社に対するあなたの義務の適切な遂行。通常の勤務時間は {start_time} から {end_time} までで、あなたは</p>\n            \n            <p>毎週 {total_hours} 時間以上の勤務が期待される</p>\n            \n            <p>責任。</p>\n            \n            \n            \n            <p>6.休暇・休日</p>\n            \n            <p>6.1 12 日間の臨時休暇を取得する権利があります。</p>\n            \n            <p>6.2 12 日間の有給病気休暇を取る権利があります。</p>\n            \n            <p>6.3 当社は、毎年の初めに宣言された休日のリストを通知するものとします。</p>\n            \n            \n            \n            <p>7. 職務内容</p>\n            \n            <p>あなたは、自分のポストに固有のすべての義務と、会社としての追加の義務を最大限に遂行します。</p>\n            \n            <p>時々あなたに演奏を依頼するかもしれません。あなたの特定の義務は、本明細書のスケジュール II に記載されています。</p>\n            \n            \n            \n            <p>8. 会社財産</p>\n            \n            <p>あなたは、会社の所有物を常に良好な状態に維持するものとします。</p>\n            \n            <p>あなたの雇用を放棄し、あなたの料金を放棄する前に、そのようなすべての財産を会社に返還するものとします。</p>\n            \n            <p>同じのは、会社によってあなたから回収されます。</p>\n            \n            \n            \n            <p>9. 貸出・贈答品の受け取り</p>\n            \n            <p>あなたは、あなた自身から、または他の方法であなた自身の場所から個人的な利益を得るための金銭、贈り物、報酬、または補償を借りたり、受け取ったりしません。</p>\n            \n            <p>あなたが公式の取引をしている可能性のある人物/クライアントに対する金銭的義務の下で。</p>\n            <p>10. 終了</p>\n            \n            <p>10.1 少なくとも [通知] か月前に通知することにより、理由のいかんを問わず、会社はあなたの任命を終了することができます。</p>\n            \n            <p>書面による通知またはその代わりの給与。この条項の目的上、給与とは基本給を意味するものとします。</p>\n            \n            <p>10.2 あなたは、少なくとも [従業員通知] を提出することにより、理由のいかんを問わず、会社での雇用を終了することができます。</p>\n            \n            <p>保留中の休暇の調整後に残された、保存されていない期間の数か月前の通知または給与は、日付のとおりです。</p>\n            \n            <p>10.3 当社は、通知期間や解雇補償金なしに、あなたの雇用を即座に終了させる権利を留保します。</p>\n            \n            <p>あなたが不正行為または過失で有罪であると信じる合理的な根拠がある場合、または基本的な違反を犯した場合</p>\n            \n            <p>契約、または当社に損害を与えた。</p>\n            \n            <p>10. 4 何らかの理由で雇用が終了した場合、あなたは会社にすべての財産を返還するものとします。ドキュメント、および</p>\n            \n            <p>サンプル、文献、契約書、記録、リスト、図面、青写真を含む、原本とコピーの両方の紙、</p>\n            \n            <p>手紙、メモ、データなど。あなたが所有する、またはあなたの管理下にある機密情報。</p>\n            \n            <p>雇用またはクライアントの業務に。</p>\n            <p>11. 機密情報</p>\n            \n            <p>11. 1 当社での雇用期間中、あなたは自分の全時間、注意、およびスキルを、自分の能力の限りを尽くして捧げます。</p>\n            \n            <p>そのビジネス。あなたは、直接的または間接的に、関与したり、関連付けたり、接続したり、関係したり、雇用したり、または</p>\n            \n            <p>会社の事前の許可なしに、時間や学習コースを追求すること。他のビジネスに従事すること、または</p>\n            \n            <p>の事前の許可なしに、活動またはその他の投稿またはアルバイトをしたり、何らかの研究コースを追求したりすること。</p>\n            \n            <p>会社。</p>\n            \n            <p>11.2 常に最高度の機密性を維持し、記録、文書、およびその他の情報を機密として保持する必要があります。</p>\n            \n            <p>お客様が知っている、または何らかの方法でお客様に内密にされている可能性がある、当社の事業に関連する機密情報</p>\n            \n            <p>また、あなたは、会社の利益のために正当に承認された方法でのみ、そのような記録、文書、および情報を使用するものとします。為に</p>\n            \n            <p>この条項の目的 「機密情報」とは、会社の事業および顧客の事業に関する情報を意味します。</p>\n            \n            <p>これは一般には公開されておらず、雇用の過程で学習する可能性があります。これも、</p>\n            \n            <p>組織、その顧客リスト、雇用方針、人事、および情報に関連する情報に限定されません</p>\n            \n            <p>当社の製品、アイデアを含むプロセス、コンセプト、予測、技術、マニュアル、図面、デザイン、</p>\n            \n            <p>仕様、およびそのような機密情報を含むすべての書類、履歴書、記録、およびその他の文書。</p>\n            \n            <p>11.3 いかなる時も、許可なくオフィスから機密情報を削除しないでください。</p>\n            \n            <p>11.4 保護し、開示しないというあなたの義務</p>\n            \n            <p>e 機密情報は、本契約および/または当社との雇用の満了または終了後も存続します。</p>\n            \n            <p>11.5 この条項の条件に違反した場合、上記の条項に基づく略式解雇の対象となります。</p>\n            \n            <p>会社が法律であなたに対して持つことができるその他の救済。</p>\n            <p>12. 通知</p>\n            \n            <p>通知は、登録された事務所の住所で会社に提出することができます。通知は、当社からお客様に提供される場合があります。</p>\n            \n            <p>公式記録であなたがほのめかした住所。</p>\n            \n            \n            \n            <p>13. 会社方針の適用性</p>\n            \n            <p>会社は、休暇の資格、出産などの事項に関して、随時方針を宣言する権利を有するものとします。</p>\n            \n            <p>休暇、従業員の福利厚生、勤務時間、異動ポリシーなどであり、独自の裁量により随時変更される場合があります。</p>\n            \n            <p>当社のそのようなポリシー決定はすべて、あなたを拘束し、その範囲で本契約を無効にするものとします。</p>\n            \n            \n            \n            <p>14. 準拠法・裁判管轄</p>\n            \n            <p>当社でのあなたの雇用は、国の法律の対象となります。すべての紛争は、高等裁判所の管轄に服するものとします</p>\n            \n            <p>グジャラートのみ。</p>\n            \n            \n            \n            <p>15. オファーの受諾</p>\n            \n            <p>副本に署名して返送することにより、この雇用契約に同意したことを確認してください。</p>\n            \n            \n            \n            <p>私たちはあなたを歓迎し、あなたの受け入れを受け取り、あなたと一緒に働くことを楽しみにしています.</p>\n            \n            \n            \n            <p>敬具、</p>\n            \n            <p>{app_name}</p>\n            \n            <p>{date}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(10, 'nl', '<h3 style="text-align: center;">Deelnemende brief</h3>\n            \n            <p>{date}</p>\n            \n            <p>{employee}</p>\n            \n            <p>{address}</p>\n            \n            <p>Onderwerp: Benoeming voor de functie van {designation}</p>\n            \n            <p>Beste {employee_name},</p>\n            \n            <p>We zijn verheugd u de positie van {designation} bij {app_name} het Bedrijf aan te bieden onder de volgende voorwaarden en</p>\n            \n            <p>conditie:</p>\n            \n            \n            <p>1. Indiensttreding</p>\n            <p>Uw dienstverband gaat in op {start_date}</p>\n            \n            \n            <p>2. Functietitel</p>\n            \n            <p>Uw functietitel wordt {designation}.</p>\n            \n            <p>3. Salaris</p>\n            \n            <p>Uw salaris en andere voordelen zijn zoals uiteengezet in Schema 1 hierbij.</p>\n            \n            <p>4. Plaats van detachering</p>\n            \n            <p>Je wordt geplaatst op {branch}. Het kan echter zijn dat u moet werken op een bedrijfslocatie die het Bedrijf heeft, of</p>\n            \n            <p>later kan verwerven.</p>\n            \n            \n            \n            <p>5. Werkuren</p>\n            \n            <p>De normale werkdagen zijn van maandag tot en met vrijdag. Je zal de uren moeten werken die nodig zijn voor de</p>\n            \n            <p>correcte uitvoering van uw taken jegens het bedrijf. De normale werkuren zijn van {start_time} tot {end_time} en jij bent</p>\n            \n            <p>naar verwachting niet minder dan {total_hours} uur per week werken, en indien nodig voor extra uren, afhankelijk van uw</p>\n            \n            <p>verantwoordelijkheden.</p>\n            \n            \n            \n            <p>6. Verlof/Vakantie</p>\n            \n            <p>6.1 Je hebt recht op tijdelijk verlof van 12 dagen.</p>\n            \n            <p>6.2 U heeft recht op 12 werkdagen betaald ziekteverlof.</p>\n            \n            <p>6.3 De Maatschappij stelt aan het begin van elk jaar een lijst van verklaarde feestdagen op.</p>\n            \n            \n            \n            <p>7. Aard van de taken</p>\n            \n            <p>Je voert alle taken die inherent zijn aan je functie en bijkomende taken zoals het bedrijf naar beste vermogen uit;</p>\n            \n            <p>kan van tijd tot tijd een beroep op u doen om op te treden. Uw specifieke taken zijn uiteengezet in Bijlage II hierbij.</p>\n            \n            \n            \n            <p>8. Bedrijfseigendommen</p>\n            \n            <p>U onderhoudt bedrijfseigendommen, die u in de loop van</p>\n            \n            <p>uw dienstverband, en zal al deze eigendommen aan het Bedrijf teruggeven voordat afstand wordt gedaan van uw kosten, bij gebreke waarvan de kosten</p>\n            \n            <p>hiervan zal door het Bedrijf van u worden verhaald.</p>\n            \n            \n            \n            <p>9. Geschenken lenen/aannemen</p>\n            \n            <p>U zult geen geld, geschenken, beloningen of vergoedingen voor uw persoonlijk gewin lenen of accepteren van uzelf of uzelf op een andere manier plaatsen</p>\n            \n            <p>onder geldelijke verplichting jegens een persoon/klant met wie u mogelijk offici&euml;le betrekkingen heeft.</p>\n            <p>10. Be&euml;indiging</p>\n            \n            <p>10.1 Uw aanstelling kan door het Bedrijf zonder opgaaf van reden worden be&euml;indigd door u minimaal [Opzegging] maanden van tevoren</p>\n            \n            <p>schriftelijke opzegging of daarvoor in de plaats komend salaris. In dit artikel wordt onder salaris verstaan ​​het basissalaris.</p>\n            \n            <p>10.2 U kunt uw dienstverband bij het Bedrijf be&euml;indigen, zonder enige reden, door niet minder dan [Mededeling van de werknemer]</p>\n            \n            <p>maanden opzegtermijn of salaris voor de niet gespaarde periode, overgebleven na aanpassing van hangende verlofdagen, zoals op datum.</p>\n            \n            <p>10.3 Het bedrijf behoudt zich het recht voor om uw dienstverband op staande voet te be&euml;indigen zonder enige opzegtermijn of be&euml;indigingsvergoeding</p>\n            \n            <p>als het redelijke grond heeft om aan te nemen dat u zich schuldig heeft gemaakt aan wangedrag of nalatigheid, of een fundamentele schending van</p>\n            \n            <p>contract, of enig verlies voor het Bedrijf veroorzaakt.</p>\n            \n            <p>10. 4 Bij be&euml;indiging van uw dienstverband om welke reden dan ook, geeft u alle eigendommen terug aan het Bedrijf; documenten, en</p>\n            \n            <p>papier, zowel origineel als kopie&euml;n daarvan, inclusief eventuele monsters, literatuur, contracten, bescheiden, lijsten, tekeningen, blauwdrukken,</p>\n            \n            <p>brieven, notities, gegevens en dergelijke; en Vertrouwelijke informatie, in uw bezit of onder uw controle met betrekking tot uw</p>\n            \n            <p>werkgelegenheid of de zakelijke aangelegenheden van klanten.</p>\n            <p>11. Vertrouwelijke informatie</p>\n            \n            <p>11. 1 Tijdens uw dienstverband bij het Bedrijf besteedt u al uw tijd, aandacht en vaardigheden naar uw beste vermogen aan:</p>\n            \n            <p>zijn zaken. U mag zich niet, direct of indirect, inlaten met of verbonden zijn met, betrokken zijn bij, betrokken zijn bij, in dienst zijn van of</p>\n            \n            <p>tijd doorbrengen of een studie volgen, zonder voorafgaande toestemming van het bedrijf.bezig met een ander bedrijf of</p>\n            \n            <p>werkzaamheden of enige andere functie of werk in deeltijd of het volgen van welke opleiding dan ook, zonder voorafgaande toestemming van de</p>\n            \n            <p>Bedrijf.</p>\n            \n            <p>11.2 U moet altijd de hoogste graad van vertrouwelijkheid handhaven en de records, documenten en andere</p>\n            \n            <p>Vertrouwelijke informatie met betrekking tot het bedrijf van het bedrijf die u op enigerlei wijze bekend is of in vertrouwen is genomen</p>\n            \n            <p>en u zult dergelijke records, documenten en informatie alleen gebruiken op een naar behoren gemachtigde manier in het belang van het bedrijf. Voor</p>\n            \n            <p>de doeleinden van deze clausule Vertrouwelijke informatiebetekent informatie over het bedrijf van het bedrijf en dat van zijn klanten</p>\n            \n            <p>die niet beschikbaar is voor het grote publiek en die u tijdens uw dienstverband kunt leren. Dit bevat,</p>\n            \n            <p>maar is niet beperkt tot informatie met betrekking tot de organisatie, haar klantenlijsten, werkgelegenheidsbeleid, personeel en informatie</p>\n            \n            <p>over de producten, processen van het bedrijf, inclusief idee&euml;n, concepten, projecties, technologie, handleidingen, tekeningen, ontwerpen,</p>\n            \n            <p>specificaties, en alle papieren, cvs, dossiers en andere documenten die dergelijke vertrouwelijke informatie bevatten.</p>\n            \n            <p>11.3 U verwijdert nooit vertrouwelijke informatie van het kantoor zonder toestemming.</p>\n            \n            <p>11.4 Uw plicht om te beschermen en niet openbaar te maken</p>\n            \n            <p>e Vertrouwelijke informatie blijft van kracht na het verstrijken of be&euml;indigen van deze Overeenkomst en/of uw dienstverband bij het Bedrijf.</p>\n            \n            <p>11.5 Schending van de voorwaarden van deze clausule maakt u aansprakelijk voor ontslag op staande voet op grond van de bovenstaande clausule, naast eventuele:</p>\n            \n            <p>ander rechtsmiddel dat het Bedrijf volgens de wet tegen u heeft.</p>\n            <p>12. Kennisgevingen</p>\n            \n            <p>Kennisgevingen kunnen door u aan het Bedrijf worden gedaan op het adres van de maatschappelijke zetel. Kennisgevingen kunnen door het bedrijf aan u worden gedaan op:</p>\n            \n            <p>het door u opgegeven adres in de offici&euml;le administratie.</p>\n            \n            \n            \n            <p>13. Toepasselijkheid van het bedrijfsbeleid</p>\n            \n            <p>Het bedrijf heeft het recht om van tijd tot tijd beleidsverklaringen af ​​te leggen met betrekking tot zaken als verlofrecht, moederschap</p>\n            \n            <p>verlof, werknemersvoordelen, werkuren, transferbeleid, enz., en kan deze van tijd tot tijd naar eigen goeddunken wijzigen.</p>\n            \n            <p>Al dergelijke beleidsbeslissingen van het Bedrijf zijn bindend voor u en hebben voorrang op deze Overeenkomst in die mate.</p>\n            \n            \n            \n            <p>14. Toepasselijk recht/jurisdictie</p>\n            \n            <p>Uw dienstverband bij het bedrijf is onderworpen aan de landelijke wetgeving. Alle geschillen zijn onderworpen aan de jurisdictie van de High Court</p>\n            \n            <p>Alleen Gujarat.</p>\n            \n            \n            \n            <p>15. Aanvaarding van ons aanbod</p>\n            \n            <p>Bevestig uw aanvaarding van deze arbeidsovereenkomst door het duplicaat te ondertekenen en terug te sturen.</p>\n            \n            \n            \n            <p>Wij heten u van harte welkom en kijken ernaar uit uw acceptatie te ontvangen en met u samen te werken.</p>\n            \n            \n            \n            <p>Hoogachtend,</p>\n            \n            <p>{app_name}</p>\n            \n            <p>{date}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(11, 'pl', '<h3 style="text-align: center;">Dołączanie listu</h3>\n            \n            <p>{date }</p>\n            \n            <p>{employee_name }</p>\n            \n            <p>{address }</p>\n            \n            \n            <p>Dotyczy: mianowania na stanowisko {designation}</p>\n            \n            <p>Szanowny {employee_name },</p>\n            \n            <p>Mamy przyjemność zaoferować Państwu, stanowisko {designation} z {app_name } "Sp&oacute;łka" na poniższych warunkach i</p>\n            <p>warunki:</p>\n            \n            <p>1. Rozpoczęcie pracy</p>\n            \n            <p>Twoje zatrudnienie będzie skuteczne, jak na {start_date }</p>\n            \n            <p>2. Tytuł zadania</p>\n            <p>Tw&oacute;j tytuł pracy to {designation}.</p>\n            \n            <p>3. Salary</p>\n            \n            <p>Twoje wynagrodzenie i inne świadczenia będą określone w Zestawieniu 1, do niniejszego rozporządzenia.</p>\n            \n            \n            <p>4. Miejsce delegowania</p>\n            <p>Użytkownik zostanie opublikowany w {branch }. Użytkownik może jednak być zobowiązany do pracy w dowolnym miejscu prowadzenia działalności, kt&oacute;re Sp&oacute;łka posiada, lub może p&oacute;źniej nabyć.</p>\n            \n            <p>5. Godziny pracy</p>\n            <p>Normalne dni robocze są od poniedziałku do piątku. Będziesz zobowiązany do pracy na takie godziny, jakie są niezbędne do prawidłowego wywiązania się ze swoich obowiązk&oacute;w wobec Sp&oacute;łki. Normalne godziny pracy to {start_time } do {end_time }, a użytkownik oczekuje, że będzie pracować nie mniej niż {total_hours } godzin tygodniowo, a jeśli to konieczne, przez dodatkowe godziny w zależności od Twojego</p>\n            <p>odpowiedzialności.</p>\n            \n            <p>6. Urlop/Wakacje</p>\n            \n            <p>6.1 Przysługuje prawo do urlopu dorywczego w ciągu 12 dni.</p>\n            \n            <p>6.2 Użytkownik ma prawo do 12 dni roboczych od wypłatnego zwolnienia chorobowego.</p>\n            \n            <p>6.3 Sp&oacute;łka powiadamia na początku każdego roku wykaz ogłoszonych świąt.&nbsp;</p>\n            \n            \n            \n            <p>7. Rodzaj obowiązk&oacute;w</p>\n            \n            <p>Będziesz wykonywać na najlepsze ze swojej zdolności wszystkie obowiązki, jak są one nieodłączne w swoim poście i takie dodatkowe obowiązki, jak firma może zadzwonić do wykonania, od czasu do czasu. Państwa szczeg&oacute;lne obowiązki są określone w załączniku II do niniejszego rozporządzenia.</p>\n            \n            \n            \n            <p>8. Właściwość przedsiębiorstwa</p>\n            \n            <p>Zawsze będziesz utrzymywać w dobrej kondycji Firmy, kt&oacute;ra może być powierzona do użytku służbowego w trakcie trwania</p>\n            \n            <p>Twoje zatrudnienie, i zwr&oacute;ci wszystkie takie nieruchomości do Sp&oacute;łki przed zrzeczeniem się opłaty, w przeciwnym razie koszty te same będą odzyskane od Ciebie przez Sp&oacute;łkę.</p>\n            \n            <p>9. Wypożyczanie/akceptowanie prezent&oacute;w</p>\n            \n            <p>Nie będziesz pożyczał ani nie akceptować żadnych pieniędzy, dar&oacute;w, nagrody lub odszkodowania za swoje osobiste zyski z lub w inny spos&oacute;b złożyć się w ramach zobowiązania pieniężnego do jakiejkolwiek osoby/klienta, z kt&oacute;rym może być posiadanie oficjalne relacje.</p>\n            <p>10. Zakończenie</p>\n            \n            <p>10.1 Powołanie może zostać wypowiedziane przez Sp&oacute;łkę, bez względu na przyczynę, poprzez podanie nie mniej niż [ Zawiadomienie] miesięcy uprzedniego wypowiedzenia na piśmie lub wynagrodzenia w miejsce jego wystąpienia. Dla cel&oacute;w niniejszej klauzuli, wynagrodzenie oznacza wynagrodzenie podstawowe.</p>\n            \n            <p>10.2 Użytkownik może rozwiązać umowę o pracę ze Sp&oacute;łką, bez jakiejkolwiek przyczyny, podając nie mniej niż [ ogłoszenie o pracowniku] miesiące przed powiadomieniem lub wynagrodzeniem za niezaoszczędzony okres, pozostawiony po skorygowaniu oczekujących liści, jak na dzień.</p>\n            \n            <p>10.3 Sp&oacute;łka zastrzega sobie prawo do wypowiedzenia umowy o pracę bez okresu wypowiedzenia lub wypłaty z tytułu rozwiązania umowy, jeżeli ma on uzasadnione podstawy, aby sądzić, że jesteś winny wykroczenia lub niedbalstwa, lub popełnił jakiekolwiek istotne naruszenie umowy lub spowodował jakiekolwiek straty w Sp&oacute;łce.&nbsp;</p>\n            \n            <p>10. 4 W sprawie rozwiązania stosunku pracy z jakiegokolwiek powodu, powr&oacute;cisz do Sp&oacute;łki wszystkie nieruchomości; dokumenty, i&nbsp;</p>\n            \n            <p>papieru, zar&oacute;wno oryginału, jak i jego kopii, w tym wszelkich pr&oacute;bek, literatury, um&oacute;w, zapis&oacute;w, wykaz&oacute;w, rysunk&oacute;w, konspekt&oacute;w,</p>\n            \n            <p>listy, notatki, dane i podobne; informacje poufne, znajdujące się w posiadaniu lub pod Twoją kontrolą związane z zatrudnieniem lub sprawami biznesowymi klient&oacute;w.&nbsp; &nbsp;</p>\n            \n            \n            \n            <p>11. Informacje poufne</p>\n            \n            <p>11. 1 Podczas swojego zatrudnienia z Firmą poświęcisz cały czas, uwagę i umiejętności na najlepszą z Twoich możliwości</p>\n            \n            <p>swojej działalności gospodarczej. Użytkownik nie może, bezpośrednio lub pośrednio, prowadzić lub wiązać się z, być związany z, dotyka, zatrudniony lub czas lub prowadzić jakikolwiek kierunek studi&oacute;w, bez uprzedniej zgody Company.zaangażował się w innej działalności gospodarczej lub działalności lub jakikolwiek inny post lub pracy w niepełnym wymiarze czasu lub prowadzić jakikolwiek kierunek studi&oacute;w, bez uprzedniej zgody</p>\n            \n            <p>Firma.</p>\n            \n            <p>11.2 Zawsze musisz zachować najwyższy stopień poufności i zachować jako poufny akt, dokumenty, i inne&nbsp;</p>\n            \n            <p>Informacje poufne dotyczące działalności Sp&oacute;łki, kt&oacute;re mogą być znane Państwu lub w dowolny spos&oacute;b zwierzyny, a Użytkownik będzie posługiwać się takimi zapisami, dokumentami i informacjami tylko w spos&oacute;b należycie autoryzowany w interesie Sp&oacute;łki. Do cel&oacute;w niniejszej klauzuli "Informacje poufne" oznaczają informacje o działalności Sp&oacute;łki oraz o jej klientach, kt&oacute;re nie są dostępne dla og&oacute;łu społeczeństwa i kt&oacute;re mogą być przez Państwa w trakcie zatrudnienia dowiedzione przez Państwa. Obejmuje to,</p>\n            \n            <p>ale nie ogranicza się do informacji związanych z organizacją, jej listami klient&oacute;w, politykami zatrudnienia, personelem oraz informacjami o produktach firmy, procesach, w tym pomysłach, koncepcjach, projekcjach, technikach, podręcznikach, rysunkach, projektach,&nbsp;</p>\n            \n            <p>specyfikacje, a także wszystkie dokumenty, życiorysy, zapisy i inne dokumenty zawierające takie informacje poufne.</p>\n            \n            <p>11.3 W żadnym momencie nie usunie Pan żadnych Informacji Poufnych z urzędu bez zezwolenia.</p>\n            \n            <p>11.4 Tw&oacute;j obowiązek ochrony a nie disclos</p>\n            \n            <p>Informacje poufne przetrwają wygaśnięcie lub rozwiązanie niniejszej Umowy i/lub Twoje zatrudnienie w Sp&oacute;łce.</p>\n            \n            <p>11.5 Naruszenie warunk&oacute;w niniejszej klauzuli spowoduje, że Użytkownik będzie zobowiązany do skr&oacute;conej umowy w ramach klauzuli powyżej, opr&oacute;cz wszelkich innych środk&oacute;w zaradcze, jakie Sp&oacute;łka może mieć przeciwko Państwu w prawie.</p>\n            \n            \n            \n            <p>12. Uwagi</p>\n            \n            <p>Ogłoszenia mogą być podane przez Państwa do Sp&oacute;łki pod adresem jej siedziby. Ogłoszenia mogą być podane przez Sp&oacute;łkę do Państwa na adres intymniony przez Państwa w ewidencji urzędowej.</p>\n            \n            \n            \n            <p>13. Stosowność polityki firmy</p>\n            \n            <p>Sp&oacute;łka jest uprawniona do składania deklaracji politycznych od czasu do czasu dotyczących spraw takich jak prawo do urlopu macierzyńskiego, macierzyństwo</p>\n            \n            <p>urlop&oacute;w, świadczeń pracowniczych, godzin pracy, polityki transferowej itp., a także mogą zmieniać to samo od czasu do czasu według własnego uznania.</p>\n            \n            <p>Wszystkie takie decyzje polityczne Sp&oacute;łki są wiążące dla Państwa i przesłaniają niniejszą Umowę w tym zakresie.</p>\n            \n            \n            \n            <p>14. Prawo właściwe/jurysdykcja</p>\n            \n            <p>Twoje zatrudnienie ze Sp&oacute;łką podlega prawu krajowi. Wszelkie spory podlegają właściwości Sądu Najwyższego</p>\n            \n            <p>Tylko Gujarat.</p>\n            \n            \n            \n            <p>15. Akceptacja naszej oferty</p>\n            \n            <p>Prosimy o potwierdzenie przyjęcia niniejszej Umowy o pracę poprzez podpisanie i zwr&oacute;cenie duplikatu.</p>\n            \n            \n            \n            <p>Zapraszamy Państwa i czekamy na Państwa przyjęcie i wsp&oacute;łpracę z Tobą.</p>\n            \n            \n            \n            <p>Z Państwa Sincerely,</p>\n            \n            <p>{app_name }</p>\n            \n            <p>{date }</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(12, 'pt', '<h3 style="text-align: center;">Carta De Ades&atilde;o</h3>\n            \n            <p>{data}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{address}</p>\n            \n            \n            <p>Assunto: Nomea&ccedil;&atilde;o para o cargo de {designation}</p>\n            \n            <p>Querido {employee_name},</p>\n            \n            \n            <p>Temos o prazer de oferec&ecirc;-lo, a posi&ccedil;&atilde;o de {designation} com {app_name} a Empresa nos seguintes termos e</p>\n            <p>condi&ccedil;&otilde;es:</p>\n            \n            \n            <p>1. Comentamento do emprego</p>\n            \n            <p>Seu emprego ser&aacute; efetivo, a partir de {start_date}</p>\n            \n            \n            <p>2. T&iacute;tulo do emprego</p>\n            \n            <p>Seu cargo de trabalho ser&aacute; {designation}.</p>\n            \n            <p>3. Sal&aacute;rio</p>\n            \n            <p>Seu sal&aacute;rio e outros benef&iacute;cios ser&atilde;o conforme estabelecido no Planejamento 1, hereto.</p>\n            \n            <p>4. Local de postagem</p>\n            \n            <p>Voc&ecirc; ser&aacute; postado em {branch}. Voc&ecirc; pode, no entanto, ser obrigado a trabalhar em qualquer local de neg&oacute;cios que a Empresa tenha, ou possa posteriormente adquirir.</p>\n            \n            <p>5. Horas de Trabalho</p>\n            \n            <p>Os dias normais de trabalho s&atilde;o de segunda a sexta-feira. Voc&ecirc; ser&aacute; obrigado a trabalhar por tais horas, conforme necess&aacute;rio para a quita&ccedil;&atilde;o adequada de suas fun&ccedil;&otilde;es para a Companhia. As horas de trabalho normais s&atilde;o de {start_time} para {end_time} e voc&ecirc; deve trabalhar n&atilde;o menos de {total_horas} horas semanais, e se necess&aacute;rio para horas adicionais dependendo do seu</p>\n            <p>responsabilidades.</p>\n            \n            <p>6. Leave / Holidays</p>\n            \n            <p>6,1 Voc&ecirc; tem direito a licen&ccedil;a casual de 12 dias.</p>\n            \n            <p>6,2 Voc&ecirc; tem direito a 12 dias &uacute;teis de licen&ccedil;a remunerada remunerada.</p>\n            \n            <p>6,3 Companhia notificar&aacute; uma lista de feriados declarados no in&iacute;cio de cada ano.&nbsp;</p>\n            \n            \n            \n            <p>7. Natureza dos deveres</p>\n            \n            <p>Voc&ecirc; ir&aacute; executar ao melhor da sua habilidade todos os deveres como s&atilde;o inerentes ao seu cargo e tais deveres adicionais como a empresa pode ligar sobre voc&ecirc; para executar, de tempos em tempos. Os seus deveres espec&iacute;ficos s&atilde;o estabelecidos no Hereto do Planejamento II.</p>\n            \n            \n            \n            <p>8. Propriedade da empresa</p>\n            \n            <p>Voc&ecirc; sempre manter&aacute; em bom estado propriedade Empresa, que poder&aacute; ser confiada a voc&ecirc; para uso oficial durante o curso de</p>\n            \n            <p>o seu emprego, e devolver&aacute; toda essa propriedade &agrave; Companhia antes de abdicar de sua acusa&ccedil;&atilde;o, falhando qual o custo do mesmo ser&aacute; recuperado de voc&ecirc; pela Companhia.</p>\n            \n            \n            \n            <p>9. Borremir / aceitar presentes</p>\n            \n            <p>Voc&ecirc; n&atilde;o vai pedir empr&eacute;stimo ou aceitar qualquer dinheiro, presente, recompensa ou indeniza&ccedil;&atilde;o por seus ganhos pessoais de ou de outra forma colocar-se sob obriga&ccedil;&atilde;o pecuni&aacute;ria a qualquer pessoa / cliente com quem voc&ecirc; pode estar tendo rela&ccedil;&otilde;es oficiais.</p>\n            \n            \n            \n            <p>10. Termina&ccedil;&atilde;o</p>\n            \n            <p>10,1 Sua nomea&ccedil;&atilde;o pode ser rescindida pela Companhia, sem qualquer raz&atilde;o, dando-lhe n&atilde;o menos do que [aviso] meses de aviso pr&eacute;vio por escrito ou de sal&aacute;rio em lieu deste. Para efeito da presente cl&aacute;usula, o sal&aacute;rio deve significar sal&aacute;rio base.</p>\n            \n            <p>10,2 Voc&ecirc; pode rescindir seu emprego com a Companhia, sem qualquer causa, ao dar nada menos que [Aviso de contrata&ccedil;&atilde;o] meses de aviso pr&eacute;vio ou sal&aacute;rio para o per&iacute;odo n&atilde;o salvo, deixado ap&oacute;s ajuste de folhas pendentes, conforme data de encontro.</p>\n            \n            <p>10,3 Empresa reserva-se o direito de rescindir o seu emprego sumariamente sem qualquer prazo de aviso ou de rescis&atilde;o se tiver terreno razo&aacute;vel para acreditar que voc&ecirc; &eacute; culpado de m&aacute; conduta ou neglig&ecirc;ncia, ou tenha cometido qualquer viola&ccedil;&atilde;o fundamental de contrato, ou tenha causado qualquer perda para a Empresa.&nbsp;</p>\n            \n            <p>10. 4 Sobre a rescis&atilde;o do seu emprego por qualquer motivo, voc&ecirc; retornar&aacute; para a Empresa todos os bens; documentos e&nbsp;</p>\n            \n            <p>papel, tanto originais como c&oacute;pias dos mesmos, incluindo quaisquer amostras, literatura, contratos, registros, listas, desenhos, plantas,</p>\n            \n            <p>cartas, notas, dados e semelhantes; e Informa&ccedil;&otilde;es Confidenciais, em sua posse ou sob seu controle relacionado ao seu emprego ou aos neg&oacute;cios de neg&oacute;cios dos clientes.&nbsp; &nbsp;</p>\n            \n            \n            \n            <p>11. Informa&ccedil;&otilde;es Confidenciais</p>\n            \n            <p>11. 1 Durante o seu emprego com a Companhia voc&ecirc; ir&aacute; dedicar todo o seu tempo, aten&ccedil;&atilde;o e habilidade para o melhor de sua capacidade de</p>\n            \n            <p>o seu neg&oacute;cio. Voc&ecirc; n&atilde;o deve, direta ou indiretamente, se envolver ou associar-se com, estar conectado com, preocupado, empregado, ou tempo ou prosseguir qualquer curso de estudo, sem a permiss&atilde;o pr&eacute;via do Company.engajado em qualquer outro neg&oacute;cio ou atividades ou qualquer outro cargo ou trabalho parcial ou prosseguir qualquer curso de estudo, sem a permiss&atilde;o pr&eacute;via do</p>\n            \n            <p>Empresa.</p>\n            \n            <p>11,2 &Eacute; preciso manter sempre o mais alto grau de confidencialidade e manter como confidenciais os registros, documentos e outros&nbsp;</p>\n            \n            <p>Informa&ccedil;&otilde;es confidenciais relativas ao neg&oacute;cio da Companhia que possam ser conhecidas por voc&ecirc; ou confiadas em voc&ecirc; por qualquer meio e utilizar&atilde;o tais registros, documentos e informa&ccedil;&otilde;es apenas de forma devidamente autorizada no interesse da Companhia. Para efeitos da presente cl&aacute;usula "Informa&ccedil;&otilde;es confidenciais" significa informa&ccedil;&atilde;o sobre os neg&oacute;cios da Companhia e a dos seus clientes que n&atilde;o est&aacute; dispon&iacute;vel para o p&uacute;blico em geral e que poder&aacute; ser aprendida por voc&ecirc; no curso do seu emprego. Isso inclui,</p>\n            \n            <p>mas n&atilde;o se limita a, informa&ccedil;&otilde;es relativas &agrave; organiza&ccedil;&atilde;o, suas listas de clientes, pol&iacute;ticas de emprego, pessoal, e informa&ccedil;&otilde;es sobre os produtos da Companhia, processos incluindo ideias, conceitos, proje&ccedil;&otilde;es, tecnologia, manuais, desenho, desenhos,&nbsp;</p>\n            \n            <p>especifica&ccedil;&otilde;es, e todos os pap&eacute;is, curr&iacute;culos, registros e outros documentos que contenham tais Informa&ccedil;&otilde;es Confidenciais.</p>\n            \n            <p>11,3 Em nenhum momento, voc&ecirc; remover&aacute; quaisquer Informa&ccedil;&otilde;es Confidenciais do escrit&oacute;rio sem permiss&atilde;o.</p>\n            \n            <p>11,4 O seu dever de salvaguardar e n&atilde;o os desclos</p>\n            \n            <p>Informa&ccedil;&otilde;es Confidenciais sobreviver&atilde;o &agrave; expira&ccedil;&atilde;o ou &agrave; rescis&atilde;o deste Contrato e / ou do seu emprego com a Companhia.</p>\n            \n            <p>11,5 Viola&ccedil;&atilde;o das condi&ccedil;&otilde;es desta cl&aacute;usula ir&aacute; torn&aacute;-lo sujeito a demiss&atilde;o sum&aacute;ria sob a cl&aacute;usula acima, al&eacute;m de qualquer outro rem&eacute;dio que a Companhia possa ter contra voc&ecirc; em lei.</p>\n            \n            \n            \n            <p>12. Notices</p>\n            \n            <p>Os avisos podem ser conferidos por voc&ecirc; &agrave; Empresa em seu endere&ccedil;o de escrit&oacute;rio registrado. Os avisos podem ser conferidos pela Companhia a voc&ecirc; no endere&ccedil;o intimado por voc&ecirc; nos registros oficiais.</p>\n            \n            \n            \n            <p>13. Aplicabilidade da Pol&iacute;tica da Empresa</p>\n            \n            <p>A Companhia tem direito a fazer declara&ccedil;&otilde;es de pol&iacute;tica de tempos em tempos relativos a mat&eacute;rias como licen&ccedil;a de licen&ccedil;a, maternidade</p>\n            \n            <p>sair, benef&iacute;cios dos empregados, horas de trabalho, pol&iacute;ticas de transfer&ecirc;ncia, etc., e pode alterar o mesmo de vez em quando a seu exclusivo crit&eacute;rio.</p>\n            \n            <p>Todas essas decis&otilde;es de pol&iacute;tica da Companhia devem ser vinculativas para si e substituir&atilde;o este Acordo nessa medida.</p>\n            \n            \n            \n            <p>14. Direito / Jurisdi&ccedil;&atilde;o</p>\n            \n            <p>Seu emprego com a Companhia est&aacute; sujeito &agrave;s leis do Pa&iacute;s. Todas as disputas est&atilde;o sujeitas &agrave; jurisdi&ccedil;&atilde;o do Tribunal Superior</p>\n            \n            <p>Gujarat apenas.</p>\n            \n            \n            \n            <p>15. Aceita&ccedil;&atilde;o da nossa oferta</p>\n            \n            <p>Por favor, confirme sua aceita&ccedil;&atilde;o deste Contrato de Emprego assinando e retornando a c&oacute;pia duplicada.</p>\n            \n            \n            \n            <p>N&oacute;s acolhemos voc&ecirc; e estamos ansiosos para receber sua aceita&ccedil;&atilde;o e para trabalhar com voc&ecirc;.</p>\n            \n            \n            \n            <p>Seu Sinceramente,</p>\n            \n            <p>{app_name}</p>\n            \n            <p>{data}</p>\n            ', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(13, 'ru', '<h3 style="text-align: center;">Присоединение к письму</h3>\n            \n            <p>{date}</p>\n            \n            <p>{ employee_name }</p>\n            <p>{address}</p>\n            \n            <p>Тема: Назначение на должность {designation}</p>\n            \n            <p>Уважаемый { employee_name },</p>\n            \n            <p>Мы рады предложить Вам, позицию {designation} с { app_name } Компания на следующих условиях и</p>\n            \n            <p>условия:</p>\n            \n            \n            <p>1. Начало работы</p>\n            \n            <p>Ваше трудоустройство будет эффективным, начиная с { start_date }</p>\n            \n            \n            <p>2. Название должности</p>\n            <p>Ваш заголовок задания будет {designation}.</p>\n            \n            <p>3. Зарплата</p>\n            <p>Ваши оклады и другие пособия будут установлены в соответствии с расписанием, изложенным в приложении 1 к настоящему.</p>\n            \n            <p>4. Место размещения</p>\n            <p>Вы будете работать в { branch }. Вы, однако, можете работать в любом месте, которое компания имеет или может впоследствии приобрести.</p>\n            \n            \n            \n            <p>5. Часы работы</p>\n            <p>Обычные рабочие дни-с понедельника по пятницу. Вы должны будете работать в течение таких часов, как это необходимо для надлежащего выполнения Ваших обязанностей перед компанией. Обычные рабочие часы-от { start_time } до { end_time }, и вы, как ожидается, будут работать не менее { total_hours } часов каждую неделю, и при необходимости в течение дополнительных часов в зависимости от вашего</p>\n            <p>ответственности.</p>\n            <p>6. Отпуск/Праздники</p>\n            \n            <p>6.1 Вы имеете право на случайный отпуск продолжительностью 12 дней.</p>\n            \n            <p>6.2 Вы имеете право на 12 рабочих дней оплачиваемого отпуска по болезни.</p>\n            \n            <p>6.3 Компания в начале каждого года уведомляет об объявленных праздниках.&nbsp;</p>\n            \n            \n            \n            <p>7. Характер обязанностей</p>\n            \n            <p>Вы будете выполнять все обязанности, присующие вам, и такие дополнительные обязанности, которые компания может призвать к вам, время от времени. Ваши конкретные обязанности изложены в приложении II к настоящему.</p>\n            \n            \n            \n            <p>8. Свойство компании</p>\n            \n            <p>Вы всегда будете поддерживать в хорошем состоянии имущество Компании, которое может быть доверено Вам для служебного пользования в течение</p>\n            \n            <p>вашей занятости, и возвратит все это имущество Компании до отказа от вашего заряда, при отсутствии которого стоимость одного и того же имущества будет взыскана с Вас компанией.</p>\n            \n            \n            \n            <p>9. Боровить/принять подарки</p>\n            \n            <p>Вы не будете брать взаймы или принимать какие-либо деньги, подарки, вознаграждение или компенсацию за ваши личные доходы от или в ином месте под денежный долг любому лицу/клиенту, с которым у вас могут быть официальные сделки.</p>\n            \n            \n            \n            <p>10. Прекращение</p>\n            \n            <p>10.1 Ваше назначение может быть прекращено компанией без каких бы то ни было оснований, предоставляя Вам не менее [ Уведомление] месяцев, предшея уведомлению в письменной форме или окладе вместо них. Для целей этого положения заработная плата означает базовый оклад.</p>\n            \n            <p>10.2 Вы можете прекратить свою трудовую деятельность с компанией без каких-либо причин, предоставляя не меньше, чем [ Employee Notice] months  предварительное уведомление или оклад за несохраненный период, оставатся после корректировки отложенных листьев, как на сегодняшний день.</p>\n            \n            <p>10.3 Компания оставляет за собой право прекратить вашу работу в суммарном порядке без какого-либо уведомления о сроке или увольнении, если у нее есть достаточные основания полагать, что вы виновны в проступке или халатности, или совершили какое-либо существенное нарушение договора, или причинило убытки Компании.&nbsp;</p>\n            \n            <p>10. 4 О прекращении вашей работы по какой бы то ни было причине вы вернетесь в Компании все имущество; документы, а&nbsp;</p>\n            \n            <p>бумаги, как оригинальные, так и их копии, включая любые образцы, литературу, контракты, записи, списки, чертежи, чертежи,</p>\n            \n            <p>письма, заметки, данные и тому подобное; и Конфиденциальная информация, в вашем распоряжении или под вашим контролем, связанным с вашей работой или деловыми делами клиентов.&nbsp; &nbsp;</p>\n            \n            \n            \n            <p>11. Конфиденциальная информация</p>\n            \n            <p>11. 1 Во время вашего трудоустройства с компанией Вы посвяте все свое время, внимание, умение максимально</p>\n            \n            <p>Его бизнес. Вы не должны, прямо или косвенно, заниматься или ассоциировать себя с заинтересованными, занятым, занятым, или временем, или продолжать любой курс обучения, без предварительного разрешения Компани.заниматься каким-либо другим бизнесом или деятельностью или любой другой пост или работать неполный рабочий день или заниматься какой бы то ни было исследованием, без предварительного разрешения</p>\n            \n            <p>Компания.</p>\n            \n            <p>11.2 Вы всегда должны сохранять наивысшую степень конфиденциальности и хранить в качестве конфиденциальной записи, документы и другие&nbsp;</p>\n            \n            <p>Конфиденциальная информация, касающаяся бизнеса Компании, которая может быть вам известна или конфиденциальна любым способом, и Вы будете использовать такие записи, документы и информацию только в установленном порядке в интересах Компании. Для целей настоящей статьи "Конфиденциальная информация" означает информацию о бизнесе Компании и о ее клиентах, которая недоступна для широкой общественности и которая может быть изучилась Вами в ходе вашей работы. Это включает в себя:</p>\n            \n            <p>но не ограничивается информацией, касающейся организации, ее списков клиентов, политики в области занятости, персонала и информации о продуктах Компании, процессах, включая идеи, концепции, прогнозы, технологии, руководства, чертеж, чертеж,&nbsp;</p>\n            \n            <p>спецификации, и все бумаги, резюме, записи и другие документы, содержащие такую Конфиденциальную Информацию.</p>\n            \n            <p>11.3 В любое время вы не будете удалять конфиденциальную информацию из офиса без разрешения.</p>\n            \n            <p>11.4 Ваш долг защищать и не отсосать</p>\n            \n            <p>e Конфиденциальная информация выдержит срок действия или прекращения действия настоящего Соглашения и/или вашей работы с компанией.</p>\n            \n            <p>11.5 Нарушение условий, изложенных в настоящем положении, приведет к тому, что в дополнение к любым другим средствам правовой защиты, которые компания может иметь против вас, в соответствии с вышеприведенным положением, вы можете получить краткое увольнение в соответствии с этим положением.</p>\n            \n            \n            \n            <p>12. Замечания</p>\n            \n            <p>Уведомления могут быть даны Вами Компании по адресу ее зарегистрированного офиса. Извещения могут быть даны компанией Вам по адресу, с которым вы в официальных отчетах.</p>\n            \n            \n            \n            <p>13. Применимость политики компании</p>\n            \n            <p>Компания вправе время от времени делать политические заявления по таким вопросам, как право на отпуск, материнство</p>\n            \n            <p>отпуска, пособия для работников, продолжительность рабочего дня, трансферная политика и т.д. и время от времени могут изменяться исключительно по своему усмотрению.</p>\n            \n            <p>Все такие принципиальные решения Компании являются обязательными для Вас и переопределяют это Соглашение в такой степени.</p>\n            \n            \n            \n            <p>14. Регулирующий Право/юрисдикция</p>\n            \n            <p>Ваше трудоустройство с компанией подпадает под действие законов страны. Все споры подлежат юрисдикции Высокого суда</p>\n            \n            <p>Только Гуджарат.</p>\n            \n            \n            \n            <p>15. Принятие нашего предложения</p>\n            \n            <p>Пожалуйста, подтвердите свое согласие с этим Договором о занятости, подписав и возвращая дубликат копии.</p>\n            \n            \n            \n            <p>Мы приветствуем Вас и надеемся на то, что Вы принимаете свое согласие и работаете с Вами.</p>\n            \n            \n            \n            <p>Искренне Ваш,</p>\n            \n            <p>{ app_name }</p>\n            \n            <p>{date}</p>\n            ', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56');
/*!40000 ALTER TABLE `joining_letters` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.journal_entries
CREATE TABLE IF NOT EXISTS `journal_entries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `journal_id` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.journal_entries: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `journal_entries` DISABLE KEYS */;
INSERT INTO `journal_entries` (`id`, `date`, `reference`, `description`, `journal_id`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, '2022-10-19', 'eeqweqe', 'qweqwe', 1, 2, '2022-10-19 16:55:37', '2022-10-19 16:55:37'),
	(2, '2022-10-01', '0001', 'CTA NC', 2, 2, '2022-10-27 18:06:54', '2022-10-27 18:06:54'),
	(3, '2022-10-27', '0003', 'COMPRA  REPUESTOS VEHICULOS', 3, 2, '2022-10-27 18:20:52', '2022-10-27 18:20:52'),
	(4, '2022-10-27', '0005', 'COMPRA CEMENTO', 4, 2, '2022-10-27 20:31:29', '2022-10-27 20:31:29');
/*!40000 ALTER TABLE `journal_entries` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.journal_items
CREATE TABLE IF NOT EXISTS `journal_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `journal` int NOT NULL DEFAULT '0',
  `account` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `debit` double(8,2) NOT NULL DEFAULT '0.00',
  `credit` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.journal_items: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `journal_items` DISABLE KEYS */;
INSERT INTO `journal_items` (`id`, `journal`, `account`, `description`, `debit`, `credit`, `created_at`, `updated_at`) VALUES
	(1, 1, 9, NULL, 20.00, 0.00, '2022-10-19 16:55:37', '2022-10-19 16:55:37'),
	(2, 1, 17, NULL, 0.00, 20.00, '2022-10-19 16:55:37', '2022-10-19 16:55:37'),
	(3, 2, 7, 'CTA INICIAL', 150.00, 0.00, '2022-10-27 18:06:54', '2022-10-27 18:06:54'),
	(4, 2, 18, NULL, 0.00, 100.00, '2022-10-27 18:06:54', '2022-10-27 18:06:54'),
	(5, 2, 4, NULL, 0.00, 50.00, '2022-10-27 18:06:54', '2022-10-27 18:06:54'),
	(6, 3, 18, NULL, 150.00, 0.00, '2022-10-27 18:20:52', '2022-10-27 18:20:52'),
	(7, 3, 7, NULL, 0.00, 150.00, '2022-10-27 18:20:52', '2022-10-27 18:20:52'),
	(8, 4, 3, NULL, 300.00, 0.00, '2022-10-27 20:31:29', '2022-10-27 20:31:29'),
	(9, 4, 7, NULL, 0.00, 300.00, '2022-10-27 20:31:29', '2022-10-27 20:31:29');
/*!40000 ALTER TABLE `journal_items` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.labels
CREATE TABLE IF NOT EXISTS `labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pipeline_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.labels: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` (`id`, `name`, `color`, `pipeline_id`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'On Hold', 'primary', 1, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(2, 'New', 'info', 1, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(3, 'Pending', 'warning', 1, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(4, 'Loss', 'danger', 1, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(5, 'Win', 'success', 1, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54');
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.landing_page_sections
CREATE TABLE IF NOT EXISTS `landing_page_sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `section_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_order` int NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `section_type` enum('section-1','section-2','section-3','section-4','section-5','section-6','section-7','section-8','section-9','section-10','section-plan') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_demo_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_blade_file_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.landing_page_sections: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `landing_page_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_page_sections` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.leads
CREATE TABLE IF NOT EXISTS `leads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `pipeline_id` int NOT NULL,
  `stage_id` int NOT NULL,
  `sources` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `labels` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `is_converted` int NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `leads_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.leads: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.lead_activity_logs
CREATE TABLE IF NOT EXISTS `lead_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `lead_id` bigint unsigned NOT NULL,
  `log_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.lead_activity_logs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `lead_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_activity_logs` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.lead_calls
CREATE TABLE IF NOT EXISTS `lead_calls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint unsigned NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `call_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_calls_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_calls_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.lead_calls: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `lead_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_calls` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.lead_discussions
CREATE TABLE IF NOT EXISTS `lead_discussions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint unsigned NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_discussions_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_discussions_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.lead_discussions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `lead_discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_discussions` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.lead_emails
CREATE TABLE IF NOT EXISTS `lead_emails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint unsigned NOT NULL,
  `to` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_emails_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_emails_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.lead_emails: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `lead_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_emails` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.lead_files
CREATE TABLE IF NOT EXISTS `lead_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint unsigned NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_files_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_files_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.lead_files: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `lead_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_files` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.lead_stages
CREATE TABLE IF NOT EXISTS `lead_stages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pipeline_id` int NOT NULL,
  `created_by` int NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.lead_stages: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `lead_stages` DISABLE KEYS */;
INSERT INTO `lead_stages` (`id`, `name`, `pipeline_id`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
	(1, 'Borrador', 1, 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(2, 'Enviado', 1, 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(3, 'Abierto', 1, 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(4, 'Revisado', 1, 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(5, 'Declinado', 1, 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54');
/*!40000 ALTER TABLE `lead_stages` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.leaves
CREATE TABLE IF NOT EXISTS `leaves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `leave_type_id` int NOT NULL,
  `applied_on` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_leave_days` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_reason` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.leaves: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.leave_types
CREATE TABLE IF NOT EXISTS `leave_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.leave_types: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `leave_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_types` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.loans
CREATE TABLE IF NOT EXISTS `loans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `loan_option` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.loans: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.loan_options
CREATE TABLE IF NOT EXISTS `loan_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.loan_options: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `loan_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_options` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.log_activities
CREATE TABLE IF NOT EXISTS `log_activities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `time` time NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` bigint unsigned NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.log_activities: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `log_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_activities` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.meetings
CREATE TABLE IF NOT EXISTS `meetings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `department_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.meetings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.meeting_employees
CREATE TABLE IF NOT EXISTS `meeting_employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meeting_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.meeting_employees: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `meeting_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_employees` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.migrations: ~207 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_09_22_192348_create_messages_table', 1),
	(5, '2019_09_28_102009_create_settings_table', 1),
	(6, '2019_09_30_050856_create_pipelines_table', 1),
	(7, '2019_09_30_052036_create_sources_table', 1),
	(8, '2019_09_30_061801_create_stages_table', 1),
	(9, '2019_09_30_092218_create_labels_table', 1),
	(10, '2019_10_03_052618_create_deals_table', 1),
	(11, '2019_10_05_045358_create_user_deals_table', 1),
	(12, '2019_10_05_045359_create_client_deals_table', 1),
	(13, '2019_10_07_054657_create_deal_files_table', 1),
	(14, '2019_10_07_091153_create_deal_tasks_table', 1),
	(15, '2019_10_14_055151_create_deal_discussions_table', 1),
	(16, '2019_10_16_211433_create_favorites_table', 1),
	(17, '2019_10_18_223259_add_avatar_to_users', 1),
	(18, '2019_10_20_211056_add_messenger_color_to_users', 1),
	(19, '2019_10_22_000539_add_dark_mode_to_users', 1),
	(20, '2019_10_24_060326_create_projectstages_table', 1),
	(21, '2019_10_25_214038_add_active_status_to_users', 1),
	(22, '2019_11_12_073012_create_bug_comments_table', 1),
	(23, '2019_11_12_100007_create_bug_files_table', 1),
	(24, '2019_11_13_051828_create_taxes_table', 1),
	(25, '2019_11_13_055026_create_invoices_table', 1),
	(26, '2019_11_21_090403_create_plans_table', 1),
	(27, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(28, '2019_12_18_110230_create_bugs_table', 1),
	(29, '2019_12_18_112007_create_bug_statuses_table', 1),
	(30, '2019_12_26_101754_create_departments_table', 1),
	(31, '2019_12_26_101814_create_designations_table', 1),
	(32, '2019_12_26_105721_create_documents_table', 1),
	(33, '2019_12_27_083751_create_branches_table', 1),
	(34, '2019_12_27_090831_create_employees_table', 1),
	(35, '2019_12_27_112922_create_employee_documents_table', 1),
	(36, '2019_12_28_050508_create_awards_table', 1),
	(37, '2019_12_28_050919_create_award_types_table', 1),
	(38, '2019_12_31_060916_create_termination_types_table', 1),
	(39, '2019_12_31_062259_create_terminations_table', 1),
	(40, '2019_12_31_070521_create_resignations_table', 1),
	(41, '2019_12_31_072252_create_travels_table', 1),
	(42, '2019_12_31_090637_create_promotions_table', 1),
	(43, '2019_12_31_092838_create_transfers_table', 1),
	(44, '2019_12_31_100319_create_warnings_table', 1),
	(45, '2019_12_31_103019_create_complaints_table', 1),
	(46, '2020_01_02_090837_create_payslip_types_table', 1),
	(47, '2020_01_02_093331_create_allowance_options_table', 1),
	(48, '2020_01_02_102558_create_loan_options_table', 1),
	(49, '2020_01_02_103822_create_deduction_options_table', 1),
	(50, '2020_01_02_110828_create_genrate_payslip_options_table', 1),
	(51, '2020_01_02_111807_create_set_salaries_table', 1),
	(52, '2020_01_03_084302_create_allowances_table', 1),
	(53, '2020_01_03_101735_create_commissions_table', 1),
	(54, '2020_01_03_105019_create_loans_table', 1),
	(55, '2020_01_03_105046_create_saturation_deductions_table', 1),
	(56, '2020_01_03_105100_create_other_payments_table', 1),
	(57, '2020_01_03_105111_create_overtimes_table', 1),
	(58, '2020_01_04_060343_create_contract_types_table', 1),
	(59, '2020_01_04_060343_create_performance_type_table', 1),
	(60, '2020_01_04_060354_create_contracts_table', 1),
	(61, '2020_01_04_072527_create_pay_slips_table', 1),
	(62, '2020_01_08_063207_create_product_services_table', 1),
	(63, '2020_01_08_084029_create_product_service_categories_table', 1),
	(64, '2020_01_08_092717_create_product_service_units_table', 1),
	(65, '2020_01_08_121541_create_customers_table', 1),
	(66, '2020_01_09_104945_create_venders_table', 1),
	(67, '2020_01_09_113852_create_bank_accounts_table', 1),
	(68, '2020_01_09_124222_create_bank_transfers_table', 1),
	(69, '2020_01_10_064723_create_transactions_table', 1),
	(70, '2020_01_13_072608_create_invoice_products_table', 1),
	(71, '2020_01_13_084720_create_events_table', 1),
	(72, '2020_01_15_034438_create_revenues_table', 1),
	(73, '2020_01_15_051228_create_bills_table', 1),
	(74, '2020_01_15_060859_create_bill_products_table', 1),
	(75, '2020_01_15_073237_create_payments_table', 1),
	(76, '2020_01_16_041720_create_announcements_table', 1),
	(77, '2020_01_16_043907_create_orders_table', 1),
	(78, '2020_01_16_090747_create_leave_types_table', 1),
	(79, '2020_01_16_093256_create_leaves_table', 1),
	(80, '2020_01_16_110357_create_meetings_table', 1),
	(81, '2020_01_18_051650_create_invoice_payments_table', 1),
	(82, '2020_01_18_051650_create_pos_payments_table', 1),
	(83, '2020_01_20_091035_create_bill_payments_table', 1),
	(84, '2020_01_23_101613_create_meeting_employees_table', 1),
	(85, '2020_01_23_123844_create_event_employees_table', 1),
	(86, '2020_01_24_062752_create_announcement_employees_table', 1),
	(87, '2020_01_27_052503_create_attendance_employees_table', 1),
	(88, '2020_02_25_052356_create_credit_notes_table', 1),
	(89, '2020_02_26_033827_create_debit_notes_table', 1),
	(90, '2020_03_04_122711_create_leads_table', 1),
	(91, '2020_03_04_122801_create_lead_stages_table', 1),
	(92, '2020_03_05_042105_create_lead_activity_logs_table', 1),
	(93, '2020_03_05_042308_create_lead_discussions_table', 1),
	(94, '2020_03_05_042318_create_user_leads_table', 1),
	(95, '2020_03_05_042549_create_lead_files_table', 1),
	(96, '2020_03_05_042636_create_lead_emails_table', 1),
	(97, '2020_03_05_042710_create_lead_calls_table', 1),
	(98, '2020_03_05_044157_create_deal_emails_table', 1),
	(99, '2020_03_05_044322_create_deal_calls_table', 1),
	(100, '2020_03_12_095629_create_coupons_table', 1),
	(101, '2020_03_12_120749_create_user_coupons_table', 1),
	(102, '2020_03_17_104345_create_estimations_table', 1),
	(103, '2020_03_18_104909_create_notifications_table', 1),
	(104, '2020_04_02_045834_create_proposals_table', 1),
	(105, '2020_04_02_055706_create_proposal_products_table', 1),
	(106, '2020_04_18_035141_create_goals_table', 1),
	(107, '2020_04_21_115823_create_assets_table', 1),
	(108, '2020_04_24_023732_create_custom_fields_table', 1),
	(109, '2020_04_24_024217_create_custom_field_values_table', 1),
	(110, '2020_05_01_122144_create_ducument_uploads_table', 1),
	(111, '2020_05_02_075614_create_email_templates_table', 1),
	(112, '2020_05_02_075630_create_email_template_langs_table', 1),
	(113, '2020_05_02_075647_create_user_email_templates_table', 1),
	(114, '2020_05_04_070452_create_indicators_table', 1),
	(115, '2020_05_05_023742_create_appraisals_table', 1),
	(116, '2020_05_05_061241_create_goal_types_table', 1),
	(117, '2020_05_05_095926_create_goal_trackings_table', 1),
	(118, '2020_05_07_093520_create_company_policies_table', 1),
	(119, '2020_05_07_131311_create_training_types_table', 1),
	(120, '2020_05_08_023838_create_trainers_table', 1),
	(121, '2020_05_08_043039_create_trainings_table', 1),
	(122, '2020_05_21_065337_create_permission_tables', 1),
	(123, '2020_06_02_085538_create_task_stages_table', 1),
	(124, '2020_06_30_043627_create_user_to_dos_table', 1),
	(125, '2020_06_30_120854_add_balance_to_customers_table', 1),
	(126, '2020_06_30_121531_add_balance_to_vender_table', 1),
	(127, '2020_07_01_033457_change_product_services_tax_id_column_type', 1),
	(128, '2020_07_01_063255_change_tax_column_type', 1),
	(129, '2020_07_03_054342_add_convert_in_proposal_table', 1),
	(130, '2020_07_04_041452_create_project_email_templates_table', 1),
	(131, '2020_07_06_102454_add_payment_type_in_orders_table', 1),
	(132, '2020_07_06_110501_create_user_contacts_table', 1),
	(133, '2020_07_07_052211_add_field_in_invoice_payments_table', 1),
	(134, '2020_07_22_131715_change_amount_type_size', 1),
	(135, '2020_08_04_034206_change_settings_value_type', 1),
	(136, '2020_08_10_073242_create_project_invoices_table', 1),
	(137, '2020_08_26_093539_create_time_trackers_table', 1),
	(138, '2020_09_16_040822_change_user_type_size_in_users_table', 1),
	(139, '2020_09_17_053350_change_shipping_default_val', 1),
	(140, '2020_09_17_070031_add_description_field', 1),
	(141, '2020_10_07_034726_create_holidays_table', 1),
	(142, '2020_12_11_094137_add_image_to_productservice', 1),
	(143, '2020_12_11_094137_add_mode_to_users', 1),
	(144, '2020_12_11_094137_add_receipt_to_payment', 1),
	(145, '2020_12_11_094137_add_tax_number_to_customers', 1),
	(146, '2021_01_11_062508_create_chart_of_accounts_table', 1),
	(147, '2021_01_11_070441_create_chart_of_account_types_table', 1),
	(148, '2021_01_12_032834_create_journal_entries_table', 1),
	(149, '2021_01_12_033815_create_journal_items_table', 1),
	(150, '2021_01_20_072219_create_chart_of_account_sub_types_table', 1),
	(151, '2021_01_20_113044_create_log_activities_table', 1),
	(152, '2021_03_13_093312_create_ip_restricts_table', 1),
	(153, '2021_03_13_114832_create_job_categories_table', 1),
	(154, '2021_03_13_123125_create_job_stages_table', 1),
	(155, '2021_03_15_094707_create_jobs_table', 1),
	(156, '2021_03_15_153745_create_job_applications_table', 1),
	(157, '2021_03_16_115140_create_job_application_notes_table', 1),
	(158, '2021_03_17_100224_create_projects_table', 1),
	(159, '2021_03_17_163107_create_custom_questions_table', 1),
	(160, '2021_03_18_060536_create_project_tasks_table', 1),
	(161, '2021_03_18_070146_create_milestones_table', 1),
	(162, '2021_03_18_091547_create_task_checklists_table', 1),
	(163, '2021_03_18_092113_create_task_files_table', 1),
	(164, '2021_03_18_092400_create_task_comments_table', 1),
	(165, '2021_03_18_102517_create_activity_logs_table', 1),
	(166, '2021_03_18_140630_create_interview_schedules_table', 1),
	(167, '2021_03_19_053350_create_project_users_table', 1),
	(168, '2021_03_22_100636_create_expenses_table', 1),
	(169, '2021_03_22_122532_create_job_on_boards_table', 1),
	(170, '2021_03_23_032633_create_timesheets_table', 1),
	(171, '2021_06_15_071245_create_landing_page_sections_table', 1),
	(172, '2021_08_03_093459_create_form_builders_table', 1),
	(173, '2021_08_03_094508_create_form_fields_table', 1),
	(174, '2021_08_03_094534_create_form_field_responses_table', 1),
	(175, '2021_08_03_094548_create_form_responses_table', 1),
	(176, '2021_08_04_072610_admin_payment_settings', 1),
	(177, '2021_08_04_090539_company_payment_settings', 1),
	(178, '2021_08_05_114738_create_supports_table', 1),
	(179, '2021_08_05_115212_create_support_replies_table', 1),
	(180, '2021_08_20_084119_create_competencies_table', 1),
	(181, '2021_08_21_044211_add_hour_in_project', 1),
	(182, '2021_08_21_044211_add_rating_in_competencies', 1),
	(183, '2021_09_03_112043_create_track_photos_table', 1),
	(184, '2021_09_10_160559_add_last_login_to_user_table', 1),
	(185, '2021_09_10_165514_create_plan_requests_table', 1),
	(186, '2021_10_13_102756_create_add_new_field_lead_table', 1),
	(187, '2021_12_02_052828_create_budgets_table', 1),
	(188, '2021_12_24_104639_create_zoom_meetings_table', 1),
	(189, '2022_03_03_100148_change_price_val', 1),
	(190, '2022_03_11_035602_create_stock_reports_table', 1),
	(191, '2022_03_11_103119_add_type_to_allowance', 1),
	(192, '2022_07_21_033939_create_contract_attachment_table', 1),
	(193, '2022_07_21_034802_create_contract_comment_table', 1),
	(194, '2022_07_21_034957_create_contract_notes_table', 1),
	(195, '2022_08_10_051439_generate__offer__letter', 1),
	(196, '2022_08_16_050109_joining_letter', 1),
	(197, '2022_08_17_045033_experience_certificate', 1),
	(198, '2022_08_17_051049_create_warehouses_table', 1),
	(199, '2022_08_17_065806_noc_certificate', 1),
	(200, '2022_08_18_055612_create_purchases_table', 1),
	(201, '2022_08_18_072314_create_purchase_products_table', 1),
	(202, '2022_08_22_050630_create_purchase_payments', 1),
	(203, '2022_08_24_045854_create_warehouse_products', 1),
	(204, '2022_08_25_112305_create_pos_table', 1),
	(205, '2022_08_25_124531_create_pos_products_table', 1),
	(206, '2022_10_12_220500_add_filed_to_job_on_board_table', 1),
	(207, '2022_10_14_063424_add_filed_to_milestone_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.milestones
CREATE TABLE IF NOT EXISTS `milestones` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `cost` double(15,2) NOT NULL DEFAULT '0.00',
  `progress` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.milestones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.model_has_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.model_has_roles: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(3, 'App\\Models\\Vender', 1),
	(4, 'App\\Models\\User', 2),
	(3, 'App\\Models\\Vender', 2),
	(5, 'App\\Models\\User', 3),
	(3, 'App\\Models\\Vender', 3),
	(6, 'App\\Models\\User', 4),
	(3, 'App\\Models\\Vender', 4);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.noc_certificates
CREATE TABLE IF NOT EXISTS `noc_certificates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.noc_certificates: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `noc_certificates` DISABLE KEYS */;
INSERT INTO `noc_certificates` (`id`, `lang`, `content`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'ar', '<h3 style="text-align: center;">شهادة عدم ممانعة</h3>\n            \n            \n            \n            <p>التاريخ: {date}</p>\n            \n            \n            \n            <p>إلى من يهمه الأمر</p>\n            \n            \n            \n            <p>هذه الشهادة مخصصة للمطالبة بشهادة عدم ممانعة (NoC) للسيدة / السيد {employee_name} إذا انضمت إلى أي مؤسسة أخرى وقدمت خدماتها / خدماتها. يتم إبلاغه لأنه قام بتصفية جميع أرصدته واستلام أمانه من شركة {app_name}.</p>\n            \n            \n            \n            <p>نتمنى لها / لها التوفيق في المستقبل.</p>\n            \n            \n            \n            <p>بإخلاص،</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>التوقيع</p>\n            \n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(2, 'da', '<h3 style="text-align: center;">Ingen indsigelsesattest</h3>\n            \n            \n            \n            <p>Dato: {date}</p>\n            \n            \n            \n            <p>Til hvem det m&aring;tte vedr&oslash;re</p>\n            \n            \n            \n            <p>Dette certifikat er for at g&oslash;re krav p&aring; et No Objection Certificate (NoC) for Ms. / Mr. {employee_name}, hvis hun/han tilslutter sig og leverer sine tjenester til enhver anden organisation. Det informeres, da hun/han har udlignet alle sine saldi og modtaget sin sikkerhed fra {app_name}-virksomheden.</p>\n            \n            \n            \n            <p>Vi &oslash;nsker hende/ham held og lykke i fremtiden.</p>\n            \n            \n            \n            <p>Med venlig hilsen</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Underskrift</p>\n            \n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(3, 'de', '<h3 style="text-align: center;">Kein Einwand-Zertifikat</h3>\n            \n            \n            \n            <p>Datum {date}</p>\n            \n            \n            \n            <p>Wen auch immer es betrifft</p>\n            \n            \n            \n            <p>Dieses Zertifikat soll ein Unbedenklichkeitszertifikat (NoC) f&uuml;r Frau / Herrn {employee_name} beanspruchen, wenn sie/er einer anderen Organisation beitritt und ihre/seine Dienste anbietet. Sie wird informiert, da sie/er alle ihre/seine Guthaben ausgeglichen und ihre/seine Sicherheit von der Firma {app_name} erhalten hat.</p>\n            \n            \n            \n            <p>Wir w&uuml;nschen ihr/ihm viel Gl&uuml;ck f&uuml;r die Zukunft.</p>\n            \n            \n            \n            <p>Aufrichtig,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Unterschrift</p>\n            \n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(4, 'en', '<p style="text-align: center;"><span style="font-size: 18pt;"><strong>No Objection Certificate</strong></span></p>\n            \n            <p>Date: {date}</p>\n            \n            <p>To Whomsoever It May Concern</p>\n            \n            <p>This certificate is to claim a No Objection Certificate (NoC) for Ms. / Mr. {employee_name} if she/he joins and provides her/his services to any other organization. It is informed as she/he has cleared all her/his balances and received her/his security from {app_name} Company.</p>\n            \n            <p>We wish her/him good luck in the future.</p>\n            \n            <p>Sincerely,</p>\n            <p>{employee_name}</p>\n            <p>{designation}</p>\n            <p>Signature</p>\n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(5, 'es', '<h3 style="text-align: center;">Certificado de conformidad</h3>\n            \n            \n            \n            <p>Fecha: {date}</p>\n            \n            \n            \n            <p>A quien corresponda</p>\n            \n            \n            \n            <p>Este certificado es para reclamar un Certificado de No Objeci&oacute;n (NoC) para la Sra. / Sr. {employee_name} si ella / &eacute;l se une y brinda sus servicios a cualquier otra organizaci&oacute;n. Se informa que &eacute;l/ella ha liquidado todos sus saldos y recibido su seguridad de {app_name} Company.</p>\n            \n            \n            \n            <p>Le deseamos buena suerte en el futuro.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(6, 'fr', '<h3 style="text-align: center;">Aucun certificat dopposition</h3>\n            \n            \n            <p>Date : {date}</p>\n            \n            \n            <p>&Agrave; toute personne concern&eacute;e</p>\n            \n            \n            <p>Ce certificat sert &agrave; r&eacute;clamer un certificat de non-objection (NoC) pour Mme / M. {employee_name} sil rejoint et fournit ses services &agrave; toute autre organisation. Il est inform&eacute; quil a sold&eacute; tous ses soldes et re&ccedil;u sa garantie de la part de la soci&eacute;t&eacute; {app_name}.</p>\n            \n            \n            <p>Nous lui souhaitons bonne chance pour lavenir.</p>\n            \n            \n            <p>Sinc&egrave;rement,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Signature</p>\n            \n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(7, 'id', '<h3 style="text-align: center;">Sertifikat Tidak Keberatan</h3>\n            \n            \n            \n            <p>Tanggal: {date}</p>\n            \n            \n            \n            <p>Kepada Siapa Pun Yang Memprihatinkan</p>\n            \n            \n            \n            <p>Sertifikat ini untuk mengklaim No Objection Certificate (NoC) untuk Ibu / Bapak {employee_name} jika dia bergabung dan memberikan layanannya ke organisasi lain mana pun. Diberitahukan karena dia telah melunasi semua saldonya dan menerima jaminannya dari Perusahaan {app_name}.</p>\n            \n            \n            \n            <p>Kami berharap dia sukses di masa depan.</p>\n            \n            \n            \n            <p>Sungguh-sungguh,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Tanda tangan</p>\n            \n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(8, 'it', '<h3 style="text-align: center;">Certificato di nulla osta</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>A chi pu&ograve; interessare</p>\n            \n            \n            \n            <p>Questo certificato serve a richiedere un certificato di non obiezione (NoC) per la signora / il signor {employee_name} se si unisce e fornisce i suoi servizi a qualsiasi altra organizzazione. Viene informato in quanto ha liquidato tutti i suoi saldi e ricevuto la sua sicurezza dalla societ&agrave; {app_name}.</p>\n            \n            \n            \n            <p>Le auguriamo buona fortuna per il futuro.</p>\n            \n            \n            \n            <p>Cordiali saluti,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(9, 'ja', '<h3 style="text-align: center;">異議なし証明書</h3>\n            \n            \n            \n            <p>日付: {date}</p>\n            \n            \n            \n            <p>関係者各位</p>\n            \n            \n            \n            <p>この証明書は、Ms. / Mr. {employee_name} が他の組織に参加してサービスを提供する場合に、異議なし証明書 (NoC) を請求するためのものです。彼女/彼/彼がすべての残高を清算し、{app_name} 会社から彼女/彼のセキュリティを受け取ったことが通知されます。</p>\n            \n            \n            \n            <p>彼女/彼の今後の幸運を祈っています。</p>\n            \n            \n            \n            <p>心から、</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>サイン</p>\n            \n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(10, 'nl', '<h3 style="text-align: center;">Geen bezwaarcertificaat</h3>\n            \n            \n            \n            <p>Datum: {date}</p>\n            \n            \n            \n            <p>Aan wie het ook aangaat</p>\n            \n            \n            \n            <p>Dit certificaat is bedoeld om aanspraak te maken op een Geen Bezwaarcertificaat (NoC) voor mevrouw/dhr. {employee_name} als zij/hij lid wordt en haar/zijn diensten verleent aan een andere organisatie. Het wordt ge&iuml;nformeerd als zij/hij al haar/zijn saldos heeft gewist en haar/zijn zekerheid heeft ontvangen van {app_name} Company.</p>\n            \n            \n            \n            <p>We wensen haar/hem veel succes in de toekomst.</p>\n            \n            \n            \n            <p>Eerlijk,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Handtekening</p>\n            \n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(11, 'pl', '<h3 style="text-align: center;">Certyfikat braku sprzeciwu</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>Do kogo to może dotyczyć</p>\n            \n            \n            \n            <p>Ten certyfikat służy do ubiegania się o Certyfikat No Objection Certificate (NoC) dla Pani/Pana {employee_name}, jeśli ona/ona dołącza i świadczy swoje usługi na rzecz jakiejkolwiek innej organizacji. Jest o tym informowany, ponieważ wyczyścił wszystkie swoje salda i otrzymał swoje zabezpieczenie od firmy {app_name}.</p>\n            \n            \n            \n            <p>Życzymy jej/jej powodzenia w przyszłości.</p>\n            \n            \n            \n            <p>Z poważaniem,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Podpis</p>\n            \n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(12, 'pt', '<h3 style="text-align: center;">Certificado de n&atilde;o obje&ccedil;&atilde;o</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>A quem interessar</p>\n            \n            \n            \n            <p>Este certificado &eacute; para reivindicar um Certificado de N&atilde;o Obje&ccedil;&atilde;o (NoC) para a Sra. / Sr. {employee_name} se ela ingressar e fornecer seus servi&ccedil;os a qualquer outra organiza&ccedil;&atilde;o. &Eacute; informado que ela cancelou todos os seus saldos e recebeu sua garantia da empresa {app_name}.</p>\n            \n            \n            \n            <p>Desejamos-lhe boa sorte no futuro.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Assinatura</p>\n            \n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(13, 'ru', '<h3 style="text-align: center;">Сертификат об отсутствии возражений</h3>\n            \n            \n            \n            <p>Дата: {date}</p>\n            \n            \n            \n            <p>Кого бы это ни касалось</p>\n            \n            \n            \n            <p>Этот сертификат предназначен для получения Сертификата об отсутствии возражений (NoC) для г-жи / г-на {employee_name}, если она / он присоединяется и предоставляет свои услуги любой другой организации. Сообщается, что она/он очистила все свои балансы и получила свою безопасность от компании {app_name}.</p>\n            \n            \n            \n            <p>Мы желаем ей/ему удачи в будущем.</p>\n            \n            \n            \n            <p>Искренне,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Подпись</p>\n            \n            <p>{app_name}</p>', 2, '2022-10-19 16:51:56', '2022-10-19 16:51:56');
/*!40000 ALTER TABLE `noc_certificates` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.notifications: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_month` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_year` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Manually',
  `receipt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_order_id_unique` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.orders: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.other_payments
CREATE TABLE IF NOT EXISTS `other_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.other_payments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `other_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_payments` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.overtimes
CREATE TABLE IF NOT EXISTS `overtimes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_days` int NOT NULL,
  `hours` int NOT NULL,
  `rate` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.overtimes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `overtimes` DISABLE KEYS */;
/*!40000 ALTER TABLE `overtimes` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int NOT NULL,
  `vender_id` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_id` int NOT NULL,
  `recurring` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` int NOT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_receipt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.payments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` (`id`, `date`, `amount`, `account_id`, `vender_id`, `description`, `category_id`, `recurring`, `payment_method`, `reference`, `add_receipt`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, '2022-10-07', 200.00, 1, 1, 'COMPRA DE CEMENTOS', 5, NULL, 0, '0001', '1666892959_cemento.jfif', 2, '2022-10-27 17:49:19', '2022-10-27 17:49:19');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.payslip_types
CREATE TABLE IF NOT EXISTS `payslip_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.payslip_types: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `payslip_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `payslip_types` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.pay_slips
CREATE TABLE IF NOT EXISTS `pay_slips` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `net_payble` int NOT NULL,
  `salary_month` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `basic_salary` int NOT NULL,
  `allowance` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `saturation_deduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_payment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtime` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.pay_slips: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pay_slips` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_slips` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.performance_types
CREATE TABLE IF NOT EXISTS `performance_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.performance_types: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `performance_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `performance_types` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=499 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.permissions: ~498 rows (aproximadamente)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'show hrm dashboard', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(2, 'copy invoice', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(3, 'show project dashboard', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(4, 'show account dashboard', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(5, 'manage user', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(6, 'create user', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(7, 'edit user', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(8, 'delete user', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(9, 'create language', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(10, 'manage role', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(11, 'create role', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(12, 'edit role', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(13, 'delete role', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(14, 'manage permission', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(15, 'create permission', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(16, 'edit permission', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(17, 'delete permission', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(18, 'manage company settings', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(19, 'manage print settings', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(20, 'manage business settings', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(21, 'manage stripe settings', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(22, 'manage expense', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(23, 'create expense', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(24, 'edit expense', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(25, 'delete expense', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(26, 'manage invoice', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(27, 'create invoice', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(28, 'edit invoice', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(29, 'delete invoice', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(30, 'show invoice', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(31, 'create payment invoice', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(32, 'delete payment invoice', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(33, 'send invoice', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(34, 'delete invoice product', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(35, 'convert invoice', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(36, 'manage constant unit', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(37, 'create constant unit', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(38, 'edit constant unit', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(39, 'delete constant unit', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(40, 'manage constant tax', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(41, 'create constant tax', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(42, 'edit constant tax', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(43, 'delete constant tax', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(44, 'manage constant category', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(45, 'create constant category', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(46, 'edit constant category', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(47, 'delete constant category', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(48, 'manage product & service', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(49, 'create product & service', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(50, 'edit product & service', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(51, 'delete product & service', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(52, 'manage customer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(53, 'create customer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(54, 'edit customer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(55, 'delete customer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(56, 'show customer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(57, 'manage vender', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(58, 'create vender', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(59, 'edit vender', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(60, 'delete vender', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(61, 'show vender', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(62, 'manage bank account', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(63, 'create bank account', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(64, 'edit bank account', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(65, 'delete bank account', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(66, 'manage bank transfer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(67, 'create bank transfer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(68, 'edit bank transfer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(69, 'delete bank transfer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(70, 'manage transaction', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(71, 'manage revenue', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(72, 'create revenue', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(73, 'edit revenue', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(74, 'delete revenue', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(75, 'manage bill', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(76, 'create bill', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(77, 'edit bill', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(78, 'delete bill', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(79, 'show bill', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(80, 'manage payment', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(81, 'create payment', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(82, 'edit payment', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(83, 'delete payment', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(84, 'delete bill product', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(85, 'send bill', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(86, 'create payment bill', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(87, 'delete payment bill', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(88, 'manage order', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(89, 'income report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(90, 'expense report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(91, 'income vs expense report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(92, 'invoice report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(93, 'bill report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(94, 'stock report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(95, 'tax report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(96, 'loss & profit report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(97, 'manage customer payment', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(98, 'manage customer transaction', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(99, 'manage customer invoice', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(100, 'vender manage bill', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(101, 'manage vender bill', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(102, 'manage vender payment', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(103, 'manage vender transaction', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(104, 'manage credit note', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(105, 'create credit note', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(106, 'edit credit note', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(107, 'delete credit note', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(108, 'manage debit note', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(109, 'create debit note', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(110, 'edit debit note', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(111, 'delete debit note', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(112, 'duplicate invoice', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(113, 'duplicate bill', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(114, 'manage proposal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(115, 'create proposal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(116, 'edit proposal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(117, 'delete proposal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(118, 'duplicate proposal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(119, 'show proposal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(120, 'send proposal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(121, 'delete proposal product', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(122, 'manage customer proposal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(123, 'manage goal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(124, 'create goal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(125, 'edit goal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(126, 'delete goal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(127, 'manage assets', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(128, 'create assets', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(129, 'edit assets', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(130, 'delete assets', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(131, 'statement report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(132, 'manage constant custom field', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(133, 'create constant custom field', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(134, 'edit constant custom field', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(135, 'delete constant custom field', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(136, 'manage chart of account', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(137, 'create chart of account', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(138, 'edit chart of account', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(139, 'delete chart of account', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(140, 'manage journal entry', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(141, 'create journal entry', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(142, 'edit journal entry', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(143, 'delete journal entry', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(144, 'show journal entry', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(145, 'balance sheet report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(146, 'ledger report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(147, 'trial balance report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(148, 'manage client', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(149, 'create client', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(150, 'edit client', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(151, 'delete client', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(152, 'manage lead', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(153, 'create lead', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(154, 'view lead', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(155, 'edit lead', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(156, 'delete lead', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(157, 'move lead', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(158, 'create lead call', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(159, 'edit lead call', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(160, 'delete lead call', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(161, 'create lead email', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(162, 'manage pipeline', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(163, 'create pipeline', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(164, 'edit pipeline', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(165, 'delete pipeline', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(166, 'manage lead stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(167, 'create lead stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(168, 'edit lead stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(169, 'delete lead stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(170, 'convert lead to deal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(171, 'manage source', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(172, 'create source', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(173, 'edit source', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(174, 'delete source', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(175, 'manage label', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(176, 'create label', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(177, 'edit label', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(178, 'delete label', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(179, 'manage deal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(180, 'create deal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(181, 'view task', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(182, 'create task', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(183, 'edit task', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(184, 'delete task', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(185, 'edit deal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(186, 'view deal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(187, 'delete deal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(188, 'move deal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(189, 'create deal call', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(190, 'edit deal call', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(191, 'delete deal call', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(192, 'create deal email', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(193, 'manage stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(194, 'create stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(195, 'edit stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(196, 'delete stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(197, 'manage employee', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(198, 'create employee', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(199, 'view employee', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(200, 'edit employee', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(201, 'delete employee', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(202, 'manage employee profile', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(203, 'show employee profile', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(204, 'manage department', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(205, 'create department', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(206, 'view department', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(207, 'edit department', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(208, 'delete department', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(209, 'manage designation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(210, 'create designation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(211, 'view designation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(212, 'edit designation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(213, 'delete designation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(214, 'manage branch', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(215, 'create branch', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(216, 'edit branch', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(217, 'delete branch', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(218, 'manage document type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(219, 'create document type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(220, 'edit document type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(221, 'delete document type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(222, 'manage document', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(223, 'create document', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(224, 'edit document', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(225, 'delete document', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(226, 'manage payslip type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(227, 'create payslip type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(228, 'edit payslip type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(229, 'delete payslip type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(230, 'create allowance', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(231, 'edit allowance', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(232, 'delete allowance', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(233, 'create commission', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(234, 'edit commission', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(235, 'delete commission', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(236, 'manage allowance option', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(237, 'create allowance option', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(238, 'edit allowance option', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(239, 'delete allowance option', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(240, 'manage loan option', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(241, 'create loan option', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(242, 'edit loan option', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(243, 'delete loan option', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(244, 'manage deduction option', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(245, 'create deduction option', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(246, 'edit deduction option', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(247, 'delete deduction option', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(248, 'create loan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(249, 'edit loan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(250, 'delete loan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(251, 'create saturation deduction', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(252, 'edit saturation deduction', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(253, 'delete saturation deduction', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(254, 'create other payment', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(255, 'edit other payment', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(256, 'delete other payment', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(257, 'create overtime', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(258, 'edit overtime', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(259, 'delete overtime', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(260, 'manage set salary', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(261, 'edit set salary', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(262, 'manage pay slip', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(263, 'create set salary', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(264, 'create pay slip', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(265, 'manage company policy', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(266, 'create company policy', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(267, 'edit company policy', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(268, 'manage appraisal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(269, 'create appraisal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(270, 'edit appraisal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(271, 'show appraisal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(272, 'delete appraisal', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(273, 'manage goal tracking', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(274, 'create goal tracking', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(275, 'edit goal tracking', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(276, 'delete goal tracking', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(277, 'manage goal type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(278, 'create goal type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(279, 'edit goal type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(280, 'delete goal type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(281, 'manage indicator', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(282, 'create indicator', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(283, 'edit indicator', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(284, 'show indicator', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(285, 'delete indicator', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(286, 'manage training', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(287, 'create training', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(288, 'edit training', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(289, 'delete training', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(290, 'show training', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(291, 'manage trainer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(292, 'create trainer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(293, 'edit trainer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(294, 'delete trainer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(295, 'manage training type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(296, 'create training type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(297, 'edit training type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(298, 'delete training type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(299, 'manage award', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(300, 'create award', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(301, 'edit award', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(302, 'delete award', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(303, 'manage award type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(304, 'create award type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(305, 'edit award type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(306, 'delete award type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(307, 'manage resignation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(308, 'create resignation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(309, 'edit resignation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(310, 'delete resignation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(311, 'manage travel', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(312, 'create travel', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(313, 'edit travel', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(314, 'delete travel', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(315, 'manage promotion', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(316, 'create promotion', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(317, 'edit promotion', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(318, 'delete promotion', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(319, 'manage complaint', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(320, 'create complaint', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(321, 'edit complaint', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(322, 'delete complaint', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(323, 'manage warning', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(324, 'create warning', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(325, 'edit warning', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(326, 'delete warning', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(327, 'manage termination', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(328, 'create termination', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(329, 'edit termination', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(330, 'delete termination', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(331, 'manage termination type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(332, 'create termination type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(333, 'edit termination type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(334, 'delete termination type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(335, 'manage job application', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(336, 'create job application', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(337, 'show job application', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(338, 'delete job application', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(339, 'move job application', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(340, 'add job application skill', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(341, 'add job application note', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(342, 'delete job application note', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(343, 'manage job onBoard', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(344, 'manage job category', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(345, 'create job category', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(346, 'edit job category', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(347, 'delete job category', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(348, 'manage job', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(349, 'create job', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(350, 'edit job', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(351, 'show job', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(352, 'delete job', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(353, 'manage job stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(354, 'create job stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(355, 'edit job stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(356, 'delete job stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(357, 'Manage Competencies', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(358, 'Create Competencies', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(359, 'Edit Competencies', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(360, 'Delete Competencies', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(361, 'manage custom question', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(362, 'create custom question', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(363, 'edit custom question', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(364, 'delete custom question', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(365, 'create interview schedule', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(366, 'edit interview schedule', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(367, 'delete interview schedule', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(368, 'show interview schedule', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(369, 'create estimation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(370, 'view estimation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(371, 'edit estimation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(372, 'delete estimation', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(373, 'edit holiday', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(374, 'create holiday', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(375, 'delete holiday', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(376, 'manage holiday', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(377, 'show career', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(378, 'manage meeting', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(379, 'create meeting', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(380, 'edit meeting', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(381, 'delete meeting', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(382, 'manage event', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(383, 'create event', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(384, 'edit event', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(385, 'delete event', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(386, 'manage transfer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(387, 'create transfer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(388, 'edit transfer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(389, 'delete transfer', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(390, 'manage announcement', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(391, 'create announcement', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(392, 'edit announcement', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(393, 'delete announcement', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(394, 'manage leave', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(395, 'create leave', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(396, 'edit leave', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(397, 'delete leave', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(398, 'manage leave type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(399, 'create leave type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(400, 'edit leave type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(401, 'delete leave type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(402, 'manage attendance', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(403, 'create attendance', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(404, 'edit attendance', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(405, 'delete attendance', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(406, 'manage report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(407, 'manage project', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(408, 'create project', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(409, 'view project', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(410, 'edit project', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(411, 'delete project', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(412, 'create milestone', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(413, 'edit milestone', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(414, 'delete milestone', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(415, 'view milestone', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(416, 'view grant chart', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(417, 'manage project stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(418, 'create project stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(419, 'edit project stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(420, 'delete project stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(421, 'view timesheet', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(422, 'view expense', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(423, 'manage project task', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(424, 'create project task', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(425, 'edit project task', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(426, 'view project task', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(427, 'delete project task', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(428, 'view activity', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(429, 'view CRM activity', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(430, 'manage project task stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(431, 'edit project task stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(432, 'create project task stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(433, 'delete project task stage', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(434, 'manage timesheet', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(435, 'create timesheet', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(436, 'edit timesheet', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(437, 'delete timesheet', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(438, 'manage bug report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(439, 'create bug report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(440, 'edit bug report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(441, 'delete bug report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(442, 'move bug report', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(443, 'manage bug status', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(444, 'create bug status', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(445, 'edit bug status', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(446, 'delete bug status', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(447, 'manage client dashboard', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(448, 'manage super admin dashboard', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(449, 'manage system settings', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(450, 'manage plan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(451, 'create plan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(452, 'edit plan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(453, 'manage coupon', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(454, 'create coupon', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(455, 'edit coupon', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(456, 'delete coupon', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(457, 'manage company plan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(458, 'buy plan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(459, 'manage form builder', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(460, 'create form builder', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(461, 'edit form builder', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(462, 'delete form builder', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(463, 'manage performance type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(464, 'create performance type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(465, 'edit performance type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(466, 'delete performance type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(467, 'manage form field', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(468, 'create form field', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(469, 'edit form field', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(470, 'delete form field', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(471, 'view form response', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(472, 'create budget plan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(473, 'edit budget plan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(474, 'manage budget plan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(475, 'delete budget plan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(476, 'view budget plan', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(477, 'manage warehouse', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(478, 'create warehouse', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(479, 'edit warehouse', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(480, 'show warehouse', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(481, 'delete warehouse', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(482, 'manage purchase', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(483, 'create purchase', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(484, 'edit purchase', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(485, 'show purchase', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(486, 'delete purchase', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(487, 'send purchase', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(488, 'create payment purchase', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(489, 'manage pos', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(490, 'manage contract type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(491, 'create contract type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(492, 'edit contract type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(493, 'delete contract type', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(494, 'manage contract', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(495, 'create contract', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(496, 'edit contract', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(497, 'delete contract', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(498, 'show contract', 'web', '2022-10-19 16:51:49', '2022-10-19 16:51:49');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.personal_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.pipelines
CREATE TABLE IF NOT EXISTS `pipelines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.pipelines: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pipelines` DISABLE KEYS */;
INSERT INTO `pipelines` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Sales', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54');
/*!40000 ALTER TABLE `pipelines` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.plans
CREATE TABLE IF NOT EXISTS `plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `duration` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_users` int NOT NULL DEFAULT '0',
  `max_customers` int NOT NULL DEFAULT '0',
  `max_venders` int NOT NULL DEFAULT '0',
  `max_clients` int NOT NULL DEFAULT '0',
  `crm` int NOT NULL DEFAULT '0',
  `hrm` int NOT NULL DEFAULT '0',
  `account` int NOT NULL DEFAULT '0',
  `project` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plans_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.plans: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` (`id`, `name`, `price`, `duration`, `max_users`, `max_customers`, `max_venders`, `max_clients`, `crm`, `hrm`, `account`, `project`, `description`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Free Plan', 0.00, 'unlimited', 5, 5, 5, 5, 1, 1, 1, 1, NULL, 'free_plan.png', '2022-10-19 16:51:49', '2022-10-19 16:51:49');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.plan_requests
CREATE TABLE IF NOT EXISTS `plan_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `plan_id` int NOT NULL,
  `duration` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monthly',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.plan_requests: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plan_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_requests` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.pos
CREATE TABLE IF NOT EXISTS `pos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pos_id` bigint unsigned NOT NULL DEFAULT '0',
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `warehouse_id` int NOT NULL DEFAULT '0',
  `pos_date` date DEFAULT NULL,
  `category_id` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `shipping_display` int NOT NULL DEFAULT '1',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.pos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pos` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.pos_payments
CREATE TABLE IF NOT EXISTS `pos_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pos_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.pos_payments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pos_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `pos_payments` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.pos_products
CREATE TABLE IF NOT EXISTS `pos_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pos_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `tax` double(8,2) NOT NULL DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.pos_products: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `pos_products` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.product_services
CREATE TABLE IF NOT EXISTS `product_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quantity` int NOT NULL DEFAULT '0',
  `tax_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  `unit_id` int NOT NULL DEFAULT '0',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pro_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.product_services: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `product_services` DISABLE KEYS */;
INSERT INTO `product_services` (`id`, `name`, `sku`, `sale_price`, `purchase_price`, `quantity`, `tax_id`, `category_id`, `unit_id`, `type`, `description`, `pro_image`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'PALA TRADICIONAL', 'SK000001', 12.00, 5.00, 323, '1', 1, 1, 'product', 'PALA TRADICIONAL', '1666890496_palatra.jpg', 2, '2022-10-27 17:08:16', '2022-10-27 17:50:51'),
	(2, 'CEMENTO 100 LBS', 'SK000002', 15.00, 10.00, 195, '1', 1, 2, 'product', 'CEMENTO DE 100 LBS', '1666890550_cemento.jfif', 2, '2022-10-27 17:09:10', '2022-10-27 17:50:51'),
	(3, 'AZULEJOS', 'SK000003', 12.00, 7.00, 200, '1', 1, 1, 'product', 'AZULEJOS DE 33X33', '1666890601_azulejos1.jpg', 2, '2022-10-27 17:10:01', '2022-10-27 17:10:01');
/*!40000 ALTER TABLE `product_services` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.product_service_categories
CREATE TABLE IF NOT EXISTS `product_service_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#fc544b',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.product_service_categories: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `product_service_categories` DISABLE KEYS */;
INSERT INTO `product_service_categories` (`id`, `name`, `type`, `color`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'FERRETERIA', '0', 'FFFFFF', 2, '2022-10-27 16:09:55', '2022-10-27 16:09:55'),
	(2, 'ALIMENTOS', '0', 'FFFFFF', 2, '2022-10-27 16:10:08', '2022-10-27 16:10:08'),
	(3, 'ORDINARIA', '1', 'FFFFFF', 2, '2022-10-27 17:20:45', '2022-10-27 17:20:45'),
	(4, 'SIMPLIFICADA', '1', 'FFFFFF', 2, '2022-10-27 17:21:09', '2022-10-27 17:21:09'),
	(5, 'ORDINARIA', '2', 'FFFFFF', 2, '2022-10-27 17:47:53', '2022-10-27 17:47:53'),
	(6, 'SIMPLIFICADA', '2', 'FFFFFF', 2, '2022-10-27 17:48:06', '2022-10-27 17:48:06');
/*!40000 ALTER TABLE `product_service_categories` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.product_service_units
CREATE TABLE IF NOT EXISTS `product_service_units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.product_service_units: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `product_service_units` DISABLE KEYS */;
INSERT INTO `product_service_units` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'UNIDAD', 2, '2022-10-27 16:08:20', '2022-10-27 16:08:20'),
	(2, 'LBS', 2, '2022-10-27 16:08:29', '2022-10-27 16:08:29');
/*!40000 ALTER TABLE `product_service_units` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.projects
CREATE TABLE IF NOT EXISTS `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `project_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` int DEFAULT NULL,
  `client_id` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimated_hrs` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.projects: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.projectstages
CREATE TABLE IF NOT EXISTS `projectstages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.projectstages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `projectstages` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectstages` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.project_email_templates
CREATE TABLE IF NOT EXISTS `project_email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int NOT NULL,
  `project_id` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.project_email_templates: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `project_email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_email_templates` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.project_invoices
CREATE TABLE IF NOT EXISTS `project_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `project_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `tax_id` bigint unsigned NOT NULL,
  `due_date` date NOT NULL,
  `created_by` int NOT NULL,
  `status` smallint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.project_invoices: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `project_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_invoices` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.project_tasks
CREATE TABLE IF NOT EXISTS `project_tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `estimated_hrs` int NOT NULL DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'medium',
  `priority_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_id` int NOT NULL DEFAULT '0',
  `milestone_id` int NOT NULL DEFAULT '0',
  `stage_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `is_favourite` int NOT NULL DEFAULT '0',
  `is_complete` int NOT NULL DEFAULT '0',
  `marked_at` date DEFAULT NULL,
  `progress` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.project_tasks: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `project_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_tasks` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.project_users
CREATE TABLE IF NOT EXISTS `project_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `user_id` int NOT NULL,
  `invited_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.project_users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `project_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.promotions
CREATE TABLE IF NOT EXISTS `promotions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `designation_id` int NOT NULL,
  `promotion_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion_date` date NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.promotions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.proposals
CREATE TABLE IF NOT EXISTS `proposals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `proposal_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `issue_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `discount_apply` int NOT NULL DEFAULT '0',
  `converted_invoice_id` int NOT NULL DEFAULT '0',
  `is_convert` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.proposals: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `proposals` DISABLE KEYS */;
INSERT INTO `proposals` (`id`, `proposal_id`, `customer_id`, `issue_date`, `send_date`, `category_id`, `status`, `discount_apply`, `converted_invoice_id`, `is_convert`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, '2022-10-13', NULL, 3, 0, 0, 0, 0, 2, '2022-10-27 18:14:48', '2022-10-27 18:14:48');
/*!40000 ALTER TABLE `proposals` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.proposal_products
CREATE TABLE IF NOT EXISTS `proposal_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `proposal_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `tax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.proposal_products: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `proposal_products` DISABLE KEYS */;
INSERT INTO `proposal_products` (`id`, `proposal_id`, `product_id`, `quantity`, `tax`, `discount`, `price`, `description`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 2, '1', 0.00, 15.00, NULL, '2022-10-27 18:14:48', '2022-10-27 18:14:48'),
	(2, 1, 2, 3, '1', 0.00, 15.00, NULL, '2022-10-27 18:14:48', '2022-10-27 18:14:48');
/*!40000 ALTER TABLE `proposal_products` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.purchases
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `vender_id` int NOT NULL,
  `warehouse_id` int NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_number` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `shipping_display` int NOT NULL DEFAULT '1',
  `send_date` date DEFAULT NULL,
  `discount_apply` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.purchases: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.purchase_payments
CREATE TABLE IF NOT EXISTS `purchase_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int NOT NULL,
  `date` date NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `account_id` int NOT NULL,
  `payment_method` int NOT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `add_receipt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.purchase_payments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `purchase_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_payments` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.purchase_products
CREATE TABLE IF NOT EXISTS `purchase_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `tax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.purchase_products: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `purchase_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_products` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.resignations
CREATE TABLE IF NOT EXISTS `resignations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `notice_date` date NOT NULL,
  `resignation_date` date NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.resignations: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `resignations` DISABLE KEYS */;
/*!40000 ALTER TABLE `resignations` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.revenues
CREATE TABLE IF NOT EXISTS `revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `category_id` int NOT NULL,
  `payment_method` int NOT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_receipt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.revenues: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `revenues` DISABLE KEYS */;
INSERT INTO `revenues` (`id`, `date`, `amount`, `account_id`, `customer_id`, `category_id`, `payment_method`, `reference`, `add_receipt`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, '2022-10-06', 120.00, 1, 1, 3, 0, '0001', '1666891624_palatra.jpg', 'INGRESO CAJA', 2, '2022-10-27 17:27:04', '2022-10-27 17:27:04');
/*!40000 ALTER TABLE `revenues` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.roles: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'super admin', 'web', 0, '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(2, 'customer', 'web', 0, '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(3, 'vender', 'web', 0, '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(4, 'company', 'web', 0, '2022-10-19 16:51:49', '2022-10-19 16:51:49'),
	(5, 'accountant', 'web', 2, '2022-10-19 16:51:52', '2022-10-19 16:51:52'),
	(6, 'client', 'web', 2, '2022-10-19 16:51:53', '2022-10-19 16:51:53');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.role_has_permissions: ~666 rows (aproximadamente)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(21, 1),
	(88, 1),
	(448, 1),
	(449, 1),
	(450, 1),
	(451, 1),
	(452, 1),
	(453, 1),
	(454, 1),
	(455, 1),
	(456, 1),
	(30, 2),
	(56, 2),
	(97, 2),
	(98, 2),
	(99, 2),
	(119, 2),
	(122, 2),
	(61, 3),
	(79, 3),
	(100, 3),
	(101, 3),
	(102, 3),
	(103, 3),
	(1, 4),
	(2, 4),
	(3, 4),
	(4, 4),
	(5, 4),
	(6, 4),
	(7, 4),
	(8, 4),
	(10, 4),
	(11, 4),
	(12, 4),
	(13, 4),
	(14, 4),
	(15, 4),
	(16, 4),
	(17, 4),
	(18, 4),
	(19, 4),
	(20, 4),
	(22, 4),
	(23, 4),
	(24, 4),
	(25, 4),
	(26, 4),
	(27, 4),
	(28, 4),
	(29, 4),
	(30, 4),
	(31, 4),
	(32, 4),
	(33, 4),
	(34, 4),
	(35, 4),
	(36, 4),
	(37, 4),
	(38, 4),
	(39, 4),
	(40, 4),
	(41, 4),
	(42, 4),
	(43, 4),
	(44, 4),
	(45, 4),
	(46, 4),
	(47, 4),
	(48, 4),
	(49, 4),
	(50, 4),
	(51, 4),
	(52, 4),
	(53, 4),
	(54, 4),
	(55, 4),
	(56, 4),
	(57, 4),
	(58, 4),
	(59, 4),
	(60, 4),
	(61, 4),
	(62, 4),
	(63, 4),
	(64, 4),
	(65, 4),
	(66, 4),
	(67, 4),
	(68, 4),
	(69, 4),
	(70, 4),
	(71, 4),
	(72, 4),
	(73, 4),
	(74, 4),
	(75, 4),
	(76, 4),
	(77, 4),
	(78, 4),
	(79, 4),
	(80, 4),
	(81, 4),
	(82, 4),
	(83, 4),
	(84, 4),
	(85, 4),
	(86, 4),
	(87, 4),
	(88, 4),
	(89, 4),
	(90, 4),
	(91, 4),
	(92, 4),
	(93, 4),
	(94, 4),
	(95, 4),
	(96, 4),
	(104, 4),
	(105, 4),
	(106, 4),
	(107, 4),
	(108, 4),
	(109, 4),
	(110, 4),
	(111, 4),
	(112, 4),
	(113, 4),
	(114, 4),
	(115, 4),
	(116, 4),
	(117, 4),
	(118, 4),
	(119, 4),
	(120, 4),
	(121, 4),
	(123, 4),
	(124, 4),
	(125, 4),
	(126, 4),
	(127, 4),
	(128, 4),
	(129, 4),
	(130, 4),
	(131, 4),
	(132, 4),
	(133, 4),
	(134, 4),
	(135, 4),
	(136, 4),
	(137, 4),
	(138, 4),
	(139, 4),
	(140, 4),
	(141, 4),
	(142, 4),
	(143, 4),
	(144, 4),
	(145, 4),
	(146, 4),
	(147, 4),
	(148, 4),
	(149, 4),
	(150, 4),
	(151, 4),
	(152, 4),
	(153, 4),
	(154, 4),
	(155, 4),
	(156, 4),
	(157, 4),
	(158, 4),
	(159, 4),
	(160, 4),
	(161, 4),
	(162, 4),
	(163, 4),
	(164, 4),
	(165, 4),
	(166, 4),
	(167, 4),
	(168, 4),
	(169, 4),
	(170, 4),
	(171, 4),
	(172, 4),
	(173, 4),
	(174, 4),
	(175, 4),
	(176, 4),
	(177, 4),
	(178, 4),
	(179, 4),
	(180, 4),
	(181, 4),
	(182, 4),
	(183, 4),
	(184, 4),
	(185, 4),
	(186, 4),
	(187, 4),
	(188, 4),
	(189, 4),
	(190, 4),
	(191, 4),
	(192, 4),
	(193, 4),
	(194, 4),
	(195, 4),
	(196, 4),
	(197, 4),
	(198, 4),
	(199, 4),
	(200, 4),
	(201, 4),
	(202, 4),
	(203, 4),
	(204, 4),
	(205, 4),
	(206, 4),
	(207, 4),
	(208, 4),
	(209, 4),
	(210, 4),
	(211, 4),
	(212, 4),
	(213, 4),
	(214, 4),
	(215, 4),
	(216, 4),
	(217, 4),
	(218, 4),
	(219, 4),
	(220, 4),
	(221, 4),
	(222, 4),
	(223, 4),
	(224, 4),
	(225, 4),
	(226, 4),
	(227, 4),
	(228, 4),
	(229, 4),
	(230, 4),
	(231, 4),
	(232, 4),
	(233, 4),
	(234, 4),
	(235, 4),
	(236, 4),
	(237, 4),
	(238, 4),
	(239, 4),
	(240, 4),
	(241, 4),
	(242, 4),
	(243, 4),
	(244, 4),
	(245, 4),
	(246, 4),
	(247, 4),
	(248, 4),
	(249, 4),
	(250, 4),
	(251, 4),
	(252, 4),
	(253, 4),
	(254, 4),
	(255, 4),
	(256, 4),
	(257, 4),
	(258, 4),
	(259, 4),
	(260, 4),
	(261, 4),
	(262, 4),
	(263, 4),
	(264, 4),
	(265, 4),
	(266, 4),
	(267, 4),
	(268, 4),
	(269, 4),
	(270, 4),
	(271, 4),
	(272, 4),
	(273, 4),
	(274, 4),
	(275, 4),
	(276, 4),
	(277, 4),
	(278, 4),
	(279, 4),
	(280, 4),
	(281, 4),
	(282, 4),
	(283, 4),
	(284, 4),
	(285, 4),
	(286, 4),
	(287, 4),
	(288, 4),
	(289, 4),
	(290, 4),
	(291, 4),
	(292, 4),
	(293, 4),
	(294, 4),
	(295, 4),
	(296, 4),
	(297, 4),
	(298, 4),
	(299, 4),
	(300, 4),
	(301, 4),
	(302, 4),
	(303, 4),
	(304, 4),
	(305, 4),
	(306, 4),
	(307, 4),
	(308, 4),
	(309, 4),
	(310, 4),
	(311, 4),
	(312, 4),
	(313, 4),
	(314, 4),
	(315, 4),
	(316, 4),
	(317, 4),
	(318, 4),
	(319, 4),
	(320, 4),
	(321, 4),
	(322, 4),
	(323, 4),
	(324, 4),
	(325, 4),
	(326, 4),
	(327, 4),
	(328, 4),
	(329, 4),
	(330, 4),
	(331, 4),
	(332, 4),
	(333, 4),
	(334, 4),
	(335, 4),
	(336, 4),
	(337, 4),
	(338, 4),
	(339, 4),
	(340, 4),
	(341, 4),
	(342, 4),
	(343, 4),
	(344, 4),
	(345, 4),
	(346, 4),
	(347, 4),
	(348, 4),
	(349, 4),
	(350, 4),
	(351, 4),
	(352, 4),
	(353, 4),
	(354, 4),
	(355, 4),
	(356, 4),
	(357, 4),
	(358, 4),
	(359, 4),
	(360, 4),
	(361, 4),
	(362, 4),
	(363, 4),
	(364, 4),
	(365, 4),
	(366, 4),
	(367, 4),
	(368, 4),
	(369, 4),
	(370, 4),
	(371, 4),
	(372, 4),
	(373, 4),
	(374, 4),
	(375, 4),
	(376, 4),
	(377, 4),
	(378, 4),
	(379, 4),
	(380, 4),
	(381, 4),
	(382, 4),
	(383, 4),
	(384, 4),
	(385, 4),
	(386, 4),
	(387, 4),
	(388, 4),
	(389, 4),
	(390, 4),
	(391, 4),
	(392, 4),
	(393, 4),
	(394, 4),
	(395, 4),
	(396, 4),
	(397, 4),
	(398, 4),
	(399, 4),
	(400, 4),
	(401, 4),
	(402, 4),
	(403, 4),
	(404, 4),
	(405, 4),
	(406, 4),
	(407, 4),
	(408, 4),
	(409, 4),
	(410, 4),
	(411, 4),
	(412, 4),
	(413, 4),
	(414, 4),
	(415, 4),
	(416, 4),
	(417, 4),
	(418, 4),
	(419, 4),
	(420, 4),
	(421, 4),
	(422, 4),
	(423, 4),
	(424, 4),
	(425, 4),
	(426, 4),
	(427, 4),
	(428, 4),
	(429, 4),
	(430, 4),
	(431, 4),
	(432, 4),
	(433, 4),
	(434, 4),
	(435, 4),
	(436, 4),
	(437, 4),
	(438, 4),
	(439, 4),
	(440, 4),
	(441, 4),
	(442, 4),
	(443, 4),
	(444, 4),
	(445, 4),
	(446, 4),
	(450, 4),
	(457, 4),
	(458, 4),
	(459, 4),
	(460, 4),
	(461, 4),
	(462, 4),
	(463, 4),
	(464, 4),
	(465, 4),
	(466, 4),
	(467, 4),
	(468, 4),
	(469, 4),
	(470, 4),
	(471, 4),
	(472, 4),
	(473, 4),
	(474, 4),
	(475, 4),
	(476, 4),
	(477, 4),
	(478, 4),
	(479, 4),
	(480, 4),
	(481, 4),
	(482, 4),
	(483, 4),
	(484, 4),
	(485, 4),
	(486, 4),
	(487, 4),
	(488, 4),
	(489, 4),
	(490, 4),
	(491, 4),
	(492, 4),
	(493, 4),
	(494, 4),
	(495, 4),
	(496, 4),
	(497, 4),
	(498, 4),
	(4, 5),
	(19, 5),
	(22, 5),
	(23, 5),
	(24, 5),
	(25, 5),
	(26, 5),
	(27, 5),
	(28, 5),
	(29, 5),
	(30, 5),
	(31, 5),
	(32, 5),
	(33, 5),
	(34, 5),
	(35, 5),
	(36, 5),
	(37, 5),
	(38, 5),
	(39, 5),
	(40, 5),
	(41, 5),
	(42, 5),
	(43, 5),
	(44, 5),
	(45, 5),
	(46, 5),
	(47, 5),
	(48, 5),
	(49, 5),
	(50, 5),
	(51, 5),
	(52, 5),
	(53, 5),
	(54, 5),
	(55, 5),
	(56, 5),
	(57, 5),
	(58, 5),
	(59, 5),
	(60, 5),
	(61, 5),
	(62, 5),
	(63, 5),
	(64, 5),
	(65, 5),
	(66, 5),
	(67, 5),
	(68, 5),
	(69, 5),
	(70, 5),
	(71, 5),
	(72, 5),
	(73, 5),
	(74, 5),
	(75, 5),
	(76, 5),
	(77, 5),
	(78, 5),
	(79, 5),
	(80, 5),
	(81, 5),
	(82, 5),
	(83, 5),
	(84, 5),
	(85, 5),
	(86, 5),
	(87, 5),
	(89, 5),
	(90, 5),
	(91, 5),
	(92, 5),
	(93, 5),
	(94, 5),
	(95, 5),
	(96, 5),
	(104, 5),
	(105, 5),
	(106, 5),
	(107, 5),
	(108, 5),
	(109, 5),
	(110, 5),
	(111, 5),
	(114, 5),
	(115, 5),
	(116, 5),
	(117, 5),
	(118, 5),
	(119, 5),
	(120, 5),
	(121, 5),
	(123, 5),
	(124, 5),
	(125, 5),
	(126, 5),
	(127, 5),
	(128, 5),
	(129, 5),
	(130, 5),
	(131, 5),
	(132, 5),
	(133, 5),
	(134, 5),
	(135, 5),
	(136, 5),
	(137, 5),
	(138, 5),
	(139, 5),
	(140, 5),
	(141, 5),
	(142, 5),
	(143, 5),
	(144, 5),
	(145, 5),
	(146, 5),
	(147, 5),
	(472, 5),
	(473, 5),
	(474, 5),
	(475, 5),
	(476, 5),
	(162, 6),
	(166, 6),
	(171, 6),
	(175, 6),
	(179, 6),
	(181, 6),
	(186, 6),
	(188, 6),
	(193, 6),
	(407, 6),
	(409, 6),
	(416, 6),
	(421, 6),
	(423, 6),
	(424, 6),
	(425, 6),
	(426, 6),
	(427, 6),
	(428, 6),
	(434, 6),
	(438, 6),
	(439, 6),
	(440, 6),
	(441, 6),
	(442, 6),
	(447, 6),
	(494, 6),
	(498, 6);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.saturation_deductions
CREATE TABLE IF NOT EXISTS `saturation_deductions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `deduction_option` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.saturation_deductions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `saturation_deductions` DISABLE KEYS */;
/*!40000 ALTER TABLE `saturation_deductions` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_name_created_by_unique` (`name`,`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.settings: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `name`, `value`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'local_storage_validation', 'jpg,jpeg,png,xlsx,xls,csv,pdf', 1, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(2, 'wasabi_storage_validation', 'jpg,jpeg,png,xlsx,xls,csv,pdf', 1, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(3, 's3_storage_validation', 'jpg,jpeg,png,xlsx,xls,csv,pdf', 1, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(4, 'local_storage_max_upload_size', '2048000', 1, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(5, 'wasabi_max_upload_size', '2048000', 1, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(6, 's3_max_upload_size', '2048000', 1, '2022-10-19 16:51:56', '2022-10-19 16:51:56'),
	(7, 'company_logo_dark', 'logo-dark.png', 2, NULL, NULL),
	(8, 'company_logo_light', 'logo-light.png', 2, NULL, NULL),
	(9, 'company_favicon', 'favicon.png', 2, NULL, NULL),
	(10, 'title_text', 'CONTA FACIL', 2, NULL, NULL),
	(11, 'footer_text', 'HELLO SOFT', 2, NULL, NULL),
	(12, 'cust_theme_bg', 'on', 2, NULL, NULL),
	(13, 'SITE_RTL', 'off', 2, NULL, NULL),
	(14, 'cust_darklayout', 'off', 2, NULL, NULL),
	(20, 'color', 'theme-2', 2, NULL, NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.set_salaries
CREATE TABLE IF NOT EXISTS `set_salaries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.set_salaries: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `set_salaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `set_salaries` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.sources
CREATE TABLE IF NOT EXISTS `sources` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.sources: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `sources` DISABLE KEYS */;
INSERT INTO `sources` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Websites', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(2, 'Facebook', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(3, 'Naukari.com', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(4, 'Phone', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(5, 'LinkedIn', 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54');
/*!40000 ALTER TABLE `sources` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.stages
CREATE TABLE IF NOT EXISTS `stages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pipeline_id` int NOT NULL,
  `created_by` int NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.stages: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `stages` DISABLE KEYS */;
INSERT INTO `stages` (`id`, `name`, `pipeline_id`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
	(1, 'Draft', 1, 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(2, 'Sent', 1, 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(3, 'Open', 1, 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(4, 'Revised', 1, 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(5, 'Declined', 1, 2, 0, '2022-10-19 16:51:54', '2022-10-19 16:51:54');
/*!40000 ALTER TABLE `stages` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.stock_reports
CREATE TABLE IF NOT EXISTS `stock_reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.stock_reports: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `stock_reports` DISABLE KEYS */;
INSERT INTO `stock_reports` (`id`, `product_id`, `quantity`, `type`, `type_id`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 'invoice', 1, '2   cantidad vendida en factura  #INVO00001', 2, '2022-10-27 17:24:15', '2022-10-27 17:24:15'),
	(2, 2, 2, 'invoice', 2, '2   cantidad vendida en factura  #INVO00002', 2, '2022-10-27 17:26:05', '2022-10-27 17:26:05'),
	(3, 1, 5, 'bill', 1, '5   compra de cantidad en factura  #BILL00001', 2, '2022-10-27 17:50:51', '2022-10-27 17:50:51'),
	(4, 1, 221, 'bill', 1, '221   compra de cantidad en factura  #BILL00001', 2, '2022-10-27 17:50:51', '2022-10-27 17:50:51'),
	(5, 2, 2, 'bill', 1, '2   compra de cantidad en factura  #BILL00001', 2, '2022-10-27 17:50:51', '2022-10-27 17:50:51');
/*!40000 ALTER TABLE `stock_reports` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.supports
CREATE TABLE IF NOT EXISTS `supports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_created` int NOT NULL DEFAULT '0',
  `user` int NOT NULL DEFAULT '0',
  `priority` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` date NOT NULL,
  `ticket_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.supports: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `supports` DISABLE KEYS */;
/*!40000 ALTER TABLE `supports` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.support_replies
CREATE TABLE IF NOT EXISTS `support_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `support_id` int NOT NULL,
  `user` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `is_read` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.support_replies: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `support_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_replies` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.task_checklists
CREATE TABLE IF NOT EXISTS `task_checklists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.task_checklists: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `task_checklists` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_checklists` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.task_comments
CREATE TABLE IF NOT EXISTS `task_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.task_comments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `task_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_comments` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.task_files
CREATE TABLE IF NOT EXISTS `task_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.task_files: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `task_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_files` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.task_stages
CREATE TABLE IF NOT EXISTS `task_stages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT '0',
  `project_id` bigint unsigned NOT NULL DEFAULT '0',
  `color` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.task_stages: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `task_stages` DISABLE KEYS */;
INSERT INTO `task_stages` (`id`, `name`, `complete`, `project_id`, `color`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'To Do', 0, 0, NULL, 0, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(2, 'In Progress', 0, 0, NULL, 1, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(3, 'Review', 0, 0, NULL, 2, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54'),
	(4, 'Done', 0, 0, NULL, 3, 2, '2022-10-19 16:51:54', '2022-10-19 16:51:54');
/*!40000 ALTER TABLE `task_stages` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.taxes
CREATE TABLE IF NOT EXISTS `taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.taxes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` (`id`, `name`, `rate`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'IGV', '15', 2, '2022-10-27 17:04:37', '2022-10-27 17:04:37');
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.terminations
CREATE TABLE IF NOT EXISTS `terminations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `notice_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.terminations: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `terminations` DISABLE KEYS */;
/*!40000 ALTER TABLE `terminations` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.termination_types
CREATE TABLE IF NOT EXISTS `termination_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.termination_types: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `termination_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `termination_types` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.timesheets
CREATE TABLE IF NOT EXISTS `timesheets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `task_id` int NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.timesheets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `timesheets` DISABLE KEYS */;
/*!40000 ALTER TABLE `timesheets` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.time_trackers
CREATE TABLE IF NOT EXISTS `time_trackers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `tag_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_billable` int NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `total_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_active` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.time_trackers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `time_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_trackers` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.track_photos
CREATE TABLE IF NOT EXISTS `track_photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `track_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `img_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.track_photos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `track_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `track_photos` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.trainers
CREATE TABLE IF NOT EXISTS `trainers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `expertise` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.trainers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.trainings
CREATE TABLE IF NOT EXISTS `trainings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch` int NOT NULL,
  `trainer_option` int NOT NULL,
  `training_type` int NOT NULL,
  `trainer` int NOT NULL,
  `training_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `employee` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `performance` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.trainings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.training_types
CREATE TABLE IF NOT EXISTS `training_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.training_types: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `training_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_types` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `payment_id` int NOT NULL DEFAULT '0',
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.transactions: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` (`id`, `user_id`, `user_type`, `account`, `type`, `amount`, `description`, `date`, `created_by`, `payment_id`, `category`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Customer', 1, 'Revenue', 120.00, 'INGRESO CAJA', '2022-10-06', 2, 1, 'ORDINARIA', '2022-10-27 17:27:04', '2022-10-27 17:27:04'),
	(2, 1, 'Vender', 1, 'Payment', 200.00, 'COMPRA DE CEMENTOS', '2022-10-07', 2, 1, 'ORDINARIA', '2022-10-27 17:49:19', '2022-10-27 17:49:19');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.transfers
CREATE TABLE IF NOT EXISTS `transfers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `branch_id` int NOT NULL,
  `department_id` int NOT NULL,
  `transfer_date` date NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.transfers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfers` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.travels
CREATE TABLE IF NOT EXISTS `travels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `purpose_of_visit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_visit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.travels: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `travels` DISABLE KEYS */;
/*!40000 ALTER TABLE `travels` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` int DEFAULT NULL,
  `plan_expire_date` date DEFAULT NULL,
  `requested_plan` int NOT NULL DEFAULT '0',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light',
  `created_by` int NOT NULL DEFAULT '0',
  `default_pipeline` int DEFAULT NULL,
  `delete_status` int NOT NULL DEFAULT '1',
  `is_active` int NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `messenger_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `active_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.users: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `plan`, `plan_expire_date`, `requested_plan`, `type`, `avatar`, `lang`, `mode`, `created_by`, `default_pipeline`, `delete_status`, `is_active`, `remember_token`, `last_login_at`, `created_at`, `updated_at`, `messenger_color`, `dark_mode`, `active_status`) VALUES
	(1, 'Super Admin', 'superadmin@example.com', NULL, '$2y$10$b7t7c2EKZBVZsxhXjNSUh.3YbYMuJZ77wqMbfBYVrIRElYAYnSfWC', NULL, NULL, 0, 'super admin', '', 'es', 'light', 0, NULL, 1, 1, NULL, '2022-10-19 16:52:44', '2022-10-19 16:51:49', '2022-10-19 16:52:58', '#2180f3', 0, 0),
	(2, 'HELLO SOFT', 'company@example.com', NULL, '$2y$10$Wt/YIwQd3emYUeYGRqO1DeNCMCuKKKrgPd22Ngtl8Kvyz39jZIlMu', 1, NULL, 0, 'company', 'hellosoftlogo2_1666210425.png', 'es', 'light', 1, 1, 1, 1, NULL, '2022-10-27 17:00:45', '2022-10-19 16:51:52', '2022-10-27 17:00:45', '#2180f3', 0, 0),
	(3, 'accountant', 'accountant@example.com', NULL, '$2y$10$bKBWO5ThbzzOZqtIHbdbtOmmRxmfWIUxeLzmXJpKbHQWy8DmwbbNC', NULL, NULL, 0, 'accountant', '', 'en', 'light', 2, 1, 1, 1, NULL, NULL, '2022-10-19 16:51:53', '2022-10-19 16:51:53', '#2180f3', 0, 0),
	(4, 'client', 'client@example.com', NULL, '$2y$10$seRwtHyfHjweBBd6BXnRXOpnfZt4E3f6n58FuUNOhux2dvBZa4aeO', NULL, NULL, 0, 'client', '', 'en', 'light', 2, 1, 1, 1, NULL, NULL, '2022-10-19 16:51:54', '2022-10-19 16:51:54', '#2180f3', 0, 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.user_contacts
CREATE TABLE IF NOT EXISTS `user_contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.user_contacts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contacts` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.user_coupons
CREATE TABLE IF NOT EXISTS `user_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user` int NOT NULL,
  `coupon` int NOT NULL,
  `order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.user_coupons: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_coupons` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.user_deals
CREATE TABLE IF NOT EXISTS `user_deals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `deal_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_deals_user_id_foreign` (`user_id`),
  KEY `user_deals_deal_id_foreign` (`deal_id`),
  CONSTRAINT `user_deals_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_deals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.user_deals: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_deals` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_deals` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.user_email_templates
CREATE TABLE IF NOT EXISTS `user_email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int NOT NULL,
  `user_id` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.user_email_templates: ~23 rows (aproximadamente)
/*!40000 ALTER TABLE `user_email_templates` DISABLE KEYS */;
INSERT INTO `user_email_templates` (`id`, `template_id`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(2, 2, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(3, 3, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(4, 4, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(5, 5, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(6, 6, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(7, 7, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(8, 8, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(9, 9, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(10, 10, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(11, 11, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(12, 12, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(13, 13, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(14, 14, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(15, 15, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(16, 16, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(17, 17, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(18, 18, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(19, 19, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(20, 20, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(21, 21, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(22, 22, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55'),
	(23, 23, 2, 1, '2022-10-19 16:51:55', '2022-10-19 16:51:55');
/*!40000 ALTER TABLE `user_email_templates` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.user_leads
CREATE TABLE IF NOT EXISTS `user_leads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `lead_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_leads_user_id_foreign` (`user_id`),
  KEY `user_leads_lead_id_foreign` (`lead_id`),
  CONSTRAINT `user_leads_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_leads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.user_leads: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_leads` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.user_to_dos
CREATE TABLE IF NOT EXISTS `user_to_dos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.user_to_dos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_to_dos` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_to_dos` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.venders
CREATE TABLE IF NOT EXISTS `venders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vender_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int NOT NULL DEFAULT '0',
  `is_active` int NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `venders_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.venders: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `venders` DISABLE KEYS */;
INSERT INTO `venders` (`id`, `vender_id`, `name`, `email`, `tax_number`, `password`, `contact`, `avatar`, `created_by`, `is_active`, `email_verified_at`, `billing_name`, `billing_country`, `billing_state`, `billing_city`, `billing_phone`, `billing_zip`, `billing_address`, `shipping_name`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_phone`, `shipping_zip`, `shipping_address`, `lang`, `balance`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 1, 'constructora diamante', 'bros@constructoradiamante.com', '9999121', '', '2342342342', '', 2, 1, NULL, 'constructora diamante', 'Honduras', 'Tegicugalpa', 'Honduras', NULL, '1234', 'calle altaban avenida 2 anden 3', 'constructora diamante', 'Honduras', 'Tegicugalpa', 'Honduras', NULL, '1234', 'calle altaban avenida 2 anden 3', '', -200.00, NULL, '2022-10-27 15:56:31', '2022-10-27 17:49:19'),
	(2, 2, 'FERROMAX', 'FERROMAXGERENCIA@GMAIL.COM', '2123123', '', '9991939', '', 2, 1, NULL, 'FERROMAX', 'NICARAGUA', 'NICARAGUA', 'MANAGUA', '412414', '1123', 'AVENIDA LOS CABALLEROS ANDEN 3.', 'FERROMAX', 'NICARAGUA', 'NICARAGUA', 'MANAGUA', '412414', '1123', 'AVENIDA LOS CABALLEROS ANDEN 3. CASA 24', '', 0.00, NULL, '2022-10-27 15:57:37', '2022-10-27 18:01:41'),
	(3, 3, 'PISCINA PACIFIC', 'PACIFI@GMAIL.COM', '123132', '', '999999', '', 2, 1, NULL, 'MARIO SALDANA', 'NICARAGUA', 'MANAGUA', 'MANAGUA', '1123123', '31212', 'PLAZA INTER SUBIDA CALLE 3', 'MARIO SALDANA', 'NICARAGUA', 'MANAGUA', 'MANAGUA', '1123123', '31212', 'PLAZA INTER SUBIDA CALLE 3', '', 0.00, NULL, '2022-10-27 17:56:03', '2022-10-27 17:56:03'),
	(4, 4, 'CERMICA SA', 'CER@GMAIL.COM', '123123', '', '998998', '', 2, 1, NULL, 'JULIO PEREZ', 'NICARAGUA', 'MANAGUA', 'MANAGUA', '3312313', '1201', 'BARRIO LOPEZ PEREZ CALLE 13 AVENIDA 7', 'JULIO PEREZ', 'NICARAGUA', 'MANAGUA', 'MANAGUA', '3312313', '1201', 'BARRIO LOPEZ PEREZ CALLE 13 AVENIDA 7', '', 0.00, NULL, '2022-10-27 18:13:50', '2022-10-27 18:13:50');
/*!40000 ALTER TABLE `venders` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.warehouses
CREATE TABLE IF NOT EXISTS `warehouses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.warehouses: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` (`id`, `name`, `address`, `city`, `city_zip`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'North Warehouse', '723 N. Tillamook Street Portland, OR Portland, United States', 'Portland', '97227', 2, '2022-10-19 16:51:55', '2022-10-19 16:51:55');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.warehouse_products
CREATE TABLE IF NOT EXISTS `warehouse_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.warehouse_products: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `warehouse_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_products` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.warnings
CREATE TABLE IF NOT EXISTS `warnings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `warning_to` int NOT NULL,
  `warning_by` int NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `warning_date` date NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.warnings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `warnings` ENABLE KEYS */;

-- Volcando estructura para tabla erpgo.zoom_meetings
CREATE TABLE IF NOT EXISTS `zoom_meetings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` int NOT NULL DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int NOT NULL DEFAULT '0',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duration` int NOT NULL DEFAULT '0',
  `start_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `join_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'waiting',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla erpgo.zoom_meetings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `zoom_meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `zoom_meetings` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
