/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.30 : Database - db_zbyzlvcl6i0t
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_zbyzlvcl6i0t` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db_zbyzlvcl6i0t`;

/*Table structure for table `activity_logs` */

DROP TABLE IF EXISTS `activity_logs`;

CREATE TABLE `activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `task_id` int NOT NULL DEFAULT '0',
  `deal_id` int NOT NULL DEFAULT '0',
  `log_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `remark` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `activity_logs` */

/*Table structure for table `admin_payment_settings` */

DROP TABLE IF EXISTS `admin_payment_settings`;

CREATE TABLE `admin_payment_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_payment_settings_name_created_by_unique` (`name`,`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `admin_payment_settings` */

/*Table structure for table `allowance_options` */

DROP TABLE IF EXISTS `allowance_options`;

CREATE TABLE `allowance_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `allowance_options` */

/*Table structure for table `allowances` */

DROP TABLE IF EXISTS `allowances`;

CREATE TABLE `allowances` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `allowance_option` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `allowances` */

/*Table structure for table `announcement_employees` */

DROP TABLE IF EXISTS `announcement_employees`;

CREATE TABLE `announcement_employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `announcement_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `announcement_employees` */

/*Table structure for table `announcements` */

DROP TABLE IF EXISTS `announcements`;

CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `branch_id` int NOT NULL DEFAULT '0',
  `department_id` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0',
  `employee_id` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0',
  `description` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `announcements` */

/*Table structure for table `appraisals` */

DROP TABLE IF EXISTS `appraisals`;

CREATE TABLE `appraisals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch` int NOT NULL DEFAULT '0',
  `employee` int NOT NULL DEFAULT '0',
  `rating` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `appraisal_date` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `customer_experience` int NOT NULL DEFAULT '0',
  `marketing` int NOT NULL DEFAULT '0',
  `administration` int NOT NULL DEFAULT '0',
  `professionalism` int NOT NULL DEFAULT '0',
  `integrity` int NOT NULL DEFAULT '0',
  `attendance` int NOT NULL DEFAULT '0',
  `remark` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `appraisals` */

/*Table structure for table `assets` */

DROP TABLE IF EXISTS `assets`;

CREATE TABLE `assets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` text COLLATE utf8mb4_spanish_ci,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `supported_date` date NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `assets` */

/*Table structure for table `attendance_employees` */

DROP TABLE IF EXISTS `attendance_employees`;

CREATE TABLE `attendance_employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `date` date NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `attendance_employees` */

/*Table structure for table `award_types` */

DROP TABLE IF EXISTS `award_types`;

CREATE TABLE `award_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `award_types` */

/*Table structure for table `awards` */

DROP TABLE IF EXISTS `awards`;

CREATE TABLE `awards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `award_type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `date` date NOT NULL,
  `gift` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `awards` */

/*Table structure for table `bank_accounts` */

DROP TABLE IF EXISTS `bank_accounts`;

CREATE TABLE `bank_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `holder_name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `chart_account_id` int NOT NULL DEFAULT '0',
  `opening_balance` double(15,2) NOT NULL DEFAULT '0.00',
  `contact_number` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `bank_address` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `bank_accounts` */

/*Table structure for table `bank_transfers` */

DROP TABLE IF EXISTS `bank_transfers`;

CREATE TABLE `bank_transfers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_account` int NOT NULL DEFAULT '0',
  `to_account` int NOT NULL DEFAULT '0',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `payment_method` int NOT NULL DEFAULT '0',
  `reference` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `bank_transfers` */

/*Table structure for table `bill_accounts` */

DROP TABLE IF EXISTS `bill_accounts`;

CREATE TABLE `bill_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `chart_account_id` int NOT NULL DEFAULT '0',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `description` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ref_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `bill_accounts` */

/*Table structure for table `bill_payments` */

DROP TABLE IF EXISTS `bill_payments`;

CREATE TABLE `bill_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bill_id` int NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int NOT NULL,
  `payment_method` int NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `add_receipt` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `bill_payments` */

/*Table structure for table `bill_products` */

DROP TABLE IF EXISTS `bill_products`;

CREATE TABLE `bill_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bill_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `bill_products` */

/*Table structure for table `bills` */

DROP TABLE IF EXISTS `bills`;

CREATE TABLE `bills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bill_id` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0',
  `vender_id` int NOT NULL,
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `order_number` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_display` int NOT NULL DEFAULT '1',
  `send_date` date DEFAULT NULL,
  `discount_apply` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `bills` */

/*Table structure for table `branches` */

DROP TABLE IF EXISTS `branches`;

CREATE TABLE `branches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `branches` */

/*Table structure for table `budgets` */

DROP TABLE IF EXISTS `budgets`;

CREATE TABLE `budgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `income_data` text COLLATE utf8mb4_spanish_ci,
  `expense_data` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `budgets` */

/*Table structure for table `bug_comments` */

DROP TABLE IF EXISTS `bug_comments`;

CREATE TABLE `bug_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `bug_id` int NOT NULL DEFAULT '0',
  `user_type` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `bug_comments` */

/*Table structure for table `bug_files` */

DROP TABLE IF EXISTS `bug_files`;

CREATE TABLE `bug_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `file_size` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `bug_id` int NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `bug_files` */

/*Table structure for table `bug_statuses` */

DROP TABLE IF EXISTS `bug_statuses`;

CREATE TABLE `bug_statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `bug_statuses` */

/*Table structure for table `bugs` */

DROP TABLE IF EXISTS `bugs`;

CREATE TABLE `bugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int NOT NULL DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `priority` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0',
  `assign_to` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `bugs` */

/*Table structure for table `ch_favorites` */

DROP TABLE IF EXISTS `ch_favorites`;

CREATE TABLE `ch_favorites` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `favorite_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `ch_favorites` */

/*Table structure for table `ch_messages` */

DROP TABLE IF EXISTS `ch_messages`;

CREATE TABLE `ch_messages` (
  `id` bigint NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `from_id` bigint NOT NULL,
  `to_id` bigint NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `ch_messages` */

/*Table structure for table `chart_of_account_parents` */

DROP TABLE IF EXISTS `chart_of_account_parents`;

CREATE TABLE `chart_of_account_parents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `sub_type` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `account` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `chart_of_account_parents` */

/*Table structure for table `chart_of_account_sub_types` */

DROP TABLE IF EXISTS `chart_of_account_sub_types`;

CREATE TABLE `chart_of_account_sub_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '1',
  `type` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `chart_of_account_sub_types` */

/*Table structure for table `chart_of_account_types` */

DROP TABLE IF EXISTS `chart_of_account_types`;

CREATE TABLE `chart_of_account_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `chart_of_account_types` */

/*Table structure for table `chart_of_accounts` */

DROP TABLE IF EXISTS `chart_of_accounts`;

CREATE TABLE `chart_of_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `code` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `sub_type` int NOT NULL DEFAULT '0',
  `parent` int NOT NULL DEFAULT '0',
  `is_enabled` int NOT NULL DEFAULT '1',
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `chart_of_accounts` */

/*Table structure for table `client_deals` */

DROP TABLE IF EXISTS `client_deals`;

CREATE TABLE `client_deals` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `client_deals` */

/*Table structure for table `commissions` */

DROP TABLE IF EXISTS `commissions`;

CREATE TABLE `commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `commissions` */

/*Table structure for table `company_payment_settings` */

DROP TABLE IF EXISTS `company_payment_settings`;

CREATE TABLE `company_payment_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `company_payment_settings_name_created_by_unique` (`name`,`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `company_payment_settings` */

/*Table structure for table `company_policies` */

DROP TABLE IF EXISTS `company_policies`;

CREATE TABLE `company_policies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `company_policies` */

/*Table structure for table `competencies` */

DROP TABLE IF EXISTS `competencies`;

CREATE TABLE `competencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `competencies` */

/*Table structure for table `complaints` */

DROP TABLE IF EXISTS `complaints`;

CREATE TABLE `complaints` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `complaint_from` int NOT NULL,
  `complaint_against` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `complaint_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `complaints` */

/*Table structure for table `contract_attachment` */

DROP TABLE IF EXISTS `contract_attachment`;

CREATE TABLE `contract_attachment` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `files` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `contract_attachment` */

/*Table structure for table `contract_comment` */

DROP TABLE IF EXISTS `contract_comment`;

CREATE TABLE `contract_comment` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `comment` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `contract_comment` */

/*Table structure for table `contract_notes` */

DROP TABLE IF EXISTS `contract_notes`;

CREATE TABLE `contract_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `notes` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `contract_notes` */

/*Table structure for table `contract_types` */

DROP TABLE IF EXISTS `contract_types`;

CREATE TABLE `contract_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `contract_types` */

/*Table structure for table `contracts` */

DROP TABLE IF EXISTS `contracts`;

CREATE TABLE `contracts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_name` int NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `type` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `contract_description` text COLLATE utf8mb4_spanish_ci,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'pending',
  `client_signature` longtext COLLATE utf8mb4_spanish_ci,
  `company_signature` longtext COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `contracts` */

/*Table structure for table `coupons` */

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `limit` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_spanish_ci,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `coupons` */

/*Table structure for table `credit_notes` */

DROP TABLE IF EXISTS `credit_notes`;

CREATE TABLE `credit_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice` int NOT NULL DEFAULT '0',
  `customer` int NOT NULL DEFAULT '0',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `credit_notes` */

/*Table structure for table `custom_field_values` */

DROP TABLE IF EXISTS `custom_field_values`;

CREATE TABLE `custom_field_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint unsigned NOT NULL,
  `field_id` bigint unsigned NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `custom_field_values_record_id_field_id_unique` (`record_id`,`field_id`),
  KEY `custom_field_values_field_id_foreign` (`field_id`),
  CONSTRAINT `custom_field_values_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `custom_field_values` */

/*Table structure for table `custom_fields` */

DROP TABLE IF EXISTS `custom_fields`;

CREATE TABLE `custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `custom_fields` */

/*Table structure for table `custom_questions` */

DROP TABLE IF EXISTS `custom_questions`;

CREATE TABLE `custom_questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `is_required` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `custom_questions` */

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `tax_number` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '',
  `created_by` int NOT NULL DEFAULT '0',
  `is_active` int NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_spanish_ci,
  `shipping_name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_spanish_ci,
  `lang` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `credit_balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `customers` */

/*Table structure for table `deal_calls` */

DROP TABLE IF EXISTS `deal_calls`;

CREATE TABLE `deal_calls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint unsigned NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `call_type` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `user_id` int NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `call_result` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_calls_deal_id_foreign` (`deal_id`),
  CONSTRAINT `deal_calls_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `deal_calls` */

/*Table structure for table `deal_discussions` */

DROP TABLE IF EXISTS `deal_discussions`;

CREATE TABLE `deal_discussions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint unsigned NOT NULL,
  `comment` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_discussions_deal_id_foreign` (`deal_id`),
  CONSTRAINT `deal_discussions_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `deal_discussions` */

/*Table structure for table `deal_emails` */

DROP TABLE IF EXISTS `deal_emails`;

CREATE TABLE `deal_emails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint unsigned NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_emails_deal_id_foreign` (`deal_id`),
  CONSTRAINT `deal_emails_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `deal_emails` */

/*Table structure for table `deal_files` */

DROP TABLE IF EXISTS `deal_files`;

CREATE TABLE `deal_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint unsigned NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_files_deal_id_foreign` (`deal_id`),
  CONSTRAINT `deal_files_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `deal_files` */

/*Table structure for table `deal_tasks` */

DROP TABLE IF EXISTS `deal_tasks`;

CREATE TABLE `deal_tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `priority` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_tasks_deal_id_foreign` (`deal_id`),
  CONSTRAINT `deal_tasks_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `deal_tasks` */

/*Table structure for table `deals` */

DROP TABLE IF EXISTS `deals`;

CREATE TABLE `deals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `price` decimal(15,2) DEFAULT '0.00',
  `pipeline_id` int NOT NULL,
  `stage_id` int NOT NULL,
  `sources` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `products` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_spanish_ci,
  `labels` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `deals` */

/*Table structure for table `debit_notes` */

DROP TABLE IF EXISTS `debit_notes`;

CREATE TABLE `debit_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bill` int NOT NULL DEFAULT '0',
  `vendor` int NOT NULL DEFAULT '0',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `debit_notes` */

/*Table structure for table `deduction_options` */

DROP TABLE IF EXISTS `deduction_options`;

CREATE TABLE `deduction_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `deduction_options` */

/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `departments` */

/*Table structure for table `designations` */

DROP TABLE IF EXISTS `designations`;

CREATE TABLE `designations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT NULL,
  `department_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `designations` */

/*Table structure for table `documents` */

DROP TABLE IF EXISTS `documents`;

CREATE TABLE `documents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `is_required` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `documents` */

/*Table structure for table `ducument_uploads` */

DROP TABLE IF EXISTS `ducument_uploads`;

CREATE TABLE `ducument_uploads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `ducument_uploads` */

/*Table structure for table `email_template_langs` */

DROP TABLE IF EXISTS `email_template_langs`;

CREATE TABLE `email_template_langs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `lang` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `content` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `email_template_langs` */

insert  into `email_template_langs`(`id`,`parent_id`,`lang`,`subject`,`content`,`created_at`,`updated_at`) values 
(1,1,'ar','New User','<p>مرحبا،&nbsp;<br>مرحبا بك في {app_name}.</p><p><b>البريد الإلكتروني </b>: {email}<br><b>كلمه السر</b> : {password}</p><p>{app_url}</p><p>شكر،<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(2,1,'zh','New User','<p>您好，<br>欢迎使用 {app_name}。</p><p><b>电子邮件 </b>：{email}<br><b>密码</b>：{password} </p><p>{app_url}</p><p>谢谢，<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(3,1,'da','New User','<p>Hej,&nbsp;<br>Velkommen til {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Adgangskode</b> : {password}</p><p>{app_url}</p><p>Tak,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(4,1,'de','New User','<p>Hallo,&nbsp;<br>Willkommen zu {app_name}.</p><p><b>Email </b>: {email}<br><b>Passwort</b> : {password}</p><p>{app_url}</p><p>Vielen Dank,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(5,1,'en','New User','<p>Hello,&nbsp;<br>Welcome to {app_name}.</p><p><b>Email </b>: {email}<br><b>Password</b> : {password}</p><p>{app_url}</p><p>Thanks,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(6,1,'es','New User','<p>Hola,&nbsp;<br>Bienvenido a {app_name}.</p><p><b>Correo electrónico </b>: {email}<br><b>Contraseña</b> : {password}</p><p>{app_url}</p><p>Gracias,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(7,1,'fr','New User','<p>Bonjour,&nbsp;<br>Bienvenue à {app_name}.</p><p><b>Email </b>: {email}<br><b>Mot de passe</b> : {password}</p><p>{app_url}</p><p>Merci,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(8,1,'he','New User','<p>שלום,&nbsp;<br>ברוכים הבאים אל {app_name}.</p><p><b>דוא\"ל </b>: {email}<br><b>סיסמה</b> : {password} </p><p>{app_url}</p><p>תודה,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(9,1,'it','New User','<p>Ciao,&nbsp;<br>Benvenuto a {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Parola d\'ordine</b> : {password}</p><p>{app_url}</p><p>Grazie,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(10,1,'ja','New User','<p>こんにちは、&nbsp;<br>へようこそ {app_name}.</p><p><b>Eメール </b>: {email}<br><b>パスワード</b> : {password}</p><p>{app_url}</p><p>おかげで、<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(11,1,'nl','New User','<p>Hallo,&nbsp;<br>Welkom bij {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Wachtwoord</b> : {password}</p><p>{app_url}</p><p>Bedankt,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(12,1,'pl','New User','<p>Witaj,&nbsp;<br>Witamy w {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Hasło</b> : {password}</p><p>{app_url}</p><p>Dzięki,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(13,1,'ru','New User','<p>Привет,&nbsp;<br>Добро пожаловать в {app_name}.</p><p><b>Электронное письмо </b>: {email}<br><b>пароль</b> : {password}</p><p>{app_url}</p><p>Спасибо,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(14,1,'pt','New User','<p>Olá,<br>Bem-vindo ao {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Senha</b> : {password}</p><p>{app_url}</p><p>Obrigada,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(15,1,'tr','New User','<p>Merhaba,&nbsp;<br>{app_name} e hoş geldiniz.</p><p><b>E-posta </b>: {email}<br><b>Şifre</b> : {şifre} </p><p>{app_url}</p><p>Teşekkürler,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(16,1,'pt-br','New User','<p>Olá,<br>Bem-vindo ao {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Senha</b> : {password}</p><p>{app_url}</p><p>Obrigada,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(17,2,'ar','New Client','<p>مرحبا { client_name } ، </p><p>أنت الآن Client ..</p><p>البريد الالكتروني : { client_email } </p><p>كلمة السرية : { client_password }</p><p>{ app_url }</p><p>شكرا</p><p>{ app_name }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(18,2,'zh','New Client','<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">你好 {client_name},</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">您现在是客户..</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">电子邮件&nbsp;</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">: {client_email}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">密码</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">&nbsp;: {client_password}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_url}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">谢谢,</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_name}</span><br></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(19,2,'es','New Client','<p>Hola {nombre_cliente},</p><p> ahora es Cliente ..</p><p>Correo electrónico: {client_email}</p><p> Contraseña: {client_password}</p><p>{app_url}</p><p>Gracias,</p><p>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(20,2,'da','New Client','<p>Hej { client_name },</p><p> Du er nu klient ..</p><p>E-mail: { client_email } </p><p>Password: { client_password }</p><p>{ app_url }</p><p>Tak.</p><p>{ app_name }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(21,2,'de','New Client','<p>Hallo {client_name}, </p><p>Sie sind jetzt Client ..</p><p>E-Mail: {client_email}</p><p> Kennwort: {client_password}</p><p>{app_url}</p><p>Danke,</p><p>{Anwendungsname}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(22,2,'en','New Client','<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Hello {client_name},</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">You are now Client..</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Email&nbsp;</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">: {client_email}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Password</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">&nbsp;: {client_password}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_url}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Thanks,</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_name}</span><br></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(23,2,'fr','New Client','<p>Bonjour { client_name }, </p><p>Vous êtes maintenant Client ..</p><p>Adresse électronique: { client_email } </p><p>Mot de passe: { client_password }</p><p>{ app_url }</p><p>Merci,</p><p>{ app_name }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(24,2,'he','New Client','<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">הלו {client_name},</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span סגנון = \" צבע: rgb (29, 28, 29); משפחת פונט: Sמחסור-Lato, ססור-שברים, appleלוגו, appleLogo, sans-serif; גודל גופן: 15px; גלגולי גופן: 15px; צבע-כללי רקע: rgb (248, 248, 248, 248); אתה עכשיו לקוח ...</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><b data-stringify-type = \"מודגש\" סגנון = \"מודגש\", צבע: צבע: rgb (29, 28, 29, 29); משפחת פונט: Slack-Lato, Slack-Fractions, AppleLogo, sans-serif; גודל גופן: 15px; גופנים-גלידות: צבע רקע: rgb: rgb (248, 248, 248, 248); #nbsp;</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">: {client_ייל}</span><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">: {client_ייל}</span><br לסגנון = \" תיבה: צבע: צבע: צבע: rgb (29, 28, 29); משפחה: Slack-Lato, Slack-Fractions, appleLogo, appleLogo, sans-serif; גודל גופן: 15px; גופן-יוני ליגריות: rgb-צבע רקע: rgb (248, 248, 248, 248);<b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">סיסמה</b><span סגנון = \" צבע: rgb (29, 28, 29); Slack-Lato, Slack-Lato, Slack-Fractions, appleLogo, appleLogo, applelogo, appleLogo, pleLogo, applelogo, applelogo, appleLogo, sans-serif; גופן = 15px; #15px; צבע רקע: rgb (248, 248, 248); &nbsp;: {client_password}</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_url}</span><br לסגנון = \" תיבה-גודל: צבע: צבע: rgb (29, 28, 29); משפחת פונט: Slack-Lato, Slack-Fractions, appleLogo, appleלוגו, זנות-גודל גופן: 15px; צבע רקע: 15px; צבע רקע: rgb: rgb (248, 248, 248, 248);<span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">תודה,</span><br סטייל = \" תיבה: rgb: צבע: rgb (29, 28, 29); משפחת פונט: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; גופן-גודל גופן: 15px; גופן-variant-קשירה: צבע רקע משותף: rgb (248, 248, 248);<span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{app_name}</span><br></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(25,2,'it','New Client','<p>Hello {client_name}, </p><p>Tu ora sei Client ..</p><p>Email: {client_email} </p><p>Password: {client_password}</p><p>{app_url}</p><p>Grazie,</p><p>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(26,2,'ja','New Client','<p>こんにちは {client_name} 、</p><p>お客様になりました。</p><p>E メール : {client_email}</p><p> パスワード : {client_password}</p><p>{app_url}</p><p>ありがとう。</p><p>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(27,2,'nl','New Client','<p>Hallo { client_name }, </p><p>U bent nu Client ..</p><p>E-mail: { client_email } </p><p>Wachtwoord: { client_password }</p><p>{ app_url }</p><p>Bedankt.</p><p>{ app_name }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(28,2,'pl','New Client','<p>Witaj {client_name }, </p><p>jesteś teraz Client ..</p><p>E-mail: {client_email }</p><p> Hasło: {client_password }</p><p>{app_url }</p><p>Dziękuję,</p><p>{app_name }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(29,2,'ru','New Client','<p>Hello { client_name }, </p><p>Вы теперь клиент ..</p><p>Адрес электронной почты: { client_email } </p><p>Пароль: { client_password }</p><p>{ app_url }</p><p>Спасибо.</p><p>{ app_name }</p><p>Olá {client_name}, </p><p>Você agora é Client ..</p><p>E-mail: {client_email} </p><p>Senha: {client_password}</p><p>{app_url}</p><p>Obrigado,</p><p>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(30,2,'pt','New Client','<p>Olá {client_name}, </p><p>Você agora é Client ..</p><p>E-mail: {client_email} </p><p>Senha: {client_password}</p><p>{app_url}</p><p>Obrigado,</p><p>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(31,2,'tr','New Client','<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Merhaba { client_name },</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style = \" color: rgb (29, 28, 29); font-family: Sack-Lato, Slack-Fragactions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb (248, 248, 248); \"> Rgb (248, 248, 248); \"> Artık Müşteri ..</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><b data-stringify-type = \"bold\" style = \" box-boyutlandırma: devral; renk: rgb (29, 28, 29); font-family: Seksime-Lato, Seksiks-Frarits, appleLogo, sans-serif; font-size: 15px; font-variant-color: common-ligatures; background-color: rgb (248, 248, 248); \"> E-posta &nbsp;</b><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">: { client_email }</span><br style = \" box-boyutlandırma: devral; renk: rgb (29, 28, 29); font-family: Seksime-Lato, Sack-Frations, appleLogo, sans-serif; font-size: 15px; font-variant-ligatürler: common-ligatures; background-color: rgb (248, 248, 248); \"><b data-stringify-type=\"bold\" style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Parola</b><span style = \" color: rgb (29, 28, 29); font-family: Seksime-lato, Seksi-Frations, appleLogo, sans-serif; font-size: 15px; font-variant-ligatür: common-ligature; background-color: rgb (248, 248, 248); \"> &nbsp;: { client_password }</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{ app_url }</span><br style = \" box-boyutlandırma: devral; renk: rgb (29, 28, 29); font-family: Seksi-Lato, sack-Frations, appleLogo, sans-serif; font-size: 15px; font-variant-ligatürler: common-ligatures; background-color: rgb (248, 248, 248); \"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Teşekkürler,</span><br style = \" box-boyutlandırma: devral; color: rgb (29, 28, 29); font-family: Seksime-Lapo, Seksime-Frations, appleLogo, sans-serif; font-size: 15px; font-variant-ligatürler: common-ligatures; background-color: rgb (248, 248, 248); \"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">{ app_name }</span><br></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(32,2,'pt-br','New Client','<p>Olá {client_name}, </p><p>Você agora é Client ..</p><p>E-mail: {client_email} </p><p>Senha: {client_password}</p><p>{app_url}</p><p>Obrigado,</p><p>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(33,3,'ar','New Support Ticket','<p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">مرحبا</span><span style=\"font-size: 12pt;\">&nbsp;{support_name}</span><br><br></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">تم فتح تذكرة دعم جديدة.</span><span style=\"font-size: 12pt;\">.</span><br><br></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">عنوان</span><span style=\"font-size: 12pt;\"><strong>:</strong>&nbsp;{support_title}</span><br></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">أفضلية</span><span style=\"font-size: 12pt;\"><strong>:</strong>&nbsp;{support_priority}</span><span style=\"font-size: 12pt;\"><br></span></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">تاريخ الانتهاء</span><span style=\"font-size: 12pt;\">: {support_end_date}</span></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">رسالة دعم</span><span style=\"font-size: 12pt;\"><strong>:</strong></span><br><span style=\"font-size: 12pt;\">{support_description}</span><span style=\"font-size: 12pt;\"><br><br></span></p><p><span style=\"background-color: rgb(248, 249, 250); color: rgb(34, 34, 34); font-family: inherit; font-size: 24px; text-align: right; white-space: pre-wrap;\">أطيب التحيات،</span><span style=\"font-size: 12pt;\">,</span><br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(34,3,'zh','New Support Ticket','<p><span style=\"font-size: 12pt;\"><b>嗨</b> {support_name}</span><br><br><span style=\"font-size: 12pt;\">新的支持请求已打开。</span><br><br><span style=\"font-size: 12pt;\"><strong>标题：</strong> {support_title}</span><br>< span style=\"font-size: 12pt;\"><strong>优先级：</strong> {support_priority}</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><b>结束日期</b>：{support_end_date}</span></p><p><br><span style=\"font-size: 12pt;\" ><strong>支持消息：</strong></span><br><span style=\"font-size: 12pt;\">{support_description}</span><span style=\"font-size: 12pt;\" ><br><br><b>亲切的问候</b>，</span><br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(35,3,'da','New Support Ticket','<p><b>Hej</b>&nbsp;{support_name}<br><br></p><p>Ny supportbillet er blevet åbnet.<br><br></p><p><b>Titel</b>: {support_title}<br></p><p><b>Prioritet</b>: {support_priority}<br></p><p><b>Slutdato</b>: {support_end_date}</p><p><br></p><p><b>Supportmeddelelse</b>:<br>{support_description}<br><br></p><p><b>Med venlig hilsen</b>,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(36,3,'de','New Support Ticket','<p><b>Hallo</b>&nbsp;{support_name}<br><br></p><p>Neues Support-Ticket wurde eröffnet.<br><br></p><p><b>Titel</b>: {support_title}<br></p><p><b>Priorität</b>: {support_priority}<br></p><p><b>Endtermin</b>: {support_end_date}</p><p><br></p><p><b>Support-Nachricht</b>:<br>{support_description}<br><br></p><p><b>Mit freundlichen Grüßen</b>,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(37,3,'en','New Support Ticket','<p><span style=\"font-size: 12pt;\"><b>Hi</b>&nbsp;{support_name}</span><br><br><span style=\"font-size: 12pt;\">New support ticket has been opened.</span><br><br><span style=\"font-size: 12pt;\"><strong>Title:</strong>&nbsp;{support_title}</span><br><span style=\"font-size: 12pt;\"><strong>Priority:</strong>&nbsp;{support_priority}</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><b>End Date</b>: {support_end_date}</span></p><p><br><span style=\"font-size: 12pt;\"><strong>Support message:</strong></span><br><span style=\"font-size: 12pt;\">{support_description}</span><span style=\"font-size: 12pt;\"><br><br><b>Kind Regards</b>,</span><br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(38,3,'es','New Support Ticket','<p><b>Hola</b>&nbsp;{support_name}<br><br></p><p>Se ha abierto un nuevo ticket de soporte.<br><br></p><p><b>Título</b>: {support_title}<br></p><p><b>Prioridad</b>: {support_priority}<br></p><p><b>Fecha final</b>: {support_end_date}</p><p><br></p><p><b>Mensaje de apoyo</b>:<br>{support_description}<br><br></p><p><b>Saludos cordiales</b>,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(39,3,'fr','New Support Ticket','<p><b>salut</b>&nbsp;{support_name}<br><br></p><p>Un nouveau ticket d\'assistance a été ouvert.<br><br></p><p><b>Titre</b>: {support_title}<br></p><p><b>Priorité</b>: {support_priority}<br></p><p><b>Date de fin</b>: {support_end_date}</p><p><b>Message d\'assistance</b>:<br>{support_description}<br><br></p><p><b>Sincères amitiés</b>,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(40,3,'he','New Support Ticket','<p><span style=\"font-size: 12pt;\"><b>היי</b> {support_name}</span><br><br><span style=\"font-size: 12pt;\"> כרטיס תמיכה חדש נפתח.</span><br><br><span style=\"font-size: 12pt;\"><strong>כותרת:</strong> {support_title}</span><br>< span style=\"font-size: 12pt;\"><strong>עדיפות:</strong> {support_priority}</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><b>תאריך סיום</b>: {support_end_date}</span></p><p><br><span style=\"font-size: 12pt;\" ><strong>הודעת תמיכה:</strong></span><br><span style=\"font-size: 12pt;\">{support_description}</span><span style=\"font-size: 12pt;\" ><br><br><b>בברכה</b>,</span><br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(41,3,'it','New Support Ticket','<p><b>Ciao</b>&nbsp;{support_name},<br><br></p><p>È stato aperto un nuovo ticket di supporto.<br><br></p><p><b>Titolo</b>: {support_title}<br></p><p><b>Priorità</b>: {support_priority}<br></p><p><b>Data di fine</b>: {support_end_date}</p><p><br></p><p><b>Messaggio di supporto</b>:<br>{support_description}</p><p><b>Cordiali saluti</b>,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(42,3,'ja','New Support Ticket','<p>こんにちは {support_name}<br><br></p><p>新しいサポートチケットがオープンしました。.<br><br></p><p>題名: {support_title}<br></p><p>優先: {support_priority}<br></p><p>終了日: {support_end_date}</p><p><br></p><p>サポートメッセージ:<br>{support_description}<br><br></p><div class=\"tw-ta-container hide-focus-ring tw-lfl focus-visible\" id=\"tw-target-text-container\" tabindex=\"0\" data-focus-visible-added=\"\" style=\"overflow: hidden; position: relative; outline: 0px;\"><pre class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" id=\"tw-target-text\" dir=\"ltr\" style=\"unicode-bidi: isolate; line-height: 32px; border: none; padding: 2px 0.14em 2px 0px; position: relative; margin-top: -2px; margin-bottom: -2px; resize: none; overflow: hidden; width: 277px; overflow-wrap: break-word;\"><span lang=\"ja\">敬具、</span>,</pre></div><p>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(43,3,'nl','New Support Ticket','<p><b>Hoi</b>&nbsp;{support_name}<br><br></p><p>Er is een nieuw supportticket geopend.<br><br></p><p><b>Titel</b>: {support_title}<br></p><p><b>Prioriteit</b>: {support_priority}<br></p><p><b>Einddatum</b>: {support_end_date}</p><p><br></p><p><b>Ondersteuningsbericht</b>:<br>{support_description}<br><br></p><p><b>Vriendelijke groeten</b>,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(44,3,'pl','New Support Ticket','<p><b>cześć</b>&nbsp;{support_name}<br><br></p><p>Nowe zgłoszenie do pomocy technicznej zostało otwarte.<br><br></p><p><b>Tytuł</b>: {support_title}<br></p><p><b>Priorytet</b>: {support_priority}<br></p><p><b>Data końcowa</b>: {support_end_date}</p><p><br></p><p><b>Wiadomość pomocy</b>:<br>{support_description}<br><br></p><p><b>Z poważaniem</b>,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(45,3,'ru','New Support Ticket','<p><b>Здравствуй</b>&nbsp;{support_name}<br><br></p><p>Открыта новая заявка в службу поддержки.<br><br></p><p><b>заглавие</b>: {support_title}<br></p><p><b>Приоритет</b>: {support_priority}<br></p><p><b>Дата окончания</b>: {support_end_date}</p><p><br></p><p><b>Сообщение поддержки</b>:<br>{support_description}<br><br></p><p><b>С уважением</b>,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(46,3,'pt','New Support Ticket','<p><b>Oi</b>&nbsp;{support_name}<br><br></p><p>ОNovo ticket de suporte foi aberto.<br><br></p><p><b>Título</b>: {support_title}<br></p><p><b>Prioridade</b>: {support_priority}<br></p><p><b>Data final</b>: {support_end_date}</p><p><br></p><p><b>Mensagem de suporte</b>:<br>{support_description}<br><br></p><p><b>С Atenciosamente</b>,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(47,3,'tr','New Support Ticket','<p><span style=\"font-size: 12pt;\"><b>Merhaba</b> {support_name}</span><br><br><span style=\"font-size: 12pt;\"> Yeni destek bileti açıldı.</span><br><br><span style=\"font-size: 12pt;\"><strong>Başlık:</strong> {support_title}</span><br>< span style=\"font-size: 12pt;\"><strong>Öncelik:</strong> {support_priority}</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><b>Bitiş Tarihi</b>: {support_end_date}</span></p><p><br><span style=\"font-size: 12pt;\" ><strong>Destek mesajı:</strong></span><br><span style=\"font-size: 12pt;\">{support_description}</span><span style=\"font-size: 12pt;\" ><br><br><b>Saygılarımızla</b>,</span><br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(48,3,'pt-br','New Support Ticket','<p><b>Oi</b>&nbsp;{support_name}<br><br></p><p>ОNovo ticket de suporte foi aberto.<br><br></p><p><b>Título</b>: {support_title}<br></p><p><b>Prioridade</b>: {support_priority}<br></p><p><b>Data final</b>: {support_end_date}</p><p><br></p><p><b>Mensagem de suporte</b>:<br>{support_description}<br><br></p><p><b>С Atenciosamente</b>,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(49,4,'ar','Lead Assigned','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">مرحبا,</span><br style=\"font-family: sans-serif;\"></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">تم تعيين عميل محتمل جديد لك.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">اسم العميل المحتمل&nbsp;: {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\" style=\"\">الرصاص البريد الإلكتروني<span style=\"font-size: 1rem;\">&nbsp;: {lead_email}</span></span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">خط أنابيب الرصاص&nbsp;: {lead_pipeline}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">مرحلة الرصاص&nbsp;: {lead_stage}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\">الموضوع الرئيسي: {lead_subject}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(50,4,'zh','Lead Assigned','<p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span 样式=\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">您好，</ span><br style=\"font-family: sans-serif;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">新潜在客户已分配给您。</span ></p><p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\" \"><span style=\"\" open=\"\" sans\";\"=\"\"><b>潜在客户姓名</b></span><span style=\"\" open=\"\" sans\";\"=\"\" > : {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" 字体大小: =\"\" 14px;\"=\"\"><span open=\"\"sans\";\"=\"\" style=\"font-size: 1rem;\"><b>潜在客户电子邮件</b></span><span open =\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"> : {lead_email}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" 字体大小:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b >引导管道</b></span><span style=\"\" open=\"\" sans\";\"=\"\"> ：{lead_pipeline}</span></p><p style=\"line-height: 28 像素；字体系列：Nunito，\" segoe=\"\" ui\"，=\"\" arial;=\"\" 字体大小：=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\" =\"\"><b>领先阶段</b></span><span style=\"\" open=\"\" sans\";\"=\"\"> ：{lead_stage}</span></p><p style =\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>主要主题</b>：{lead_subject}</span></p>< p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(51,4,'da','Lead Assigned','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Hej,</span><br style=\"font-family: sans-serif;\"></p><p><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Ny bly er blevet tildelt dig.</span></p><p><span style=\"font-size: 1rem; font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">Lead-e-mail</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">: {lead_email}</span></p><p><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">Blyrørledning</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_pipeline}</span></span></p><p><span style=\"font-size: 1rem; font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">Lead scenen</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">: {lead_stage}</span></p><p></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">Blynavn</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_name}</span></span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\"><b>Lead Emne</b>: {lead_subject}</span><span style=\"font-family: sans-serif;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\"><br></span><br></span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(52,4,'de','Lead Assigned','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif;\">Hallo,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Neuer Lead wurde Ihnen zugewiesen.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif; font-weight: bolder;\" open=\"\" sans\";\"=\"\">Lead Name</span><span style=\"font-family: sans-serif;\" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"\" open=\"\" sans\";\"=\"\"><font face=\"sans-serif\">:</font> {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif; font-weight: bolder;\" open=\"\" sans\";\"=\"\">Lead-E-Mail</span><span style=\"font-family: sans-serif;\" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"\" open=\"\" sans\";\"=\"\"><font face=\"sans-serif\">: </font>{lead_email}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif; font-weight: bolder;\" open=\"\" sans\";\"=\"\">Lead Pipeline</span><span style=\"font-family: sans-serif;\" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"\" open=\"\" sans\";\"=\"\"><font face=\"sans-serif\">:</font> {lead_pipeline}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif; font-weight: bolder;\" open=\"\" sans\";\"=\"\">Lead Stage</span><span style=\"font-family: sans-serif;\" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"\" open=\"\" sans\";\"=\"\"><font face=\"sans-serif\">: </font>{lead_stage}</span></p><p style=\"line-height: 28px;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\"><b>Lead Emne</b>: {lead_subject}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(53,4,'en','Lead Assigned','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Hello,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">New Lead has been Assign to you.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Lead Name</b></span><span style=\"\" open=\"\" sans\";\"=\"\">&nbsp;: {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"><b>Lead Email</b></span><span open=\"\" sans\";\"=\"\" style=\"font-size: 1rem;\">&nbsp;: {lead_email}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Lead Pipeline</b></span><span style=\"\" open=\"\" sans\";\"=\"\">&nbsp;: {lead_pipeline}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Lead Stage</b></span><span style=\"\" open=\"\" sans\";\"=\"\">&nbsp;: {lead_stage}</span></p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Lead Subject</b>: {lead_subject}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(54,4,'es','Lead Assigned','<p style=\"line-height: 28px;\">Hola,<br style=\"\"></p><p>Se le ha asignado un nuevo plomo.</p><p></p><p style=\"line-height: 28px;\"><b>Nombre principal</b>&nbsp;: {lead_name}</p><p style=\"line-height: 28px;\"><b>Correo electrónico</b> principal&nbsp;: {lead_email}</p><p style=\"line-height: 28px;\"><b>Tubería de plomo</b>&nbsp;: {lead_pipeline}</p><p style=\"line-height: 28px;\"><b>Etapa de plomo</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span open=\"\" sans\";\"=\"\"><b>Hauptthema</b>: {lead_subject}</span><br></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(55,4,'fr','Lead Assigned','<p style=\"line-height: 28px;\">Bonjour,<br style=\"\"></p><p style=\"\">Un nouveau prospect vous a été attribué.</p><p></p><p style=\"line-height: 28px;\"><b>Nom du responsable</b>&nbsp;: {lead_name}</p><p style=\"line-height: 28px;\"><b>Courriel principal</b>&nbsp;: {lead_email}</p><p style=\"line-height: 28px;\"><b>Pipeline de plomb</b>&nbsp;: {lead_pipeline}</p><p style=\"line-height: 28px;\"><b>Étape principale</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Sujet principal</b>: {lead_subject}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(56,4,'he','Lead Assigned','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style = \"font-family:\" open = \"\" sans \";\" = \"\"> </span> <span style = \"font-family:\" open = \"\" sans \";\" = \"\"> שלום, </ span><br style=\"font-family: sans-serif;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">הפניה חדשה הוקצה לך.</span ></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" \"><span style=\"\" open=\"\" sans\";\"=\"\"><b>שם ליד</b></span><span style=\"\" open=\"\" sans\";\"=\"\" > : {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size: =\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"><b>דוא\"ל לידים</b></span><span פתוח =\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"> : {lead_email}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b >Lead Pipeline</b></span><span style=\"\" open=\"\" sans\";\"=\"\"> : {lead_pipeline}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\" =\"\"><b>שלב מוביל</b></span><span style=\"\" open=\"\" sans\";\"=\"\"> : {lead_stage}</span></p><p style =\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>נושא מוביל</b>: {lead_subject}</span></p>< p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(57,4,'it','Lead Assigned','<p style=\"line-height: 28px;\">Ciao,<br style=\"\"></p><p>New Lead è stato assegnato a te.</p><p><b>Lead Email</b>&nbsp;: {lead_email}</p><p><b>Conduttura di piombo&nbsp;: {lead_pipeline}</b></p><p><b>Lead Stage</b>&nbsp;: {lead_stage}</p><p></p><p style=\"line-height: 28px;\"><b>Nome del lead</b>&nbsp;: {lead_name}<br></p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Soggetto principale</b>: {lead_subject}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(58,4,'ja','Lead Assigned','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">こんにちは、</span><br style=\"font-family: sans-serif;\"></p><p><span style=\"font-family: \" open=\"\" sans\";\"=\"\">新しいリードが割り当てられました。</span><br><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">リードメール</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_email}</span></span><br><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">リードパイプライン</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_pipeline}</span></span><br><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">リードステージ</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;: {lead_stage}</span></span></p><p></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder; font-family: \" open=\"\" sans\";\"=\"\">リード名</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">&nbsp;</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">: {lead_name}</span><br></span></p><p style=\"line-height: 28px;\"><span open=\"\" sans\";\"=\"\" style=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">リードサブジェクト</span><span style=\"font-size: 1rem; font-family: \" open=\"\" sans\";\"=\"\">: {lead_subject}</span></span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(59,4,'nl','Lead Assigned','<p style=\"line-height: 28px;\">Hallo,<br style=\"\"></p><p style=\"\">Nieuwe lead is aan u toegewezen.<br><b>E-mail leiden</b>&nbsp;: {lead_email}<br><b>Lead Pipeline</b>&nbsp;: {lead_pipeline}<br><b>Hoofdfase</b>&nbsp;: {lead_stage}</p><p></p><p style=\"line-height: 28px;\"><b>Lead naam</b>&nbsp;: {lead_name}<br></p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Hoofdonderwerp</b>: {lead_subject}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(60,4,'pl','Lead Assigned','<p style=\"line-height: 28px;\">Witaj,<br style=\"\">Nowy potencjalny klient został do ciebie przypisany.</p><p style=\"line-height: 28px;\"><b>Imię i nazwisko</b>&nbsp;: {lead_name}<br><b>Główny adres e-mail</b>&nbsp;: {lead_email}<br><b>Ołów rurociągu</b>&nbsp;: {lead_pipeline}<br><b>Etap prowadzący</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Główny temat</b>: {lead_subject}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(61,4,'ru','Lead Assigned','<p style=\"line-height: 28px;\">Привет,<br style=\"\">Новый Лид был назначен вам.</p><p style=\"line-height: 28px;\"><b>Имя лидера</b>&nbsp;: {lead_name}<br><b>Ведущий Email</b>&nbsp;: {lead_email}<br><b>Ведущий трубопровод</b>&nbsp;: {lead_pipeline}<br><b>Ведущий этап</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Ведущая тема</b>: {lead_subject}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(62,4,'pt','Lead Assigned','<p style=\"line-height: 28px;\">Olá,<br style=\"\">O novo lead foi atribuído a você.</p><p style=\"line-height: 28px;\"><b>Nome do lead</b>&nbsp;: {lead_name}<br><b>E-mail principal</b>&nbsp;: {lead_email}<br><b>Pipeline principal</b>&nbsp;: {lead_pipeline}<br><b>Estágio principal</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Assunto principal</b>: {lead_subject}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(63,4,'tr','Lead Assigned','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span stili =\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Merhaba,</ span><br style=\"font-family: sans-serif;\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">Yeni Müşteri Atandı.</span ></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\" \"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Müşteri Adı</b></span><span style=\"\" open=\"\" sans\";\"=\"\" > : {lead_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size: =\"\" 14px;\"=\"\"><span open=\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"><b>Müşteri E-postası</b></span><spanopen open =\"\" sans\";\"=\"\" style=\"font-size: 1rem;\"> : {lead_email}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\"=\"\"><b >Müşteri Hattı</b></span><span style=\"\" open=\"\" sans\";\"=\"\"> : {lead_pipeline}</span></p><p style=\"line-height: 28 piksel; yazı tipi ailesi: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"\" open=\"\" sans\";\" =\"\"><b>Kurşun Aşaması</b></span><span style=\"\" open=\"\" sans\";\"=\"\"> : {lead_stage}</span></p><p style =\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Aday Konu</b>: {lead_subject}</span></p>< p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(64,4,'pt-br','Lead Assigned','<p style=\"line-height: 28px;\">Olá,<br style=\"\">O novo lead foi atribuído a você.</p><p style=\"line-height: 28px;\"><b>Nome do lead</b>&nbsp;: {lead_name}<br><b>E-mail principal</b>&nbsp;: {lead_email}<br><b>Pipeline principal</b>&nbsp;: {lead_pipeline}<br><b>Estágio principal</b>&nbsp;: {lead_stage}</p><p style=\"line-height: 28px;\"><span style=\"\" open=\"\" sans\";\"=\"\"><b>Assunto principal</b>: {lead_subject}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(65,5,'ar','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">مرحبا،</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">تم تعيين صفقة جديدة لك.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">اسم الصفقة</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">خط أنابيب الصفقة</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">مرحلة الصفقة</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">حالة الصفقة</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">سعر الصفقة</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(66,5,'zh','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, \"Segoe UI\", arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">你好，< /span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">新优惠已分配给您。</span></p>< p style=\"line-height: 28px; font-family: Nunito, \"Segoe UI\", arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style= \"font-weight: BOLDER;\">交易名称</span>：{deal_name}<br><span style=\"font-weight：bolder;\">交易渠道</span>：{deal_pipeline}<br><span style=\"font-weight: BOLDER;\">交易阶段</span>：{deal_stage}<br><span style=\"font-weight：bolder;\">交易状态</span>：{deal_status}<br> <span style=\"font-weight: Bolder;\">交易价格</span>：{deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(67,5,'da','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hej,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal er blevet tildelt til dig.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Deal Navn</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Deal Fase</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Deal status</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Deal pris</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(68,5,'de','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hallo,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal wurde Ihnen zugewiesen.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Geschäftsname</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Deal Stage</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Deal Status</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Ausgehandelter Preis</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(69,5,'en','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hello,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal has been Assign to you.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Deal Name</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Deal Stage</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Deal Status</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Deal Price</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(70,5,'es','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hola,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal ha sido asignado a usted.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nombre del trato</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Tubería de reparto</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Etapa de reparto</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Estado del acuerdo</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Precio de oferta</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(71,5,'fr','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Bonjour,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Le New Deal vous a été attribué.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nom de l\'accord</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Pipeline de transactions</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Étape de l\'opération</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Statut de l\'accord</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Prix ​​de l\'offre</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(72,5,'he','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, \"Segoe UI\", arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">שלום,< /span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">דיל חדש הוקצה לך.</span></p>< p style=\"line-height: 28px; font-family: Nunito, \"Segoe UI\", arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style= \"font-weight: bolder;\">שם העסקה</span> : {deal_name}<br><span style=\"font-weight: bolder;\">צינור העסקה</span> : {deal_pipeline}<br><span style=\"font-weight: bolder;\">שלב העסקה</span> : {deal_stage}<br><span style=\"font-weight: bolder;\">סטטוס העסקה</span> : {deal_status}<br> <span style=\"font-weight: bolder;\">מחיר מבצע</span> : {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(73,5,'it','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Ciao,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal è stato assegnato a te.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nome dell\'affare</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Pipeline di offerte</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Stage Deal</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Stato dell\'affare</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Prezzo dell\'offerta</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(74,5,'ja','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">こんにちは、</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">新しい取引が割り当てられました。</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">取引名</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">取引パイプライン</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">取引ステージ</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">取引状況</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">取引価格</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(75,5,'nl','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Hallo,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">New Deal is aan u toegewezen.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Dealnaam</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Deal Stage</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Dealstatus</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Deal prijs</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(76,5,'pl','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Witaj,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Umowa została przeniesiona {deal_old_stage} do&nbsp; {deal_new_stage}.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nazwa oferty</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Deal Pipeline</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Etap transakcji</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Status oferty</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Cena oferty</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(77,5,'ru','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Привет,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Сделка была перемещена из {deal_old_stage} в&nbsp; {deal_new_stage}.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Название сделки</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Трубопровод сделки</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Этап сделки</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Статус сделки</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Цена сделки</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(78,5,'pt','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Olá,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Сделка была перемещена из {deal_old_stage} в&nbsp; {deal_new_stage}.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nome do negócio</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Pipeline de negócios</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Estágio do negócio</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Status da transação</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Preço da oferta</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(79,5,'tr','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, \"Segoe UI\", arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Merhaba,< /span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Size Yeni Anlaşma Atandı.</span></p>< p style=\"line-height: 28px; font-family: Nunito, \"Segoe UI\", arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style= \"font-weight: bolder;\">Anlaşma Adı</span> : {deal_name}<br><span style=\"font-weight: bolder;\">Anlaşma Hattı</span> : {deal_pipeline}<br><span style=\"font-weight: bolder;\">Anlaşma Aşaması</span> : {deal_stage}<br><span style=\"font-weight: bolder;\">Anlaşma Durumu</span> : {deal_status}<br> <span style=\"font-weight: bolder;\">Anlaşma Fiyatı</span> : {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(80,5,'pt-br','Deal Assigned','<p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\">Olá,</span><br style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Сделка была перемещена из {deal_old_stage} в&nbsp; {deal_new_stage}.</span></p><p style=\"line-height: 28px; font-family: Nunito, &quot;Segoe UI&quot;, arial; font-size: 14px;\"><span style=\"font-family: sans-serif;\"><span style=\"font-weight: bolder;\">Nome do negócio</span>&nbsp;: {deal_name}<br><span style=\"font-weight: bolder;\">Pipeline de negócios</span>&nbsp;: {deal_pipeline}<br><span style=\"font-weight: bolder;\">Estágio do negócio</span>&nbsp;: {deal_stage}<br><span style=\"font-weight: bolder;\">Status da transação</span>&nbsp;: {deal_status}<br><span style=\"font-weight: bolder;\">Preço da oferta</span>&nbsp;: {deal_price}</span></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(81,6,'ar','New Award','<p>مرحبا،&nbsp;<br>مرحبا بك في {app_name}.</p><p><b>البريد الإلكتروني </b>: {email}<br><b>كلمه السر</b> : {password}</p><p>{app_url}</p><p>شكر،<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(82,6,'zh','New Award','<p>嗨，<span style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var( --bs-body-font-weight); text-align: var(--bs-body-text-align);\">{award_name}</span></p><p>我很高兴提名.</p><p>我很满意他/她是获得该奖项的最佳员工。 </p><p>我发现他/她是一个以目标为导向的人，高效且非常准时。</p><p>如果您有任何问题，请随时与我们联系。<br></p ><p>谢谢您，</p><p>{app_name}</p><p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(83,6,'da','New Award','<p>Hej,&nbsp;<br>Velkommen til {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Adgangskode</b> : {password}</p><p>{app_url}</p><p>Tak,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(84,6,'de','New Award','<p>Hallo,&nbsp;<br>Willkommen zu {app_name}.</p><p><b>Email </b>: {email}<br><b>Passwort</b> : {password}</p><p>{app_url}</p><p>Vielen Dank,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(85,6,'en','New Award','<p>Hi , <span style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{award_name}</span></p><p>I am much pleased to nominate .</p><p>I am satisfied that he/she is the best employee for the award. </p><p>I have realized  that he/she is a goal-oriented person, efficient and very punctual .</p><p>Feel free to reach out if you have any question.<br></p><p>Thank You, </p><p>{app_name}</p><p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(86,6,'es','New Award','<p>Hola,&nbsp;<br>Bienvenido a {app_name}.</p><p><b>Correo electrónico </b>: {email}<br><b>Contraseña</b> : {password}</p><p>{app_url}</p><p>Gracias,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(87,6,'fr','New Award','<p>Bonjour,&nbsp;<br>Bienvenue à {app_name}.</p><p><b>Email </b>: {email}<br><b>Mot de passe</b> : {password}</p><p>{app_url}</p><p>Merci,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(88,6,'he','New Award','<p>שלום, <span style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var( --bs-body-font-weight); text-align: var(--bs-body-text-align);\">{award_name}</span></p><p>אני שמח מאוד להציע מועמדות .</p><p>אני מרוצה מכך שהוא/היא העובד הטוב ביותר עבור הפרס. </p><p>הבנתי  שהוא/היא אדם ממוקד מטרה, יעיל ומאוד דייקן .</p><p>אל תהסס לפנות אם יש לך שאלה כלשהי.<br></p ><p>תודה, </p><p>{app_name}</p><p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(89,6,'it','New Award','<p>Ciao,&nbsp;<br>Benvenuto a {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Parola d\'ordine</b> : {password}</p><p>{app_url}</p><p>Grazie,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(90,6,'ja','New Award','<p>こんにちは、&nbsp;<br>へようこそ {app_name}.</p><p><b>Eメール </b>: {email}<br><b>パスワード</b> : {password}</p><p>{app_url}</p><p>おかげで、<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(91,6,'nl','New Award','<p>Hallo,&nbsp;<br>Welkom bij {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Wachtwoord</b> : {password}</p><p>{app_url}</p><p>Bedankt,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(92,6,'pl','New Award','<p>Witaj,&nbsp;<br>Witamy w {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Hasło</b> : {password}</p><p>{app_url}</p><p>Dzięki,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(93,6,'ru','New Award','<p>Привет,&nbsp;<br>Добро пожаловать в {app_name}.</p><p><b>Электронное письмо </b>: {email}<br><b>пароль</b> : {password}</p><p>{app_url}</p><p>Спасибо,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(94,6,'pt','New Award','<p>Olá,<br>Bem-vindo ao {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Senha</b> : {password}</p><p>{app_url}</p><p>Obrigada,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(95,6,'tr','New Award','<p>Merhaba , <span style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var( --bs-body-font-weight); text-align: var(--bs-body-text-align);\">{award_name}</span></p><p>Aday göstermekten çok memnunum .</p><p>Ödül için en iyi çalışanın o olduğundan memnunum. </p><p>Hedef odaklı, verimli ve çok dakik biri olduğunu fark ettim.</p><p>Herhangi bir sorunuz olursa bize ulaşmaktan çekinmeyin.<br></p ><p>Teşekkürler, </p><p>{app_name}</p><p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(96,6,'pt-br','New Award','<p>Olá,<br>Bem-vindo ao {app_name}.</p><p><b>E-mail </b>: {email}<br><b>Senha</b> : {password}</p><p>{app_url}</p><p>Obrigada,<br>{app_name}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(97,7,'ar','Customer Invoice Sent','<p>مرحب<span style=\"text-align: var(--bs-body-text-align);\">مرحبا ، { invoice_name }</span></p><p>مرحبا بك في { app_name }</p><p>أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى رقم الفاتورة الملحقة { invoice_number } للخدمة / الخدمة.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ببساطة ، اضغط على الاختيار بأسفل :&nbsp;</span></p><p>{ invoice_url }</p><p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p><p>شكرا لك</p><p>Regards,</p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(98,7,'zh','Customer Invoice Sent','<p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span 样式=\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"text-align: var(--bs-body-text-align);\">嗨， {invoice_name}</span></p><p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\" \" 14px;\"=\"\">欢迎使用 {app_name}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\"14px;\"=\"\">希望这封电子邮件能让您满意！请参阅随附的发票号码 {invoice_number}<span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align : var(--bs-body-text-align);\">} 用于产品/服务。</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe= \"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">只需点击下面的按钮即可：</p><p style=\"line-height: 28px; font -family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{invoice_url}</p><p style=\"line-height : 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">如果您有任何疑问，请随时与我们联系。 </p><p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" >谢谢，</p><p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px; \"=\"\">问候，</p><p style=\"line-height: 28px; font-family: Nunito,\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\" \" 14px;\"=\"\">{company_name}</p><p style=\"line-height: 28px;字体系列：Nunito、\" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{app_url}</p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(99,7,'da','Customer Invoice Sent','<p>Hej, { invoice_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Velkommen til { app_name }</span></p><p>Håber denne e-mail finder dig godt! Se vedlagte fakturanummer { invoice_number } for product/service.</p><p>Klik på knappen nedenfor:&nbsp;</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ invoice_url }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Du er velkommen til at række ud, hvis du har nogen spørgsmål.</span></p><p>Tak.</p><p>Med venlig hilsen</p><p>{ company_name }</p><p>{ app_url }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(100,7,'de','Customer Invoice Sent','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Hi, {invoice_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Willkommen bei {app_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Hoffe, diese E-Mail findet dich gut! Bitte beachten Sie die beigefügte Rechnungsnummer {invoice_number} für Produkt/Service.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Klicken Sie einfach auf den Button unten:&nbsp;</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{invoice_url}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Fühlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Vielen Dank,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betrachtet,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{company_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{app_url}</font></p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(101,7,'en','Customer Invoice Sent','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"text-align: var(--bs-body-text-align);\">Hi ,{invoice_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Welcome to {app_name}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Hope this email finds you well! Please see attached invoice number {invoice_number}<span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">} for product/service.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Simply click on the button below: </p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{invoice_url}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Feel free to reach out if you have any questions.</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Thank You,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Regards,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{company_name}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{app_url}</p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(102,7,'es','Customer Invoice Sent','<p>Hi, {invoice_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenido a {app_name}</span></p><p>¡Espero que este email le encuentre bien! Consulte el número de factura adjunto {invoice_number} para el producto/servicio.</p><p>Simplemente haga clic en el botón de abajo:&nbsp;</p><p>{invoice_url}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Siéntase libre de llegar si usted tiene alguna pregunta.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Gracias,</span></p><p>Considerando,</p><p>{nombre_empresa}</p><p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(103,7,'fr','Customer Invoice Sent','<p>Bonjour, { nom_appel }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenue dans { app_name }</span></p><p>J espère que ce courriel vous trouve bien ! Voir le numéro de facture { invoice_number } pour le produit/service.</p><p>Cliquez simplement sur le bouton ci-dessous:&nbsp;</p><p>{ url-invoque_utilisateur }</p><p>N hésitez pas à nous contacter si vous avez des questions.</p><p>Merci,</p><p>Regards,</p><p>{ nom_entreprise }</p><p>{ adresse_url }</p><div><br></div>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(104,7,'he','Customer Invoice Sent','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span style = \"Font-family:\" Open = \"\" sans \";\" = \"\"> </span> <span style = \"text-align: var (-bs-body-text-align);\"> hi, {invoice_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\" \" 14px;\"=\"\">ברוכים הבאים אל {app_name}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">מקווה שהמייל הזה ימצא אותך היטב! ראה את מספר החשבונית המצורפת {invoice_number}<span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align : var(--bs-body-text-align);\">} עבור מוצר/שירות.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe= \"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">פשוט לחץ על הכפתור למטה: </p><p style=\"line-height: 28px; font -family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{invoice_url}</p><p style=\"line-height : 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">אל תהסס לפנות אם יש לך שאלות כלשהן. </p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" >תודה,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px; \"=\"\">בברכה,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\" \" 14px;\"=\"\">{company_name}</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{app_url}</p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(105,7,'it','Customer Invoice Sent','<p>Ciao, {nome_invoca_}</p><p>Benvenuti in {app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Spero che questa email ti trovi bene! Si prega di consultare il numero di fattura collegato {invoice_number} per il prodotto/servizio.</span></p><p>Semplicemente clicca sul pulsante sottostante:&nbsp;</p><p>{invoice_url}</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Grazie,</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Riguardo,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(106,7,'ja','Customer Invoice Sent','<p>こんにちは、 {請求書名}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name} へようこそ</span></p><p>この E メールでよくご確認ください。 製品 / サービスについては、添付された請求書番号 {invoice_number} を参照してください。</p><p>以下のボタンをクリックしてください。&nbsp;</p><p>{請求書 URL}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">質問がある場合は、自由に連絡してください。</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ありがとうございます</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">よろしく</span></p><p>{ company_name}</p><p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(107,7,'nl','Customer Invoice Sent','<p>Hallo, { invoice_name }</p><p>Welkom bij { app_name }</p><p>Hoop dat deze e-mail je goed vindt! Zie bijgevoegde factuurnummer { invoice_number } voor product/service.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Klik gewoon op de knop hieronder:&nbsp;</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ invoice_url }</span></p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p>Dank U,</p><p>Betreft:</p><p>{ bedrijfsnaam }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(108,7,'pl','Customer Invoice Sent','<p>Witaj, {invoice_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Witamy w aplikacji {app_name }</span></p><p>Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Sprawdź załączoną fakturę numer {invoice_number } dla produktu/usługi.</p><p>Wystarczy kliknąć na przycisk poniżej:&nbsp;</p><p>{adres_URL_faktury }</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p>Dziękuję,</p><p>W odniesieniu do</p><p>{company_name }</p><p>{app_url }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(109,7,'ru','Customer Invoice Sent','<p>Привет, { invoice_name }</p><p>Вас приветствует { app_name }</p><p>Надеюсь, это электронное письмо найдет вас хорошо! См. вложенный номер счета-фактуры { invoice_number } для производства/услуги.</p><p>Просто нажмите на кнопку ниже:&nbsp;</p><p>{ invoice_url }</p><p>Не стеснитесь, если у вас есть вопросы.</p><p>Спасибо.</p><p>С уважением,</p><p>{ company_name }</p><p>{ app_url }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(110,7,'pt','Customer Invoice Sent','<p><span style=\"font-size: 14.4px;\">Oi, {invoice_name}</span></p><p><span style=\"font-size: 14.4px;\">Bem-vindo a {app_name}</span></p><p><span style=\"font-size: 14.4px;\">Espero que este e-mail encontre você bem! Por favor, consulte o número da fatura anexa {invoice_number} para produto/serviço.</span></p><p><span style=\"font-size: 14.4px;\">Basta clicar no botão abaixo:&nbsp;</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{invoice_url}</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style=\"font-size: 14.4px;\">Obrigado,</span></p><p><span style=\"font-size: 14.4px;\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">{company_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(111,7,'tr','Customer Invoice Sent','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><span stili =\"font-family: \" open=\"\" sans\";\"=\"\">﻿</span><span style=\"text-align: var(--bs-body-text-align);\">Merhaba , {invoice_name}</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\" \" 14px;\"=\"\">{app_name}</p><p style=\"line-height: 28px; font-family: Nunito ya hoş geldiniz, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Umarım bu e-posta sizi bulur! Lütfen ekteki fatura numarasına bakın {invoice_number}<span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align : var(--bs-body-text-align);\">} ürün/hizmet için.</span></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe= \"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Aşağıdaki düğmeyi tıklamanız yeterlidir: </p><p style=\"line-height: 28px; font -family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{invoice_url}</p><p style=\"line-height : 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">Herhangi bir sorunuz olursa bize ulaşmaktan çekinmeyin. </p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" >Teşekkürler,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px; \"=\"\">Saygılarımızla,</p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\" \" 14px;\"=\"\">{şirket_adı}</p><p style=\"line-height: 28px; yazı tipi ailesi: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\">{app_url}</p><p></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(112,7,'pt-br','Customer Invoice Sent','<p><span style=\"font-size: 14.4px;\">Oi, {invoice_name}</span></p><p><span style=\"font-size: 14.4px;\">Bem-vindo a {app_name}</span></p><p><span style=\"font-size: 14.4px;\">Espero que este e-mail encontre você bem! Por favor, consulte o número da fatura anexa {invoice_number} para produto/serviço.</span></p><p><span style=\"font-size: 14.4px;\">Basta clicar no botão abaixo:&nbsp;</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{invoice_url}</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style=\"font-size: 14.4px;\">Obrigado,</span></p><p><span style=\"font-size: 14.4px;\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">{company_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(113,8,'ar','New Invoice Payment','<p>Hej.</p>\n                    <p>Velkommen til { app_name }</p>\n                    <p>K&aelig;re { invoice_payment_name }</p>\n                    <p>Vi har modtaget din m&aelig;ngde { invoice_payment_amount } betaling for { invoice_number } undert.d. p&aring; dato { invoice_payment_date }</p>\n                    <p>Dit { invoice_number } Forfaldsbel&oslash;b er { payment_dueAmount }</p>\n                    <p>Vi s&aelig;tter pris p&aring; din hurtige betaling og ser frem til fortsatte forretninger med dig i fremtiden.</p>\n                    <p>Mange tak, og ha en god dag!</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(114,8,'zh','New Invoice Payment','<p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">嗨，</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">欢迎来到 {app_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">亲爱的{invoice_ payment_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">我们已收到您于 {invoice_ payment_date} 日期提交的 {invoice_number} 金额为 {invoice_ payment_amount} 的付款</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">您的 {invoice_number} 应付金额为 { payment_dueAmount}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">我们感谢您及时付款，并期待将来继续与您开展业务。</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">非常感谢您，祝您有美好的一天！！</span></span></p>\n                    <p> </p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">问候，</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{company_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\">\n                    <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{app_url}</span></span></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(115,8,'da','New Invoice Payment','<p>Hej.</p>\n                    <p>Velkommen til { app_name }</p>\n                    <p>K&aelig;re { invoice_payment_name }</p>\n                    <p>Vi har modtaget din m&aelig;ngde { invoice_payment_amount } betaling for { invoice_number } undert.d. p&aring; dato { invoice_payment_date }</p>\n                    <p>Dit { invoice_number } Forfaldsbel&oslash;b er { payment_dueAmount }</p>\n                    <p>Vi s&aelig;tter pris p&aring; din hurtige betaling og ser frem til fortsatte forretninger med dig i fremtiden.</p>\n                    <p>Mange tak, og ha en god dag!</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(116,8,'de','New Invoice Payment','<p>Hi,</p>\n                    <p>Willkommen bei {app_name}</p>\n                    <p>Sehr geehrter {invoice_payment_name}</p>\n                    <p>Wir haben Ihre Zahlung {invoice_payment_amount} f&uuml;r {invoice_number}, die am Datum {invoice_payment_date} &uuml;bergeben wurde, erhalten.</p>\n                    <p>Ihr {invoice_number} -f&auml;lliger Betrag ist {payment_dueAmount}</p>\n                    <p>Wir freuen uns &uuml;ber Ihre prompte Bezahlung und freuen uns auf das weitere Gesch&auml;ft mit Ihnen in der Zukunft.</p>\n                    <p>Vielen Dank und habe einen guten Tag!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betrachtet,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(117,8,'en','New Invoice Payment','<p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Hi,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Welcome to {app_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Dear {invoice_payment_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">We have recieved your amount {invoice_payment_amount} payment for {invoice_number} submited on date {invoice_payment_date}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Your {invoice_number} Due amount is {payment_dueAmount}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">We appreciate your prompt payment and look forward to continued business with you in the future.</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Thank you very much and have a good day!!</span></span></p>\n                    <p>&nbsp;</p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Regards,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{company_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\">\n                    <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{app_url}</span></span></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(118,8,'es','New Invoice Payment','<p>Hola,</p>\n                    <p>Bienvenido a {app_name}</p>\n                    <p>Estimado {invoice_payment_name}</p>\n                    <p>Hemos recibido su importe {invoice_payment_amount} pago para {invoice_number} submitado en la fecha {invoice_payment_date}</p>\n                    <p>El importe de {invoice_number} Due es {payment_dueAmount}</p>\n                    <p>Agradecemos su pronto pago y esperamos continuar con sus negocios con usted en el futuro.</p>\n                    <p>Muchas gracias y que tengan un buen d&iacute;a!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considerando,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(119,8,'fr','New Invoice Payment','<p>Salut,</p>\n                    <p>Bienvenue dans { app_name }</p>\n                    <p>Cher { invoice_payment_name }</p>\n                    <p>Nous avons re&ccedil;u votre montant { invoice_payment_amount } de paiement pour { invoice_number } soumis le { invoice_payment_date }</p>\n                    <p>Votre {invoice_number} Montant d&ucirc; est { payment_dueAmount }</p>\n                    <p>Nous appr&eacute;cions votre rapidit&eacute; de paiement et nous attendons avec impatience de poursuivre vos activit&eacute;s avec vous &agrave; lavenir.</p>\n                    <p>Merci beaucoup et avez une bonne journ&eacute;e ! !</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(120,8,'he','New Invoice Payment','<p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">שלום,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">ברוך הבא אל {app_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{invoice_payment_name}</span></span></p> היקר\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">קיבלנו את התשלום שלך בסכום {invoice_payment_amount} עבור {invoice_number} שנשלח בתאריך {invoice_payment_date}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">סכום התשלום שלך ב-{invoice_number} הוא {payment_dueAmount}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">אנו מעריכים את התשלום המהיר שלך ומצפים להמשך העסקים איתך בעתיד.</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">תודה רבה ויום טוב!!</span></span></p>\n                    <p> </p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">בברכה,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{company_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\">\n                    <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{app_url}</span></span></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(121,8,'it','New Invoice Payment','<p>Ciao,</p>\n                    <p>Benvenuti in {app_name}</p>\n                    <p>Caro {invoice_payment_name}</p>\n                    <p>Abbiamo ricevuto la tua quantit&agrave; {invoice_payment_amount} pagamento per {invoice_number} subita alla data {invoice_payment_date}</p>\n                    <p>Il tuo {invoice_number} A somma cifra &egrave; {payment_dueAmount}</p>\n                    <p>Apprezziamo il tuo tempestoso pagamento e non vedo lora di continuare a fare affari con te in futuro.</p>\n                    <p>Grazie mille e buona giornata!!</p>\n                    <p>&nbsp;</p>\n                    <p>Riguardo,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(122,8,'ja','New Invoice Payment','<p>こんにちは。</p>\n                    <p>{app_name} へようこそ</p>\n                    <p>{ invoice_payment_name} に出れます</p>\n                    <p>{ invoice_payment_date} 日付で提出された {請求書番号} の支払金額 } の金額を回収しました。 }</p>\n                    <p>お客様の {請求書番号} 予定額は {payment_dueAmount} です</p>\n                    <p>お客様の迅速な支払いを評価し、今後も継続してビジネスを継続することを期待しています。</p>\n                    <p>ありがとうございます。良い日をお願いします。</p>\n                    <p>&nbsp;</p>\n                    <p>よろしく</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(123,8,'nl','New Invoice Payment','<p>Hallo,</p>\n                    <p>Welkom bij { app_name }</p>\n                    <p>Beste { invoice_payment_name }</p>\n                    <p>We hebben uw bedrag ontvangen { invoice_payment_amount } betaling voor { invoice_number } ingediend op datum { invoice_payment_date }</p>\n                    <p>Uw { invoice_number } verschuldigde bedrag is { payment_dueAmount }</p>\n                    <p>Wij waarderen uw snelle betaling en kijken uit naar verdere zaken met u in de toekomst.</p>\n                    <p>Hartelijk dank en hebben een goede dag!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betreft:</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(124,8,'pl','New Invoice Payment','<p>Witam,</p>\n                    <p>Witamy w aplikacji {app_name }</p>\n                    <p>Droga {invoice_payment_name }</p>\n                    <p>Odebrano kwotę {invoice_payment_amount } płatności za {invoice_number } w dniu {invoice_payment_date }, kt&oacute;ry został zastąpiony przez użytkownika.</p>\n                    <p>{invoice_number } Kwota należna: {payment_dueAmount }</p>\n                    <p>Doceniamy Twoją szybką płatność i czekamy na kontynuację działalności gospodarczej z Tobą w przyszłości.</p>\n                    <p>Dziękuję bardzo i mam dobry dzień!!</p>\n                    <p>&nbsp;</p>\n                    <p>W odniesieniu do</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(125,8,'ru','New Invoice Payment','<p>Привет.</p>\n                    <p>Вас приветствует { app_name }</p>\n                    <p>Дорогая { invoice_payment_name }</p>\n                    <p>Мы получили вашу сумму оплаты {invoice_payment_amount} для { invoice_number }, подавшей на дату { invoice_payment_date }</p>\n                    <p>Ваша { invoice_number } Должная сумма-{ payment_dueAmount }</p>\n                    <p>Мы ценим вашу своевременную оплату и надеемся на продолжение бизнеса с вами в будущем.</p>\n                    <p>Большое спасибо и хорошего дня!!</p>\n                    <p>&nbsp;</p>\n                    <p>С уважением,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(126,8,'pt','New Invoice Payment','<p>Oi,</p>\n                    <p>Bem-vindo a {app_name}</p>\n                    <p>Querido {invoice_payment_name}</p>\n                    <p>N&oacute;s recibimos sua quantia {invoice_payment_amount} pagamento para {invoice_number} requisitado na data {invoice_payment_date}</p>\n                    <p>Sua quantia {invoice_number} Due &eacute; {payment_dueAmount}</p>\n                    <p>Agradecemos o seu pronto pagamento e estamos ansiosos para continuarmos os neg&oacute;cios com voc&ecirc; no futuro.</p>\n                    <p>Muito obrigado e tenha um bom dia!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(127,8,'tr','New Invoice Payment','<p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">Merhaba,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">{app_name}</span></span></p> e hoş geldiniz\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">Sayın {invoice_payment_name}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">{invoice_payment_date}</span></span></p> tarihinde gönderdiğiniz {invoice_number} için {invoice_payment_amount} tutarındaki ödemenizi aldık\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">Ödenmesi gereken {invoice_number} tutarındaki tutar {payment_dueAmount}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">Hızlı ödemeniz için teşekkür ederiz ve gelecekte sizinle iş yapmaya devam etmeyi dört gözle bekliyoruz.</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">Çok teşekkür ederiz, iyi günler dilerim!!</span></span></p>\n                    <p> </p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: common-ligatures;\">Saygılarımızla,</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\"><span style=\"font-size: 15px; font-variant-bitişik harfler: ortak bitişik harfler;\">{şirket_adı}</span></span></p>\n                    <p><span style=\"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;\">\n                    <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">{app_url}</span></span></p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(128,8,'pt-br','New Invoice Payment','<p>Oi,</p>\n                    <p>Bem-vindo a {app_name}</p>\n                    <p>Querido {invoice_payment_name}</p>\n                    <p>N&oacute;s recibimos sua quantia {invoice_payment_amount} pagamento para {invoice_number} requisitado na data {invoice_payment_date}</p>\n                    <p>Sua quantia {invoice_number} Due &eacute; {payment_dueAmount}</p>\n                    <p>Agradecemos o seu pronto pagamento e estamos ansiosos para continuarmos os neg&oacute;cios com voc&ecirc; no futuro.</p>\n                    <p>Muito obrigado e tenha um bom dia!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(129,9,'ar','New Payment Reminder','<p>عزيزي ، { payment_reminder_name }</p>\n                    <p>آمل أن تكون بخير. هذا مجرد تذكير بأن الدفع على الفاتورة { invoice_payment_number } الاجمالي { invoice_payment_dueAmount } ، والتي قمنا بارسالها على { payment_reminder_date } مستحق اليوم.</p>\n                    <p>يمكنك دفع مبلغ لحساب البنك المحدد على الفاتورة.</p>\n                    <p>أنا متأكد أنت مشغول ، لكني أقدر إذا أنت يمكن أن تأخذ a لحظة ونظرة على الفاتورة عندما تحصل على فرصة.</p>\n                    <p>إذا كان لديك أي سؤال مهما يكن ، يرجى الرد وسأكون سعيدا لتوضيحها.</p>\n                    <p>&nbsp;</p>\n                    <p>شكرا&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(130,9,'zh','New Payment Reminder','<p>亲爱的，{ payment_reminder_name}</p>\n                    <p>希望您一切顺利。这只是一个提醒，我们于 { payment_reminder_date} 发送的发票 {invoice_ payment_number} 总应付金额 {invoice_ payment_dueAmount} 的付款将于今天到期。</p>\n                    <p>您可以向发票上指定的银行帐户付款。</p>\n                    <p>我确信您很忙，但如果您有机会花点时间查看一下发票，我将不胜感激。</p>\n                    <p>如果您有任何疑问，请回复，我很乐意为您解答。</p>\n                    <p> </p>\n                    <p>谢谢，</p>\n                    <p>{公司名称}</p>\n                    <p>{app_url}</p>\n                    <p> </p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(131,9,'da','New Payment Reminder','<p>K&aelig;re, { payment_reminder_name }</p>\n                    <p>Dette er blot en p&aring;mindelse om, at betaling p&aring; faktura { invoice_payment_number } i alt { invoice_payment_dueAmount}, som vi sendte til { payment_reminder_date }, er forfalden i dag.</p>\n                    <p>Du kan foretage betalinger til den bankkonto, der er angivet p&aring; fakturaen.</p>\n                    <p>Jeg er sikker p&aring; du har travlt, men jeg ville s&aelig;tte pris p&aring;, hvis du kunne tage et &oslash;jeblik og se p&aring; fakturaen, n&aring;r du f&aring;r en chance.</p>\n                    <p>Hvis De har nogen sp&oslash;rgsm&aring;l, s&aring; svar venligst, og jeg vil med gl&aelig;de tydeligg&oslash;re dem.</p>\n                    <p>&nbsp;</p>\n                    <p>Tak.&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(132,9,'de','New Payment Reminder','<p>Sehr geehrte/r, {payment_reminder_name}</p>\n                    <p>Ich hoffe, Sie sind gut. Dies ist nur eine Erinnerung, dass die Zahlung auf Rechnung {invoice_payment_number} total {invoice_payment_dueAmount}, die wir gesendet am {payment_reminder_date} ist heute f&auml;llig.</p>\n                    <p>Sie k&ouml;nnen die Zahlung auf das auf der Rechnung angegebene Bankkonto vornehmen.</p>\n                    <p>Ich bin sicher, Sie sind besch&auml;ftigt, aber ich w&uuml;rde es begr&uuml;&szlig;en, wenn Sie einen Moment nehmen und &uuml;ber die Rechnung schauen k&ouml;nnten, wenn Sie eine Chance bekommen.</p>\n                    <p>Wenn Sie irgendwelche Fragen haben, antworten Sie bitte und ich w&uuml;rde mich freuen, sie zu kl&auml;ren.</p>\n                    <p>&nbsp;</p>\n                    <p>Danke,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:25','2024-10-08 20:47:25'),
(133,9,'en','New Payment Reminder','<p>Dear, {payment_reminder_name}</p>\n                    <p>I hope you&rsquo;re well.This is just a reminder that payment on invoice {invoice_payment_number} total dueAmount {invoice_payment_dueAmount} , which we sent on {payment_reminder_date} is due today.</p>\n                    <p>You can make payment to the bank account specified on the invoice.</p>\n                    <p>I&rsquo;m sure you&rsquo;re busy, but I&rsquo;d appreciate if you could take a moment and look over the invoice when you get a chance.</p>\n                    <p>If you have any questions whatever, please reply and I&rsquo;d be happy to clarify them.</p>\n                    <p>&nbsp;</p>\n                    <p>Thanks,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(134,9,'es','New Payment Reminder','<p>Estimado, {payment_reminder_name}</p>\n                    <p>Espero que est&eacute;s bien. Esto es s&oacute;lo un recordatorio de que el pago en la factura {invoice_payment_number} total {invoice_payment_dueAmount}, que enviamos en {payment_reminder_date} se vence hoy.</p>\n                    <p>Puede realizar el pago a la cuenta bancaria especificada en la factura.</p>\n                    <p>Estoy seguro de que est&aacute;s ocupado, pero agradecer&iacute;a si podr&iacute;as tomar un momento y mirar sobre la factura cuando tienes una oportunidad.</p>\n                    <p>Si tiene alguna pregunta, por favor responda y me gustar&iacute;a aclararlas.</p>\n                    <p>&nbsp;</p>\n                    <p>Gracias,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(135,9,'fr','New Payment Reminder','<p>Cher, { payment_reminder_name }</p>\n                    <p>Jesp&egrave;re que vous &ecirc;tes bien, ce nest quun rappel que le paiement sur facture {invoice_payment_number}total { invoice_payment_dueAmount }, que nous avons envoy&eacute; le {payment_reminder_date} est d&ucirc; aujourdhui.</p>\n                    <p>Vous pouvez effectuer le paiement sur le compte bancaire indiqu&eacute; sur la facture.</p>\n                    <p>Je suis s&ucirc;r que vous &ecirc;tes occup&eacute;, mais je vous serais reconnaissant de prendre un moment et de regarder la facture quand vous aurez une chance.</p>\n                    <p>Si vous avez des questions, veuillez r&eacute;pondre et je serais heureux de les clarifier.</p>\n                    <p>&nbsp;</p>\n                    <p>Merci,&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(136,9,'he','New Payment Reminder','<p>שלום, {payment_reminder_name}</p>\n                    <p>אני מקווה ששלומך טוב. זוהי רק תזכורת לכך שהתשלום על החשבונית {invoice_payment_number} total dueAmount {invoice_payment_dueAmount} , ששלחנו בתאריך {payment_reminder_date}, יבוא היום.</p>\n                    <p>תוכל לבצע תשלום לחשבון הבנק המצוין בחשבונית.</p>\n                    <p>אני בטוח שאתה עסוק, אבל אשמח אם תוכל להקדיש רגע ולעיין בחשבונית כשתהיה לך הזדמנות.</p>\n                    <p>אם יש לך שאלות כלשהן, אנא השב ואשמח להבהיר אותן.</p>\n                    <p> </p>\n                    <p>תודה, </p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p> </p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(137,9,'it','New Payment Reminder','<p>Caro, {payment_reminder_name}</p>\n                    <p>Spero che tu stia bene, questo &egrave; solo un promemoria che il pagamento sulla fattura {invoice_payment_number} totale {invoice_payment_dueAmount}, che abbiamo inviato su {payment_reminder_date} &egrave; dovuto oggi.</p>\n                    <p>&Egrave; possibile effettuare il pagamento al conto bancario specificato sulla fattura.</p>\n                    <p>Sono sicuro che sei impegnato, ma apprezzerei se potessi prenderti un momento e guardare la fattura quando avrai una chance.</p>\n                    <p>Se avete domande qualunque, vi prego di rispondere e sarei felice di chiarirle.</p>\n                    <p>&nbsp;</p>\n                    <p>Grazie,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(138,9,'ja','New Payment Reminder','<p>ID、 {payment_reminder_name}</p>\n                    <p>これは、 { invoice_payment_dueAmount} の合計 {invoice_payment_dueAmount } に対する支払いが今日予定されていることを思い出させていただきたいと思います。</p>\n                    <p>請求書に記載されている銀行口座に対して支払いを行うことができます。</p>\n                    <p>お忙しいのは確かですが、機会があれば、少し時間をかけてインボイスを見渡すことができればありがたいのですが。</p>\n                    <p>何か聞きたいことがあるなら、お返事をお願いしますが、喜んでお答えします。</p>\n                    <p>&nbsp;</p>\n                    <p>ありがとう。&nbsp;</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(139,9,'nl','New Payment Reminder','<p>Geachte, { payment_reminder_name }</p>\n                    <p>Ik hoop dat u goed bent. Dit is gewoon een herinnering dat betaling op factuur { invoice_payment_number } totaal { invoice_payment_dueAmount }, die we verzonden op { payment_reminder_date } is vandaag verschuldigd.</p>\n                    <p>U kunt betaling doen aan de bankrekening op de factuur.</p>\n                    <p>Ik weet zeker dat je het druk hebt, maar ik zou het op prijs stellen als je even over de factuur kon kijken als je een kans krijgt.</p>\n                    <p>Als u vragen hebt, beantwoord dan uw antwoord en ik wil ze graag verduidelijken.</p>\n                    <p>&nbsp;</p>\n                    <p>Bedankt.&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(140,9,'pl','New Payment Reminder','<p>Drogi, {payment_reminder_name }</p>\n                    <p>Mam nadzieję, że jesteś dobrze. To jest tylko przypomnienie, że płatność na fakturze {invoice_payment_number } total {invoice_payment_dueAmount }, kt&oacute;re wysłaliśmy na {payment_reminder_date } jest dzisiaj.</p>\n                    <p>Płatność można dokonać na rachunek bankowy podany na fakturze.</p>\n                    <p>Jestem pewien, że jesteś zajęty, ale byłbym wdzięczny, gdybyś m&oacute;gł wziąć chwilę i spojrzeć na fakturę, kiedy masz szansę.</p>\n                    <p>Jeśli masz jakieś pytania, proszę o odpowiedź, a ja chętnie je wyjaśniam.</p>\n                    <p>&nbsp;</p>\n                    <p>Dziękuję,&nbsp;</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(141,9,'ru','New Payment Reminder','<p>Уважаемый, { payment_reminder_name }</p>\n                    <p>Я надеюсь, что вы хорошо. Это просто напоминание о том, что оплата по счету { invoice_payment_number } всего { invoice_payment_dueAmount }, которое мы отправили в { payment_reminder_date }, сегодня.</p>\n                    <p>Вы можете произвести платеж на банковский счет, указанный в счете-фактуре.</p>\n                    <p>Я уверена, что ты занята, но я была бы признательна, если бы ты смог бы поглядеться на счет, когда у тебя появится шанс.</p>\n                    <p>Если у вас есть вопросы, пожалуйста, ответьте, и я буду рад их прояснить.</p>\n                    <p>&nbsp;</p>\n                    <p>Спасибо.&nbsp;</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(142,9,'pt','New Payment Reminder','<p>Querido, {payment_reminder_name}</p>\n                    <p>Espero que voc&ecirc; esteja bem. Este &eacute; apenas um lembrete de que o pagamento na fatura {invoice_payment_number} total {invoice_payment_dueAmount}, que enviamos em {payment_reminder_date} &eacute; devido hoje.</p>\n                    <p>Voc&ecirc; pode fazer o pagamento &agrave; conta banc&aacute;ria especificada na fatura.</p>\n                    <p>Eu tenho certeza que voc&ecirc; est&aacute; ocupado, mas eu agradeceria se voc&ecirc; pudesse tirar um momento e olhar sobre a fatura quando tiver uma chance.</p>\n                    <p>Se voc&ecirc; tiver alguma d&uacute;vida o que for, por favor, responda e eu ficaria feliz em esclarec&ecirc;-las.</p>\n                    <p>&nbsp;</p>\n                    <p>Obrigado,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(143,9,'tr','New Payment Reminder','<p>Sayın {payment_reminder_name}</p>\n                    <p>Umarım iyisinizdir. Bu yalnızca, {payment_reminder_date} tarihinde gönderdiğimiz {invoice_payment_number} toplam vade tutarı {invoice_payment_dueAmount} tutarındaki faturanın ödemesinin bugün yapılması gerektiğini hatırlatma amaçlıdır.</p>\n                    <p>Faturada belirtilen banka hesabına ödeme yapabilirsiniz.</p>\n                    <p>Yoğun olduğunuzdan eminim ama fırsat bulduğunuzda bir dakikanızı ayırıp faturaya göz atarsanız sevinirim.</p>\n                    <p>Herhangi bir sorunuz varsa, lütfen yanıtlayın; bunları açıklığa kavuşturmaktan memnuniyet duyarım.</p>\n                    <p> </p>\n                    <p>Teşekkürler, </p>\n                    <p>{şirket_adı</p>\n                    <p>{app_url}</p>\n                    <p> </p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(144,9,'pt-br','New Payment Reminder','<p>Querido, {payment_reminder_name}</p>\n                    <p>Espero que voc&ecirc; esteja bem. Este &eacute; apenas um lembrete de que o pagamento na fatura {invoice_payment_number} total {invoice_payment_dueAmount}, que enviamos em {payment_reminder_date} &eacute; devido hoje.</p>\n                    <p>Voc&ecirc; pode fazer o pagamento &agrave; conta banc&aacute;ria especificada na fatura.</p>\n                    <p>Eu tenho certeza que voc&ecirc; est&aacute; ocupado, mas eu agradeceria se voc&ecirc; pudesse tirar um momento e olhar sobre a fatura quando tiver uma chance.</p>\n                    <p>Se voc&ecirc; tiver alguma d&uacute;vida o que for, por favor, responda e eu ficaria feliz em esclarec&ecirc;-las.</p>\n                    <p>&nbsp;</p>\n                    <p>Obrigado,&nbsp;</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>\n                    <p>&nbsp;</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(145,10,'ar','New Bill Payment','<p>مرحبا ، { payment_name }</p><p>مرحبا بك في { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">نحن نكتب لإبلاغكم بأننا قد أرسلنا مدفوعات (payment_الفاتورة) } الخاصة بك.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">لقد أرسلنا قيمتك { payment_cama } لأجل { payment_فاتورة } قمت بالاحالة في التاريخ { payment_date } من خلال { payment_method }.</span></p><p>شكرا جزيلا لك وطاب يومك ! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(146,10,'zh','New Bill Payment','<p>您好，{ payment_name}</p><p>欢迎来到 {app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font -weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">我们写信通知您，我们已发送您的 { payment_bill} 付款.</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight) ; text-align: var(--bs-body-text-align);\">我们已发送您于 { payment_date} 通过 { payment_method} 提交的金额为 { payment_amount} 的 { payment_bill} 付款。</span></span></ p><p><span style=\"font-family: var(--bs-body-font-family); 字体粗细: var(--bs-body-font-weight); 文本对齐: var( --bs-body-text-align);\">非常感谢您，祝您有美好的一天！！！</span></p><p>{company_name}</p><p>{app_url} </p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(147,10,'da','New Bill Payment','<p>Hej {payment_name}</p><p>Velkommen til {app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font -weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Vi skriver for at informere dig om, at vi har sendt din {payment_bill}-betaling .</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight) ; text-align: var(--bs-body-text-align);\">Vi har sendt dit beløb {payment_amount} betaling for {payment_bill} indsendt  på datoen {payment_date} via {payment_method}.</span></ p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var( --bs-body-text-align);\">Mange tak og god dag !!!!</span></p><p>{company_name}</p><p>{app_url} </p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(148,10,'de','New Bill Payment','<p>Hallo, {payment_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Willkommen bei {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Wir schreiben Ihnen mitzuteilen, dass wir Ihre Zahlung von {payment_bill} gesendet haben.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Wir haben Ihre Zahlung {payment_amount} Zahlung für {payment_bill} am Datum {payment_date} über {payment_method} gesendet.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Vielen Dank und haben einen guten Tag! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(149,10,'en','New Bill Payment','<p>Hi , {payment_name}</p><p>Welcome to {app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">We are writing to inform you that we has sent your {payment_bill} payment.</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">We has sent your amount {payment_amount} payment for {payment_bill} submited&nbsp; on date {payment_date} via {payment_method}.</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Thank You very much and have a good day !!!!</span></p><p>{company_name}</p><p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(150,10,'es','New Bill Payment','<p>Hola, {nombre_pago}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenido a {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Estamos escribiendo para informarle que hemos enviado su pago {payment_bill}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hemos enviado su importe {payment_amount} pago para {payment_bill} submitado en la fecha {payment_date} a través de {payment_method}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Thank You very much and have a good day! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{nombre_empresa}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(151,10,'fr','New Bill Payment','<p>Salut, { payment_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenue dans { app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Nous vous écrivons pour vous informer que nous avons envoyé votre paiement { payment_bill }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Nous avons envoyé votre paiement { payment_amount } pour { payment_bill } soumis à la date { payment_date } via { payment_method }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Merci beaucoup et avez un bon jour ! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ nom_entreprise }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ adresse_url }</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(152,10,'he','New Bill Payment','<p>היי, {payment_name}</p><p>ברוכים הבאים אל {app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font -weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">אנו כותבים כדי להודיע ​​לך ששלחנו את התשלום שלך ב-{payment_bill} .</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight) ; text-align: var(--bs-body-text-align);\">שלחנו את הסכום שלך {payment_amount} תשלום עבור {payment_bill} שנשלח  בתאריך {payment_date} באמצעות {payment_method}.</span></ p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var( --bs-body-text-align);\">תודה רבה ויום טוב!!!!</span></p><p>{company_name}</p><p>{app_url} </p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(153,10,'it','New Bill Payment','<p>Ciao, {payment_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Benvenuti in {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Scriviamo per informarti che abbiamo inviato il tuo pagamento {payment_bill}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Abbiamo inviato la tua quantità {payment_amount} pagamento per {payment_bill} subita alla data {payment_date} tramite {payment_method}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Grazie mille e buona giornata! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(154,10,'ja','New Bill Payment','<p>こんにちは、 {payment_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name} へようこそ</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{payment_紙幣} の支払いを送信したことをお知らせするために執筆しています。</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{payment_date } に提出された {payment_議案} に対する金額 {payment_金額} の支払いは、 {payment_method}を介して送信されました。</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ありがとうございます。良い日をお願いします。</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(155,10,'nl','New Bill Payment','<p>Hallo, { payment_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welkom bij { app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Wij schrijven u om u te informeren dat wij uw betaling van { payment_bill } hebben verzonden.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">We hebben uw bedrag { payment_amount } betaling voor { payment_bill } verzonden op datum { payment_date } via { payment_method }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hartelijk dank en hebben een goede dag! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ bedrijfsnaam }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(156,10,'pl','New Bill Payment','<p>Witaj, {payment_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Witamy w aplikacji {app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Piszemy, aby poinformować Cię, że wysłaliśmy Twoją płatność {payment_bill }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Twoja kwota {payment_amount } została wysłana przez użytkownika {payment_bill } w dniu {payment_date } za pomocą metody {payment_method }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dziękuję bardzo i mam dobry dzień! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url }</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(157,10,'ru','New Bill Payment','<p>Привет, { payment_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Вас приветствует { app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Мы пишем, чтобы сообщить вам, что мы отправили вашу оплату { payment_bill }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Мы отправили вашу сумму оплаты { payment_amoon } для { payment_bill }, подав на дату { payment_date } через { payment_method }.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Большое спасибо и хорошего дня! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(158,10,'pt','New Bill Payment','<p>Oi, {payment_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bem-vindo a {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Estamos escrevendo para informá-lo que enviamos o seu pagamento {payment_bill}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Nós enviamos sua quantia {payment_amount} pagamento por {payment_bill} requisitado na data {payment_date} via {payment_method}.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Muito obrigado e tenha um bom dia! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(159,10,'tr','New Bill Payment','<p>Merhaba, {payment_name}</p><p>{app_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font a hoş geldiniz -weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Size {payment_bill} ödemenizi gönderdiğimizi bildirmek için yazıyoruz. .</span></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight) ; text-align: var(--bs-body-text-align);\">{payment_date} tarihinde {payment_bill} için gönderdiğiniz {payment_amount} tutarındaki ödemenizi {payment_method} aracılığıyla gönderdik.</span></span></span></span></span></span></span></span></br></br></br></br></br></br></br></br></br></br></br></br></br></br> p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var( --bs-body-text-align);\">Çok teşekkür ederiz ve iyi günler dilerim !!!!span></p><p>{company_name}</p><p>{app_url} </p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(160,11,'ar','Bill Resent','<p>مرحبا ، { bill_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">مرحبا بك في { app_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى رقم الفاتورة الملحقة { bill_bill } لخدمة المنتج / الخدمة.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ببساطة اضغط على الاختيار بأسفل.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { bill_url }</p><p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">شكرا لعملك ! !!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Regards,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name }</span></p><p>{ app_url }</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(161,11,'zh','Bill Resent','<p><span style=\"font-family: var(--bs-body-font-family); 字体粗细: var(--bs-body-font-weight); 文本对齐: var(-- bs-body-text-align);\">嗨，{bill_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family ); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">欢迎使用 {app_name}</span><br> </p><p><span style=\"font-family: var(--bs-body-font-family); 字体粗细: var(--bs-body-font-weight); 文本对齐: var(--bs-body-text-align);\">希望这封电子邮件能让您满意！请参阅随附的产品/服务帐单编号 {bill_bill}。</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font -weight: var(--bs-body-font-weight); 文本对齐: var(--bs-body-text-align);\">                                                                                                                   只需点击下面的按钮即可。</span><br>< /p><p><span style=\"font-family: var(--bs-body-font-family); 字体粗细: var(--bs-body-font-weight); 文本对齐: var (--bs-body-text-align);\">                                                                                                                                  {bill_url}</span></p><p>如果您有任何疑问，请随时与我们联系。</p><p><span style= “字体系列：var（--bs-body-font-family）；字体粗细：var（--bs-body-font-weight）；文本对齐：var（--bs-body-text-align） );\">感谢您的惠顾！！！</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font -权重：var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">问候，</span><br></p><p><span style=\"font-family: var(--bs-正文字体系列）；字体粗细：var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs -正文字体系列）；字体粗细：var(--bs-body-font-weight);文本对齐：var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(162,11,'da','Bill Resent','<p>Hej, { bill_name }</p><p>Velkommen til { app_name }</p><p>Håber denne e-mail finder dig godt! Se vedlagte fakturanummer { bill_bill } for product/service.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Klik på knappen nedenfor.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ bill_url }</p><p>Du er velkommen til at række ud, hvis du har nogen spørgsmål.</p><p>Tak for din virksomhed! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Med venlig hilsen</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ company_name }</span></p><p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(163,11,'de','Bill Resent','<p>Hi, {bill_name}</p><p>Willkommen bei {app_name}</p><p>Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie die angehängte Rechnungsnummer {bill_bill} für Produkt/Service an.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Klicken Sie einfach auf den Button unten.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {bill_url}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Fühlen Sie sich frei, wenn Sie Fragen haben.</span></p><p>Vielen Dank für Ihr Geschäft! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Betrachtet,</span></p><p>{company_name}</p><p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(164,11,'en','Bill Resent','<p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hi , {bill_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welcome to {app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hope this email finds you well! Please see attached bill number {bill_bill} for product/service.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Simply click on the button below .</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</span></p><p>Feel free to reach out if you have any questions.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Thank You for your business !!!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Regards,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(165,11,'es','Bill Resent','<p>Hi, {nombre_billar}</p><p>Bienvenido a {app_name}</p><p>¡Espero que este email le encuentre bien! Consulte el número de factura adjunto {bill_bill} para el producto/servicio.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Simplemente haga clic en el botón de abajo.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Siéntase libre de llegar si usted tiene alguna pregunta.</p><p>Thank You for your business! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considerando,</span></p><p>{nombre_empresa}</p><p>{app_url}</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(166,11,'fr','Bill Resent','<p>Salut, { nom_facturation }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bienvenue dans { app_name }</span></p><p>Jespère que ce courriel vous trouve bien ! Veuillez consulter le numéro de facture { factur_bill } associé au produit / service.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Cliquez simplement sur le bouton ci-dessous.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ url-facturation }</span></p><p>Nhésitez pas à nous contacter si vous avez des questions.</p><p>Merci pour votre entreprise ! !!!</p><p>Regards,</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ nom_entreprise }</span></p><p>{ adresse_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(167,11,'he','Bill Resent','<p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(-- bs-body-text-align);>היי, {bill_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family ); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">ברוכים הבאים אל {app_name}</span><br> </p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">מקווה שהמייל הזה ימצא אותך היטב! ראה את מספר החשבון המצורף {bill_bill} עבור מוצר/שירות.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font -weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">                                                                                                 פשוט לחץ על הלחצן למטה .</span><br>< /p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var (--bs-body-text-align);\">                                                                                                              {bill_url}</span></p><p>אל תהסס לפנות אם יש לך שאלות.</p><p><span style= \"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align );\">תודה על העסק שלך !!!!</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font -משקל: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">בברכה,</span><br></p><p><span style=\"font-family: var(--bs- גוף-גופן-משפחה); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs -גוף-גופן-משפחה); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(168,11,'it','Bill Resent','<p>Ciao, {bill_name}</p><p>Benvenuti in {app_name}</p><p>Spero che questa email ti trovi bene! Si prega di consultare il numero di fattura allegato {bill_bill} per il prodotto/servizio.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Semplicemente clicca sul pulsante sottostante.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Grazie per il tuo business! !!!</p><p>Riguardo,</p><p>{company_name}</p><p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(169,11,'ja','Bill Resent','<p>こんにちは、 {bill_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name} へようこそ</span></p><p>この E メールでよくご確認ください。 製品 / サービスの添付された請求番号 {bill_紙幣} を参照してください。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 以下のボタンをクリックしてください。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">質問がある場合は、自由に連絡してください。</span></p><p>お客様のビジネスに感謝しています。</p><p>よろしく</p><p>{ company_name}</p><p>{app_url}</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(170,11,'nl','Bill Resent','<p>Hallo, { bill_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welkom bij { app_name }</span></p><p>Hoop dat deze e-mail je goed vindt! Zie het bijgesloten factuurnummer { bill_bill } voor product/service.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Klik gewoon op de knop hieronder.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{ bill_url }</p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dank U voor uw bedrijf! !!!</span></p><p>Betreft:</p><p>{ bedrijfsnaam }</p><p>{ app_url }</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(171,11,'pl','Bill Resent','<p>Witaj, {nazwa_faktury }</p><p>Witamy w aplikacji {app_name }</p><p>Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Zapoznaj się z załączonym numerem rachunku {bill_bill } dla produktu/usługi.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Wystarczy kliknąć na przycisk poniżej.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{adres_URL_faktury }</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p>Dziękujemy za swój biznes! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">W odniesieniu do</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url }</span><br></p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(172,11,'ru','Bill Resent','<p>Привет, { bill_name }</p><p>Вас приветствует { app_name }</p><p>Надеюсь, это электронное письмо найдет вас хорошо! См. прилагаемый номер счета { bill_bill } для product/service.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Просто нажмите на кнопку внизу.</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { bill_url }</p><p>Не стеснитесь, если у вас есть вопросы.</p><p>Спасибо за ваш бизнес! !!!</p><p>С уважением,</p><p>{ company_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{ app_url }</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(173,11,'pt','Bill Resent','<p>Oi, {bill_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bem-vindo a {app_name}</span></p><p>Espero que este e-mail encontre você bem! Por favor, consulte o número de faturamento conectado {bill_bill} para produto/serviço.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Basta clicar no botão abaixo.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</p><p>Obrigado pelo seu negócio! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(174,11,'tr','Bill Resent','<p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(-- bs-body-text-align);\">Merhaba, {bill_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family) ); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span><br> e hoş geldiniz </p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Umarım bu e-posta sizi bulur! Lütfen ürün/hizmet için ekteki {bill_bill} fatura numarasına bakın.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font -ağırlık: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">                                                                                                                 Aşağıdaki düğmeyi tıklamanız yeterlidir .</span><br>< /p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var (--bs-body-text-align);\">                                                                                                                                {bill_url}</span></p><p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p><p><span style= \"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align) );\">İlginiz için teşekkürler !!!!span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font -ağırlık: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Saygılarımızla,</span><br></p><p><span style=\"font-family: var(--bs- gövde-yazı tipi-ailesi); yazı tipi ağırlığı: var(--bs-body-font-ağırlığı); text-align: var(--bs-body-text-align);\">{şirket_adı}</span><br></p><p><span style=\"font-family: var(--bs) -body-font-ailesi); yazı tipi ağırlığı: var(--bs-body-font-ağırlığı); metin hizalama: var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(175,11,'pt-br','Bill Resent','<p>Oi, {bill_name}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bem-vindo a {app_name}</span></p><p>Espero que este e-mail encontre você bem! Por favor, consulte o número de faturamento conectado {bill_bill} para produto/serviço.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Basta clicar no botão abaixo.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{bill_url}</p><p>Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</p><p>Obrigado pelo seu negócio! !!!</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(176,12,'ar','Proposal Sent','<p>مرحبا ، { proposal_name }</p>\n                    <p>أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى رقم الاقتراح المرفق { proposal_number } للمنتج / الخدمة.</p>\n                    <p>اضغط ببساطة على الاختيار بأسفل</p>\n                    <p>{ proposal_url }</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لعملك ! !</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(177,12,'zh','Proposal Sent','<p>嗨，{proposal_name}</p>\n                    <p>希望这封电子邮件能让您满意！请参阅随附的产品/服务提案编号 {proposal_number}。</p>\n                    <p>只需点击下面的按钮</p>\n                    <p>{proposal_url}</p>\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p>感谢您的惠顾！！</p>\n                    <p> </p>\n                    <p>问候，</p>\n                    <p>{公司名称}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(178,12,'da','Proposal Sent','<p>Hej, {proposal__name }</p>\n                    <p>H&aring;ber denne e-mail finder dig godt! Se det vedh&aelig;ftede forslag nummer { proposal_number } for product/service.</p>\n                    <p>klik bare p&aring; knappen nedenfor</p>\n                    <p>{ proposal_url }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak for din virksomhed!</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(179,12,'de','Proposal Sent','<p>Hi, {proposal_name}</p>\n                    <p>Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie die angeh&auml;ngte Vorschlagsnummer {proposal_number} f&uuml;r Produkt/Service an.</p>\n                    <p>Klicken Sie einfach auf den Button unten</p>\n                    <p>{proposal_url}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Vielen Dank f&uuml;r Ihr Unternehmen!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betrachtet,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(180,12,'en','Proposal Sent','<p>Hi, {proposal_name}</p>\n                    <p>Hope this email ﬁnds you well! Please see attached proposal number {proposal_number} for product/service.</p>\n                    <p>simply click on the button below</p>\n                    <p>{proposal_url}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you for your business!!</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(181,12,'es','Proposal Sent','<p>Hi, {proposal_name}</p>\n                    <p>&iexcl;Espero que este email le encuentre bien! Consulte el n&uacute;mero de propuesta adjunto {proposal_number} para el producto/servicio.</p>\n                    <p>simplemente haga clic en el bot&oacute;n de abajo</p>\n                    <p>{proposal_url}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias por su negocio!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considerando,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(182,12,'fr','Proposal Sent','<p>Salut, {proposal_name}</p>\n                    <p>Jesp&egrave;re que ce courriel vous trouve bien ! Veuillez consulter le num&eacute;ro de la proposition jointe {proposal_number} pour le produit/service.</p>\n                    <p>Il suffit de cliquer sur le bouton ci-dessous</p>\n                    <p>{proposal_url}</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Merci pour votre entreprise ! !</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(183,12,'he','Proposal Sent','<p>שלום, {proposal_name}</p>\n                    <p>מקווה שדוא\"ל זה ימצא אותך היטב! ראה את מספר ההצעה המצורפת {proposal_number} עבור מוצר/שירות.</p>\n                    <p>פשוט לחץ על הלחצן למטה</p>\n                    <p>{proposal_url}</p>\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p>תודה על העסק שלך!!</p>\n                    <p> </p>\n                    <p>בברכה,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(184,12,'it','Proposal Sent','<p>Ciao, {proposal_name}</p>\n                    <p>Spero che questa email ti trovi bene! Si prega di consultare il numero di proposta allegato {proposal_number} per il prodotto/servizio.</p>\n                    <p>semplicemente clicca sul pulsante sottostante</p>\n                    <p>{proposal_url}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie per il tuo business!!</p>\n                    <p>&nbsp;</p>\n                    <p>Riguardo,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(185,12,'ja','Proposal Sent','<p>こんにちは、 {proposal_name}</p>\n                    <p>この E メールでよくご確認ください。 製品 / サービスの添付されたプロポーザル番号 {proposal_number} を参照してください。</p>\n                    <p>下のボタンをクリックするだけで</p>\n                    <p>{proposal_url}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>お客様のビジネスに感謝します。</p>\n                    <p>&nbsp;</p>\n                    <p>よろしく</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(186,12,'nl','Proposal Sent','<p>Hallo, {proposal_name}</p>\n                    <p>Hoop dat deze e-mail je goed vindt! Zie bijgevoegde nummer { proposal_number } voor product/service.</p>\n                    <p>gewoon klikken op de knop hieronder</p>\n                    <p>{ proposal_url }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u voor uw bedrijf!!</p>\n                    <p>&nbsp;</p>\n                    <p>Betreft:</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(187,12,'pl','Proposal Sent','<p>Witaj, {proposal_name}</p>\n                    <p>Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Proszę zapoznać się z załączonym numerem wniosku {proposal_number} dla produktu/usługi.</p>\n                    <p>po prostu kliknij na przycisk poniżej</p>\n                    <p>{proposal_url}</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy za prowadzenie działalności!!</p>\n                    <p>&nbsp;</p>\n                    <p>W odniesieniu do</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(188,12,'ru','Proposal Sent','<p>Здравствуйте, { proposal_name }</p>\n                    <p>Надеюсь, это электронное письмо найдет вас хорошо! См. вложенное предложение номер { proposal_number} для product/service.</p>\n                    <p>просто нажмите на кнопку внизу</p>\n                    <p>{ proposal_url}</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо за ваше дело!</p>\n                    <p>&nbsp;</p>\n                    <p>С уважением,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(189,12,'pt','Proposal Sent','<p>Oi, {proposal_name}</p>\n                    <p>Espero que este e-mail encontre voc&ecirc; bem! Por favor, consulte o n&uacute;mero da proposta anexada {proposal_number} para produto/servi&ccedil;o.</p>\n                    <p>basta clicar no bot&atilde;o abaixo</p>\n                    <p>{proposal_url}</p>\n                    <p>Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p>Obrigado pelo seu neg&oacute;cio!!</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(190,12,'tr','Proposal Sent','<p>Merhaba {teklif_adı</p>\n                    <p>Umarım bu e-posta sizi iyi bulur! Lütfen ürün/hizmet için ekteki {proposal_number} numaralı teklife bakın.</p>\n                    <p>Aşağıdaki düğmeyi tıklamanız yeterlidir</p>\n                    <p>{teklif_url}</p>\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p>İşiniz için teşekkür ederiz!</p>\n                    <p> </p>\n                    <p>Saygılarımızla,</p>\n                    <p>{şirket_adı</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(191,13,'ar','Complaint Resent','<p>مرحبا</p><p>مرحبا بك في { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">(د) إدارة الموارد البشرية / الشركة لإرسال خطاب الشكاوى.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">عزيزي { demyt_name }</span></p><p>أود أن أبلغ عن صراع بينك وبين الشخص الآخر وقد وقعت عدة حوادث خلال الأيام القليلة الماضية ، وأشعر أن الوقت قد حان للإبلاغ عن شكوى رسمية ضده / هي.</p><p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p><p>شكرا لك</p><p>Regards,</p><p>قسم الموارد البشرية</p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(192,13,'zh','Complaint Resent','<p><font color=\"#1d1c1d\"face=\"Slack-Lato、Slack-Fractions、appleLogo、sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; \">嗨，</span></font></p><p><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29) ; 字体系列：Slack-Lato、Slack-Fractions、appleLogo、sans-serif；字体粗细：var(--bs-body-font-weight)；文本对齐：var(--bs-body-text- align);\">欢迎来到 {app_name}</span><br></p><p><font color=\"#1d1c1d\"face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"> <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">人力资源部门/公司发送投诉信。<br></span></font></p><p> <font color=\"#1d1c1d\"face=\"Slack-Lato、Slack-Fractions、appleLogo、sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">亲爱的{complaint_name}</span></font></p><p>我想举报您与他人之间的冲突。过去几天发生了几起事件，我觉得是时候对他/她提出正式投诉了。</p><p>如果您有任何疑问，请随时与我们联系。</p> <p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common -ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">谢谢，</span></p> <p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common -ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">问候，</span></p>< p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-连字; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">人力资源部门。</span></p>< p><span style=\"颜色: rgb(29, 28, 29);字体系列：Slack-Lato、Slack-Fractions、appleLogo、sans-serif；字体大小：15px；字体变体连字：常见连字；字体粗细：var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><span style=\"color: rgb(29, 28, 29);字体系列：Slack-Lato、Slack-Fractions、appleLogo、sans-serif；字体大小：15px；字体变体连字：常见连字；字体粗细：var(--bs-body-font-weight);文本对齐：var(--bs-body-text-align);\"><br></span></p><p><span style=\"font-size: 15px;字体变体连字：常见连字；颜色：rgb(29,28,29)；字体系列：Slack-Lato、Slack-Fractions、appleLogo、sans-serif；字体粗细：var(--bs-body-font-weight);文本对齐：var(--bs-body-text-align);\">{app_url}</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(193,13,'da','Complaint Resent','<p>Hej.</p><p>Velkommen til { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR department/company to send klager brev.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Kære { klaint_name }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Jeg vil gerne anmelde en konflikt mellem dig og den anden person. Der har været flere tilfælde i løbet af de seneste dage, og jeg mener, at tiden er inde til at anmelde en formel klage over for ham.</span></p><p>Du er velkommen til at række ud, hvis du har nogen spørgsmål.</p><p>Tak.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Med venlig hilsen</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR-afdelingen.</span></p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(194,13,'de','Complaint Resent','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Hi,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Willkommen bei {app_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Personalabteilung/Unternehmen, um Beschwerdeschreiben zu versenden.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Sehr geehrter {beanstandname}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Ich möchte einen Konflikt zwischen Ihnen und der anderen Person melden. Es gab in den letzten Tagen mehrere Zwischenfälle, und ich bin der Meinung, dass es an der Zeit ist, eine formelle Beschwerde gegen ihn zu erstatten.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Fühlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Vielen Dank,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betrachtet,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Personalabteilung.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{company_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{app_url}</font></p><div><br></div><p></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(195,13,'en','Complaint Resent','<p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Hi ,</span></font></p><p><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Welcome to {app_name}</span><br></p><p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">HR department/company to send complaints letter.<br></span></font></p><p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Dear {complaint_name}</span></font></p><p>I would like to report a conflict between you and the other person. There  have been several incidents over the last few days, and I feel that its is time to report a formal complaint against him/her.</p><p>Feel free to reach out if you have any questions.</p><p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Thank You,</span></p><p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Regards,</span></p><p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR Department.</span></p><p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(196,13,'es','Complaint Resent','<p>Hola,</p><p>Bienvenido a {app_name}</p><p>Departamento de Recursos Humanos/Empresa para enviar una carta de reclamaciones.</p><p>Estimado {nombre_reclamación}</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Me gustaría informar de un conflicto entre usted y la otra persona. Ha habido varios incidentes en los últimos días, y siento que ha llegado el momento de denunciar una queja formal contra él.</span></p><p>Siéntase libre de llegar si usted tiene alguna pregunta.</p><p>Gracias,</p><p>Considerando,</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Departamento de Recursos Humanos.</span></p><p>{nombre_empresa}</p><p>{app_url}</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(197,13,'fr','Complaint Resent','<p>Salut,</p><p>Bienvenue dans { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ministère / entreprise des RH pour envoyer une lettre de plainte.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Cher { nom_plainte }</span></p><p>Je voudrais signaler un conflit entre vous et lautre personne. Il y a eu plusieurs incidents au cours des derniers jours, et je pense quil est temps de signaler une plainte officielle contre lui.</p><p>N hésitez pas à nous contacter si vous avez des questions.</p><p>Merci,</p><p>Regards,</p><p>Département des RH.</p><p>{ nom_entreprise }</p><p>{ adresse_url }</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(198,13,'he','Complaint Resent','<p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; \">היי ,</span></font></p><p><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29) ; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text- align);\">ברוכים הבאים אל {app_name}</span><br></p><p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"> <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">מחלקת משאבי אנוש/חברה לשלוח מכתב תלונות.<br></span></font></p><p> <font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">יקירי {complaint_name}</span></font></p><p>אני רוצה לדווח על התנגשות בינך לבין האדם האחר. היו מספר תקריות במהלך הימים האחרונים, ואני מרגיש שהגיע הזמן לדווח על תלונה רשמית נגדו.</p><p>אתה מוזמן ליצור קשר אם יש לך שאלות כלשהן.</p> <p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common -ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">תודה,</span></p> <p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common -ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">בברכה,</span></p>< p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common- ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">מחלקת משאבי אנוש.</span></p>< p><span style=\"color: rgb(29, 28, 29); משפחת גופנים: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; גודל גופן: 15px; גופן-variant-ligatures: ליגטורות נפוצות; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span><span style=\"color: rgb(29, 28, 29); משפחת גופנים: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; גודל גופן: 15px; גופן-variant-ligatures: ליגטורות נפוצות; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"font-size: 15px; גופן-variant-ligatures: ליגטורות נפוצות; color: rgb(29, 28, 29); משפחת גופנים: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(199,13,'it','Complaint Resent','<p>Ciao,</p><p>Benvenuti in {app_name}</p><p>HR dipartimenta/azienda per inviare la lettera dei reclami.</p><p>Caro {nome_denuncia}</p><p>Vorrei segnalare un conflitto tra lei e l altra persona. Ci sono stati diversi incidenti negli ultimi giorni e sento che il suo è il momento di denunciare una denuncia formale contro di lui.</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Grazie,</p><p>Riguardo,</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dipartimento HR.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{company_name}</span></p><p>{app_url}</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(200,13,'ja','Complaint Resent','<p>こんにちは。</p><p>{app_name} へようこそ</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">苦情の手紙を送信するための HR 部門 / 会社。</span></p><p>{ complaint_name} に Dear があります</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">あなたと他の人との間の争いを報告したい この数日間で数件の事件があったが、私はそれが彼女に対する公式の申し立てを報告する時であると感じている。</span></p><p>質問がある場合は、自由に連絡してください。</p><p>ありがとうございます</p><p>よろしく</p><p>HR 部門</p><p>{ company_name}</p><p>{app_url}</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(201,13,'nl','Complaint Resent','<p>Hallo,</p><p>Welkom bij { app_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR-afdelings/bedrijf om klachten brief te sturen.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Geachte { klacht_naam }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Ik zou een conflict willen melden tussen u en de andere persoon. Er zijn de afgelopen dagen verschillende incidenten geweest en ik vind dat het tijd is om een formele klacht tegen hem/haar in te dienen.</span></p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p>Dank U,</p><p>Betreft:</p><p>HR-afdeling.</p><p>{ bedrijfsnaam }</p><p>{ app_url }</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(202,13,'pl','Complaint Resent','<p>Witam,</p><p>Witamy w aplikacji {app_name }</p><p>Dział kadr/firma, aby wysłać reklamacje.</p><p>Szanowny {skarga }</p><p>Chciałbym zgłosić konflikt między tobą a drugą osobą. W ciągu ostatnich kilku dni doszło do kilku incydentów i uważam, że nadszedł czas, aby zgłosić przeciwko nim formalną skargę.</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dziękuję,</span></p><p>W odniesieniu do</p><p>Dział HR.</p><p>{company_name }</p><p>{app_url }</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(203,13,'ru','Complaint Resent','<p>Привет.</p><p>Вас приветствует { app_name }</p><p>Отдел кадров/компания для направления письма с жалобами.</p><p>Уважаемый { имя-жалобы }</p><p>Я хотел бы сообщить о конфликте между вами и другим человеком. За последние несколько дней произошло несколько инцидентов, и я считаю, что настало время для того, чтобы сообщить об официальной жалобе против него.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Не стеснитесь, если у вас есть вопросы.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Спасибо.</span></p><p>С уважением,</p><p>Отдел кадров.</p><p>{ company_name }</p><p>{ app_url }</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(204,13,'pt','Complaint Resent','<p style=\"\"><span style=\"font-size: 14.4px;\">Oi,</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Bem-vindo a {app_name}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">HR department/empresa para enviar carta de reclamações.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Querido {reclamnome_}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Eu gostaria de relatar um conflito entre você e a outra pessoa. Houve vários incidentes ao longo dos últimos dias, e eu sinto que o seu é tempo de relatar uma queixa formal contra him/her.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Obrigado,</span></p><p style=\"\"><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Departamento de RH.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">{company_name}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">{app_url}</span></p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(205,13,'tr','Complaint Resent','<p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; \">Merhaba ,</span></font></p><p><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures; color: rgb(29, 28, 29) ; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text- align);\">{app_name}</span><br></p><p><font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"> hoş geldiniz <span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Şikayet mektubu göndermek için İK departmanı/şirketi.<br></span></font></p><p> <font color=\"#1d1c1d\" face=\"Slack-Lato, Slack-Fractions, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Sevgili {complaint_name}</span></font></p><p>Sizinle diğer kişi arasındaki bir anlaşmazlığı bildirmek istiyorum. Son birkaç gün içinde birkaç olay yaşandı ve ona karşı resmi bir şikayette bulunmanın zamanının geldiğini düşünüyorum.</p><p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p> <p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-bitişik harfler: ortak -ligatures; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Teşekkürler,</span></p> <p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-bitişik harfler: ortak -bitişik harfler; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Saygılarımızla,</span></p>< p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-size: 15px; font-variant-bitişik harfler: ortak- bitişik harfler; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">İK Departmanı.</span></p>< p><span style=\"renk: rgb(29, 28, 29); yazı tipi ailesi: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; yazı tipi boyutu: 15 piksel; font-varyant-bitişik harfler: ortak bitişik harfler; yazı tipi ağırlığı: var(--bs-body-font-ağırlığı); text-align: var(--bs-body-text-align);\">{company_name}</span><span style=\"color: rgb(29, 28, 29); yazı tipi ailesi: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; yazı tipi boyutu: 15 piksel; font-varyant-bitişik harfler: ortak bitişik harfler; yazı tipi ağırlığı: var(--bs-body-font-ağırlığı); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"font-size: 15px; font-varyant-bitişik harfler: ortak bitişik harfler; renk: rgb(29, 28, 29); yazı tipi ailesi: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; yazı tipi ağırlığı: var(--bs-body-font-ağırlığı); metin hizalama: var(--bs-body-text-align);\">{app_url}</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(206,13,'pt-br','Complaint Resent','<p style=\"\"><span style=\"font-size: 14.4px;\">Oi,</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Bem-vindo a {app_name}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">HR department/empresa para enviar carta de reclamações.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Querido {reclamnome_}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Eu gostaria de relatar um conflito entre você e a outra pessoa. Houve vários incidentes ao longo dos últimos dias, e eu sinto que o seu é tempo de relatar uma queixa formal contra him/her.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Obrigado,</span></p><p style=\"\"><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">Departamento de RH.</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">{company_name}</span></p><p style=\"\"><span style=\"font-size: 14.4px;\">{app_url}</span></p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(207,14,'ar','Leave Action Sent','<p>الموضوع : \" إدارة الموارد البشرية / الشركة لإرسال رسالة موافقة إلى { leave_status } إجازة أو إجازة \".</p><p>مرحبا ، { leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; لدي { leave_status } طلب ترك لأجل { leave_لسبب } من { leave_start_date } الى { leave_end_date }. { total_leave_yأيام } أيام لدي { leave_status } طلب الخروج الخاص بك الى { leave_لسبب }.</p><p>ونحن نطلب منكم أن تكملوا كل أعمالكم المعلقة أو أي قضية مهمة أخرى لكي لا تواجه الشركة أي خسارة أو مشكلة أثناء غيابكم ونحن نقدر لكم مدى عمق تفكيركم في إبلاغنا بذلك مسبقا.</p><p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p><p>شكرا لك</p><p>Regards,</p><p>إدارة الموارد البشرية ،</p><p>{ app_name }</p><p>{ app_url }</p><div><br></div>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(208,14,'zh','Leave Action Sent','<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">主题 : \"要发送的人力资源部门/公司{leave_status}休假或请假的批准函”。</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -height: 28px;\">﻿嗨，{leave_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"行高：28px;\"><span style=\"font-family: var(--bs-body-font-family); 字体粗细：var(--bs-body-font-weight); 文本对齐: var(--bs-body-text-align);\">            我有 {leave_status} 您从 {leave_start_date} 到 {leave_end_date} 提出的请假申请 {leave_reason}。 {total_leave_days} 天，我收到了您 {leave_reason} 的请假申请 {leave_status}。</span><br></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:= \"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs -body-font-weight); text-align: var(--bs-body-text-align);\">我们要求您完成所有未完成的工作或任何其他重要问题，以便公司不会面临任何您缺席期间的损失或问题。感谢您提前通知我们的周到。</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style =\"line-height: 28px;\">如有任何疑问，请随时与我们联系。</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px ;\"=\"\" style=\"line-height: 28px;\">谢谢您，</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\" =\"\" style=\"line-height: 28px;\">问候，</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">人力资源部</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style= \"line-height: 28px;\">{app_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -高度：28px;\">{app_url}</p><p></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(209,14,'da','Leave Action Sent','<p>Emne: \" HR-afdeling / virksomhed, der skal sende godkendelsesbrev til { leave_status } en ferie eller orlov \".</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Hej, { leave_name }</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Jeg har { leave_status } din orlov-anmodning for { leave_reason } fra { leave_start_date } til { leave_end_date }. { total_leave_days } dage Jeg har { leave_status } din anmodning om { leave_reason }.</p><p>Vi beder dig om at færdiggøre alt dit udestående arbejde eller et andet vigtigt spørgsmål, så virksomheden ikke står over for nogen tab eller problemer under dit fravær. Vi sætter pris på Deres betænksomhed, for at informere os godt på forhånd.</p><p>Du er velkommen til at række ud, hvis du har nogen spørgsmål.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Tak.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Med venlig hilsen</span></p><p>HR-afdelingen,</p><p>{ app_name }</p><p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(210,14,'de','Leave Action Sent','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betreff: \" Personalabteilung/Firma, um den Zulassungsbescheid an {leave_status} einen Urlaub oder Urlaub zu schicken \".</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Hi, {leave_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ich habe {leave_status} Ihre Urlaubsanforderung für {leave_reason} von {leave_start_date} bis {leave_end_date}. {total_leave_days} Tage Ich habe {leave_status} Ihre Urlaubs-Anfrage für {leave_reason}.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Wir bitten Sie, Ihre gesamte anstehende Arbeit oder ein anderes wichtiges Thema abzuschließen, so dass das Unternehmen während Ihrer Abwesenheit keinerlei Verlust oder kein Problem zu bewältigen hat. Wir freuen uns über Ihre Nachdenklichkeit, um uns im Vorfeld gut zu informieren.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Fühlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Vielen Dank,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betrachtet,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Personalabteilung,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{Anwendungsname}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{app_url}</font></p><p></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(211,14,'en','Leave Action Sent','<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Subject : \"HR department/company to send approval letter to {leave_status} a vacation or leave\" .</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">﻿Hi ,{leave_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I have {leave_status} your leave request for&nbsp; {leave_reason} from {leave_start_date} to {leave_end_date}. {total_leave_days} days I have&nbsp; {leave_status} your leave request for {leave_reason}.</span><br></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">We request you to complete all your pending work or any other important issue so that the company does not face any any loss or problem during your absence. We appreciate your thoughtfulness to inform us well in advance.</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Feel free to reach out if you have any questions.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Thank You,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Regards,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">HR Department,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_url}</p><p></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(212,14,'es','Leave Action Sent','<p>Asunto: \" Departamento de RR.HH./compañía para enviar la carta de aprobación a {leave_status} unas vacaciones o vacaciones \".</p><p>Hi, {nombre_archivo}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tengo {leave_status} la solicitud de licencia para {leave_reason} de {leave_start_date} a {leave_end_date}. {total_leave_days} días tengo {leave_status} la solicitud de licencia para {leave_reason}.</p><p>Le solicitamos que complete todos sus trabajos pendientes o cualquier otro asunto importante para que la empresa no se enfrente a ninguna pérdida o problema durante su ausencia. Agradecemos su consideración para informarnos con mucha antelación.</p><p>Siéntase libre de llegar si usted tiene alguna pregunta.</p><p>Gracias,</p><p>Considerando,</p><p>Departamento de Recursos Humanos,</p><p>{app_name}</p><p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(213,14,'fr','Leave Action Sent','<p>Objet: \" Service des ressources humaines /entreprise pour envoyer une lettre d approbation à { leave_status } un congé annuel ou un congé \".</p><p>Salut, { nom_onde }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; J ai { leave_status } votre demande de permission pour { leave_reason } de { leave_start_date } à { leave_end_date }. { total_leave_days } jours, j ai { leave_status } votre demande de congé pour { leave_reason }.</span></p><p>Nous vous demandons de remplir tous vos travaux en cours ou toute autre question importante afin que l entreprise ne soit pas confrontée à une perte ou à un problème pendant votre absence. Nous apprécions votre attention pour nous informer longtemps à l avance.</p><p>N hésitez pas à nous contacter si vous avez des questions.</p><p>Merci,</p><p>Regards,</p><p>Département des RH,</p><p>{ nom_app }</p><p>{ adresse_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(214,14,'he','Leave Action Sent','<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">נושא: \"מחלקת משאבי אנוש/חברה לשלוח מכתב אישור ל-{leave_status} חופשה או חופשה\" .</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -הייט: 28px; \"> היי, {liew_name} </p> <p segoe =\" \"ui\", = \"\" arial; = \"\" font-size: = \"\" 14px; \"=\" \"style =\" line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align : var(--bs-body-text-align);\">            יש לי {leave_status} את בקשת החופשה שלך עבור  {leave_reason} מ-{leave_start_date} עד {leave_end_date}. {total_leave_days} ימים יש לי  {leave_status} את בקשת החופשה שלך עבור {leave_reason}.</span><br></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:= \"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs -body-font-weight); text-align: var(--bs-body-text-align);\">אנו מבקשים מכם להשלים את כל העבודה הממתינה או כל נושא חשוב אחר כך שהחברה לא תעמוד בפני כל אובדן או בעיה במהלך היעדרותך. אנו מעריכים את התחשבותך להודיע ​​לנו זמן רב מראש.</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style =\"line-height: 28px;\">אל תהסס לפנות אם יש לך שאלות.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px ;\"=\"\" style=\"line-height: 28px;\">תודה,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\" =\"\" style=\"line-height: 28px;\">בברכה,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">מחלקת משאבי אנוש,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style= \"line-height: 28px;\">{app_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -height: 28px;\">{app_url}</p><p></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(215,14,'it','Leave Action Sent','<p>Oggetto: \" HR department /company per inviare lettera di approvazione a {leave_status} una vacanza o un congedo \".</p><p>Ciao, {leave_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ho {leave_status} la tua richiesta di permesso per {leave_ragione} da {leave_start_date} a {leave_end_date}. {total_leave_days} giorni I ho {leave_status} la tua richiesta di permesso per {leave_ragione}.</p><p>Ti richiediamo di completare tutte le tue lavorazioni in sospeso o qualsiasi altra questione importante in modo che lazienda non faccia alcuna perdita o problema durante la tua assenza. Apprezziamo la vostra premura per informarci bene in anticipo.</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Sentiti libero di raggiungere se hai domande.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Grazie,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Riguardo,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Dipartimento HR,</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span></p><p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(216,14,'ja','Leave Action Sent','<p>件名 : \" 承認レターを { leave_status} に休暇または休暇に送信するための人事部門 / 企業。</p><p>こんにちは、 {leave_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; { leave_start_date} から {leave_end_date}までの { leave_reason} { leave_reason} { leave_status} { leave_status } { leave_status } { total_leave_status } { leave_reason } { leave_reason} に対するあなたの休暇リクエストをお願いします。</p><p>お客様は、お客様がお客様の不在中に損失や問題が発生しないように、保留中のすべての作業やその他の重要な問題を完了するよう要求します。 事前にお知らせするためには、あなたの思慮深さに感謝します。</p><p>質問がある場合は、自由に連絡してください。</p><p>ありがとうございます</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">よろしく</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR 部門</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_url}</span><br></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(217,14,'nl','Leave Action Sent','<p>Onderwerp: \" HR-afdeling/bedrijf om een goedkeuringsbrief te sturen naar { leave_status } een vakantie of verlof \".</p><p>Hallo, { leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ik heb { leave_status } uw verzoek om verlof voor { leave_reason } van { leave_start_date } aan { leave_end_date }. { total_leave_days } dagen Ik heb { leave_status } uw verzoek om verlof voor { leave_reason }.</p><p>Wij vragen u om al uw lopende werk of een andere belangrijke kwestie, zodat het bedrijf geen verlies of probleem tijdens uw afwezigheid geconfronteerd. Wij waarderen uw bedachtzaamheid om ons van tevoren goed te informeren.</p><p>Voel je vrij om uit te reiken als je vragen hebt.</p><p>Dank U,</p><p>Betreft:</p><p>HR-afdeling,</p><p>{ app_name }</p><p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(218,14,'pl','Leave Action Sent','<p>Temat: \" Dział HR /firma, aby wysłać list zatwierdzający do {leave_status } urlop lub urlop \".</p><p>Cześć, {leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mam {leave_status } żądanie pozostania dla {leave_reason } od {leave_start_date } do {leave_end_date }. {total_leave_days } dni mam {leave_status } żądanie opuszczenia użytkownika dla {leave_reason }.</p><p>Prosimy o wypełnienie wszystkich oczekujących prac lub innych ważnych spraw, tak aby firma nie borykała się z żadną stratą lub problemem w czasie Twojej nieobecności. Doceniamy twoją przemyślność, aby poinformować nas z wyprzedzeniem.</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p>Dziękuję,</p><p>W odniesieniu do</p><p>Dział HR,</p><p>{app_name }</p><p>{app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(219,14,'ru','Leave Action Sent','<p>Тема: \" Отдел кадров/компания для отправки письма с утверждением в { leave_status } отпуск или отпуск \".</p><p>Привет, { leave_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; У меня есть { leave_status } ваш запрос на отпуск для { leave_reason } из { leave_start_date } в { leave_end_date }. { total_leave_days } дней { leave_status } ваш запрос на отпуск для { leave_reason }.</p><p>Мы просим вас завершить все ваши ожидающие работы или любой другой важный вопрос, чтобы компания не сталкивалась с какими-либо потерям или проблемой во время вашего отсутствия. Мы ценим вашу задумчивость, чтобы сообщить нам заранее.</p><p>Не стеснитесь, если у вас есть вопросы.</p><p>Спасибо.</p><p>С уважением,</p><p>Отдел кадров,</p><p>{ имя_программы }</p><p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(220,14,'pt','Leave Action Sent','<p><span style=\"font-size: 14.4px;\">Assunto: \" Departamento de RH /empresa para enviar carta de aprovação para {leave_status} férias ou licença \".</span></p><p><span style=\"font-size: 14.4px;\">Oi, {leave_name}</span></p><p><span style=\"font-size: 14.4px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Eu tenho {leave_status} sua solicitação de licença para {leave_reason} de {leave_start_date} para {leave_end_date}. {total_leave_days} dias eu tenho {leave_status} sua solicitação de licença para {leave_reason}.</span></p><p><span style=\"font-size: 14.4px;\">Solicitamos que você complete todo o seu trabalho pendente ou qualquer outra questão importante para que a empresa não enfrente qualquer perda ou problema durante a sua ausência. Agradecemos a sua atenciosidade para nos informar com bastante antecedência.</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Obrigado,</span><br></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p><p><span style=\"font-size: 14.4px;\">{app_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(221,14,'tr','Leave Action Sent','<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Subject : \"Gönderilecek İK departmanı/şirket {leave_status} tatile veya ayrılmaya onay mektubu\" .</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -height: 28px;\">﻿Merhaba ,{leave_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\" line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align : var(--bs-body-text-align);\">            {leave_status} {leave_reason} için {leave_start_date} tarihinden {leave_end_date} tarihine kadar izin talebinizi aldım. {total_leave_days} günüm  {leave_status}, {leave_reason} için izin talebiniz var.</span><br></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:= \"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs -body-font-weight); text-align: var(--bs-body-text-align);\">Şirketin herhangi bir sorunla karşılaşmaması için bekleyen tüm işlerinizi veya diğer önemli sorunları tamamlamanızı rica ederiz. yokluğunuz sırasında kayıp veya sorun. Bizi önceden bilgilendirme konusundaki düşünceniz için teşekkür ederiz.</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style =\"line-height: 28px;\">Sorularınız varsa bize ulaşmaktan çekinmeyin.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px ;\"=\"\" style=\"line-height: 28px;\">Teşekkürler,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\" =\"\" style=\"line-height: 28px;\">Saygılarımızla,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">İK Departmanı</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style= \"line-height: 28px;\">{app_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -yükseklik: 28 piksel;\">{app_url}</p><p></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(222,14,'pt-br','Leave Action Sent','<p><span style=\"font-size: 14.4px;\">Assunto: \" Departamento de RH /empresa para enviar carta de aprovação para {leave_status} férias ou licença \".</span></p><p><span style=\"font-size: 14.4px;\">Oi, {leave_name}</span></p><p><span style=\"font-size: 14.4px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Eu tenho {leave_status} sua solicitação de licença para {leave_reason} de {leave_start_date} para {leave_end_date}. {total_leave_days} dias eu tenho {leave_status} sua solicitação de licença para {leave_reason}.</span></p><p><span style=\"font-size: 14.4px;\">Solicitamos que você complete todo o seu trabalho pendente ou qualquer outra questão importante para que a empresa não enfrente qualquer perda ou problema durante a sua ausência. Agradecemos a sua atenciosidade para nos informar com bastante antecedência.</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Obrigado,</span><br></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p><p><span style=\"font-size: 14.4px;\">{app_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(223,15,'ar','Payslip Sent','<p>الموضوع : \" إدارة الموارد البشرية / الشركة لإرسال شظية عن طريق البريد الإلكتروني في وقت تأكيد الدفع. \"</p><p>عزيزي ، { paysp_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى payalp المرفقة الى { payplip_salary_شهر }. اضغط ببساطة على الاختيار في أسفل : { payspp_url }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</span></p><p>Regards,</p><p>إدارة الموارد البشرية ،</p><p>{ app_name }</p><p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(224,15,'zh','Payslip Sent','<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">主题 :  \" 人力资源部门/公司发送确认工资单时通过电子邮件发送工资单。\"</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-高度：28px;\">﻿亲爱的，{payslip_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); 字体粗细: var(--bs-body-font-weight); 文本对齐: var(--bs-body-text-align);\">    </span>    希望这封电子邮件能让您满意！请参阅随附的 {payslip_salary_month} 工资单。只需点击下面的按钮即可： <br>                                                            {payslip_url}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\" line-height: 28px;\">如果您有任何疑问，请随时与我们联系。</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\" =\"\" style=\"line-height: 28px;\">问候，</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">人力资源部门，</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size :=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(- -bs-body-font-weight); 文本对齐: var(--bs-body-text-align);\">{app_name}</span><br></p><p segoe=\"\" ui \",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_url}</p><p></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(225,15,'da','Payslip Sent','<p>Emne: \" HR-afdeling / Kompagni til at sende lønsedler via e-mail på tidspunktet for bekræftelsen af lønsedlerne. \"</p><p>Kære, { payslip_name }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; Håber denne e-mail finder dig godt! Se vedhæftet payseddel for { payslip_salary_month }. Klik på knappen nedenfor: { payslip_url }</p><p>Du er velkommen til at række ud, hvis du har nogen spørgsmål.</p><p>Med venlig hilsen</p><p>HR-afdelingen,</p><p>{ app_name }</p><p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(226,15,'de','Payslip Sent','<p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betreff: \" Personalabteilung/Firma, um payslips per E-Mail zum Zeitpunkt der Bestätigung des Auszahlungsscheins zu senden. \"</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Sehr geehrte, {payslip_name}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie den angehängten payslip für {payslip_salary_month}. Klicken Sie einfach auf die folgende Schaltfläche: {payslip_url}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Fühlen Sie sich frei, wenn Sie Fragen haben.</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Betrachtet,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">Personalabteilung,</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{Anwendungsname}</font></p><p style=\"line-height: 28px; font-family: Nunito, \" segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\"><font face=\"sans-serif\">{app_url}</font></p><p></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(227,15,'en','Payslip Sent','<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Subject :&nbsp; \" HR&nbsp; Department / Company to send&nbsp; payslips by email at time of confirmation of payslip. \"</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">﻿Dear ,{payslip_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp;&nbsp;</span>&nbsp; &nbsp; Hope this email finds you well! Please see attached payslip for {payslip_salary_month} . Simply click on the button below :&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {payslip_url}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Feel free to&nbsp; reach out if you have any questions.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Regards ,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">HR Department ,</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span><br></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_url}</p><p></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(228,15,'es','Payslip Sent','<p>Asunto: \" Departamento de Recursos Humanos/Empresa para enviar nóminas por correo electrónico en el momento de la confirmación de payslip. \"</p><p>Estimado, {payslip_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; ¡Espero que este email le encuentre bien! Consulte la ficha de pago adjunta para {payslip_salary_month}. Simplemente haga clic en el botón de abajo: {payslip_url}</p><p>Siéntase libre de llegar si usted tiene alguna pregunta.</p><p>Considerando,</p><p>Departamento de Recursos Humanos,</p><p>{app_name}</p><p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(229,15,'fr','Payslip Sent','<p>Objet: \" HR Department / Company to send payborderby email at time of confirmation of payslip. \"</p><p>Cher, { nom_décalage }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; J espère que ce courriel vous trouve bien ! Veuillez consulter le bordereau de paiement ci-joint pour { payement_salary_month }. Cliquez simplement sur le bouton ci-dessous: { payslip_url }</p><p>N hésitez pas à nous contacter si vous avez des questions.</p><p>Regards,</p><p>Département des RH,</p><p>{ nom_app }</p><p>{ adresse_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(230,15,'he','Payslip Sent','<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">נושא :  \" מחלקת משאבי אנוש/חברה לשלוח תלושי שכר בדוא\"ל בזמן אישור תלוש השכר. \"</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line- גובה: 28px; \"> יקר, {paylip_name} </p> <p segoe =\" \"ui\", = \"\" arial; = \"\" font-size: = \"\" 14px; \"=\" \"style =\" קו -height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">    </span>    מקווה שהמייל הזה ימצא אותך היטב! ראה תלוש שכר מצורף עבור {payslip_salary_month} . פשוט לחץ על הכפתור למטה : <br>                                                            {payslip_url}</p><p segoe=\"\" ui\",=\"\" arial=\"\" ui\",=\"\" arial;=\"\" arial; line-height: 28px;\">אל תהסס לפנות אם יש לך שאלות.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\" =\"\" style=\"line-height: 28px;\">בברכה ,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">מחלקת משאבי אנוש ,</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size :=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(- -bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span><br></p><p segoe=\"\" ui \",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_url}</p><p></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(231,15,'it','Payslip Sent','<p>Oggetto: \" HR Department / Company per inviare busta paga via email al momento della conferma della busta paga \".</p><p>Caro, {payslip_name}</p><p>&nbsp; &nbsp; &nbsp; &nbsp; Spero che questa email ti trovi bene! Si prega di consultare la busta paga per {payslip_salary_month}. Semplicemente clicca sul pulsante sottostante: {payslip_url}</p><p>Sentiti libero di raggiungere se hai domande.</p><p>Riguardo,</p><p>Dipartimento HR,</p><p>{app_name}</p><p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(232,15,'ja','Payslip Sent','<p>件名 : \" 給与明細書の確認時に、給与明細書を電子メールで送信するための HR 部門 / 企業。</p><p>{ payslip_name} を実行します。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; この E メールでよくご確認ください。 {payslip_salary_month} の添付された給与明細書を参照してください。 以下のボタンをクリックするだけで、 { payslip_url} をクリックしてください。</p><p>質問がある場合は、自由に連絡してください。</p><p>よろしく</p><p>HR 部門</p><p>{app_name}</p><p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(233,15,'nl','Payslip Sent','<p>Onderwerp: \" HR Department/Company om betalingen te sturen per e-mail op het moment van de bevestiging van de payslip. \"</p><p>Schat, { payslip_name }</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; Hoop dat deze e-mail je goed vindt! Zie bijgevoegde payslip voor { payslip_salary_month }. Klik gewoon op de knop hieronder: { payslip_url }</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Voel je vrij om uit te reiken als je vragen hebt.</span><br></p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Betreft:</span></p><p>HR-afdeling,</p><p>{ app_name }</p><p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(234,15,'pl','Payslip Sent','<p>Temat: \" Dział HR/Firma, aby wysłać payslips pocztą elektroniczną w momencie potwierdzenia payslip. \"</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Szanowny, {payslip_name }</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Patrz załączony payslip dla {payslip_salary_month }. Wystarczy kliknąć na przycisk poniżej: {payslip_url }</p><p>Czuj się swobodnie, jeśli masz jakieś pytania.</p><p>W odniesieniu do</p><p>Dział HR,</p><p>{app_name }</p><p>{app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(235,15,'ru','Payslip Sent','<p>Тема: \" Отдел кадров/Компания для отправки пастор по электронной почте во время подтверждения паузлиса \".</p><p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Уважаемый, { payslip_name }</span></p><p>&nbsp; &nbsp; &nbsp; &nbsp; Надеюсь, это электронное письмо найдет вас хорошо! См. вложенный раздел для { payslip_salary_month }. Просто нажмите на кнопку ниже: { payslip_url }</p><p>Не стеснитесь, если у вас есть вопросы.</p><p>С уважением,</p><p>Отдел кадров,</p><p>{ имя_программы }</p><p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(236,15,'pt','Payslip Sent','<p><span style=\"font-size: 14.4px;\">Assunto: \" Departamento / Companhia de RH para enviar payslips por e-mail a hora da confirmação de payslip. \"</span></p><p><span style=\"font-size: 14.4px;\">Querido, {payslip_name}</span></p><p><span style=\"font-size: 14.4px; font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp; &nbsp; &nbsp; &nbsp; Espero que este e-mail encontre você bem! Por favor, consulte o payslip anexo para {payslip_salary_month}. Basta clicar no botão abaixo: {payslip_url}</span></p><p><span style=\"font-size: 14.4px;\">Sinta-se à vontade para alcançar fora se você tiver alguma dúvida.</span></p><p><span style=\"font-size: 14.4px;\">Considera,</span></p><p><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p><p><span style=\"font-size: 14.4px;\">{app_name}</span></p><p><span style=\"font-size: 14.4px;\">{app_url}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(237,15,'tr','Payslip Sent','<p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">Subject :  \" İK  Gönderilecek Departman / Şirket \"</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line- yükseklik: 28px;\">﻿Sevgili ,{payslip_name}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line -height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">    </span>    Umarım bu e-posta sizi bulur! Lütfen {payslip_salary_month} için ekteki maaş bordrosuna bakın. Aşağıdaki düğmeyi tıklamanız yeterlidir: <br>                                                            {payslip_url}</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\" line-height: 28px;\">Herhangi bir sorunuz varsa  bize ulaşmaktan çekinmeyin.</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\" =\"\" style=\"line-height: 28px;\">Saygılarımızla,</p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">İK Departmanı ,</span></p><p segoe=\"\" ui\",=\"\" arial;=\"\" font-size :=\"\" 14px;\"=\"\" style=\"line-height: 28px;\"><span style=\"font-family: var(--bs-body-font-family); font-weight: var(- -bs-body-font-weight); text-align: var(--bs-body-text-align);\">{app_name}</span><br></p><p segoe=\"\" ui \",=\"\" arial;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"line-height: 28px;\">{app_url}</p><p></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(238,16,'ar','Promotion Sent','<p>Subject : -HR القسم / الشركة لارسال رسالة تهنئة الى العمل للتهنئة بالعمل.</p>\n                    <p>عزيزي { employee_name },</p>\n                    <p>تهاني على ترقيتك الى { promotion_designation } { promotion_title } الفعال { promotion_date }.</p>\n                    <p>وسنواصل توقع تحقيق الاتساق وتحقيق نتائج عظيمة منكم في دوركم الجديد. ونأمل أن تكون قدوة للموظفين الآخرين في المنظمة.</p>\n                    <p>ونتمنى لكم التوفيق في أداءكم في المستقبل ، وتهانينا !</p>\n                    <p>ومرة أخرى ، تهانئي على الموقف الجديد.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(239,16,'zh','Promotion Sent','<p> </p>\n                    <p><strong>主题：-人力资源部门/公司发送职位晋升祝贺信。</strong></p>\n                    <p><strong>亲爱的{employee_name}，</strong></p>\n                    <p>恭喜您晋升为 {promotion_designation} {promotion_title}，生效日期：{promotion_date}。</p>\n                    <p>我们将继续期待您在新职位上保持稳定并取得出色的成果。我们希望您能为组织的其他员工树立榜样。</p>\n                    <p>祝您未来表现顺利，并表示祝贺！</p>\n                    <p>再次祝贺您就任新职位。</p>\n                    <p> </p>\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p>谢谢</p>\n                    <p><strong>问候，</strong></p>\n                    <p><strong>人力资源部</strong></p>\n                    <p><strong>{app_name}</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(240,16,'da','Promotion Sent','<p>Om: HR-afdelingen / Virksomheden om at sende en lyk&oslash;nskning til jobfremst&oslash;d.</p>\n                    <p>K&aelig;re { employee_name },</p>\n                    <p>Tillykke med din forfremmelse til { promotion_designation } { promotion_title } effektiv { promotion_date }.</p>\n                    <p>Vi vil fortsat forvente konsekvens og store resultater fra Dem i Deres nye rolle. Vi h&aring;ber, at De vil foreg&aring; med et godt eksempel for de &oslash;vrige ansatte i organisationen.</p>\n                    <p>Vi &oslash;nsker Dem held og lykke med Deres fremtidige optr&aelig;den, og tillykke!</p>\n                    <p>Endnu en gang tillykke med den nye holdning.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(241,16,'de','Promotion Sent','<p>Betrifft: -Personalabteilung/Unternehmen, um einen Gl&uuml;ckwunschschreiben zu senden.</p>\n                    <p>Sehr geehrter {employee_name},</p>\n                    <p>Herzlichen Gl&uuml;ckwunsch zu Ihrer Werbeaktion an {promotion_designation} {promotion_title} wirksam {promotion_date}.</p>\n                    <p>Wir werden von Ihnen in Ihrer neuen Rolle weiterhin Konsistenz und gro&szlig;e Ergebnisse erwarten. Wir hoffen, dass Sie ein Beispiel f&uuml;r die anderen Mitarbeiter der Organisation setzen werden.</p>\n                    <p>Wir w&uuml;nschen Ihnen viel Gl&uuml;ck f&uuml;r Ihre zuk&uuml;nftige Leistung, und gratulieren!</p>\n                    <p>Nochmals herzlichen Gl&uuml;ckwunsch zu der neuen Position.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(242,16,'en','Promotion Sent','<p>&nbsp;</p>\n                    <p><strong>Subject:-HR department/Company to send job promotion congratulation letter.</strong></p>\n                    <p><strong>Dear {employee_name},</strong></p>\n                    <p>Congratulations on your promotion to {promotion_designation} {promotion_title} effective {promotion_date}.</p>\n                    <p>We shall continue to expect consistency and great results from you in your new role. We hope that you will set an example for the other employees of the organization.</p>\n                    <p>We wish you luck for your future performance, and congratulations!.</p>\n                    <p>Again, congratulations on the new position.</p>\n                    <p>&nbsp;</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(243,16,'es','Promotion Sent','<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de felicitaci&oacute;n de promoci&oacute;n de empleo.</p>\n                    <p>Estimado {employee_name},</p>\n                    <p>Felicidades por su promoci&oacute;n a {promotion_designation} {promotion_title} efectiva {promotion_date}.</p>\n                    <p>Seguiremos esperando la coherencia y los grandes resultados de ustedes en su nuevo papel. Esperamos que usted ponga un ejemplo para los otros empleados de la organizaci&oacute;n.</p>\n                    <p>Le deseamos suerte para su futuro rendimiento, y felicitaciones!.</p>\n                    <p>Una vez m&aacute;s, felicidades por la nueva posici&oacute;n.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(244,16,'fr','Promotion Sent','<p>Objet: -D&eacute;partement RH / Soci&eacute;t&eacute; denvoi dune lettre de f&eacute;licitations pour la promotion de lemploi.</p>\n                    <p>Cher { employee_name },</p>\n                    <p>F&eacute;licitations pour votre promotion &agrave; { promotion_d&eacute;signation } { promotion_title } effective { promotion_date }.</p>\n                    <p>Nous continuerons &agrave; vous attendre &agrave; une coh&eacute;rence et &agrave; de grands r&eacute;sultats de votre part dans votre nouveau r&ocirc;le. Nous esp&eacute;rons que vous trouverez un exemple pour les autres employ&eacute;s de lorganisation.</p>\n                    <p>Nous vous souhaitons bonne chance pour vos performances futures et f&eacute;licitations !</p>\n                    <p>Encore une fois, f&eacute;licitations pour le nouveau poste.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(245,16,'he','Promotion Sent','<p> </p>\n                    <p><strong>נושא:-מחלקת משאבי אנוש/חברה לשלוח מכתב ברכה לקידום בעבודה.</strong></p>\n                    <p><strong>{employee_name} היקר,</strong></p>\n                    <p>ברכות על הקידום שלך ל-{promotion_designation} {promotion_title} החל מ-{promotion_date}.</p>\n                    <p>נמשיך לצפות לעקביות ולתוצאות נהדרות ממך בתפקידך החדש. אנו מקווים שתהווה דוגמה לעובדי הארגון האחרים.</p>\n                    <p>אנו מאחלים לך בהצלחה עבור הביצועים העתידיים שלך, ומזל טוב!.</p>\n                    <p>שוב, ברכות על התפקיד החדש.</p>\n                    <p> </p>\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p>תודה</p>\n                    <p><strong>בברכה,</strong></p>\n                    <p><strong>מחלקת משאבי אנוש,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(246,16,'it','Promotion Sent','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare la lettera di congratulazioni alla promozione del lavoro.</p>\n                    <p>Caro {employee_name},</p>\n                    <p>Complimenti per la tua promozione a {promotion_designation} {promotion_title} efficace {promotion_date}.</p>\n                    <p>Continueremo ad aspettarci coerenza e grandi risultati da te nel tuo nuovo ruolo. Ci auguriamo di impostare un esempio per gli altri dipendenti dellorganizzazione.</p>\n                    <p>Ti auguriamo fortuna per le tue prestazioni future, e complimenti!.</p>\n                    <p>Ancora, complimenti per la nuova posizione.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(247,16,'ja','Promotion Sent','<p>件名:-HR 部門/企業は、求人広告の祝賀状を送信します。</p>\n                    <p>{ employee_name} に出庫します。</p>\n                    <p>{promotion_designation } { promotion_title} {promotion_date} 販促に対するお祝いのお祝いがあります。</p>\n                    <p>今後とも、お客様の新しい役割において一貫性と大きな成果を期待します。 組織の他の従業員の例を設定したいと考えています。</p>\n                    <p>あなたの未来のパフォーマンスをお祈りします。おめでとうございます。</p>\n                    <p>また、新しい地位について祝意を表する。</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(248,16,'nl','Promotion Sent','<p>Betreft: -HR-afdeling/Bedrijf voor het versturen van de aanbevelingsbrief voor taakpromotie.</p>\n                    <p>Geachte { employee_name },</p>\n                    <p>Gefeliciteerd met uw promotie voor { promotion_designation } { promotion_title } effective { promotion_date }.</p>\n                    <p>Wij zullen de consistentie en de grote resultaten van u in uw nieuwe rol blijven verwachten. Wij hopen dat u een voorbeeld zult stellen voor de andere medewerkers van de organisatie.</p>\n                    <p>Wij wensen u geluk voor uw toekomstige prestaties, en gefeliciteerd!.</p>\n                    <p>Nogmaals, gefeliciteerd met de nieuwe positie.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(249,16,'pl','Promotion Sent','<p>Temat: -Dział kadr/Firma w celu wysłania listu gratulacyjnego dla promocji zatrudnienia.</p>\n                    <p>Szanowny {employee_name },</p>\n                    <p>Gratulacje dla awansowania do {promotion_designation } {promotion_title } efektywnej {promotion_date }.</p>\n                    <p>W dalszym ciągu oczekujemy konsekwencji i wspaniałych wynik&oacute;w w Twojej nowej roli. Mamy nadzieję, że postawicie na przykład dla pozostałych pracownik&oacute;w organizacji.</p>\n                    <p>Życzymy powodzenia dla przyszłych wynik&oacute;w, gratulujemy!.</p>\n                    <p>Jeszcze raz gratulacje na nowej pozycji.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(250,16,'ru','Promotion Sent','<p>Тема: -HR отдел/Компания для отправки письма с поздравлением.</p>\n                    <p>Уважаемый { employee_name },</p>\n                    <p>Поздравляем вас с продвижением в { promotion_designation } { promotion_title } эффективная { promotion_date }.</p>\n                    <p>Мы будем и впредь ожидать от вас соответствия и больших результатов в вашей новой роли. Мы надеемся, что вы станете примером для других сотрудников организации.</p>\n                    <p>Желаем вам удачи и поздравлений!</p>\n                    <p>Еще раз поздравляю с новой позицией.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(251,16,'pt','Promotion Sent','<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de felicita&ccedil;&atilde;o de promo&ccedil;&atilde;o de emprego.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {employee_name},</p>\n                    <p style=\"font-size: 14.4px;\">Parab&eacute;ns pela sua promo&ccedil;&atilde;o para {promotion_designation} {promotion_title} efetivo {promotion_date}.</p>\n                    <p style=\"font-size: 14.4px;\">Continuaremos a esperar consist&ecirc;ncia e grandes resultados a partir de voc&ecirc; em seu novo papel. Esperamos que voc&ecirc; defina um exemplo para os demais funcion&aacute;rios da organiza&ccedil;&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Desejamos sorte para o seu desempenho futuro, e parab&eacute;ns!.</p>\n                    <p style=\"font-size: 14.4px;\">Novamente, parab&eacute;ns pela nova posi&ccedil;&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(252,16,'tr','Promotion Sent','<p> </p>\n                    <p><strong>Konu:-İş promosyonu tebrik mektubu gönderilecek İK departmanı/Şirket.</strong></p>\n                    <p><strong>Sayın {employee_name},</strong></p>\n                    <p>Geçerli {promotion_date} olan {promotion_designation} {promotion_title} promosyonunuz için tebrikler.</p>\n                    <p>Yeni görevinizde sizden tutarlılık ve harika sonuçlar beklemeye devam edeceğiz. Kurumun diğer çalışanlarına da örnek olacağını umuyoruz.</p>\n                    <p>Gelecekteki performansınız için size bol şans diliyor, tebrikler!.</p>\n                    <p>Yeni pozisyon için tekrar tebrikler.</p>\n                    <p> </p>\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p>Teşekkürler</p>\n                    <p><strong>Saygılarımızla,</strong></p>\n                    <p><strong>İK Departmanı</strong></p>\n                    <p><strong>{uygulama_adı</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(253,16,'pt-br','Promotion Sent','<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de felicita&ccedil;&atilde;o de promo&ccedil;&atilde;o de emprego.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {employee_name},</p>\n                    <p style=\"font-size: 14.4px;\">Parab&eacute;ns pela sua promo&ccedil;&atilde;o para {promotion_designation} {promotion_title} efetivo {promotion_date}.</p>\n                    <p style=\"font-size: 14.4px;\">Continuaremos a esperar consist&ecirc;ncia e grandes resultados a partir de voc&ecirc; em seu novo papel. Esperamos que voc&ecirc; defina um exemplo para os demais funcion&aacute;rios da organiza&ccedil;&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Desejamos sorte para o seu desempenho futuro, e parab&eacute;ns!.</p>\n                    <p style=\"font-size: 14.4px;\">Novamente, parab&eacute;ns pela nova posi&ccedil;&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(254,17,'ar','Resignation Sent','<p>Subject :-قسم الموارد البشرية / الشركة لإرسال خطاب استقالته.</p>\n                    <p>عزيزي { assign_user } ،</p>\n                    <p>إنه لمن دواعي الأسف الشديد أن أعترف رسميا باستلام إشعار استقالتك في { notice_date } الى { resignation_date } هو اليوم الأخير لعملك.</p>\n                    <p>لقد كان من دواعي سروري العمل معكم ، وبالنيابة عن الفريق ، أود أن أتمنى لكم أفضل جدا في جميع مساعيكم في المستقبل. ومن خلال هذه الرسالة ، يرجى العثور على حزمة معلومات تتضمن معلومات مفصلة عن عملية الاستقالة.</p>\n                    <p>شكرا لكم مرة أخرى على موقفكم الإيجابي والعمل الجاد كل هذه السنوات.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(255,17,'zh','Resignation Sent','<p ><b>主题：-人力资源部门/公司发送辞职信。</b></p>\n                    <p ><b>亲爱的{assign_user}，</b></p>\n                    <p>我非常遗憾地正式确认在 {notice_date} 收到您的辞职通知，至 {resignation_date} 是您工作的最后一天。 </p>\n                    <p>很高兴与您合作，我谨代表团队祝愿您在未来的工作中一切顺利。请在这封信中找到一个信息包，其中包含有关辞职流程的详细信息。 </p>\n                    <p>再次感谢您这些年来的积极态度和辛勤工作。</p>\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p>谢谢</p>\n                    <p><b>问候，</b></p>\n                    <p><b>人力资源部</b></p>\n                    <p><b>{app_name}</b></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(256,17,'da','Resignation Sent','<p>Om: HR-afdelingen / Kompagniet, for at sende en opsigelse.</p>\n                    <p>K&aelig;re { assign_user },</p>\n                    <p>Det er med stor beklagelse, at jeg formelt anerkender modtagelsen af din opsigelsesmeddelelse p&aring; { notice_date } til { resignation_date } er din sidste arbejdsdag</p>\n                    <p>Det har v&aelig;ret en forn&oslash;jelse at arbejde sammen med Dem, og p&aring; vegne af teamet vil jeg &oslash;nske Dem det bedste i alle Deres fremtidige bestr&aelig;belser. Med dette brev kan du finde en informationspakke med detaljerede oplysninger om tilbagetr&aelig;delsesprocessen.</p>\n                    <p>Endnu en gang tak for Deres positive holdning og h&aring;rde arbejde i alle disse &aring;r.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(257,17,'de','Resignation Sent','<p>Betreff: -Personalabteilung/Firma, um R&uuml;ckmeldungsschreiben zu senden.</p>\n                    <p>Sehr geehrter {assign_user},</p>\n                    <p>Es ist mit gro&szlig;em Bedauern, dass ich den Eingang Ihrer R&uuml;cktrittshinweis auf {notice_date} an {resignation_date} offiziell best&auml;tige, ist Ihr letzter Arbeitstag.</p>\n                    <p>Es war eine Freude, mit Ihnen zu arbeiten, und im Namen des Teams m&ouml;chte ich Ihnen w&uuml;nschen, dass Sie in allen Ihren zuk&uuml;nftigen Bem&uuml;hungen am besten sind. In diesem Brief finden Sie ein Informationspaket mit detaillierten Informationen zum R&uuml;cktrittsprozess.</p>\n                    <p>Vielen Dank noch einmal f&uuml;r Ihre positive Einstellung und harte Arbeit all die Jahre.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(258,17,'en','Resignation Sent','<p ><b>Subject:-HR department/Company to send resignation letter .</b></p>\n                    <p ><b>Dear {assign_user},</b></p>\n                    <p >It is with great regret that I formally acknowledge receipt of your resignation notice on {notice_date} to {resignation_date} is your final day of work. </p>\n                    <p >It has been a pleasure working with you, and on behalf of the team, I would like to wish you the very best in all your future endeavors. Included with this letter, please find an information packet with detailed information on the resignation process. </p>\n                    <p>Thank you again for your positive attitude and hard work all these years.</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><b>Regards,</b></p>EmailTemplate\n                    <p><b>HR Department,</b></p>\n                    <p><b>{app_name}</b></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(259,17,'es','Resignation Sent','<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de renuncia.</p>\n                    <p>Estimado {assign_user},</p>\n                    <p>Es con gran pesar que recibo formalmente la recepci&oacute;n de su aviso de renuncia en {notice_date} a {resignation_date} es su &uacute;ltimo d&iacute;a de trabajo.</p>\n                    <p>Ha sido un placer trabajar con usted, y en nombre del equipo, me gustar&iacute;a desearle lo mejor en todos sus esfuerzos futuros. Incluido con esta carta, por favor encuentre un paquete de informaci&oacute;n con informaci&oacute;n detallada sobre el proceso de renuncia.</p>\n                    <p>Gracias de nuevo por su actitud positiva y trabajo duro todos estos a&ntilde;os.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(260,17,'fr','Resignation Sent','<p>Objet: -D&eacute;partement RH / Soci&eacute;t&eacute; denvoi dune lettre de d&eacute;mission.</p>\n                    <p>Cher { assign_user },</p>\n                    <p>Cest avec grand regret que je reconnais officiellement la r&eacute;ception de votre avis de d&eacute;mission sur { notice_date } &agrave; { resignation_date } est votre dernier jour de travail.</p>\n                    <p>Cest un plaisir de travailler avec vous, et au nom de l&eacute;quipe, jaimerais vous souhaiter le meilleur dans toutes vos activit&eacute;s futures. Inclus avec cette lettre, veuillez trouver un paquet dinformation contenant des informations d&eacute;taill&eacute;es sur le processus de d&eacute;mission.</p>\n                    <p>Je vous remercie encore de votre attitude positive et de votre travail acharne durant toutes ces ann&eacute;es.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(261,17,'he','Resignation Sent','<p ><b>נושא:-מחלקת משאבי אנוש/חברה לשלוח מכתב התפטרות .</b></p>\n                    <p ><b>{assign_user} היקר,</b></p>\n                    <p >בצער רב אני מאשר רשמית את קבלת הודעת ההתפטרות שלך בתאריך {notice_date} עד {resignation_date} הוא היום האחרון לעבודתך. </p>\n                    <p > היה לי תענוג לעבוד איתך, ובשם הצוות, אני רוצה לאחל לך את הטוב ביותר בכל העשייה העתידית שלך. מצורף למכתב זה, נא למצוא חבילת מידע עם מידע מפורט על תהליך ההתפטרות. </p>\n                    <p>שוב תודה לך על הגישה החיובית והעבודה הקשה שלך כל השנים הללו.</p>\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p>תודה</p>\n                    <p><b>בברכה,</b></p>\n                    <p><b>מחלקת משאבי אנוש,</b></p>\n                    <p><b>{app_name}</b></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(262,17,'it','Resignation Sent','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di dimissioni.</p>\n                    <p>Caro {assign_user},</p>\n                    <p>&Egrave; con grande dispiacere che riconosca formalmente la ricezione del tuo avviso di dimissioni su {notice_date} a {resignation_date} &egrave; la tua giornata di lavoro finale.</p>\n                    <p>&Egrave; stato un piacere lavorare con voi, e a nome della squadra, vorrei augurarvi il massimo in tutti i vostri futuri sforzi. Incluso con questa lettera, si prega di trovare un pacchetto informativo con informazioni dettagliate sul processo di dimissioni.</p>\n                    <p>Grazie ancora per il vostro atteggiamento positivo e duro lavoro in tutti questi anni.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(263,17,'ja','Resignation Sent','<p>件名:-HR 部門/企業は辞表を送信します。</p>\n                    <p>{assign_user} の認証を解除します。</p>\n                    <p>{ notice_date} に対するあなたの辞任通知を { resignation_date} に正式に受理することを正式に確認することは、非常に残念です。</p>\n                    <p>あなたと一緒に仕事をしていて、チームのために、あなたの将来の努力において、あなたのことを最高のものにしたいと思っています。 このレターには、辞任プロセスに関する詳細な情報が記載されている情報パケットをご覧ください。</p>\n                    <p>これらの長年の前向きな姿勢と努力を重ねて感謝します。</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(264,17,'nl','Resignation Sent','<p>Betreft: -HR-afdeling/Bedrijf om ontslagbrief te sturen.</p>\n                    <p>Geachte { assign_user },</p>\n                    <p>Het is met grote spijt dat ik de ontvangst van uw ontslagbrief op { notice_date } tot { resignation_date } formeel de ontvangst van uw laatste dag van het werk bevestigt.</p>\n                    <p>Het was een genoegen om met u samen te werken, en namens het team zou ik u het allerbeste willen wensen in al uw toekomstige inspanningen. Vermeld bij deze brief een informatiepakket met gedetailleerde informatie over het ontslagproces.</p>\n                    <p>Nogmaals bedankt voor uw positieve houding en hard werken al die jaren.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(265,17,'pl','Resignation Sent','<p>Temat: -Dział HR/Firma do wysyłania listu rezygnacyjnego.</p>\n                    <p>Drogi użytkownika {assign_user },</p>\n                    <p>Z wielkim żalem, że oficjalnie potwierdzam otrzymanie powiadomienia o rezygnacji w dniu {notice_date } to {resignation_date } to tw&oacute;j ostatni dzień pracy.</p>\n                    <p>Z przyjemnością wsp&oacute;łpracujemy z Tobą, a w imieniu zespołu chciałbym życzyć Wam wszystkiego najlepszego we wszystkich swoich przyszłych przedsięwzięciu. Dołączone do tego listu prosimy o znalezienie pakietu informacyjnego ze szczeg&oacute;łowymi informacjami na temat procesu dymisji.</p>\n                    <p>Jeszcze raz dziękuję za pozytywne nastawienie i ciężką pracę przez te wszystkie lata.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(266,17,'ru','Resignation Sent','<p>Тема: -HR отдел/Компания отправить письмо об отставке.</p>\n                    <p>Уважаемый пользователь { assign_user },</p>\n                    <p>С большим сожалением я официально подтверждаю получение вашего уведомления об отставке { notice_date } в { resignation_date }-это ваш последний день работы.</p>\n                    <p>С Вами было приятно работать, и от имени команды я хотел бы по# желать вам самого лучшего во всех ваших будущих начинаниях. В этом письме Вы можете найти информационный пакет с подробной информацией об отставке.</p>\n                    <p>Еще раз спасибо за ваше позитивное отношение и трудолюбие все эти годы.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(267,17,'pt','Resignation Sent','<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de demiss&atilde;o.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {assign_user},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">&Eacute; com grande pesar que reconhe&ccedil;o formalmente o recebimento do seu aviso de demiss&atilde;o em {notice_date} a {resignation_date} &eacute; o seu dia final de trabalho.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Foi um prazer trabalhar com voc&ecirc;, e em nome da equipe, gostaria de desej&aacute;-lo o melhor em todos os seus futuros empreendimentos. Inclu&iacute;dos com esta carta, por favor, encontre um pacote de informa&ccedil;&otilde;es com informa&ccedil;&otilde;es detalhadas sobre o processo de demiss&atilde;o.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado novamente por sua atitude positiva e trabalho duro todos esses anos.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(268,17,'tr','Resignation Sent','<p ><b>Konu:-İstifa mektubu gönderilecek İK departmanı/Şirket .</b></p>\n                    <p ><b>Sayın {assign_user},</b></p>\n                    <p >İstifa bildiriminizi {notice_date} ile {resignation_date} arasında aldığımı, işinizin son günü olduğunu büyük bir üzüntüyle kabul ediyorum. </p>\n                    <p >Sizinle çalışmak bir zevkti ve ekip adına, gelecekteki tüm çabalarınızda size en iyisini diliyorum. Bu mektuba ek olarak, lütfen istifa süreci hakkında ayrıntılı bilgi içeren bir bilgi paketi bulun. </p>\n                    <p>Bunca yıl boyunca gösterdiğiniz olumlu tutum ve sıkı çalışmanız için tekrar teşekkür ederiz.</p>\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p>Teşekkürler</p>\n                    <p><b>Saygılarımızla,</b></p>\n                    <p><b>İK Departmanı,</b></p>\n                    <p><b>{uygulama_adı</b></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(269,18,'ar','Termination Sent','<p style=\"text-align: left;\"><span style=\"font-size: 12pt;\"><span style=\"color: #222222;\"><span style=\"white-space: pre-wrap;\"><span style=\"font-size: 12pt; white-space: pre-wrap;\">Subject :-ادارة / شركة HR لارسال رسالة انهاء. عزيزي { </span><span style=\"white-space: pre-wrap;\">employee_termination_name</span><span style=\"font-size: 12pt; white-space: pre-wrap;\"> } ، هذه الرسالة مكتوبة لإعلامك بأن عملك مع شركتنا قد تم إنهاؤه مزيد من التفاصيل عن الانهاء : تاريخ الاشعار : { </span><span style=\"white-space: pre-wrap;\">notice_date</span><span style=\"font-size: 12pt; white-space: pre-wrap;\"> } تاريخ الانهاء : { </span><span style=\"white-space: pre-wrap;\">termination_date</span><span style=\"font-size: 12pt; white-space: pre-wrap;\"> } نوع الانهاء : { termination_type } إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة. شكرا لك Regards, إدارة الموارد البشرية ، { app_name }</span></span></span></span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(270,18,'zh','Termination Sent','<p><strong>主题：-人力资源部门/公司发送终止信。</strong></p>\n                    <p><strong>亲爱的{employee_termination_name}，</strong></p>\n                    <p>这封信旨在通知您，您与我们公司的雇佣关系已终止。</p>\n                    <p>有关终止的更多详细信息：</p>\n                    <p>通知日期：{notice_date}</p>\n                    <p>终止日期：{termination_date}</p>\n                    <p>终止类型：{termination_type}</p>\n                    <p> </p>\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p>谢谢</p>\n                    <p><strong>问候，</strong></p>\n                    <p><strong>人力资源部</strong></p>\n                    <p><strong>{app_name}</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(271,18,'da','Termination Sent','<p>Emne:-HR-afdelingen / Virksomheden om at sende afslutningstskrivelse.</p>\n                    <p>K&aelig;re { employee_termination_name },</p>\n                    <p>Dette brev er skrevet for at meddele dig, at dit arbejde med vores virksomhed er afsluttet.</p>\n                    <p>Flere oplysninger om oph&aelig;velse:</p>\n                    <p>Adviseringsdato: { notifice_date }</p>\n                    <p>Opsigelsesdato: { termination_date }</p>\n                    <p>Opsigelsestype: { termination_type }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(272,18,'de','Termination Sent','<p>Betreff: -Personalabteilung/Firma zum Versenden von K&uuml;ndigungsschreiben.</p>\n                    <p>Sehr geehrter {employee_termination_name},</p>\n                    <p>Dieser Brief wird Ihnen schriftlich mitgeteilt, dass Ihre Besch&auml;ftigung mit unserem Unternehmen beendet ist.</p>\n                    <p>Weitere Details zur K&uuml;ndigung:</p>\n                    <p>K&uuml;ndigungsdatum: {notice_date}</p>\n                    <p>Beendigungsdatum: {termination_date}</p>\n                    <p>Abbruchstyp: {termination_type}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(273,18,'en','Termination Sent','<p><strong>Subject:-HR department/Company to send termination letter.</strong></p>\n                    <p><strong>Dear {employee_termination_name},</strong></p>\n                    <p>This letter is written to notify you that your employment with our company is terminated.</p>\n                    <p>More detail about termination:</p>\n                    <p>Notice Date :{notice_date}</p>\n                    <p>Termination Date:{termination_date}</p>\n                    <p>Termination Type:{termination_type}</p>\n                    <p>&nbsp;</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(274,18,'es','Termination Sent','<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de rescisi&oacute;n.</p>\n                    <p>Estimado {employee_termination_name},</p>\n                    <p>Esta carta est&aacute; escrita para notificarle que su empleo con nuestra empresa ha terminado.</p>\n                    <p>M&aacute;s detalles sobre la terminaci&oacute;n:</p>\n                    <p>Fecha de aviso: {notice_date}</p>\n                    <p>Fecha de terminaci&oacute;n: {termination_date}</p>\n                    <p>Tipo de terminaci&oacute;n: {termination_type}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(275,18,'fr','Termination Sent','<p>Objet: -HR department / Company to send termination letter.</p>\n                    <p>Cher { employee_termination_name },</p>\n                    <p>Cette lettre est r&eacute;dig&eacute;e pour vous aviser que votre emploi aupr&egrave;s de notre entreprise prend fin.</p>\n                    <p>Plus de d&eacute;tails sur larr&ecirc;t:</p>\n                    <p>Date de lavis: { notice_date }</p>\n                    <p>Date de fin: { termination_date}</p>\n                    <p>Type de terminaison: { termination_type }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(276,18,'he','Termination Sent','<p><strong>נושא:-מחלקת משאבי אנוש/חברה לשלוח מכתב סיום.</strong></p>\n                    <p><strong>{employee_termination_name} היקר,</strong></p>\n                    <p>מכתב זה נכתב כדי להודיע ​​לך שהעסקתך בחברה שלנו הופסקה.</p>\n                    <p>פרטים נוספים על סיום:</p>\n                    <p>תאריך הודעה :{notice_date}</p>\n                    <p>תאריך סיום:{termination_date}</p>\n                    <p>סוג סיום:{termination_type}</p>\n                    <p> </p>\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p>תודה</p>\n                    <p><strong>בברכה,</strong></p>\n                    <p><strong>מחלקת משאבי אנוש,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(277,18,'it','Termination Sent','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di terminazione.</p>\n                    <p>Caro {employee_termination_name},</p>\n                    <p>Questa lettera &egrave; scritta per comunicarti che la tua occupazione con la nostra azienda &egrave; terminata.</p>\n                    <p>Pi&ugrave; dettagli sulla cessazione:</p>\n                    <p>Data avviso: {notice_data}</p>\n                    <p>Data di chiusura: {termination_date}</p>\n                    <p>Tipo di terminazione: {termination_type}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(278,18,'ja','Termination Sent','<p>件名:-HR 部門/企業は終了文字を送信します。</p>\n                    <p>{ employee_termination_name} を終了します。</p>\n                    <p>この手紙は、当社の雇用が終了していることをあなたに通知するために書かれています。</p>\n                    <p>終了についての詳細 :</p>\n                    <p>通知日 :{notice_date}</p>\n                    <p>終了日:{termination_date}</p>\n                    <p>終了タイプ:{termination_type}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(279,18,'nl','Termination Sent','<p>Betreft: -HR-afdeling/Bedrijf voor verzending van afgiftebrief.</p>\n                    <p>Geachte { employee_termination_name },</p>\n                    <p>Deze brief is geschreven om u te melden dat uw werk met ons bedrijf wordt be&euml;indigd.</p>\n                    <p>Meer details over be&euml;indiging:</p>\n                    <p>Datum kennisgeving: { notice_date }</p>\n                    <p>Be&euml;indigingsdatum: { termination_date }</p>\n                    <p>Be&euml;indigingstype: { termination_type }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(280,18,'pl','Termination Sent','<p>Temat: -Dział kadr/Firma do wysyłania listu zakańczego.</p>\n                    <p>Droga {employee_termination_name },</p>\n                    <p>Ten list jest napisany, aby poinformować Cię, że Twoje zatrudnienie z naszą firmą zostaje zakończone.</p>\n                    <p>Więcej szczeg&oacute;ł&oacute;w na temat zakończenia pracy:</p>\n                    <p>Data ogłoszenia: {notice_date }</p>\n                    <p>Data zakończenia: {termination_date }</p>\n                    <p>Typ zakończenia: {termination_type }</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(281,18,'ru','Termination Sent','<p>Тема: -HR отдел/Компания отправить письмо о прекращении.</p>\n                    <p>Уважаемый { employee_termination_name },</p>\n                    <p>Это письмо написано, чтобы уведомить вас о том, что ваше трудоустройство с нашей компанией прекратилось.</p>\n                    <p>Более подробная информация о завершении:</p>\n                    <p>Дата уведомления: { notice_date }</p>\n                    <p>Дата завершения: { termination_date }</p>\n                    <p>Тип завершения: { termination_type }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(282,18,'pt','Termination Sent','<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de rescis&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {employee_termination_name},</p>\n                    <p style=\"font-size: 14.4px;\">Esta carta &eacute; escrita para notific&aacute;-lo de que seu emprego com a nossa empresa est&aacute; finalizado.</p>\n                    <p style=\"font-size: 14.4px;\">Mais detalhes sobre a finaliza&ccedil;&atilde;o:</p>\n                    <p style=\"font-size: 14.4px;\">Data de Aviso: {notice_date}</p>\n                    <p style=\"font-size: 14.4px;\">Data de Finaliza&ccedil;&atilde;o: {termination_date}</p>\n                    <p style=\"font-size: 14.4px;\">Tipo de Rescis&atilde;o: {termination_type}</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(283,18,'tr','Termination Sent','<p><strong>Konu:-İK departmanı/Şirket fesih mektubu gönderecek.</strong></p>\n                    <p><strong>Sayın {employee_termination_name},</strong></p>\n                    <p>Bu mektup, şirketimizle olan işinize son verildiğini size bildirmek için yazılmıştır.</p>\n                    <p>Sonlandırma hakkında daha fazla ayrıntı:</p>\n                    <p>Bildirim Tarihi :{notice_date}</p>\n                    <p>Sonlandırma Tarihi:{termination_date}</p>\n                    <p>Sonlandırma Türü:{termination_type}</p>\n                    <p> </p>\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p>Teşekkürler</p>\n                    <p><strong>Saygılarımızla,</strong></p>\n                    <p><strong>İK Departmanı</strong></p>\n                    <p><strong>{uygulama_adı</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(284,18,'pt-br','Termination Sent','<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de rescis&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {employee_termination_name},</p>\n                    <p style=\"font-size: 14.4px;\">Esta carta &eacute; escrita para notific&aacute;-lo de que seu emprego com a nossa empresa est&aacute; finalizado.</p>\n                    <p style=\"font-size: 14.4px;\">Mais detalhes sobre a finaliza&ccedil;&atilde;o:</p>\n                    <p style=\"font-size: 14.4px;\">Data de Aviso: {notice_date}</p>\n                    <p style=\"font-size: 14.4px;\">Data de Finaliza&ccedil;&atilde;o: {termination_date}</p>\n                    <p style=\"font-size: 14.4px;\">Tipo de Rescis&atilde;o: {termination_type}</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(285,19,'ar','Transfer Sent','<p>Subject : -HR ادارة / شركة لارسال خطاب نقل الى موظف من مكان الى آخر.</p>\n                    <p>عزيزي { transfer_name },</p>\n                    <p>وفقا لتوجيهات الادارة ، يتم نقل الخدمات الخاصة بك w.e.f. { transfer_date }.</p>\n                    <p>مكان الادخال الجديد الخاص بك هو { transfer_department } قسم من فرع { transfer_branch } وتاريخ التحويل { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(286,19,'zh','Transfer Sent','<p ><b>主题：-人力资源部门/公司将向员工从一个地点发送到另一个地点的调动信。</b></p>\n                    <p ><b>亲爱的{transfer_name}，</b></p>\n                    <p >根据管理层指令，您的服务将于 {transfer_date} 转移。 </p>\n                    <p >您的新邮寄地点是 {transfer_branch} 分行的 {transfer_department} 部门，转移日期为 {transfer_date}。 </p>\n                    {转让说明}。\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p><b>谢谢</b></p>\n                    <p><b>问候，</b></p>\n                    <p><b>人力资源部</b></p>\n                    <p><b>{app_name}</b></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(287,19,'da','Transfer Sent','<p>Emne:-HR-afdelingen / kompagniet om at sende overf&oslash;rsels brev til en medarbejder fra den ene lokalitet til den anden.</p>\n                    <p>K&aelig;re { transfer_name },</p>\n                    <p>Som Styring af direktiver overf&oslash;res dine serviceydelser w.e.f. { transfer_date }.</p>\n                    <p>Dit nye sted for postering er { transfer_departement } afdeling af { transfer_branch } gren og dato for overf&oslash;rsel { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(288,19,'de','Transfer Sent','<p>Betreff: -Personalabteilung/Unternehmen, um einen &Uuml;berweisungsschreiben an einen Mitarbeiter von einem Standort an einen anderen zu senden.</p>\n                    <p>Sehr geehrter {transfer_name},</p>\n                    <p>Wie pro Management-Direktiven werden Ihre Dienste &uuml;ber w.e.f. {transfer_date} &uuml;bertragen.</p>\n                    <p>Ihr neuer Ort der Entsendung ist {transfer_department} Abteilung von {transfer_branch} Niederlassung und Datum der &Uuml;bertragung {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(289,19,'en','Transfer Sent','<p ><b>Subject:-HR department/Company to send transfer letter to be issued to an employee from one location to another.</b></p>\n                    <p ><b>Dear {transfer_name},</b></p>\n                    <p >As per Management directives, your services are being transferred w.e.f.{transfer_date}. </p>\n                    <p >Your new place of posting is {transfer_department} department of {transfer_branch} branch and date of transfer {transfer_date}. </p>\n                    {transfer_description}.\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p><b>Thank you</b></p>\n                    <p><b>Regards,</b></p>\n                    <p><b>HR Department,</b></p>\n                    <p><b>{app_name}</b></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(290,19,'es','Transfer Sent','<p>Asunto: -Departamento de RR.HH./Empresa para enviar carta de transferencia a un empleado de un lugar a otro.</p>\n                    <p>Estimado {transfer_name},</p>\n                    <p>Seg&uacute;n las directivas de gesti&oacute;n, los servicios se transfieren w.e.f. {transfer_date}.</p>\n                    <p>El nuevo lugar de publicaci&oacute;n es el departamento {transfer_department} de la rama {transfer_branch} y la fecha de transferencia {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(291,19,'fr','Transfer Sent','<p>Objet: -Minist&egrave;re des RH / Soci&eacute;t&eacute; denvoi dune lettre de transfert &agrave; un employ&eacute; dun endroit &agrave; un autre.</p>\n                    <p>Cher { transfer_name },</p>\n                    <p>Selon les directives de gestion, vos services sont transf&eacute;r&eacute;s dans w.e.f. { transfer_date }.</p>\n                    <p>Votre nouveau lieu daffectation est le d&eacute;partement { transfer_department } de la branche { transfer_branch } et la date de transfert { transfer_date }.</p>\n                    <p>{ description_transfert }.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(292,19,'he','Transfer Sent','<p ><b>נושא:-מחלקת משאבי אנוש/חברה לשלוח מכתב העברה שיונפק לעובד ממקום אחד למשנהו.</b></p>\n                    <p ><b>{transfer_name} היקר,</b></p>\n                    <p >לפי הנחיות ההנהלה, השירותים שלך מועברים עם {transfer_date}. </p>\n                    <p >מקום הפרסום החדש שלך הוא מחלקת {transfer_department} של סניף {transfer_branch} ותאריך ההעברה {transfer_date}. </p>\n                    {transfer_description}.\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p><b>תודה</b></p>\n                    <p><b>בברכה,</b></p>\n                    <p><b>מחלקת משאבי אנוש,</b></p>\n                    <p><b>{app_name}</b></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(293,19,'it','Transfer Sent','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di trasferimento da rilasciare a un dipendente da una localit&agrave; allaltra.</p>\n                    <p>Caro {transfer_name},</p>\n                    <p>Come per le direttive di Management, i tuoi servizi vengono trasferiti w.e.f. {transfer_date}.</p>\n                    <p>Il tuo nuovo luogo di distacco &egrave; {transfer_department} dipartimento di {transfer_branch} ramo e data di trasferimento {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(294,19,'ja','Transfer Sent','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di trasferimento da rilasciare a un dipendente da una localit&agrave; allaltra.</p>\n                    <p>Caro {transfer_name},</p>\n                    <p>Come per le direttive di Management, i tuoi servizi vengono trasferiti w.e.f. {transfer_date}.</p>\n                    <p>Il tuo nuovo luogo di distacco &egrave; {transfer_department} dipartimento di {transfer_branch} ramo e data di trasferimento {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(295,19,'nl','Transfer Sent','<p>Betreft: -HR-afdeling/Bedrijf voor verzending van overdrachtsbrief aan een werknemer van de ene plaats naar de andere.</p>\n                    <p>Geachte { transfer_name },</p>\n                    <p>Als per beheerinstructie worden uw services overgebracht w.e.f. { transfer_date }.</p>\n                    <p>Uw nieuwe plaats van post is { transfer_department } van de afdeling { transfer_branch } en datum van overdracht { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(296,19,'pl','Transfer Sent','<p>Temat:-Dział HR/Firma do wysyłania listu przelewowego, kt&oacute;ry ma być wydany pracownikowi z jednego miejsca do drugiego.</p>\n                    <p>Droga {transfer_name },</p>\n                    <p>Zgodnie z dyrektywami zarządzania, Twoje usługi są przesyłane w.e.f. {transfer_date }.</p>\n                    <p>Twoje nowe miejsce delegowania to {transfer_department } dział {transfer_branch } gałąź i data transferu {transfer_date }.</p>\n                    <p>{transfer_description }.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(297,19,'ru','Transfer Sent','<p>Тема: -HR отдел/Компания для отправки трансферного письма сотруднику из одного места в другое.</p>\n                    <p>Уважаемый { transfer_name },</p>\n                    <p>В соответствии с директивами управления ваши службы передаются .ef. { transfer_date }.</p>\n                    <p>Новое место разноски: { transfer_department} подразделение { transfer_branch } и дата передачи { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(298,19,'pt','Transfer Sent','<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de transfer&ecirc;ncia para ser emitida para um funcion&aacute;rio de um local para outro.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {transfer_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Conforme diretivas de Gerenciamento, seus servi&ccedil;os est&atilde;o sendo transferidos w.e.f. {transfer_date}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">O seu novo local de postagem &eacute; {transfer_departamento} departamento de {transfer_branch} ramo e data de transfer&ecirc;ncia {transfer_date}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{transfer_description}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(299,19,'tr','Transfer Sent','<p ><b>Konu:-İK departmanının/Şirketin, bir çalışana bir yerden başka bir yere gönderilecek transfer mektubunu göndermesi.</b></p>\n                    <p ><b>Sevgili {transfer_name},</b></p>\n                    <p >Yönetim yönergeleri uyarınca, hizmetleriniz {transfer_date} tarihinde aktarılıyor. </p>\n                    <p >Yeni görev yeriniz {transfer_branch} şubesinin {transfer_department} departmanı ve transfer tarihi {transfer_date}. </p>\n                    {transfer açıklaması}.\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p><b>Teşekkürler</b></p>\n                    <p><b>Saygılarımızla,</b></p>\n                    <p><b>İK Departmanı,</b></p>\n                    <p><b>{uygulama_adı</b></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(300,19,'pt-br','Transfer Sent','<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de transfer&ecirc;ncia para ser emitida para um funcion&aacute;rio de um local para outro.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {transfer_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Conforme diretivas de Gerenciamento, seus servi&ccedil;os est&atilde;o sendo transferidos w.e.f. {transfer_date}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">O seu novo local de postagem &eacute; {transfer_departamento} departamento de {transfer_branch} ramo e data de transfer&ecirc;ncia {transfer_date}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{transfer_description}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(301,20,'ar','Trip Sent','<p>Subject : -HR ادارة / شركة لارسال رسالة رحلة.</p>\n                    <p>عزيزي { employee_name },</p>\n                    <p>قمة الصباح إليك ! أكتب إلى مكتب إدارتكم بطلب متواضع للسفر من أجل زيارة إلى الخارج عن قصد.</p>\n                    <p>وسيكون هذا المنتدى هو المنتدى الرئيسي لأعمال المناخ في العام ، وقد كان محظوظا بما فيه الكفاية لكي يرشح لتمثيل شركتنا والمنطقة خلال الحلقة الدراسية.</p>\n                    <p>إن عضويتي التي دامت ثلاث سنوات كجزء من المجموعة والمساهمات التي قدمتها إلى الشركة ، ونتيجة لذلك ، كانت مفيدة من الناحية التكافلية. وفي هذا الصدد ، فإنني أطلب منكم بصفتي الرئيس المباشر لي أن يسمح لي بالحضور.</p>\n                    <p>مزيد من التفاصيل عن الرحلة :&nbsp;</p>\n                    <p>مدة الرحلة : { start_date } الى { end_date }</p>\n                    <p>الغرض من الزيارة : { purpose_of_visit }</p>\n                    <p>مكان الزيارة : { place_of_visit }</p>\n                    <p>الوصف : { trip_description }</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(302,20,'zh','Trip Sent','<p><strong>主题：-人力资源部门/公司发送出差信。</strong></p>\n                    <p><strong>亲爱的{employee_name}，</strong></p>\n                    <p>祝你早上好！我写信给贵部门办公室，提出一个出国访问{ Purpose_of_visit} 的请求。</p>\n                    <p>这将是年度领先的气候商业论坛，我们很幸运能够被提名在研讨会上代表我们公司和该地区。</p>\n                    <p>我作为团队成员的三年会员身份以及我对公司所做的贡献是共生有益的。在这方面，我请求您作为我的直接上级允许我参加。</p>\n                    <p>有关行程的更多详细信息：{start_date} 至 {end_date}</p>\n                    <p>行程持续时间：{start_date} 至 {end_date}</p>\n                    <p>访问目的：{ Purpose_of_visit}</p>\n                    <p>访问地点：{place_of_visit}</p>\n                    <p>描述：{t​​rip_description}</p>\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p>谢谢</p>\n                    <p><strong>问候，</strong></p>\n                    <p><strong>人力资源部</strong></p>\n                    <p><strong>{app_name}</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(303,20,'da','Trip Sent','<p>Om: HR-afdelingen / Kompagniet, der skal sende udflugten.</p>\n                    <p>K&aelig;re { employee_name },</p>\n                    <p>Godmorgen til dig! Jeg skriver til dit kontor med en ydmyg anmodning om at rejse for en { purpose_of_visit } i udlandet.</p>\n                    <p>Det ville v&aelig;re &aring;rets f&oslash;rende klimaforum, og det ville v&aelig;re heldigt nok at blive nomineret til at repr&aelig;sentere vores virksomhed og regionen under seminaret.</p>\n                    <p>Mit tre&aring;rige medlemskab som en del af den gruppe og de bidrag, jeg har givet til virksomheden, har som f&oslash;lge heraf v&aelig;ret symbiotisk fordelagtigt. I den henseende anmoder jeg om, at De som min n&aelig;rmeste overordnede giver mig lov til at deltage.</p>\n                    <p>Flere oplysninger om turen:</p>\n                    <p>Trip Duration: { start_date } til { end_date }</p>\n                    <p>Form&aring;let med Bes&oslash;g: { purpose_of_visit }</p>\n                    <p>Plads af bes&oslash;g: { place_of_visit }</p>\n                    <p>Beskrivelse: { trip_description }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(304,20,'de','Trip Sent','<p>Betreff: -Personalabteilung/Firma, um Reisebrief zu schicken.</p>\n                    <p>Sehr geehrter {employee_name},</p>\n                    <p>Top of the morning to you! Ich schreibe an Ihre Dienststelle mit dem&uuml;tiger Bitte um eine Reise nach einem {purpose_of_visit} im Ausland.</p>\n                    <p>Es w&auml;re das f&uuml;hrende Klima-Business-Forum des Jahres und hatte das Gl&uuml;ck, nominiert zu werden, um unser Unternehmen und die Region w&auml;hrend des Seminars zu vertreten.</p>\n                    <p>Meine dreij&auml;hrige Mitgliedschaft als Teil der Gruppe und die Beitr&auml;ge, die ich an das Unternehmen gemacht habe, sind dadurch symbiotisch vorteilhaft gewesen. In diesem Zusammenhang ersuche ich Sie als meinen unmittelbaren Vorgesetzten, mir zu gestatten, zu besuchen.</p>\n                    <p>Mehr Details zu Reise:</p>\n                    <p>Dauer der Fahrt: {start_date} bis {end_date}</p>\n                    <p>Zweck des Besuchs: {purpose_of_visit}</p>\n                    <p>Ort des Besuchs: {place_of_visit}</p>\n                    <p>Beschreibung: {trip_description}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(305,20,'en','Trip Sent','<p><strong>Subject:-HR department/Company to send trip letter .</strong></p>\n                    <p><strong>Dear {employee_name},</strong></p>\n                    <p>Top of the morning to you! I am writing to your department office with a humble request to travel for a {purpose_of_visit} abroad.</p>\n                    <p>It would be the leading climate business forum of the year and have been lucky enough to be nominated to represent our company and the region during the seminar.</p>\n                    <p>My three-year membership as part of the group and contributions I have made to the company, as a result, have been symbiotically beneficial. In that regard, I am requesting you as my immediate superior to permit me to attend.</p>\n                    <p>More detail about trip:{start_date} to {end_date}</p>\n                    <p>Trip Duration:{start_date} to {end_date}</p>\n                    <p>Purpose of Visit:{purpose_of_visit}</p>\n                    <p>Place of Visit:{place_of_visit}</p>\n                    <p>Description:{trip_description}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(306,20,'es','Trip Sent','<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de viaje.</p>\n                    <p>Estimado {employee_name},</p>\n                    <p>&iexcl;Top de la ma&ntilde;ana para ti! Estoy escribiendo a su oficina del departamento con una humilde petici&oacute;n de viajar para un {purpose_of_visit} en el extranjero.</p>\n                    <p>Ser&iacute;a el principal foro de negocios clim&aacute;ticos del a&ntilde;o y han tenido la suerte de ser nominados para representar a nuestra compa&ntilde;&iacute;a y a la regi&oacute;n durante el seminario.</p>\n                    <p>Mi membres&iacute;a de tres a&ntilde;os como parte del grupo y las contribuciones que he hecho a la compa&ntilde;&iacute;a, como resultado, han sido simb&oacute;ticamente beneficiosos. En ese sentido, le estoy solicitando como mi superior inmediato que me permita asistir.</p>\n                    <p>M&aacute;s detalles sobre el viaje:&nbsp;</p>\n                    <p>Duraci&oacute;n del viaje: {start_date} a {end_date}</p>\n                    <p>Finalidad de la visita: {purpose_of_visit}</p>\n                    <p>Lugar de visita: {place_of_visit}</p>\n                    <p>Descripci&oacute;n: {trip_description}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(307,20,'fr','Trip Sent','<p>Objet: -Service des RH / Compagnie pour envoyer une lettre de voyage.</p>\n                    <p>Cher { employee_name },</p>\n                    <p>Top of the morning to you ! J&eacute;crai au bureau de votre minist&egrave;re avec une humble demande de voyage pour une {purpose_of_visit } &agrave; l&eacute;tranger.</p>\n                    <p>Il sagit du principal forum sur le climat de lann&eacute;e et a eu la chance d&ecirc;tre d&eacute;sign&eacute; pour repr&eacute;senter notre entreprise et la r&eacute;gion au cours du s&eacute;minaire.</p>\n                    <p>Mon adh&eacute;sion de trois ans au groupe et les contributions que jai faites &agrave; lentreprise, en cons&eacute;quence, ont &eacute;t&eacute; b&eacute;n&eacute;fiques sur le plan symbiotique. &Agrave; cet &eacute;gard, je vous demande d&ecirc;tre mon sup&eacute;rieur imm&eacute;diat pour me permettre dy assister.</p>\n                    <p>Plus de d&eacute;tails sur le voyage:</p>\n                    <p>Dur&eacute;e du voyage: { start_date } &agrave; { end_date }</p>\n                    <p>Objet de la visite: { purpose_of_visit}</p>\n                    <p>Lieu de visite: { place_of_visit }</p>\n                    <p>Description: { trip_description }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(308,20,'he','Trip Sent','<p><strong>נושא:-מחלקת משאבי אנוש/חברה לשלוח מכתב טיול .</strong></p>\n                    <p><strong>{employee_name} היקר,</strong></p>\n                    <p>ראש הבוקר לך! אני כותב למשרד המחלקה שלך עם בקשה צנועה לנסוע ל{purpose_of_visit} לחו\"ל.</p>\n                    <p>זה יהיה פורום עסקי האקלים המוביל של השנה והיה לנו המזל להיות מועמד לייצג את החברה שלנו ואת האזור במהלך הסמינר.</p>\n                    <p>החברות שלי בת שלוש שנים כחלק מהקבוצה והתרומות שתרמתי לחברה, כתוצאה מכך, היו מועילות באופן סימביוטי. בהקשר זה, אני מבקש ממך כמפקד הישיר שלי להתיר לי להשתתף.</p>\n                    <p>פרטים נוספים על נסיעה:{start_date} עד {end_date}</p>\n                    <p>משך הנסיעה:{start_date} עד {end_date}</p>\n                    <p>מטרת הביקור:{purpose_of_visit}</p>\n                    <p>מקום ביקור:{place_of_visit}</p>\n                    <p>תיאור:{trip_description}</p>\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p>תודה</p>\n                    <p><strong>בברכה,</strong></p>\n                    <p><strong>מחלקת משאבי אנוש,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(309,20,'it','Trip Sent','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di viaggio.</p>\n                    <p>Caro {employee_name},</p>\n                    <p>In cima al mattino a te! Scrivo al tuo ufficio dipartimento con umile richiesta di viaggio per un {purpose_of_visit} allestero.</p>\n                    <p>Sarebbe il forum aziendale sul clima leader dellanno e sono stati abbastanza fortunati da essere nominati per rappresentare la nostra azienda e la regione durante il seminario.</p>\n                    <p>La mia adesione triennale come parte del gruppo e i contributi che ho apportato allazienda, di conseguenza, sono stati simbioticamente vantaggiosi. A tal proposito, vi chiedo come mio immediato superiore per consentirmi di partecipare.</p>\n                    <p>Pi&ugrave; dettagli sul viaggio:</p>\n                    <p>Trip Duration: {start_date} a {end_date}</p>\n                    <p>Finalit&agrave; di Visita: {purpose_of_visit}</p>\n                    <p>Luogo di Visita: {place_of_visit}</p>\n                    <p>Descrizione: {trip_description}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(310,20,'ja','Trip Sent','<p>件名:-HR 部門/会社は出張レターを送信します。</p>\n                    <p>{ employee_name} に出庫します。</p>\n                    <p>朝のトップだ ! 海外で {purpose_of_visit} をお願いしたいという謙虚な要求をもって、私はあなたの部署に手紙を書いています。</p>\n                    <p>これは、今年の主要な気候ビジネス・フォーラムとなり、セミナーの開催中に当社と地域を代表する候補になるほど幸運にも恵まれています。</p>\n                    <p>私が会社に対して行った 3 年間のメンバーシップは、その結果として、共生的に有益なものでした。 その点では、私は、私が出席することを許可することを、私の即座の上司として</p>\n                    <p>トリップについての詳細 :</p>\n                    <p>トリップ期間:{start_date} を {end_date} に設定します</p>\n                    <p>アクセスの目的 :{purpose_of_visit}</p>\n                    <p>訪問の場所 :{place_of_visit}</p>\n                    <p>説明:{trip_description}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(311,20,'nl','Trip Sent','<p>Betreft: -HR-afdeling/Bedrijf om reisbrief te sturen.</p>\n                    <p>Geachte { employee_name },</p>\n                    <p>Top van de ochtend aan u! Ik schrijf uw afdelingsbureau met een bescheiden verzoek om een { purpose_of_visit } in het buitenland te bezoeken.</p>\n                    <p>Het zou het toonaangevende klimaatforum van het jaar zijn en hebben het geluk gehad om genomineerd te worden om ons bedrijf en de regio te vertegenwoordigen tijdens het seminar.</p>\n                    <p>Mijn driejarige lidmaatschap als onderdeel van de groep en bijdragen die ik heb geleverd aan het bedrijf, als gevolg daarvan, zijn symbiotisch gunstig geweest. Wat dat betreft, verzoek ik u als mijn directe chef mij in staat te stellen aanwezig te zijn.</p>\n                    <p>Meer details over reis:</p>\n                    <p>Duur van reis: { start_date } tot { end_date }</p>\n                    <p>Doel van bezoek: { purpose_of_visit }</p>\n                    <p>Plaats van bezoek: { place_of_visit }</p>\n                    <p>Beschrijving: { trip_description }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u we</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(312,20,'pl','Trip Sent','<p>Temat:-Dział HR/Firma do wysyłania listu podr&oacute;ży.</p>\n                    <p>Szanowny {employee_name },</p>\n                    <p>Od samego rana do Ciebie! Piszę do twojego biura, z pokornym prośbą o wyjazd na {purpose_of_visit&nbsp;} za granicą.</p>\n                    <p>Byłoby to wiodącym forum biznesowym w tym roku i miało szczęście być nominowane do reprezentowania naszej firmy i regionu podczas seminarium.</p>\n                    <p>Moje trzyletnie członkostwo w grupie i składkach, kt&oacute;re uczyniłem w firmie, w rezultacie, były symbiotycznie korzystne. W tym względzie, zwracam się do pana o m&oacute;j bezpośredni przełożony, kt&oacute;ry pozwoli mi na udział w tej sprawie.</p>\n                    <p>Więcej szczeg&oacute;ł&oacute;w na temat wyjazdu:</p>\n                    <p>Czas trwania rejsu: {start_date } do {end_date }</p>\n                    <p>Cel wizyty: {purpose_of_visit }</p>\n                    <p>Miejsce wizyty: {place_of_visit }</p>\n                    <p>Opis: {trip_description }</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(313,20,'ru','Trip Sent','<p>Тема: -HR отдел/Компания для отправки письма на поездку.</p>\n                    <p>Уважаемый { employee_name },</p>\n                    <p>С утра до тебя! Я пишу в ваш отдел с смиренным запросом на поездку за границу.</p>\n                    <p>Это был бы ведущий климатический бизнес-форум года и по везло, что в ходе семинара он будет представлять нашу компанию и регион.</p>\n                    <p>Мое трехлетнее членство в составе группы и взносы, которые я внес в компанию, в результате, были симбиотически выгодны. В этой связи я прошу вас как моего непосредственного начальника разрешить мне присутствовать.</p>\n                    <p>Подробнее о поездке:</p>\n                    <p>Длительность поездки: { start_date } в { end_date }</p>\n                    <p>Цель посещения: { purpose_of_visit }</p>\n                    <p>Место посещения: { place_of_visit }</p>\n                    <p>Описание: { trip_description }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(314,20,'pt','Trip Sent','<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de viagem.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {employee_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Topo da manh&atilde; para voc&ecirc;! Estou escrevendo para o seu departamento de departamento com um humilde pedido para viajar por um {purpose_of_visit} no exterior.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Seria o principal f&oacute;rum de neg&oacute;cios clim&aacute;tico do ano e teve a sorte de ser indicado para representar nossa empresa e a regi&atilde;o durante o semin&aacute;rio.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">A minha filia&ccedil;&atilde;o de tr&ecirc;s anos como parte do grupo e contribui&ccedil;&otilde;es que fiz &agrave; empresa, como resultado, foram simbioticamente ben&eacute;fico. A esse respeito, solicito que voc&ecirc; seja meu superior imediato para me permitir comparecer.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Mais detalhes sobre viagem:</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Trip Dura&ccedil;&atilde;o: {start_date} a {end_date}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Objetivo da Visita: {purpose_of_visit}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Local de Visita: {place_of_visit}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Descri&ccedil;&atilde;o: {trip_description}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(315,20,'tr','Trip Sent','<p><strong>Konu:-İK departmanı/Şirket gezi mektubu gönderecek .</strong></p>\n                    <p><strong>Sayın {employee_name},</strong></p>\n                    <p>Günaydın! Yurtdışında bir ziyaret için mütevazı bir seyahat talebiyle departman ofisinize yazıyorum.</p>\n                    <p>Yılın önde gelen iklim iş forumu olacaktı ve seminer sırasında şirketimizi ve bölgeyi temsil etmek üzere aday gösterilecek kadar şanslıydık.</p>\n                    <p>Grubun bir parçası olarak üç yıllık üyeliğim ve bunun sonucunda şirkete yaptığım katkılar ortakyaşam açısından faydalı oldu. Bu bağlamda, acil amirim olarak katılmama izin vermenizi rica ediyorum.</p>\n                    <p>Seyahat hakkında daha fazla ayrıntı:{start_date} - {end_date}</p>\n                    <p>Seyahat Süresi:{start_date} - {end_date}</p>\n                    <p>Ziyaretin Amacı:{contact_of_visit}</p>\n                    <p>Ziyaret Yeri:{place_of_visit}</p>\n                    <p>Açıklama:{trip_description}</p>\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p>Teşekkürler</p>\n                    <p><strong>Saygılarımızla,</strong></p>\n                    <p><strong>İK Departmanı</strong></p>\n                    <p><strong>{uygulama_adı</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(316,21,'ar','Vendor Bill Sent','<p>مرحبا ، { bill_name }</p>\n                    <p>مرحبا بك في { app_name }</p>\n                    <p>أتمنى أن يجدك هذا البريد الإلكتروني جيدا ! ! برجاء الرجوع الى رقم الفاتورة الملحقة { bill_number } للحصول على المنتج / الخدمة.</p>\n                    <p>ببساطة اضغط على الاختيار بأسفل.</p>\n                    <p>{ bill_url }</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(317,21,'zh','Vendor Bill Sent','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">嗨，{bill_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">欢迎使用 {app_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">希望这封电子邮件能让您满意！！请参阅随附的产品/服务帐单编号 {bill_number}。</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">只需点击下面的按钮即可。</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{bill_url}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">如果您有任何疑问，请随时与我们联系。</span> </p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">谢谢，</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">问候，</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{company_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{app_url}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(318,21,'da','Vendor Bill Sent','<p>Hej, { bill_name }</p>\n                    <p>Velkommen til { app_name }</p>\n                    <p>H&aring;ber denne e-mail finder dig godt! Se vedlagte fakturanummer } { bill_number } for product/service.</p>\n                    <p>Klik p&aring; knappen nedenfor.</p>\n                    <p>{ bill_url }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(319,21,'de','Vendor Bill Sent','<p>Hi, {bill_name}</p>\n                    <p>Willkommen bei {app_name}</p>\n                    <p>Hoffe, diese E-Mail findet dich gut!! Sehen Sie sich die beigef&uuml;gte Rechnungsnummer {bill_number} f&uuml;r Produkt/Service an.</p>\n                    <p>Klicken Sie einfach auf den Button unten.</p>\n                    <p>{bill_url}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Vielen Dank,</p>\n                    <p>&nbsp;</p>\n                    <p>Betrachtet,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(320,21,'en','Vendor Bill Sent','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Hi, {bill_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Welcome to {app_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Hope this email finds you well!! Please see attached bill number {bill_number} for product/service.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Simply click on the button below.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{bill_url}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Feel free to reach out if you have any questions.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Thank You,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Regards,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{company_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{app_url}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(321,21,'es','Vendor Bill Sent','<p>Hi, {bill_name}</p>\n                    <p>Bienvenido a {app_name}</p>\n                    <p>&iexcl;Espero que este correo te encuentre bien!! Consulte el n&uacute;mero de factura adjunto {bill_number} para el producto/servicio.</p>\n                    <p>Simplemente haga clic en el bot&oacute;n de abajo.</p>\n                    <p>{bill_url}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>Gracias,</p>\n                    <p>&nbsp;</p>\n                    <p>Considerando,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(322,21,'fr','Vendor Bill Sent','<p>Salut, { bill_name }</p>\n                    <p>Bienvenue dans { app_name }</p>\n                    <p>Jesp&egrave;re que ce courriel vous trouve bien ! ! Veuillez consulter le num&eacute;ro de facture { bill_number } associ&eacute; au produit / service.</p>\n                    <p>Cliquez simplement sur le bouton ci-dessous.</p>\n                    <p>{bill_url }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Merci,</p>\n                    <p>&nbsp;</p>\n                    <p>Regards,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(323,21,'he','Vendor Bill Sent','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">היי, {bill_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">ברוכים הבאים אל {app_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">מקווה שהמייל הזה ימצא אותך טוב!! ראה את מספר החשבון המצורף {bill_number} עבור מוצר/שירות.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">פשוט לחץ על הכפתור למטה.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{bill_url}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">אל תהסס לפנות אם יש לך שאלות כלשהן.</span> </p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">תודה,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">בברכה,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{company_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{app_url}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(324,21,'it','Vendor Bill Sent','<p>Ciao, {bill_name}</p>\n                    <p>Benvenuti in {app_name}</p>\n                    <p>Spero che questa email ti trovi bene!! Si prega di consultare il numero di fattura allegato {bill_number} per il prodotto/servizio.</p>\n                    <p>Semplicemente clicca sul pulsante sottostante.</p>\n                    <p>{bill_url}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie,</p>\n                    <p>&nbsp;</p>\n                    <p>Riguardo,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(325,21,'ja','Vendor Bill Sent','<p>こんにちは、 {bill_name}</p>\n                    <p>{app_name} へようこそ</p>\n                    <p>この E メールによりよく検出されます !! 製品 / サービスの添付された請求番号 {bill_number} を参照してください。</p>\n                    <p>以下のボタンをクリックしてください。</p>\n                    <p>{bill_url}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとうございます</p>\n                    <p>&nbsp;</p>\n                    <p>よろしく</p>\n                    <p>{ company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(326,21,'nl','Vendor Bill Sent','<p>Hallo, { bill_name }</p>\n                    <p>Welkom bij { app_name }</p>\n                    <p>Hoop dat deze e-mail je goed vindt!! Zie bijgevoegde factuurnummer { bill_number } voor product/service.</p>\n                    <p>Klik gewoon op de knop hieronder.</p>\n                    <p>{ bill_url }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank U,</p>\n                    <p>&nbsp;</p>\n                    <p>Betreft:</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(327,21,'pl','Vendor Bill Sent','<p>Witaj, {bill_name }</p>\n                    <p>Witamy w aplikacji {app_name }</p>\n                    <p>Mam nadzieję, że ta wiadomość e-mail znajduje Cię dobrze!! Zapoznaj się z załączonym numerem rachunku {bill_number } dla produktu/usługi.</p>\n                    <p>Wystarczy kliknąć na przycisk poniżej.</p>\n                    <p>{bill_url}</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękuję,</p>\n                    <p>&nbsp;</p>\n                    <p>W odniesieniu do</p>\n                    <p>{company_name }</p>\n                    <p>{app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(328,21,'ru','Vendor Bill Sent','<p>Привет, { bill_name }</p>\n                    <p>Вас приветствует { app_name }</p>\n                    <p>Надеюсь, это письмо найдет вас хорошо! См. прилагаемый номер счета { bill_number } для product/service.</p>\n                    <p>Просто нажмите на кнопку внизу.</p>\n                    <p>{ bill_url }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>&nbsp;</p>\n                    <p>С уважением,</p>\n                    <p>{ company_name }</p>\n                    <p>{ app_url }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(329,21,'pt','Vendor Bill Sent','<p>Oi, {bill_name}</p>\n                    <p>Bem-vindo a {app_name}</p>\n                    <p>Espero que este e-mail encontre voc&ecirc; bem!! Por favor, consulte o n&uacute;mero de faturamento conectado {bill_number} para produto/servi&ccedil;o.</p>\n                    <p>Basta clicar no bot&atilde;o abaixo.</p>\n                    <p>{bill_url}</p>\n                    <p>Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p>Obrigado,</p>\n                    <p>&nbsp;</p>\n                    <p>Considera,</p>\n                    <p>{company_name}</p>\n                    <p>{app_url}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(330,21,'tr','Vendor Bill Sent','<p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">Merhaba {bill_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">{app_name}</span></p> e hoş geldiniz>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">Umarım bu e-posta sizi iyi bulur!! Lütfen ürün/hizmet için ekteki {bill_number} numaralı faturaya bakın.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">Aşağıdaki düğmeyi tıklamanız yeterli.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">{bill_url}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">Sorularınız varsa bize ulaşmaktan çekinmeyin.</span> </p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">Teşekkürler,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">Saygılarımızla,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">{company_name}</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,\"><span style=\"font-family: sans-serif;\">{app_url}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(331,22,'ar','Warning Sent','<p style=\"text-align: left;\"><span style=\"font-size: 12pt;\"><span style=\"color: #222222;\"><span style=\"white-space: pre-wrap;\">Subject : -HR ادارة / شركة لارسال رسالة تحذير. عزيزي { employe_warning_name }, { warning_subject } { warning_description } إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة. شكرا لك Regards, إدارة الموارد البشرية ، { app_name }</span></span></span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(332,22,'zh','Warning Sent','<p><strong>主题：-人力资源部门/公司发送警告信。</strong></p>\n                    <p><strong>亲爱的{employee_warning_name}，</strong></p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>如果您有任何疑问，请随时与我们联系。</p>\n                    <p>谢谢</p>\n                    <p><strong>问候，</strong></p>\n                    <p><strong>人力资源部</strong></p>\n                    <p><strong>{app_name}</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(333,22,'da','Warning Sent','<p>Om: HR-afdelingen / kompagniet for at sende advarselsbrev.</p>\n                    <p>K&aelig;re { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(334,22,'de','Warning Sent','<p>Betreff: -Personalabteilung/Unternehmen zum Senden von Warnschreiben.</p>\n                    <p>Sehr geehrter {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(335,22,'en','Warning Sent','<p><strong>Subject:-HR department/Company to send warning letter.</strong></p>\n                    <p><strong>Dear {employee_warning_name},</strong></p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(336,22,'es','Warning Sent','<p>Asunto: -Departamento de RR.HH./Empresa para enviar carta de advertencia.</p>\n                    <p>Estimado {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(337,22,'fr','Warning Sent','<p>Objet: -HR department / Company to send warning letter.</p>\n                    <p>Cher { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(338,22,'he','Warning Sent','<p><strong>נושא:-מחלקת משאבי אנוש/חברה לשלוח מכתב אזהרה.</strong></p>\n                    <p><strong>{employee_warning_name} היקר,</strong></p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>אל תהסס לפנות אם יש לך שאלות.</p>\n                    <p>תודה</p>\n                    <p><strong>בברכה,</strong></p>\n                    <p><strong>מחלקת משאבי אנוש,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(339,22,'it','Warning Sent','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di avvertimento.</p>\n                    <p>Caro {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(340,22,'ja','Warning Sent','<p><span style=\"font-size: 12pt;\"><span style=\"color: #222222;\"><span style=\"white-space: pre-wrap;\">件名:-HR 部門/企業は警告レターを送信します。 { employee_warning_name} を出庫します。 {warning_subject} {warning_description} 質問がある場合は、自由に連絡してください。 ありがとう よろしく HR 部門 {app_name}</span></span></span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(341,22,'nl','Warning Sent','<p>Betreft: -HR-afdeling/bedrijf om een waarschuwingsbrief te sturen.</p>\n                    <p>Geachte { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(342,22,'pl','Warning Sent','<p>Temat: -Dział HR/Firma do wysyłania listu ostrzegawczego.</p>\n                    <p>Szanowny {employee_warning_name },</p>\n                    <p>{warning_subject }</p>\n                    <p>{warning_description }</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(343,22,'ru','Warning Sent','<p>Тема: -HR отдел/Компания для отправки предупреждающего письма.</p>\n                    <p>Уважаемый { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(344,22,'pt','Warning Sent','<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de advert&ecirc;ncia.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {employee_warning_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{warning_subject}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{warning_description}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(345,22,'tr','Warning Sent','<p><strong>Konu:-İK departmanı/Şirket uyarı mektubu gönderecek.</strong></p>\n                    <p><strong>Sayın {employee_warning_name},</strong></p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Sorularınız varsa bize ulaşmaktan çekinmeyin.</p>\n                    <p>Teşekkürler</p>\n                    <p><strong>Saygılarımızla,</strong></p>\n                    <p><strong>İK Departmanı</strong></p>\n                    <p><strong>{uygulama_adı</strong></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(346,22,'pt-br','Warning Sent','<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de advert&ecirc;ncia.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {employee_warning_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{warning_subject}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{warning_description}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(347,23,'ar','New Contract','<p>&nbsp;</p>\n                    <p><b>مرحبا</b> { contract_client }</p>\n                    <p><b>موضوع العقد</b> : { contract_subject }</p>\n                    <p><b>مشروع العقد </b>: { contract_project }</p>\n                    <p><b>تاريخ البدء</b> : { contract_start_date }</p>\n                    <p><b>تاريخ الانتهاء</b> : { contract_end_date }</p>\n                    <p>. أتطلع لسماع منك</p>\n                    <p><b>Regards نوع ،</b></p>\n                    <p>{ company_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(348,23,'zh','New Contract','<p> </p>\n                    <p><strong>嗨</strong> {contract_client}</p>\n                    <p><b>合同主题</b>：{contract_subject}</p>\n                    <p><b>合同项目</b>：{contract_project}</p>\n                    <p><b>开始日期</b>：{contract_start_date}</p>\n                    <p><b>结束日期</b>：{contract_end_date}</p>\n                    <p>期待您的来信。</p>\n                    <p><strong>亲切的问候，</strong></p>\n                    <p>{公司名称}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(349,23,'da','New Contract','<p>&nbsp;</p>\n                    <p><b>Hej </b>{ contract_client }</p>\n                    <p><b>Kontraktemne :&nbsp;</b>{ contract_subject }</p>\n                    <p><b>Kontrakt-projekt :&nbsp;</b>{ contract_project }</p>\n                    <p><b>Startdato&nbsp;</b>: { contract_start_date }</p>\n                    <p><b>Slutdato&nbsp;</b>: { contract_end_date }</p>\n                    <p>Jeg glæder mig til at høre fra dig.</p>\n                    <p><b>Kind Hilds,</b></p>\n                    <p>{ company_name }</p><p></p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(350,23,'de','New Contract','<p>&nbsp;</p>\n                    <p><b>Hi</b> {contract_client}</p>\n                    <p>&nbsp;<b style=\"font-family: var(--bs-body-font-family); text-align: var(--bs-body-text-align);\">Vertragsgegenstand :</b><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"> {contract_subject}</span></p>\n                    <p><b>Vertragsprojekt :&nbsp;</b>{contract_project}</p>\n                    <p><b>Startdatum&nbsp;</b>: {contract_start_date}</p>\n                    <p><b>Enddatum&nbsp;</b>: {contract_end_date}</p>\n                    <p>Freuen Sie sich auf das Hören von Ihnen.</p>\n                    <p><b>Gütige Grüße,</b></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(351,23,'en','New Contract','<p>&nbsp;</p>\n                    <p><strong>Hi</strong> {contract_client}</p>\n                    <p><b>Contract Subject</b>&nbsp;: {contract_subject}</p>\n                    <p><b>Contract Project</b>&nbsp;: {contract_project}</p>\n                    <p><b>Start Date&nbsp;</b>: {contract_start_date}</p>\n                    <p><b>End Date&nbsp;</b>: {contract_end_date}</p>\n                    <p>Looking forward to hear from you.</p>\n                    <p><strong>Kind Regards, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(352,23,'es','New Contract','<p><b>Hi </b>{contract_client} </p><p><span style=\"text-align: var(--bs-body-text-align);\"><b>asunto del contrato</b></span><b>&nbsp;:</b> {contract_subject}</p><p><b>contrato proyecto </b>: {<span style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">contract_project</span><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">}</span></p><p> </p><p><b>Start Date :</b> {contract_start_date} </p><p><b>Fecha de finalización :</b> {contract_end_date} </p><p>Con ganas de escuchar de usted. </p><p><b>Regards de tipo, </b></p><p>{contract_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(353,23,'fr','New Contract','<p><b>Bonjour</b> { contract_client }</p>\n                    <p><b>Objet du contrat :</b> { contract_subject } </p><p><span style=\"text-align: var(--bs-body-text-align);\"><b>contrat projet :</b></span>&nbsp;{ contract_project } </p><p><b>Date de début&nbsp;</b>: { contract_start_date } </p><p><b>Date de fin&nbsp;</b>: { contract_end_date } </p><p>Regard sur lavenir.</p>\n                    <p><b>Sincères amitiés,</b></p>\n                    <p>{ nom_entreprise }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(354,23,'he','New Contract','<p> </p>\n                    <p><strong>היי</strong> {contract_client}</p>\n                    <p><b>נושא החוזה</b> : {contract_subject}</p>\n                    <p><b>פרויקט חוזה</b> : {contract_project}</p>\n                    <p><b>תאריך התחלה </b>: {contract_start_date}</p>\n                    <p><b>תאריך סיום </b>: {contract_end_date}</p>\n                    <p>מצפה לשמוע ממך.</p>\n                    <p><strong>בברכה, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(355,23,'it','New Contract','<p>&nbsp;</p>\n                    <p>Ciao {contract_client}</p>\n                    <p><b>Oggetto contratto :&nbsp;</b>{contract_subject} </p><p><b>Contract Project :</b> {contract_project} </p><p><b>Data di inizio</b>: {contract_start_date} </p><p><b>Data di fine</b>: {contract_end_date} </p><p>Non vedo lora di sentirti<br></p>\n                    <p><b>Kind Regards,</b></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(356,23,'ja','New Contract','<p><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">こんにちは {contract_client}</span><br></p>\n                    <p><b>契約件名&nbsp;</b>: {contract subject}</p>\n                    <p><b>契約プロジェクト :</b> {contract_project}</p>\n                    <p><b>開始日</b>: {contract_start_date}</p>\n                    <p>&nbsp;<b style=\"font-family: var(--bs-body-font-family); text-align: var(--bs-body-text-align);\">終了日</b><span style=\"font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">: {contract_end_date}</span></p><p><span style=\"text-align: var(--bs-body-text-align);\">あなたから聞いて楽しみにして</span></p><p><span style=\"text-align: var(--bs-body-text-align);\"><b>敬具、</b><br></span></p>\n                    <p>{ company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(357,23,'nl','New Contract','<p>&nbsp;</p>\n                    <p><b>Hallo</b> { contract_client }</p>\n                    <p><b>Contractonderwerp</b> : { contract_subject } </p><p><b>Contractproject</b> : { contract_project } </p><p><b>Begindatum</b> : { contract_start_date } </p><p><b>Einddatum&nbsp;</b>: { contract_end_date } </p><p>Naar voren komen om van u te horen.</p><p><b>Met vriendelijke groeten</b>,<br></p>\n                    <p>{ bedrijfsnaam }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(358,23,'pl','New Contract','<p>&nbsp;</p>\n                    <p><b>Witaj</b> {contract_client }</p>\n                    <p><b>Temat umowy :&nbsp;</b>{contract_subject } </p><p><b>Projekt kontraktu</b>&nbsp;: {contract_project } </p><p><b>Data rozpoczęcia&nbsp;</b>: {contract_start_date } </p><p><b>Data zakończenia&nbsp;</b>: {contract_end_date } </p><p>Z niecierżną datą i z niecierżką na Ciebie.</p>\n                    <p><b>W Odniesieniu Do Rodzaju,</b></p>\n                    <p>{company_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(359,23,'ru','New Contract','<p></p>\n                    <p><b>Здравствуйте</b> { contract_client }</p>\n                    <p><b>Субъект договора :</b> { contract_subject } </p><p><b>Проект договора</b>: { contract_project } </p><p><b>Начальная дата </b>: { contract_start_date } </p><p><b>Конечная дата </b>: { contract_end_date } </p><p>нетерпением ожидаю услышать от вас.</p>\n                    <p><b>Привет.</b></p>\n                    <p>{ company_name }</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(360,23,'pt','New Contract','<p>&nbsp;</p>\n                    <p><span style=\"text-align: var(--bs-body-text-align);\"><b>Olá</b></span>&nbsp;{contract_client}</p>\n                    <p><span style=\"text-align: var(--bs-body-text-align);\"><b>Assunto do Contrato</b></span>&nbsp;: {contract_subject}</p>\n                    <p><span style=\"text-align: var(--bs-body-text-align);\"><b>Projeto de contrato&nbsp;</b></span>: {contract_project}</p>\n                    <p><span style=\"text-align: var(--bs-body-text-align);\"><b>Data de início</b></span><b>&nbsp;</b>: {contract_start_date}</p>\n                    <p><span style=\"text-align: var(--bs-body-text-align);\"><b>Data final</b></span><b>&nbsp;</b>: {contract_end_date}</p>\n                    <p>Ansioso para ouvir de você.</p>\n                    <p><b>Atenciosamente,</b><br></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(361,23,'tr','New Contract','<p> </p>\n                    <p><strong>Merhaba</strong> {contract_client}</p>\n                    <p><b>Sözleşme Konusu</b> : {contract_subject}</p>\n                    <p><b>Sözleşme Projesi</b> : {contract_project}</p>\n                    <p><b>Başlangıç ​​Tarihi </b>: {contract_start_date}</p>\n                    <p><b>Bitiş Tarihi </b>: {contract_end_date}</p>\n                    <p>Sizden haber bekliyorum.</p>\n                    <p><strong>Saygılarımızla, </strong></p>\n                    <p>{şirket_adı</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(362,24,'ar','New Project','<p><strong>مرحبا-مرحبا-</strong> {project_user}</p>\n                    <p><b>اسم المشروع</b>&nbsp;: {project_name}</p>\n                    <p><b>تاريخ البدء&nbsp;</b>: {project_start_date}</p>\n                    <p><b>تاريخ الانتهاء&nbsp;</b>: {project_end_date}</p>\n                    <p><b>الساعات المقدرة&nbsp;</b>: {hours}</p>\n                    <p>. أتطلع لسماع منك</p>\n                    <p><strong>نوع تحيات, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(363,24,'zh','New Project','<p><strong>你好我是</strong> {project_user}</p>\n                    <p><b>项目名称</b>&nbsp;: {project_name}</p>\n                    <p><b>开始日期&nbsp;</b>: {project_start_date}</p>\n                    <p><b>结束日期&nbsp;</b>: {project_end_date}</p>\n                    <p><b>估算小时数&nbsp;</b>: {hours}</p>\n                    <p>期待您的来信。</p>\n                    <p><strong>敬敬, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(364,24,'da','New Project','<p><strong>Hej</strong> {project_user}</p>\n                    <p><b>Projektnavn</b>&nbsp;: {project_name}</p>\n                    <p><b>Startdato&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Slutdato&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Estimerede timer&nbsp;</b>: {hours}</p>\n                    <p>Jeg glæder mig til at høre fra dig.</p>\n                    <p><strong>Kind Hilds, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(365,24,'de','New Project','<p><strong>Hi.</strong> {project_user}</p>\n                    <p><b>Projektname</b>&nbsp;: {project_name}</p>\n                    <p><b>Startdatum&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Enddatum&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Geschätzte Stunden&nbsp;</b>: {hours}</p>\n                    <p>Freuen Sie sich auf das Hören von Ihnen.</p>\n                    <p><strong>KGütige Grüße, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(366,24,'en','New Project','<p><strong>Hi</strong> {project_user}</p>\n                    <p><b>Project Name</b>&nbsp;: {project_name}</p>\n                    <p><b>Start Date&nbsp;</b>: {project_start_date}</p>\n                    <p><b>End Date&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Estimated Hours&nbsp;</b>: {hours}</p>\n                    <p>Looking forward to hear from you.</p>\n                    <p><strong>Kind Regards, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(367,24,'es','New Project','<p><strong>Hi.</strong> {project_user}</p>\n                    <p><b>Nombre del proyecto</b>&nbsp;: {project_name}</p>\n                    <p><b>Fecha de inicio&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Fecha final&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Horas estimadas&nbsp;</b>: {hours}</p>\n                    <p>Con ganas de escuchar de usted. </p>\n                    <p><strong>Bondadoso, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(368,24,'fr','New Project','<p><strong>Salut</strong> {project_user}</p>\n                    <p><b>Nom du projet</b>&nbsp;: {project_name}</p>\n                    <p><b>Date de début&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Date de fin&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Heures estimées&nbsp;</b>: {hours}</p>\n                    <p>Regard sur lavenir.</p>\n                    <p><strong>Cordialement, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(369,24,'he','New Project','<p><strong>היי</strong> {project_user}</p>\n                    <p><b>שם הפרויקט</b>&nbsp;: {project_name}</p>\n                    <p><b>תאריך התחלה&nbsp;</b>: {project_start_date}</p>\n                    <p><b>תאריך סיום&nbsp;</b>: {project_end_date}</p>\n                    <p><b>שעות משוערות&nbsp;</b>: {hours}</p>\n                    <p>מצפה לשמוע ממך.</p>\n                    <p><strong>די. די. די. </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(370,24,'it','New Project','<p><strong>Ciao</strong> {project_user}</p>\n                    <p><b>Nome del progetto</b>&nbsp;: {project_name}</p>\n                    <p><b>Data di inizio&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Data di fine&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Ore Stimate&nbsp;</b>: {hours}</p>\n                    <p>Non vedo lora di sentirti<br></p>\n                    <p><strong>Cordiali saluti, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(371,24,'ja','New Project','<p><strong>やあ</strong> {project_user}</p>\n                    <p><b>プロジェクト名</b>&nbsp;: {project_name}</p>\n                    <p><b>開始日&nbsp;</b>: {project_start_date}</p>\n                    <p><b>終了日&nbsp;</b>: {project_end_date}</p>\n                    <p><b>推定時間&nbsp;</b>: {hours}</p>\n                    <p>あなたから聞いて楽しみにして<.</p>\n                    <p><strong>カインド・レガード, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(372,24,'nl','New Project','<p><strong>Hallo</strong> {project_user}</p>\n                    <p><b>Projectnaam</b>&nbsp;: {project_name}</p>\n                    <p><b>Begindatum&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Einddatum&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Geschatte uren&nbsp;</b>: {hours}</p>\n                    <p>Naar voren komen om van u te horen.</p>\n                    <p><strong>Vriendelijke groeten, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(373,24,'pl','New Project','<p><strong>Witaj</strong> {project_user}</p>\n                    <p><b>Nazwa projektu</b>&nbsp;: {project_name}</p>\n                    <p><b>Data rozpoczęcia&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Data zakończenia&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Szacowane godziny&nbsp;</b>: {hours}</p>\n                    <p>Z niecierżną datą i z niecierżką na Ciebie.</p>\n                    <p><strong>Życzliwie, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(374,24,'ru','New Project','<p><strong>Привет</strong> {project_user}</p>\n                    <p><b>Имя проекта</b>&nbsp;: {project_name}</p>\n                    <p><b>Начальная дата&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Конечная дата&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Оценка часов&nbsp;</b>: {hours}</p>\n                    <p>нетерпением ожидаю услышать от вас.</p>\n                    <p><strong>Что касается, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(375,24,'pt','New Project','<p><strong>Oi</strong> {project_user}</p>\n                    <p><b>Nome do Projeto</b>&nbsp;: {project_name}</p>\n                    <p><b>Data de Início&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Data de encerramento&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Horas Estimadas&nbsp;</b>: {hours}</p>\n                    <p>Ansioso para ouvir de você.</p>\n                    <p><strong>Tipo Considera, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(376,24,'tr','New Project','<p><strong>Hi</strong> {project_user}</p>\n                    <p><b>Proje Adı</b>&nbsp;: {project_name}</p>\n                    <p><b>Başlangıç Tarihi&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Bitiş Tarihi&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Tahmini Saat&nbsp;</b>: {hours}</p>\n                    <p>Sizden haber bekliyorum.</p>\n                    <p><strong>Saygılarımızla, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(377,25,'ar','New Task','<p><strong>مرحبا-مرحبا-</strong> {task_user}</p>\n                    <p><b>اسم المهمة</b>&nbsp;: {task_name}</p>\n                    <p><b>اسم المشروع</b>&nbsp;: {project_name}</p>\n                    <p><b>تاريخ البدء&nbsp;</b>: {task_start_date}</p>\n                    <p><b>تاريخ الانتهاء&nbsp;</b>: {task_end_date}</p>\n                    <p><b>الساعات المقدرة&nbsp;</b>: {hours}</p>\n                    <p>. أتطلع لسماع منك</p>\n                    <p><strong>نوع تحيات, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(378,25,'zh','New Task','<p><strong>你好我是</strong> {task_user}</p>\n                    <p><b>任务名称</b>&nbsp;: {task_name}</p>\n                    <p><b>项目名称</b>&nbsp;: {project_name}</p>\n                    <p><b>开始日期&nbsp;</b>: {task_start_date}</p>\n                    <p><b>结束日期&nbsp;</b>: {task_end_date}</p>\n                    <p><b>估算小时数&nbsp;</b>: {hours}</p>\n                    <p>期待您的来信。</p>\n                    <p><strong>敬敬, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(379,25,'da','New Task','<p><strong>Hej</strong> {task_user}</p>\n                    <p><b>Navn på opgave</b>&nbsp;: {task_name}</p>\n                    <p><b>Projektnavn</b>&nbsp;: {project_name}</p>\n                    <p><b>Startdato&nbsp;</b>: {task_start_date}</p>\n                    <p><b>Slutdato&nbsp;</b>: {task_end_date}</p>\n                    <p><b>Estimerede timer&nbsp;</b>: {hours}</p>\n                    <p>Jeg glæder mig til at høre fra dig.</p>\n                    <p><strong>Kind Hilds, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(380,25,'de','New Task','<p><strong>Hi.</strong> {task_user}</p>\n                    <p><b>Taskname</b>&nbsp;: {task_name}</p>\n                    <p><b>Projektname</b>&nbsp;: {project_name}</p>\n                    <p><b>Startdatum&nbsp;</b>: {task_start_date}</p>\n                    <p><b>Enddatum&nbsp;</b>: {task_end_date}</p>\n                    <p><b>Geschätzte Stunden&nbsp;</b>: {hours}</p>\n                    <p>Freuen Sie sich auf das Hören von Ihnen.</p>\n                    <p><strong>KGütige Grüße, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(381,25,'en','New Task','<p><strong>Hi</strong> {task_user}</p>\n                    <p><b>Task Name</b>&nbsp;: {task_name}</p>\n                    <p><b>Project Name</b>&nbsp;: {project_name}</p>\n                    <p><b>Start Date&nbsp;</b>: {task_start_date}</p>\n                    <p><b>End Date&nbsp;</b>: {task_end_date}</p>\n                    <p><b>Estimated Hours&nbsp;</b>: {hours}</p>\n                    <p>Looking forward to hear from you.</p>\n                    <p><strong>Kind Regards, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(382,25,'es','New Task','<p><strong>Hi.</strong> {task_user}</p>\n                    <p><b>Nombre de tarea</b>&nbsp;: {task_name}</p>\n                    <p><b>Nombre del proyecto</b>&nbsp;: {project_name}</p>\n                    <p><b>Fecha de inicio&nbsp;</b>: {task_start_date}</p>\n                    <p><b>Fecha final&nbsp;</b>: {task_end_date}</p>\n                    <p><b>Horas estimadas&nbsp;</b>: {hours}</p>\n                    <p>Con ganas de escuchar de usted. </p>\n                    <p><strong>Bondadoso, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(383,25,'fr','New Task','<p><strong>Salut</strong> {task_user}</p>\n                    <p><b>Nom de la tâche</b>&nbsp;: {task_name}</p>\n                    <p><b>Nom du projet</b>&nbsp;: {project_name}</p>\n                    <p><b>Date de début&nbsp;</b>: {task_start_date}</p>\n                    <p><b>Date de fin&nbsp;</b>: {task_end_date}</p>\n                    <p><b>Heures estimées&nbsp;</b>: {hours}</p>\n                    <p>Regard sur lavenir.</p>\n                    <p><strong>Cordialement, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(384,25,'he','New Task','<p><strong>היי</strong> {task_user}</p>\n                    <p><b>שם משימה</b>&nbsp;: {task_name}</p>\n                    <p><b>שם הפרויקט</b>&nbsp;: {project_name}</p>\n                    <p><b>תאריך התחלה&nbsp;</b>: {task_start_date}</p>\n                    <p><b>תאריך סיום&nbsp;</b>: {task_end_date}</p>\n                    <p><b>שעות משוערות&nbsp;</b>: {hours}</p>\n                    <p>מצפה לשמוע ממך.</p>\n                    <p><strong>די. די. די. </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(385,25,'it','New Task','<p><strong>Ciao</strong> {task_user}</p>\n                    <p><b>Nome attività</b>&nbsp;: {task_name}</p>\n                    <p><b>Nome del progetto</b>&nbsp;: {project_name}</p>\n                    <p><b>Data di inizio&nbsp;</b>: {task_start_date}</p>\n                    <p><b>Data di fine&nbsp;</b>: {task_end_date}</p>\n                    <p><b>Ore Stimate&nbsp;</b>: {hours}</p>\n                    <p>Non vedo lora di sentirti<br></p>\n                    <p><strong>Cordiali saluti, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(386,25,'ja','New Task','<p><strong>やあ</strong> {task_user}</p>\n                    <p><b>タスク名</b>&nbsp;: {task_name}</p>\n                    <p><b>プロジェクト名</b>&nbsp;: {project_name}</p>\n                    <p><b>開始日&nbsp;</b>: {task_start_date}</p>\n                    <p><b>>End Date&nbsp;</b>: {task_end_date}</p>\n                    <p><b>推定時間&nbsp;</b>: {hours}</p>\n                    <p>あなたから聞いて楽しみにして<.</p>\n                    <p><strong>カインド・レガード, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(387,25,'nl','New Task','<p><strong>Hallo</strong> {task_user}</p>\n                    <p><b>Taaknaam</b>&nbsp;: {task_name}</p>\n                    <p><b>Projectnaam</b>&nbsp;: {project_name}</p>\n                    <p><b>Begindatum&nbsp;</b>: {task_start_date}</p>\n                    <p><b>Einddatum&nbsp;</b>: {task_end_date}</p>\n                    <p><b>Geschatte uren&nbsp;</b>: {hours}</p>\n                    <p>Naar voren komen om van u te horen.</p>\n                    <p><strong>Vriendelijke groeten, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(388,25,'pl','New Task','<p><strong>Witaj</strong> {task_user}</p>\n                    <p><b>Nazwa zadania</b>&nbsp;: {task_name}</p>\n                    <p><b>Nazwa projektu</b>&nbsp;: {project_name}</p>\n                    <p><b>Data rozpoczęcia&nbsp;</b>: {task_start_date}</p>\n                    <p><b>Data zakończenia&nbsp;</b>: {task_end_date}</p>\n                    <p><b>Szacowane godziny&nbsp;</b>: {hours}</p>\n                    <p>Z niecierżną datą i z niecierżką na Ciebie.</p>\n                    <p><strong>Życzliwie, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(389,25,'ru','New Task','<p><strong>Привет</strong> {task_user}</p>\n                    <p><b>Имя задачи</b>&nbsp;: {task_name}</p>\n                    <p><b>Имя проекта</b>&nbsp;: {project_name}</p>\n                    <p><b>Начальная дата&nbsp;</b>: {task_start_date}</p>\n                    <p><b>Конечная дата&nbsp;</b>: {task_end_date}</p>\n                    <p><b>Оценка часов&nbsp;</b>: {hours}</p>\n                    <p>нетерпением ожидаю услышать от вас.</p>\n                    <p><strong>Что касается, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(390,25,'pt','New Task','<p><strong>Oi</strong> {task_user}</p>\n                    <p><b>Nome da Tarefa</b>&nbsp;: {task_name}</p>\n                    <p><b>Nome do Projeto</b>&nbsp;: {project_name}</p>\n                    <p><b>Data de Início&nbsp;</b>: {task_start_date}</p>\n                    <p><b>Data de encerramento&nbsp;</b>: {task_end_date}</p>\n                    <p><b>Horas Estimadas&nbsp;</b>: {hours}</p>\n                    <p>Ansioso para ouvir de você.</p>\n                    <p><strong>Tipo Considera, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(391,25,'tr','New Task','<p><strong>Hi</strong> {task_user}</p>\n                    <p><b>Görev Adı</b>&nbsp;: {task_name}</p>\n                    <p><b>Proje Adı</b>&nbsp;: {project_name}</p>\n                    <p><b>Başlangıç Tarihi&nbsp;</b>: {task_start_date}</p>\n                    <p><b>Bitiş Tarihi&nbsp;</b>: {task_end_date}</p>\n                    <p><b>Tahmini Saat&nbsp;</b>: {hours}</p>\n                    <p>Sizden haber bekliyorum.</p>\n                    <p><strong>Saygılarımızla, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(392,26,'ar','Task Status Updated','<p><strong>مرحبا-مرحبا-</strong> {task_user}</p>\n                    <p>{task_name} تم تغيير الحالة من {old_stage_name} الى {new_stage_name}</p>\n                    <p><strong>نوع تحيات, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(393,26,'zh','Task Status Updated','<p><strong>你好我是</strong> {task_user}</p>\n                    <p>{task_name} 状态更改自 {old_stage_name} 到 {new_stage_name}</p>\n                    <p><strong>敬敬, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(394,26,'da','Task Status Updated','<p><strong>Hej</strong> {task_user}</p>\n                    <p>{task_name} status ændret fra {old_stage_name} til {new_stage_name}</p>\n                    <p><strong>Kind Hilds, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(395,26,'de','Task Status Updated','<p>&nbsp;</p>\n                    <p><strong>Hi</strong> {task_user}</p>\n                    <p>{task_name} Status geändert von {old_stage_name} bis {new_stage_name}</p>\n                    <p><strong>>KGütige Grüße, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(396,26,'en','Task Status Updated','<p>&nbsp;</p>\n                    <p><strong>Hi</strong> {task_user}</p>\n                    <p>{task_name} status changed from {old_stage_name} to {new_stage_name}</p>\n                    <p><strong>Kind Regards, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(397,26,'es','Task Status Updated','<p>&nbsp;</p>\n                    <p><strong>Hola</strong> {task_user}</p>\n                    <p>{task_name} cambio de estado de {old_stage_name} a {new_stage_name}</p>\n                    <p><strong>Bondadoso, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(398,26,'fr','Task Status Updated','<p>&nbsp;</p>\n                    <p><strong>Salut</strong> {task_user}</p>\n                    <p>{task_name} Statut modifié par {old_stage_name} Vers {new_stage_name}</p>\n                    <p><strong>Cordialement, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(399,26,'he','Task Status Updated','<p>&nbsp;</p>\n                    <p><strong>היי</strong> {task_user}</p>\n                    <p>{task_name} הסטאטוס השתנה מ - {old_stage_name} ל {new_stage_name}</p>\n                    <p><strong>די. די. די. , </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(400,26,'it','Task Status Updated','<p>&nbsp;</p>\n                    <p><strong>Ciao</strong> {task_user}</p>\n                    <p>{task_name} stato modificato da {old_stage_name} a {new_stage_name}</p>\n                    <p><strong>Cordiali saluti, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(401,26,'ja','Task Status Updated','<p>&nbsp;</p>\n                    <p><strong>やあ</strong> {task_user}</p>\n                    <p>{task_name} 状況の変更元 {old_stage_name} に対する {new_stage_name}</p>\n                    <p><strong>カインド・レガード, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(402,26,'nl','Task Status Updated','<p>&nbsp;</p>\n                    <p><strong>Hallo</strong> {task_user}</p>\n                    <p>{task_name} status gewijzigd van {old_stage_name} tot {new_stage_name}</p>\n                    <p><strong>Vriendelijke groeten, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(403,26,'pl','Task Status Updated','<p>&nbsp;</p>\n                    <p><strong>Witaj</strong> {task_user}</p>\n                    <p>{task_name} status zmieniony z {old_stage_name} do {new_stage_name}</p>\n                    <p><strong>Życzliwie, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(404,26,'ru','Task Status Updated','<p>&nbsp;</p>\n                    <p><strong>Привет</strong> {task_user}</p>\n                    <p>{task_name} состояние изменено с {old_stage_name} в {new_stage_name}</p>\n                    <p><strong>Что касается, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(405,26,'pt','Task Status Updated','<p>&nbsp;</p>\n                    <p><strong>Oi</strong> {task_user}</p>\n                    <p>{task_name} status alterado de {old_stage_name} para {new_stage_name}</p>\n                    <p><strong>Tipo Considera, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(406,26,'tr','Task Status Updated','<p>&nbsp;</p>\n                    <p><strong>Hi</strong> {task_user}</p>\n                    <p>{task_name} durum değişti {old_stage_name} ile {new_stage_name}</p>\n                    <p><strong>Saygılarımızla, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(407,27,'ar','New Leave','<p><strong>مرحبا-مرحبا-</strong> {user_name}</p>\n                    <p>تكوين ترك جديد من {start_date} الى {end_date} بالنسبة الى {leave_reason}</p>\n                    <p><strong>نوع تحيات, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(408,27,'zh','New Leave','<p><strong>你好我是</strong> {user_name}</p>\n                    <p>新离开创建自 {start_date} 到 {end_date} 为 {leave_reason}</p>\n                    <p><strong>敬敬, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(409,27,'da','New Leave','<p><strong>-Hej.</strong> {user_name}</p>\n                    <p>Ny Forlad, opret fra {start_date} til {end_date} for {leave_reason}</p>\n                    <p><strong>Kind Hilds, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(410,27,'de','New Leave','<p><strong>Hi.</strong> {user_name}</p>\n                    <p>Neue Hinterlasse erstellen aus {start_date} bis {end_date} für {leave_reason}</p>\n                    <p><strong>KGütige Grüße, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(411,27,'en','New Leave','<p><strong>Hi</strong> {user_name}</p>\n                    <p>New Leave create from {start_date} to {end_date} for {leave_reason}</p>\n                    <p><strong>Kind Regards, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(412,27,'es','New Leave','<p><strong>Hola.</strong> {user_name}</p>\n                    <p>Nueva licencia para crear desde {start_date} Holaa {end_date} para {leave_reason}</p>\n                    <p><strong>Bondadoso, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(413,27,'fr','New Leave','<p><strong>Salut</strong> {user_name}</p>\n                    <p>Nouveau congé créé à partir de {start_date} Vers {end_date} Pour {leave_reason}</p>\n                    <p><strong>Cordialement, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(414,27,'he','New Leave','<p><strong>היי</strong> {user_name}</p>\n                    <p>יצירה חדשה של יצירה מ - {start_date} ל {end_date} עבור {leave_reason}</p>\n                    <p><strong>די. די. די. </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(415,27,'it','New Leave','<p><strong>Ciao</strong> {user_name}</p>\n                    <p>Nuovo Leave create da {start_date} a {end_date} per {leave_reason}</p>\n                    <p><strong>Cordiali saluti, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(416,27,'ja','New Leave','<p><strong>やあ</strong> {user_name}</p>\n                    <p>新規休暇の作成元 {start_date} に対する {end_date} 対象 {leave_reason}</p>\n                    <p><strong>カインド・レガード, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(417,27,'nl','New Leave','<p><strong>Hallo</strong> {user_name}</p>\n                    <p>Nieuw verlaten maken van {start_date} tot {end_date} voor {leave_reason}</p>\n                    <p><strong>Vriendelijke groeten, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(418,27,'pl','New Leave','<p><strong>Witaj</strong> {user_name}</p>\n                    <p>Nowe pozostaw. utworzenie z {start_date} do {end_date} dla {leave_reason}</p>\n                    <p><strong>Życzliwie, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(419,27,'ru','New Leave','<p><strong>Привет.</strong> {user_name}</p>\n                    <p>Создать новый отпуск {start_date} в {end_date} для {leave_reason}</p>\n                    <p><strong>Что касается, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(420,27,'pt','New Leave','<p><strong>Oi</strong> {user_name}</p>\n                    <p>Novo Deixe criar de {start_date} para {end_date} para {leave_reason}</p>\n                    <p><strong>Tipo Considera, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(421,27,'tr','New Leave','<p><strong>Hi</strong> {user_name}</p>\n                    <p>Yeni Bırakıma yarat {start_date} ile {end_date} için {leave_reason}</p>\n                    <p><strong>Saygılarımızla, </strong></p>\n                    <p>{employee_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(422,28,'ar','Project Assign Member','<p><strong>مرحبا-مرحبا-</strong> {project_user}</p>\n                    <p><b>اسم المشروع</b>&nbsp;: {project_name}</p>\n                    <p><b>تاريخ البدء&nbsp;</b>: {project_start_date}</p>\n                    <p><b>تاريخ الانتهاء&nbsp;</b>: {project_end_date}</p>\n                    <p><b>الساعات المقدرة&nbsp;</b>: {hours}</p>\n                    <p>. أتطلع لسماع منك</p>\n                    <p><strong>نوع تحيات, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(423,28,'zh','Project Assign Member','<p><strong>你好我是</strong> {project_user}</p>\n                    <p><b>项目名称</b>&nbsp;: {project_name}</p>\n                    <p><b>开始日期&nbsp;</b>: {project_start_date}</p>\n                    <p><b>结束日期&nbsp;</b>: {project_end_date}</p>\n                    <p><b>估算小时数&nbsp;</b>: {hours}</p>\n                    <p>期待您的来信。</p>\n                    <p><strong>敬敬, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(424,28,'da','Project Assign Member','<p><strong>Hej</strong> {project_user}</p>\n                    <p><b>Projektnavn</b>&nbsp;: {project_name}</p>\n                    <p><b>Startdato&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Slutdato&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Estimerede timer&nbsp;</b>: {hours}</p>\n                    <p>Jeg glæder mig til at høre fra dig.</p>\n                    <p><strong>Kind Hilds, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(425,28,'de','Project Assign Member','<p><strong>Hi.</strong> {project_user}</p>\n                    <p><b>Projektname</b>&nbsp;: {project_name}</p>\n                    <p><b>Startdatum&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Enddatum&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Geschätzte Stunden&nbsp;</b>: {hours}</p>\n                    <p>Freuen Sie sich auf das Hören von Ihnen.</p>\n                    <p><strong>KGütige Grüße, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(426,28,'en','Project Assign Member','<p><strong>Hi</strong> {project_user}</p>\n                    <p><b>Project Name</b>&nbsp;: {project_name}</p>\n                    <p><b>Start Date&nbsp;</b>: {project_start_date}</p>\n                    <p><b>End Date&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Estimated Hours&nbsp;</b>: {hours}</p>\n                    <p>Looking forward to hear from you.</p>\n                    <p><strong>Kind Regards, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(427,28,'es','Project Assign Member','<p><strong>Hi.</strong> {project_user}</p>\n                    <p><b>Nombre del proyecto</b>&nbsp;: {project_name}</p>\n                    <p><b>Fecha de inicio&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Fecha final&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Horas estimadas&nbsp;</b>: {hours}</p>\n                    <p>Con ganas de escuchar de usted. </p>\n                    <p><strong>Bondadoso, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(428,28,'fr','Project Assign Member','<p><strong>Salut</strong> {project_user}</p>\n                    <p><b>Nom du projet</b>&nbsp;: {project_name}</p>\n                    <p><b>Date de début&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Date de fin&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Heures estimées&nbsp;</b>: {hours}</p>\n                    <p>Regard sur lavenir.</p>\n                    <p><strong>Cordialement, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(429,28,'he','Project Assign Member','<p><strong>היי</strong> {project_user}</p>\n                    <p><b>שם הפרויקט</b>&nbsp;: {project_name}</p>\n                    <p><b>תאריך התחלה&nbsp;</b>: {project_start_date}</p>\n                    <p><b>תאריך סיום&nbsp;</b>: {project_end_date}</p>\n                    <p><b>שעות משוערות&nbsp;</b>: {hours}</p>\n                    <p>מצפה לשמוע ממך.</p>\n                    <p><strong>די. די. די. </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(430,28,'it','Project Assign Member','<p><strong>Ciao</strong> {project_user}</p>\n                    <p><b>Nome del progetto</b>&nbsp;: {project_name}</p>\n                    <p><b>Data di inizio&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Data di fine&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Ore Stimate&nbsp;</b>: {hours}</p>\n                    <p>Non vedo lora di sentirti<br></p>\n                    <p><strong>Cordiali saluti, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(431,28,'ja','Project Assign Member','<p><strong>やあ</strong> {project_user}</p>\n                    <p><b>プロジェクト名</b>&nbsp;: {project_name}</p>\n                    <p><b>開始日&nbsp;</b>: {project_start_date}</p>\n                    <p><b>終了日&nbsp;</b>: {project_end_date}</p>\n                    <p><b>推定時間&nbsp;</b>: {hours}</p>\n                    <p>あなたから聞いて楽しみにして<.</p>\n                    <p><strong>カインド・レガード, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(432,28,'nl','Project Assign Member','<p><strong>Hallo</strong> {project_user}</p>\n                    <p><b>Projectnaam</b>&nbsp;: {project_name}</p>\n                    <p><b>Begindatum&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Einddatum&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Geschatte uren&nbsp;</b>: {hours}</p>\n                    <p>Naar voren komen om van u te horen.</p>\n                    <p><strong>Vriendelijke groeten, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(433,28,'pl','Project Assign Member','<p><strong>Witaj</strong> {project_user}</p>\n                    <p><b>Nazwa projektu</b>&nbsp;: {project_name}</p>\n                    <p><b>Data rozpoczęcia&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Data zakończenia&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Szacowane godziny&nbsp;</b>: {hours}</p>\n                    <p>Z niecierżną datą i z niecierżką na Ciebie.</p>\n                    <p><strong>Życzliwie, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(434,28,'ru','Project Assign Member','<p><strong>Привет</strong> {project_user}</p>\n                    <p><b>Имя проекта</b>&nbsp;: {project_name}</p>\n                    <p><b>Начальная дата&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Конечная дата&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Оценка часов&nbsp;</b>: {hours}</p>\n                    <p>нетерпением ожидаю услышать от вас.</p>\n                    <p><strong>Что касается, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(435,28,'pt','Project Assign Member','<p><strong>Oi</strong> {project_user}</p>\n                    <p><b>Nome do Projeto</b>&nbsp;: {project_name}</p>\n                    <p><b>Data de Início&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Data de encerramento&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Horas Estimadas&nbsp;</b>: {hours}</p>\n                    <p>Ansioso para ouvir de você.</p>\n                    <p><strong>Tipo Considera, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26'),
(436,28,'tr','Project Assign Member','<p><strong>Hi</strong> {project_user}</p>\n                    <p><b>Proje Adı</b>&nbsp;: {project_name}</p>\n                    <p><b>Başlangıç Tarihi&nbsp;</b>: {project_start_date}</p>\n                    <p><b>Bitiş Tarihi&nbsp;</b>: {project_end_date}</p>\n                    <p><b>Tahmini Saat&nbsp;</b>: {hours}</p>\n                    <p>Sizden haber bekliyorum.</p>\n                    <p><strong>Saygılarımızla, </strong></p>\n                    <p>{company_name}</p>','2024-10-08 20:47:26','2024-10-08 20:47:26');

/*Table structure for table `email_templates` */

DROP TABLE IF EXISTS `email_templates`;

CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `email_templates` */

insert  into `email_templates`(`id`,`name`,`from`,`slug`,`created_by`,`created_at`,`updated_at`) values 
(1,'New User','QuickBillErp','new_user',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(2,'New Client','QuickBillErp','new_client',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(3,'New Support Ticket','QuickBillErp','new_support_ticket',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(4,'Lead Assigned','QuickBillErp','lead_assigned',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(5,'Deal Assigned','QuickBillErp','deal_assigned',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(6,'New Award','QuickBillErp','new_award',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(7,'Customer Invoice Sent','QuickBillErp','customer_invoice_sent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(8,'New Invoice Payment','QuickBillErp','new_invoice_payment',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(9,'New Payment Reminder','QuickBillErp','new_payment_reminder',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(10,'New Bill Payment','QuickBillErp','new_bill_payment',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(11,'Bill Resent','QuickBillErp','bill_resent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(12,'Proposal Sent','QuickBillErp','proposal_sent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(13,'Complaint Resent','QuickBillErp','complaint_resent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(14,'Leave Action Sent','QuickBillErp','leave_action_sent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(15,'Payslip Sent','QuickBillErp','payslip_sent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(16,'Promotion Sent','QuickBillErp','promotion_sent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(17,'Resignation Sent','QuickBillErp','resignation_sent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(18,'Termination Sent','QuickBillErp','termination_sent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(19,'Transfer Sent','QuickBillErp','transfer_sent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(20,'Trip Sent','QuickBillErp','trip_sent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(21,'Vender Bill Sent','QuickBillErp','vender_bill_sent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(22,'Warning Sent','QuickBillErp','warning_sent',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(23,'New Contract','QuickBillErp','new_contract',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(24,'New Project','QuickBillErp','new_project',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(25,'New Task','QuickBillErp','new_task',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(26,'Task Status Updated','QuickBillErp','task_status_updated',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(27,'New Leave','QuickBillErp','new_leave',1,'2024-10-08 20:47:25','2024-10-08 20:47:25'),
(28,'Project Assign Member','QuickBillErp','project_assign_member',1,'2024-10-08 20:47:25','2024-10-08 20:47:25');

/*Table structure for table `employee_documents` */

DROP TABLE IF EXISTS `employee_documents`;

CREATE TABLE `employee_documents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `document_id` int NOT NULL,
  `document_value` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `employee_documents` */

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0',
  `biometric_emp_id` int DEFAULT NULL,
  `branch_id` int NOT NULL DEFAULT '0',
  `department_id` int NOT NULL DEFAULT '0',
  `designation_id` int NOT NULL DEFAULT '0',
  `company_doj` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `documents` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `account_holder_name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `bank_identifier_code` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `branch_location` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `tax_payer_id` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `account` int DEFAULT NULL,
  `salary_type` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `employees` */

/*Table structure for table `estimations` */

DROP TABLE IF EXISTS `estimations`;

CREATE TABLE `estimations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `estimation_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `issue_date` date NOT NULL,
  `discount` double(8,2) NOT NULL,
  `tax_id` bigint unsigned NOT NULL,
  `terms` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `estimations` */

/*Table structure for table `event_employees` */

DROP TABLE IF EXISTS `event_employees`;

CREATE TABLE `event_employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `event_employees` */

/*Table structure for table `events` */

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `department_id` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `employee_id` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `events` */

/*Table structure for table `expenses` */

DROP TABLE IF EXISTS `expenses`;

CREATE TABLE `expenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `attachment` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `project_id` int NOT NULL DEFAULT '0',
  `task_id` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `expenses` */

/*Table structure for table `experience_certificates` */

DROP TABLE IF EXISTS `experience_certificates`;

CREATE TABLE `experience_certificates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `experience_certificates` */

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `queue` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `form_builders` */

DROP TABLE IF EXISTS `form_builders`;

CREATE TABLE `form_builders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `is_lead_active` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_builders_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `form_builders` */

/*Table structure for table `form_field_responses` */

DROP TABLE IF EXISTS `form_field_responses`;

CREATE TABLE `form_field_responses` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `form_field_responses` */

/*Table structure for table `form_fields` */

DROP TABLE IF EXISTS `form_fields`;

CREATE TABLE `form_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `form_fields` */

/*Table structure for table `form_responses` */

DROP TABLE IF EXISTS `form_responses`;

CREATE TABLE `form_responses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint unsigned NOT NULL,
  `response` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `form_responses` */

/*Table structure for table `generate_offer_letters` */

DROP TABLE IF EXISTS `generate_offer_letters`;

CREATE TABLE `generate_offer_letters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `content` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `generate_offer_letters` */

/*Table structure for table `genrate_payslip_options` */

DROP TABLE IF EXISTS `genrate_payslip_options`;

CREATE TABLE `genrate_payslip_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `genrate_payslip_options` */

/*Table structure for table `goal_trackings` */

DROP TABLE IF EXISTS `goal_trackings`;

CREATE TABLE `goal_trackings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch` int NOT NULL,
  `goal_type` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `rating` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `target_achievement` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `status` int NOT NULL DEFAULT '0',
  `progress` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `goal_trackings` */

/*Table structure for table `goal_types` */

DROP TABLE IF EXISTS `goal_types`;

CREATE TABLE `goal_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `goal_types` */

/*Table structure for table `goals` */

DROP TABLE IF EXISTS `goals`;

CREATE TABLE `goals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `is_display` int NOT NULL DEFAULT '1',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `goals` */

/*Table structure for table `holidays` */

DROP TABLE IF EXISTS `holidays`;

CREATE TABLE `holidays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `end_date` date NOT NULL,
  `occasion` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `holidays` */

/*Table structure for table `indicators` */

DROP TABLE IF EXISTS `indicators`;

CREATE TABLE `indicators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch` int NOT NULL DEFAULT '0',
  `department` int NOT NULL DEFAULT '0',
  `designation` int NOT NULL DEFAULT '0',
  `rating` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `indicators` */

/*Table structure for table `interview_schedules` */

DROP TABLE IF EXISTS `interview_schedules`;

CREATE TABLE `interview_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `candidate` int NOT NULL,
  `employee` int NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  `comment` text COLLATE utf8mb4_spanish_ci,
  `employee_response` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `interview_schedules` */

/*Table structure for table `invoice_bank_transfers` */

DROP TABLE IF EXISTS `invoice_bank_transfers`;

CREATE TABLE `invoice_bank_transfers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `order_id` int NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `status` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `receipt` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `invoice_bank_transfers` */

/*Table structure for table `invoice_payments` */

DROP TABLE IF EXISTS `invoice_payments`;

CREATE TABLE `invoice_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int NOT NULL DEFAULT '0',
  `payment_method` int NOT NULL DEFAULT '0',
  `order_id` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `txn_id` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Manually',
  `receipt` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `add_receipt` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `invoice_payments` */

/*Table structure for table `invoice_products` */

DROP TABLE IF EXISTS `invoice_products`;

CREATE TABLE `invoice_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `invoice_products` */

/*Table structure for table `invoices` */

DROP TABLE IF EXISTS `invoices`;

CREATE TABLE `invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int NOT NULL,
  `ref_number` text COLLATE utf8mb4_spanish_ci,
  `status` int NOT NULL DEFAULT '0',
  `shipping_display` int NOT NULL DEFAULT '1',
  `discount_apply` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `invoices` */

/*Table structure for table `ip_restricts` */

DROP TABLE IF EXISTS `ip_restricts`;

CREATE TABLE `ip_restricts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `ip_restricts` */

/*Table structure for table `job_application_notes` */

DROP TABLE IF EXISTS `job_application_notes`;

CREATE TABLE `job_application_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `application_id` int NOT NULL DEFAULT '0',
  `note_created` int NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `job_application_notes` */

/*Table structure for table `job_applications` */

DROP TABLE IF EXISTS `job_applications`;

CREATE TABLE `job_applications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `profile` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `resume` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `cover_letter` text COLLATE utf8mb4_spanish_ci,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `stage` int NOT NULL DEFAULT '1',
  `order` int NOT NULL DEFAULT '0',
  `skill` text COLLATE utf8mb4_spanish_ci,
  `rating` int NOT NULL DEFAULT '0',
  `is_archive` int NOT NULL DEFAULT '0',
  `custom_question` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `job_applications` */

/*Table structure for table `job_categories` */

DROP TABLE IF EXISTS `job_categories`;

CREATE TABLE `job_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `job_categories` */

/*Table structure for table `job_on_boards` */

DROP TABLE IF EXISTS `job_on_boards`;

CREATE TABLE `job_on_boards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `application` int NOT NULL,
  `joining_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `convert_to_employee` int NOT NULL DEFAULT '0',
  `job_type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `days_of_week` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `salary_type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `salary_duration` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `job_on_boards` */

/*Table structure for table `job_stages` */

DROP TABLE IF EXISTS `job_stages`;

CREATE TABLE `job_stages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `job_stages` */

/*Table structure for table `jobs` */

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `requirement` text COLLATE utf8mb4_spanish_ci,
  `branch` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `skill` text COLLATE utf8mb4_spanish_ci,
  `position` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `applicant` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `custom_question` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `jobs` */

/*Table structure for table `join_us` */

DROP TABLE IF EXISTS `join_us`;

CREATE TABLE `join_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `join_us_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `join_us` */

/*Table structure for table `joining_letters` */

DROP TABLE IF EXISTS `joining_letters`;

CREATE TABLE `joining_letters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `content` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `joining_letters` */

/*Table structure for table `journal_entries` */

DROP TABLE IF EXISTS `journal_entries`;

CREATE TABLE `journal_entries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `journal_id` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `journal_entries` */

/*Table structure for table `journal_items` */

DROP TABLE IF EXISTS `journal_items`;

CREATE TABLE `journal_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `journal` int NOT NULL DEFAULT '0',
  `account` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_spanish_ci,
  `debit` double(15,2) NOT NULL DEFAULT '0.00',
  `credit` double(15,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `journal_items` */

/*Table structure for table `labels` */

DROP TABLE IF EXISTS `labels`;

CREATE TABLE `labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pipeline_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `labels` */

/*Table structure for table `landing_page_settings` */

DROP TABLE IF EXISTS `landing_page_settings`;

CREATE TABLE `landing_page_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `landing_page_settings_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `landing_page_settings` */

insert  into `landing_page_settings`(`id`,`name`,`value`,`created_at`,`updated_at`) values 
(1,'topbar_status','on','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(2,'topbar_notification_msg','70% Special Offer. Don’t Miss it. The offer ends in 72 hours.','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(3,'menubar_status','on','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(4,'menubar_page','[{\"menubar_page_name\": \"About Us\",\"template_name\": \"page_content\",\"page_url\": \"\",\"menubar_page_contant\": \"Welcome to the Erpgo website. By accessing this website, you agree to comply with and be bound by the following terms and conditions of use. If you disagree with any part of these terms, please do not use our website. The content of the pages of this website is for your general information and use only. It is subject to change without notice. This website uses cookies to monitor browsing preferences. If you do allow cookies to be used, personal information may be stored by us for use by third parties. Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness, or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors, and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law. Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services, or information available through this website meet your specific requirements. This website contains material that is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance, and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions. Unauthorized use of this website may give rise to a claim for damages and\\/or be a criminal offense. From time to time, this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s\",\"page_slug\": \"about_us\",\"header\": \"on\",\"footer\": \"on\",\"login\": \"on\"},{\"menubar_page_name\": \"Terms and Conditions\",\"template_name\": \"page_content\",\"page_url\": \"\",\"menubar_page_contant\": \"Welcome to the Erpgo website. By accessing this website, you agree to comply with and be bound by the following terms and conditions of use. If you disagree with any part of these terms, please do not use our website.\\r\\n\\r\\nThe content of the pages of this website is for your general information and use only. It is subject to change without notice.\\r\\n\\r\\nThis website uses cookies to monitor browsing preferences. If you do allow cookies to be used, personal information may be stored by us for use by third parties.\\r\\n\\r\\nNeither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness, or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors, and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.\\r\\n\\r\\nYour use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services, or information available through this website meet your specific requirements.\\r\\n\\r\\nThis website contains material that is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance, and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.\\r\\n\\r\\nUnauthorized use of this website may give rise to a claim for damages and\\/or be a criminal offense.\\r\\n\\r\\nFrom time to time, this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).\",\"page_slug\": \"terms_and_conditions\",\"header\": \"off\",\"footer\": \"on\",\"login\": \"on\"},{\"menubar_page_name\": \"Privacy Policy\",\"template_name\": \"page_content\",\"page_url\": \"\",\"menubar_page_contant\": \"Introduction: An overview of the privacy policy, including the purpose and scope of the policy. Information Collection: Details about the types of information collected from users\\/customers, such as personal information (name, address, email), device information, usage data, and any other relevant data. Data Usage: An explanation of how the collected data will be used, including providing services, improving products, personalization, analytics, and any other legitimate business purposes. Data Sharing: Information about whether and how the company shares user data with third parties, such as partners, service providers, or affiliates, along with the purposes of such sharing. Data Security: Details about the measures taken to protect user data from unauthorized access, loss, or misuse, including encryption, secure protocols, access controls, and data breach notification procedures. User Choices: Information on the choices available to users regarding the collection, use, and sharing of their personal data, including opt-out mechanisms and account settings. Cookies and Tracking Technologies: Explanation of the use of cookies, web beacons, and similar technologies for tracking user activity and collecting information for analytics and advertising purposes. Third-Party Links: Clarification that the companys website or services may contain links to third-party websites or services and that the privacy policy does not extend to those external sites. Data Retention: Details about the retention period for user data and how long it will be stored by the company. Legal Basis and Compliance: Information about the legal basis for processing personal data, compliance with applicable data protection laws, and the rights of users under relevant privacy regulations (e.g., GDPR, CCPA). Updates to the Privacy Policy: Notification that the privacy policy may be updated from time to time, and how users will be informed of any material changes. Contact Information: How users can contact the company regarding privacy-related concerns or inquiries.\",\"page_slug\": \"privacy_policy\",\"header\": \"off\",\"footer\": \"on\",\"login\": \"on\"}]','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(5,'site_logo','site_logo.png','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(6,'site_description','We build modern web tools to help you jump-start your daily business work.','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(7,'home_status','on','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(8,'home_offer_text','70% Special Offer','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(9,'home_title','Home','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(10,'home_heading','ERPGo SaaS All In One Business ERP With Project, Account, HRM, CRM & POS','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(11,'home_description','Use these awesome forms to login or create new account in your project for free.','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(12,'home_trusted_by','1000+ Customer','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(13,'home_live_demo_link','https://demo.workdo.io/erpgo-saas/login','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(14,'home_buy_now_link','https://codecanyon.net/item/erpgo-saas-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263426','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(15,'home_banner','home_banner.png','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(16,'home_logo','home_logo1.png,home_logo2.png,home_logo3.png,home_logo4.png,home_logo5.png,home_logo6.png,home_logo7.png','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(17,'feature_status','on','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(18,'feature_title','Features','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(19,'feature_heading','All In One Place CRM System','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(20,'feature_description','Use these awesome forms to login or create new account in your project for free. Use these awesome forms to login or create new account in your project for free.','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(21,'feature_buy_now_link','https://codecanyon.net/item/erpgo-saas-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263426','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(22,'feature_of_features','[{\"feature_logo\":\"1688108756-feature_logo.png\",\"feature_heading\":\"Feature\",\"feature_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"feature_logo\":\"1688099120-feature_logo.png\",\"feature_heading\":\"Support\",\"feature_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"feature_logo\":\"1688099197-feature_logo.png\",\"feature_heading\":\"Integration\",\"feature_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"}]','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(23,'highlight_feature_heading','ERPGo SaaS All In One Business ERP With Project, Account, HRM, CRM & POS','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(24,'highlight_feature_description','Use these awesome forms to login or create new account in your project for free.','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(25,'highlight_feature_image','highlight_feature_image.png','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(26,'other_features','[{\"other_features_image\":\"1688108824-other_features_image.png\",\"other_features_heading\":\"ERPGo SaaS All In One Business ERP With Project, Account, HRM, CRM & POS\",\"other_featured_description\":\"<p>Use these awesome forms to login or create new account in your project for free.<\\/p>\",\"other_feature_buy_now_link\":\"https://codecanyon.net/item/erpgo-saas-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263426\"},{\"other_features_image\":\"1688108842-other_features_image.png\",\"other_features_heading\":\"ERPGo SaaS All In One Business ERP With Project, Account, HRM, CRM & POS\",\"other_featured_description\":\"<p>Use these awesome forms to login or create new account in your project for free.<\\/p>\",\"other_feature_buy_now_link\":\"https://codecanyon.net/item/erpgo-saas-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263426\"},{\"other_features_image\":\"1688115908-other_features_image.png\",\"other_features_heading\":\"ERPGo SaaS All In One Business ERP With Project, Account, HRM, CRM & POS\",\"other_featured_description\":\"<p>Use these awesome forms to login or create new account in your project for free.<\\/p>\",\"other_feature_buy_now_link\":\"https://codecanyon.net/item/erpgo-saas-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263426\"},{\"other_features_image\":\"1688108947-other_features_image.png\",\"other_features_heading\":\"ERPGo SaaS All In One Business ERP With Project, Account, HRM, CRM & POS\",\"other_featured_description\":\"<p>Use these awesome forms to login or create new account in your project for free.<\\/p>\",\"other_feature_buy_now_link\":\"https://codecanyon.net/item/erpgo-saas-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263426\"}]','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(27,'discover_status','on','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(28,'discover_heading','ERPGo SaaS All In One Business ERP With Project, Account, HRM, CRM & POS','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(29,'discover_description','Use these awesome forms to login or create new account in your project for free.','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(30,'discover_live_demo_link','https://demo.workdo.io/erpgo-saas/login','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(31,'discover_buy_now_link','https://codecanyon.net/item/erpgo-saas-all-in-one-business-erp-with-project-account-hrm-crm-pos/33263426','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(32,'discover_of_features','[{\"discover_logo\":\"1688099306-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099328-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099359-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099377-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099401-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099416-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099434-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688099443-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"}]','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(33,'screenshots_status','on','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(34,'screenshots_heading','ERPGo SaaS All In One Business ERP With Project, Account, HRM, CRM & POS','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(35,'screenshots_description','Use these awesome forms to login or create new account in your project for free.','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(36,'screenshots','[{\"screenshots\":\"1688109087-screenshots.png\",\"screenshots_heading\":\"Balance Sheet\"},{\"screenshots\":\"1688109104-screenshots.png\",\"screenshots_heading\":\"Budget Plan\"},{\"screenshots\":\"1688100981-screenshots.png\",\"screenshots_heading\":\"CRM Deals\"},{\"screenshots\":\"1688109222-screenshots.png\",\"screenshots_heading\":\"Project\"},{\"screenshots\":\"1688108614-screenshots.png\",\"screenshots_heading\":\"Job Career\"},{\"screenshots\":\"1688108626-screenshots.png\",\"screenshots_heading\":\"POS\"}]','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(37,'plan_status','on','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(38,'plan_title','Plan','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(39,'plan_heading','ERPGo SaaS All In One Business ERP With Project, Account, HRM, CRM & POS','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(40,'plan_description','Use these awesome forms to login or create new account in your project for free.','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(41,'faq_status','on','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(42,'faq_title','Faq','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(43,'faq_heading','ERPGo SaaS All In One Business ERP With Project, Account, HRM, CRM & POS','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(44,'faq_description','Use these awesome forms to login or create new account in your project for free.','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(45,'faqs','[{\"faq_questions\":\"#What does \\\"Theme\\/Package Installation\\\" mean?\",\"faq_answer\":\"For an easy-to-install theme\\/package, we have included step-by-step detailed documentation (in English). However, if it is not done perfectly, please feel free to contact the support team at support@workdo.io\"},{\"faq_questions\":\"#What does \\\"Theme\\/Package Installation\\\" mean?\",\"faq_answer\":\"For an easy-to-install theme\\/package, we have included step-by-step detailed documentation (in English). However, if it is not done perfectly, please feel free to contact the support team at support@workdo.io\"},{\"faq_questions\":\"#What does \\\"Lifetime updates\\\" mean?\",\"faq_answer\":\"For an easy-to-install theme\\/package, we have included step-by-step detailed documentation (in English). However, if it is not done perfectly, please feel free to contact the support team at support@workdo.io\"},{\"faq_questions\":\"#What does \\\"Lifetime updates\\\" mean?\",\"faq_answer\":\"For an easy-to-install theme\\/package, we have included step-by-step detailed documentation (in English). However, if it is not done perfectly, please feel free to contact the support team at support@workdo.io\"},{\"faq_questions\":\"# What does \\\"6 months of support\\\" mean?\",\"faq_answer\":\"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa\\r\\n                                    nesciunt\\r\\n                                    laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt\\r\\n                                    sapiente ea\\r\\n                                    proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven heard of them accusamus labore sustainable VHS.\"},{\"faq_questions\":\"# What does \\\"6 months of support\\\" mean?\",\"faq_answer\":\"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa\\r\\n                                    nesciunt\\r\\n                                    laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt\\r\\n                                    sapiente ea\\r\\n                                    proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven heard of them accusamus labore sustainable VHS.\"}]','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(46,'testimonials_status','on','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(47,'testimonials_heading','From our Clients','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(48,'testimonials_description','Use these awesome forms to login or create new account in your project for free.','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(49,'testimonials_long_description','WorkDo seCommerce package offers you a “sales-ready.”secure online store. The package puts all the key pieces together, from design to payment processing. This gives you a headstart in your eCommerce venture. Every store is built using a reliable PHP framework -laravel. Thisspeeds up the development process while increasing the store’s security and performance.Additionally, thanks to the accompanying mobile app, you and your team can manage the store on the go. What’s more, because the app works both for you and your customers, you can use it to reach a wider audience.And, unlike popular eCommerce platforms, it doesn’t bind you to any terms and conditions or recurring fees. You get to choose where you host it or which payment gateway you use. Lastly, you getcomplete control over the looks of the store. And if it lacks any functionalities that you need, just reach out, and let’s discuss customization possibilities','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(50,'testimonials','[{\"testimonials_user_avtar\":\"1688466247-testimonials_user_avtar.jpg\",\"testimonials_title\":\"Tbistone\",\"testimonials_description\":\"Very quick customer support, installing this application on my machine locally, within 5 minutes of creating a ticket, the developer was able to fix the issue I had within 10 minutes. EXCELLENT! Thank you very much\",\"testimonials_user\":\"Chordsnstrings\",\"testimonials_designation\":\"from codecanyon\",\"testimonials_star\":\"4\"},{\"testimonials_user_avtar\":\"1688466264-testimonials_user_avtar.jpg\",\"testimonials_title\":\"Tbistone\",\"testimonials_description\":\"Very quick customer support, installing this application on my machine locally, within 5 minutes of creating a ticket, the developer was able to fix the issue I had within 10 minutes. EXCELLENT! Thank you very much\",\"testimonials_user\":\"Chordsnstrings\",\"testimonials_designation\":\"from codecanyon\",\"testimonials_star\":\"4\"},{\"testimonials_user_avtar\":\"1688466271-testimonials_user_avtar.jpg\",\"testimonials_title\":\"Tbistone\",\"testimonials_description\":\"Very quick customer support, installing this application on my machine locally, within 5 minutes of creating a ticket, the developer was able to fix the issue I had within 10 minutes. EXCELLENT! Thank you very much\",\"testimonials_user\":\"Chordsnstrings\",\"testimonials_designation\":\"from codecanyon\",\"testimonials_star\":\"4\"}]','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(51,'footer_status','on','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(52,'joinus_status','on','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(53,'joinus_heading','Join Our Community','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(54,'joinus_description','We build modern web tools to help you jump-start your daily business work.','2024-10-08 20:46:58','2024-10-08 20:46:58');

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `languages` */

insert  into `languages`(`id`,`code`,`full_name`,`created_at`,`updated_at`) values 
(1,'ar','Arabic','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(2,'zh','Chinese','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(3,'da','Danish','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(4,'de','German','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(5,'en','English','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(6,'es','Spanish','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(7,'fr','French','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(8,'he','Hebrew','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(9,'it','Italian','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(10,'ja','Japanese','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(11,'nl','Dutch','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(12,'pl','Polish','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(13,'pt','Portuguese','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(14,'ru','Russian','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(15,'tr','Turkish','2024-10-08 20:47:01','2024-10-08 20:47:01'),
(16,'pt-br','Portuguese (Brazil)','2024-10-08 20:47:01','2024-10-08 20:47:01');

/*Table structure for table `lead_activity_logs` */

DROP TABLE IF EXISTS `lead_activity_logs`;

CREATE TABLE `lead_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `lead_id` bigint unsigned NOT NULL,
  `log_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `remark` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `lead_activity_logs` */

/*Table structure for table `lead_calls` */

DROP TABLE IF EXISTS `lead_calls`;

CREATE TABLE `lead_calls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint unsigned NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `call_type` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `user_id` int NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `call_result` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_calls_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_calls_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `lead_calls` */

/*Table structure for table `lead_discussions` */

DROP TABLE IF EXISTS `lead_discussions`;

CREATE TABLE `lead_discussions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint unsigned NOT NULL,
  `comment` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_discussions_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_discussions_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `lead_discussions` */

/*Table structure for table `lead_emails` */

DROP TABLE IF EXISTS `lead_emails`;

CREATE TABLE `lead_emails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint unsigned NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_emails_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_emails_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `lead_emails` */

/*Table structure for table `lead_files` */

DROP TABLE IF EXISTS `lead_files`;

CREATE TABLE `lead_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint unsigned NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_files_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_files_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `lead_files` */

/*Table structure for table `lead_stages` */

DROP TABLE IF EXISTS `lead_stages`;

CREATE TABLE `lead_stages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pipeline_id` int NOT NULL,
  `created_by` int NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `lead_stages` */

/*Table structure for table `leads` */

DROP TABLE IF EXISTS `leads`;

CREATE TABLE `leads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `user_id` int NOT NULL,
  `pipeline_id` int NOT NULL,
  `stage_id` int NOT NULL,
  `sources` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `products` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_spanish_ci,
  `labels` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `is_converted` int NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `leads` */

/*Table structure for table `leave_types` */

DROP TABLE IF EXISTS `leave_types`;

CREATE TABLE `leave_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `days` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `leave_types` */

/*Table structure for table `leaves` */

DROP TABLE IF EXISTS `leaves`;

CREATE TABLE `leaves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `leave_type_id` int NOT NULL,
  `applied_on` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_leave_days` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `leave_reason` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `remark` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `leaves` */

/*Table structure for table `loan_options` */

DROP TABLE IF EXISTS `loan_options`;

CREATE TABLE `loan_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `loan_options` */

/*Table structure for table `loans` */

DROP TABLE IF EXISTS `loans`;

CREATE TABLE `loans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `loan_option` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `loans` */

/*Table structure for table `log_activities` */

DROP TABLE IF EXISTS `log_activities`;

CREATE TABLE `log_activities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `start_date` date NOT NULL,
  `time` time NOT NULL,
  `note` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `module_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `module_id` bigint unsigned NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `log_activities` */

/*Table structure for table `login_details` */

DROP TABLE IF EXISTS `login_details`;

CREATE TABLE `login_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Details` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `login_details` */

/*Table structure for table `meeting_employees` */

DROP TABLE IF EXISTS `meeting_employees`;

CREATE TABLE `meeting_employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meeting_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `meeting_employees` */

/*Table structure for table `meetings` */

DROP TABLE IF EXISTS `meetings`;

CREATE TABLE `meetings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `department_id` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `employee_id` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `note` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `meetings` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_09_22_192348_create_messages_table',1),
(5,'2019_09_28_102009_create_settings_table',1),
(6,'2019_09_30_050856_create_pipelines_table',1),
(7,'2019_09_30_052036_create_sources_table',1),
(8,'2019_09_30_061801_create_stages_table',1),
(9,'2019_09_30_092218_create_labels_table',1),
(10,'2019_10_03_052618_create_deals_table',1),
(11,'2019_10_05_045358_create_user_deals_table',1),
(12,'2019_10_05_045359_create_client_deals_table',1),
(13,'2019_10_07_054657_create_deal_files_table',1),
(14,'2019_10_07_091153_create_deal_tasks_table',1),
(15,'2019_10_14_055151_create_deal_discussions_table',1),
(16,'2019_10_16_211433_create_favorites_table',1),
(17,'2019_10_24_060326_create_projectstages_table',1),
(18,'2019_11_12_073012_create_bug_comments_table',1),
(19,'2019_11_12_100007_create_bug_files_table',1),
(20,'2019_11_13_051828_create_taxes_table',1),
(21,'2019_11_13_055026_create_invoices_table',1),
(22,'2019_11_21_090403_create_plans_table',1),
(23,'2019_12_14_000001_create_personal_access_tokens_table',1),
(24,'2019_12_18_110230_create_bugs_table',1),
(25,'2019_12_18_112007_create_bug_statuses_table',1),
(26,'2019_12_26_101754_create_departments_table',1),
(27,'2019_12_26_101814_create_designations_table',1),
(28,'2019_12_26_105721_create_documents_table',1),
(29,'2019_12_27_083751_create_branches_table',1),
(30,'2019_12_27_090831_create_employees_table',1),
(31,'2019_12_27_112922_create_employee_documents_table',1),
(32,'2019_12_28_050508_create_awards_table',1),
(33,'2019_12_28_050919_create_award_types_table',1),
(34,'2019_12_31_060916_create_termination_types_table',1),
(35,'2019_12_31_062259_create_terminations_table',1),
(36,'2019_12_31_070521_create_resignations_table',1),
(37,'2019_12_31_072252_create_travels_table',1),
(38,'2019_12_31_090637_create_promotions_table',1),
(39,'2019_12_31_092838_create_transfers_table',1),
(40,'2019_12_31_100319_create_warnings_table',1),
(41,'2019_12_31_103019_create_complaints_table',1),
(42,'2020_01_02_090837_create_payslip_types_table',1),
(43,'2020_01_02_093331_create_allowance_options_table',1),
(44,'2020_01_02_102558_create_loan_options_table',1),
(45,'2020_01_02_103822_create_deduction_options_table',1),
(46,'2020_01_02_110828_create_genrate_payslip_options_table',1),
(47,'2020_01_02_111807_create_set_salaries_table',1),
(48,'2020_01_03_084302_create_allowances_table',1),
(49,'2020_01_03_101735_create_commissions_table',1),
(50,'2020_01_03_105019_create_loans_table',1),
(51,'2020_01_03_105046_create_saturation_deductions_table',1),
(52,'2020_01_03_105100_create_other_payments_table',1),
(53,'2020_01_03_105111_create_overtimes_table',1),
(54,'2020_01_04_060343_create_contract_types_table',1),
(55,'2020_01_04_060343_create_performance_type_table',1),
(56,'2020_01_04_060354_create_contracts_table',1),
(57,'2020_01_04_072527_create_pay_slips_table',1),
(58,'2020_01_08_063207_create_product_services_table',1),
(59,'2020_01_08_084029_create_product_service_categories_table',1),
(60,'2020_01_08_092717_create_product_service_units_table',1),
(61,'2020_01_08_121541_create_customers_table',1),
(62,'2020_01_09_104945_create_venders_table',1),
(63,'2020_01_09_113852_create_bank_accounts_table',1),
(64,'2020_01_09_124222_create_bank_transfers_table',1),
(65,'2020_01_10_064723_create_transactions_table',1),
(66,'2020_01_13_072608_create_invoice_products_table',1),
(67,'2020_01_13_084720_create_events_table',1),
(68,'2020_01_15_034438_create_revenues_table',1),
(69,'2020_01_15_051228_create_bills_table',1),
(70,'2020_01_15_060859_create_bill_products_table',1),
(71,'2020_01_15_073237_create_payments_table',1),
(72,'2020_01_16_041720_create_announcements_table',1),
(73,'2020_01_16_043907_create_orders_table',1),
(74,'2020_01_16_090747_create_leave_types_table',1),
(75,'2020_01_16_093256_create_leaves_table',1),
(76,'2020_01_16_110357_create_meetings_table',1),
(77,'2020_01_18_051650_create_invoice_payments_table',1),
(78,'2020_01_18_051650_create_pos_payments_table',1),
(79,'2020_01_20_091035_create_bill_payments_table',1),
(80,'2020_01_23_101613_create_meeting_employees_table',1),
(81,'2020_01_23_123844_create_event_employees_table',1),
(82,'2020_01_24_062752_create_announcement_employees_table',1),
(83,'2020_01_27_052503_create_attendance_employees_table',1),
(84,'2020_02_25_052356_create_credit_notes_table',1),
(85,'2020_02_26_033827_create_debit_notes_table',1),
(86,'2020_03_04_122711_create_leads_table',1),
(87,'2020_03_04_122801_create_lead_stages_table',1),
(88,'2020_03_05_042105_create_lead_activity_logs_table',1),
(89,'2020_03_05_042308_create_lead_discussions_table',1),
(90,'2020_03_05_042318_create_user_leads_table',1),
(91,'2020_03_05_042549_create_lead_files_table',1),
(92,'2020_03_05_042636_create_lead_emails_table',1),
(93,'2020_03_05_042710_create_lead_calls_table',1),
(94,'2020_03_05_044157_create_deal_emails_table',1),
(95,'2020_03_05_044322_create_deal_calls_table',1),
(96,'2020_03_12_095629_create_coupons_table',1),
(97,'2020_03_12_120749_create_user_coupons_table',1),
(98,'2020_03_17_104345_create_estimations_table',1),
(99,'2020_03_18_104909_create_notifications_table',1),
(100,'2020_04_02_045834_create_proposals_table',1),
(101,'2020_04_02_055706_create_proposal_products_table',1),
(102,'2020_04_18_035141_create_goals_table',1),
(103,'2020_04_21_115823_create_assets_table',1),
(104,'2020_04_24_023732_create_custom_fields_table',1),
(105,'2020_04_24_024217_create_custom_field_values_table',1),
(106,'2020_05_01_122144_create_ducument_uploads_table',1),
(107,'2020_05_02_075614_create_email_templates_table',1),
(108,'2020_05_02_075630_create_email_template_langs_table',1),
(109,'2020_05_02_075647_create_user_email_templates_table',1),
(110,'2020_05_04_070452_create_indicators_table',1),
(111,'2020_05_05_023742_create_appraisals_table',1),
(112,'2020_05_05_061241_create_goal_types_table',1),
(113,'2020_05_05_095926_create_goal_trackings_table',1),
(114,'2020_05_07_093520_create_company_policies_table',1),
(115,'2020_05_07_131311_create_training_types_table',1),
(116,'2020_05_08_023838_create_trainers_table',1),
(117,'2020_05_08_043039_create_trainings_table',1),
(118,'2020_05_21_065337_create_permission_tables',1),
(119,'2020_06_02_085538_create_task_stages_table',1),
(120,'2020_06_30_043627_create_user_to_dos_table',1),
(121,'2020_07_04_041452_create_project_email_templates_table',1),
(122,'2020_07_06_110501_create_user_contacts_table',1),
(123,'2020_08_10_073242_create_project_invoices_table',1),
(124,'2020_08_26_093539_create_time_trackers_table',1),
(125,'2020_10_07_034726_create_holidays_table',1),
(126,'2021_01_11_062508_create_chart_of_accounts_table',1),
(127,'2021_01_11_070441_create_chart_of_account_types_table',1),
(128,'2021_01_12_032834_create_journal_entries_table',1),
(129,'2021_01_12_033815_create_journal_items_table',1),
(130,'2021_01_20_072219_create_chart_of_account_sub_types_table',1),
(131,'2021_01_20_113044_create_log_activities_table',1),
(132,'2021_03_13_093312_create_ip_restricts_table',1),
(133,'2021_03_13_114832_create_job_categories_table',1),
(134,'2021_03_13_123125_create_job_stages_table',1),
(135,'2021_03_15_094707_create_jobs_table',1),
(136,'2021_03_15_153745_create_job_applications_table',1),
(137,'2021_03_16_115140_create_job_application_notes_table',1),
(138,'2021_03_17_100224_create_projects_table',1),
(139,'2021_03_17_163107_create_custom_questions_table',1),
(140,'2021_03_18_060536_create_project_tasks_table',1),
(141,'2021_03_18_070146_create_milestones_table',1),
(142,'2021_03_18_091547_create_task_checklists_table',1),
(143,'2021_03_18_092113_create_task_files_table',1),
(144,'2021_03_18_092400_create_task_comments_table',1),
(145,'2021_03_18_102517_create_activity_logs_table',1),
(146,'2021_03_18_140630_create_interview_schedules_table',1),
(147,'2021_03_19_053350_create_project_users_table',1),
(148,'2021_03_22_100636_create_expenses_table',1),
(149,'2021_03_22_122532_create_job_on_boards_table',1),
(150,'2021_03_23_032633_create_timesheets_table',1),
(151,'2021_08_03_093459_create_form_builders_table',1),
(152,'2021_08_03_094508_create_form_fields_table',1),
(153,'2021_08_03_094534_create_form_field_responses_table',1),
(154,'2021_08_03_094548_create_form_responses_table',1),
(155,'2021_08_04_072610_admin_payment_settings',1),
(156,'2021_08_04_090539_company_payment_settings',1),
(157,'2021_08_05_114738_create_supports_table',1),
(158,'2021_08_05_115212_create_support_replies_table',1),
(159,'2021_08_20_084119_create_competencies_table',1),
(160,'2021_09_03_112043_create_track_photos_table',1),
(161,'2021_09_10_165514_create_plan_requests_table',1),
(162,'2021_12_02_052828_create_budgets_table',1),
(163,'2021_12_24_104639_create_zoom_meetings_table',1),
(164,'2022_03_11_035602_create_stock_reports_table',1),
(165,'2022_07_21_033939_create_contract_attachment_table',1),
(166,'2022_07_21_034802_create_contract_comment_table',1),
(167,'2022_07_21_034957_create_contract_notes_table',1),
(168,'2022_08_10_051439_generate__offer__letter',1),
(169,'2022_08_16_050109_joining_letter',1),
(170,'2022_08_17_045033_experience_certificate',1),
(171,'2022_08_17_051049_create_warehouses_table',1),
(172,'2022_08_17_065806_noc_certificate',1),
(173,'2022_08_18_055612_create_purchases_table',1),
(174,'2022_08_18_072314_create_purchase_products_table',1),
(175,'2022_08_22_050630_create_purchase_payments',1),
(176,'2022_08_24_045854_create_warehouse_products',1),
(177,'2022_08_25_112305_create_pos_table',1),
(178,'2022_08_25_124531_create_pos_products_table',1),
(179,'2023_01_30_121925_create_users_verify_table',1),
(180,'2023_04_19_113655_create_login_details_table',1),
(181,'2023_04_20_102814_create_notification_templates_table',1),
(182,'2023_04_20_121414_create_notification_template_langs_table',1),
(183,'2023_04_24_073041_create_webhook_settings_table',1),
(184,'2023_05_29_063149_create_invoice_bank_transfer_table',1),
(185,'2023_06_06_043306_create_templates_table',1),
(186,'2023_06_27_114746_create_languages_table',1),
(187,'2023_07_12_220924_create_warehouse_transfers_table',1),
(188,'2023_07_27_144907_create_bill_account_table',1),
(189,'2023_11_27_063431_create_transaction_lines_table',1),
(190,'2023_12_19_064623_create_chart_of_account_parents_table',1),
(191,'2023_12_20_093701_create_project_expenses_table',1),
(192,'2023_12_29_102759_add_is_disable_to_users',1),
(193,'2023_12_29_103429_add_parent_to_chart_of_accounts',1),
(194,'2023_12_29_104251_add_created_by_to_chart_of_account_sub_types',1),
(195,'2023_12_29_104756_add_account_to_employees',1),
(196,'2023_12_29_111111_add_trial_days_to_plans',1),
(197,'2024_01_01_120241_add_trial_plan_to_users',1),
(198,'2024_01_01_122657_create_quotations_table',1),
(199,'2024_01_02_051316_create_quotation_products_table',1),
(200,'2024_01_09_070305_add_credit_balance_to_customers',1),
(201,'2024_01_12_110125_add_is_enable_login_to_users',1),
(202,'2024_01_27_031721_add_is_disable_to_plans',1),
(203,'2024_01_27_034059_add_is_refund_to_orders',1),
(204,'2024_03_07_102755_create_referral_settings_table',1),
(205,'2024_03_08_065946_add_referral_code_to_users',1),
(206,'2024_03_08_104116_create_referral_transactions_table',1),
(207,'2024_03_11_112409_create_transaction_orders_table',1),
(208,'2024_04_01_050246_add_expires_at_to_personal_access_tokens',1),
(209,'2024_05_09_045401_add_branch_id_to_designations_table',1),
(210,'2024_05_09_062707_add_biometric_emp_id_to_employees_table',1),
(211,'2024_08_10_171333_add_subdomain_to_users_table',1),
(212,'2024_08_10_181540_create_users_tenant_table',1),
(213,'2024_08_17_223152_create_plan_max_invoices_field',1),
(214,'2023_06_05_043450_create_landing_page_settings_table',2),
(215,'2023_06_10_114031_create_join_us_table',2);

/*Table structure for table `milestones` */

DROP TABLE IF EXISTS `milestones`;

CREATE TABLE `milestones` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `progress` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `cost` double(15,2) NOT NULL DEFAULT '0.00',
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `milestones` */

/*Table structure for table `model_has_permissions` */

DROP TABLE IF EXISTS `model_has_permissions`;

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `model_has_permissions` */

/*Table structure for table `model_has_roles` */

DROP TABLE IF EXISTS `model_has_roles`;

CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `model_has_roles` */

insert  into `model_has_roles`(`role_id`,`model_type`,`model_id`) values 
(1,'App\\Models\\User',1),
(4,'App\\Models\\User',2),
(4,'App\\Models\\User',3),
(5,'App\\Models\\User',3),
(4,'App\\Models\\User',4),
(6,'App\\Models\\User',4),
(7,'App\\Models\\User',5),
(4,'App\\Models\\User',7),
(4,'App\\Models\\User',8),
(4,'App\\Models\\User',9),
(4,'App\\Models\\User',10),
(4,'App\\Models\\User',11),
(4,'App\\Models\\User',12),
(4,'App\\Models\\User',13),
(4,'App\\Models\\User',14),
(4,'App\\Models\\User',15),
(4,'App\\Models\\User',16),
(4,'App\\Models\\User',17),
(4,'App\\Models\\User',18),
(4,'App\\Models\\User',19),
(4,'App\\Models\\User',20),
(4,'App\\Models\\User',21),
(4,'App\\Models\\User',22),
(4,'App\\Models\\User',23),
(4,'App\\Models\\User',24),
(4,'App\\Models\\User',25),
(4,'App\\Models\\User',26),
(4,'App\\Models\\User',27),
(4,'App\\Models\\User',28),
(4,'App\\Models\\User',29),
(4,'App\\Models\\User',30),
(4,'App\\Models\\User',31),
(4,'App\\Models\\User',32),
(4,'App\\Models\\User',33),
(4,'App\\Models\\User',34),
(4,'App\\Models\\User',35),
(4,'App\\Models\\User',36),
(4,'App\\Models\\User',37),
(4,'App\\Models\\User',38),
(4,'App\\Models\\User',39),
(4,'App\\Models\\User',40);

/*Table structure for table `noc_certificates` */

DROP TABLE IF EXISTS `noc_certificates`;

CREATE TABLE `noc_certificates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `noc_certificates` */

/*Table structure for table `notification_template_langs` */

DROP TABLE IF EXISTS `notification_template_langs`;

CREATE TABLE `notification_template_langs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `lang` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `variables` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `notification_template_langs` */

/*Table structure for table `notification_templates` */

DROP TABLE IF EXISTS `notification_templates`;

CREATE TABLE `notification_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `notification_templates` */

/*Table structure for table `notifications` */

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `type` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `data` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `is_read` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `notifications` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `card_number` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `card_exp_month` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `card_exp_year` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `plan_name` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `plan_id` int NOT NULL,
  `price` decimal(15,2) DEFAULT '0.00',
  `price_currency` varchar(10) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `txn_id` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `payment_status` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Manually',
  `receipt` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `is_refund` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_order_id_unique` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `orders` */

/*Table structure for table `other_payments` */

DROP TABLE IF EXISTS `other_payments`;

CREATE TABLE `other_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `other_payments` */

/*Table structure for table `overtimes` */

DROP TABLE IF EXISTS `overtimes`;

CREATE TABLE `overtimes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `number_of_days` int NOT NULL,
  `hours` int NOT NULL,
  `rate` int NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `overtimes` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `password_resets` */

/*Table structure for table `pay_slips` */

DROP TABLE IF EXISTS `pay_slips`;

CREATE TABLE `pay_slips` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `net_payble` int NOT NULL,
  `salary_month` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `status` int NOT NULL,
  `basic_salary` int NOT NULL,
  `allowance` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `commission` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `loan` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `saturation_deduction` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `other_payment` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `overtime` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `pay_slips` */

/*Table structure for table `payments` */

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int NOT NULL,
  `chart_account_id` int NOT NULL DEFAULT '0',
  `vender_id` int NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `category_id` int NOT NULL,
  `recurring` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `payment_method` int NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `add_receipt` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `payments` */

/*Table structure for table `payslip_types` */

DROP TABLE IF EXISTS `payslip_types`;

CREATE TABLE `payslip_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `payslip_types` */

/*Table structure for table `performance_types` */

DROP TABLE IF EXISTS `performance_types`;

CREATE TABLE `performance_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `performance_types` */

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`name`,`guard_name`,`created_at`,`updated_at`) values 
(1,'show pos dashboard','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(2,'show crm dashboard','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(3,'show hrm dashboard','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(4,'copy invoice','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(5,'show project dashboard','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(6,'show account dashboard','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(7,'manage user','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(8,'create user','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(9,'edit user','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(10,'delete user','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(11,'create language','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(12,'manage role','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(13,'create role','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(14,'edit role','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(15,'delete role','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(16,'manage permission','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(17,'create permission','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(18,'edit permission','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(19,'delete permission','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(20,'manage company settings','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(21,'manage print settings','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(22,'manage business settings','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(23,'manage stripe settings','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(24,'manage expense','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(25,'create expense','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(26,'edit expense','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(27,'delete expense','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(28,'manage invoice','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(29,'create invoice','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(30,'edit invoice','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(31,'delete invoice','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(32,'show invoice','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(33,'create payment invoice','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(34,'delete payment invoice','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(35,'send invoice','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(36,'delete invoice product','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(37,'convert invoice','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(38,'manage constant unit','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(39,'create constant unit','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(40,'edit constant unit','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(41,'delete constant unit','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(42,'manage constant tax','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(43,'create constant tax','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(44,'edit constant tax','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(45,'delete constant tax','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(46,'manage constant category','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(47,'create constant category','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(48,'edit constant category','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(49,'delete constant category','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(50,'manage product & service','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(51,'create product & service','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(52,'edit product & service','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(53,'delete product & service','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(54,'manage customer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(55,'create customer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(56,'edit customer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(57,'delete customer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(58,'show customer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(59,'manage vender','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(60,'create vender','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(61,'edit vender','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(62,'delete vender','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(63,'show vender','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(64,'manage bank account','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(65,'create bank account','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(66,'edit bank account','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(67,'delete bank account','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(68,'manage bank transfer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(69,'create bank transfer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(70,'edit bank transfer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(71,'delete bank transfer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(72,'manage transaction','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(73,'manage revenue','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(74,'create revenue','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(75,'edit revenue','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(76,'delete revenue','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(77,'manage bill','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(78,'create bill','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(79,'edit bill','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(80,'delete bill','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(81,'show bill','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(82,'manage payment','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(83,'create payment','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(84,'edit payment','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(85,'delete payment','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(86,'delete bill product','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(87,'send bill','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(88,'create payment bill','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(89,'delete payment bill','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(90,'manage order','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(91,'income report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(92,'expense report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(93,'income vs expense report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(94,'invoice report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(95,'bill report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(96,'stock report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(97,'tax report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(98,'loss & profit report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(99,'manage customer payment','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(100,'manage customer transaction','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(101,'manage customer invoice','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(102,'vender manage bill','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(103,'manage vender bill','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(104,'manage vender payment','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(105,'manage vender transaction','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(106,'manage credit note','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(107,'create credit note','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(108,'edit credit note','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(109,'delete credit note','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(110,'manage debit note','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(111,'create debit note','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(112,'edit debit note','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(113,'delete debit note','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(114,'duplicate invoice','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(115,'duplicate bill','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(116,'manage proposal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(117,'create proposal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(118,'edit proposal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(119,'delete proposal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(120,'duplicate proposal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(121,'show proposal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(122,'send proposal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(123,'delete proposal product','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(124,'manage customer proposal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(125,'manage goal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(126,'create goal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(127,'edit goal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(128,'delete goal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(129,'manage assets','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(130,'create assets','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(131,'edit assets','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(132,'delete assets','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(133,'statement report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(134,'manage constant custom field','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(135,'create constant custom field','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(136,'edit constant custom field','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(137,'delete constant custom field','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(138,'manage chart of account','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(139,'create chart of account','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(140,'edit chart of account','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(141,'delete chart of account','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(142,'manage journal entry','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(143,'create journal entry','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(144,'edit journal entry','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(145,'delete journal entry','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(146,'show journal entry','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(147,'balance sheet report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(148,'ledger report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(149,'trial balance report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(150,'manage client','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(151,'create client','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(152,'edit client','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(153,'delete client','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(154,'manage lead','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(155,'create lead','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(156,'view lead','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(157,'edit lead','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(158,'delete lead','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(159,'move lead','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(160,'create lead call','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(161,'edit lead call','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(162,'delete lead call','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(163,'create lead email','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(164,'manage pipeline','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(165,'create pipeline','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(166,'edit pipeline','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(167,'delete pipeline','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(168,'manage lead stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(169,'create lead stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(170,'edit lead stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(171,'delete lead stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(172,'convert lead to deal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(173,'manage source','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(174,'create source','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(175,'edit source','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(176,'delete source','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(177,'manage label','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(178,'create label','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(179,'edit label','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(180,'delete label','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(181,'manage deal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(182,'create deal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(183,'view task','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(184,'create task','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(185,'edit task','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(186,'delete task','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(187,'edit deal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(188,'view deal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(189,'delete deal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(190,'move deal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(191,'create deal call','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(192,'edit deal call','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(193,'delete deal call','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(194,'create deal email','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(195,'manage stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(196,'create stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(197,'edit stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(198,'delete stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(199,'manage employee','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(200,'create employee','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(201,'view employee','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(202,'edit employee','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(203,'delete employee','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(204,'manage employee profile','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(205,'show employee profile','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(206,'manage department','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(207,'create department','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(208,'view department','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(209,'edit department','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(210,'delete department','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(211,'manage designation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(212,'create designation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(213,'view designation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(214,'edit designation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(215,'delete designation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(216,'manage branch','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(217,'create branch','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(218,'edit branch','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(219,'delete branch','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(220,'manage document type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(221,'create document type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(222,'edit document type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(223,'delete document type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(224,'manage document','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(225,'create document','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(226,'edit document','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(227,'delete document','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(228,'manage payslip type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(229,'create payslip type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(230,'edit payslip type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(231,'delete payslip type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(232,'create allowance','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(233,'edit allowance','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(234,'delete allowance','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(235,'create commission','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(236,'edit commission','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(237,'delete commission','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(238,'manage allowance option','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(239,'create allowance option','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(240,'edit allowance option','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(241,'delete allowance option','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(242,'manage loan option','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(243,'create loan option','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(244,'edit loan option','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(245,'delete loan option','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(246,'manage deduction option','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(247,'create deduction option','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(248,'edit deduction option','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(249,'delete deduction option','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(250,'create loan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(251,'edit loan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(252,'delete loan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(253,'create saturation deduction','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(254,'edit saturation deduction','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(255,'delete saturation deduction','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(256,'create other payment','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(257,'edit other payment','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(258,'delete other payment','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(259,'create overtime','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(260,'edit overtime','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(261,'delete overtime','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(262,'manage set salary','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(263,'edit set salary','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(264,'manage pay slip','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(265,'create set salary','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(266,'create pay slip','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(267,'manage company policy','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(268,'create company policy','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(269,'edit company policy','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(270,'manage appraisal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(271,'create appraisal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(272,'edit appraisal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(273,'show appraisal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(274,'delete appraisal','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(275,'manage goal tracking','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(276,'create goal tracking','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(277,'edit goal tracking','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(278,'delete goal tracking','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(279,'manage goal type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(280,'create goal type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(281,'edit goal type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(282,'delete goal type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(283,'manage indicator','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(284,'create indicator','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(285,'edit indicator','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(286,'show indicator','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(287,'delete indicator','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(288,'manage training','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(289,'create training','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(290,'edit training','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(291,'delete training','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(292,'show training','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(293,'manage trainer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(294,'create trainer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(295,'edit trainer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(296,'delete trainer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(297,'manage training type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(298,'create training type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(299,'edit training type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(300,'delete training type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(301,'manage award','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(302,'create award','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(303,'edit award','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(304,'delete award','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(305,'manage award type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(306,'create award type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(307,'edit award type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(308,'delete award type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(309,'manage resignation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(310,'create resignation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(311,'edit resignation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(312,'delete resignation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(313,'manage travel','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(314,'create travel','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(315,'edit travel','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(316,'delete travel','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(317,'manage promotion','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(318,'create promotion','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(319,'edit promotion','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(320,'delete promotion','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(321,'manage complaint','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(322,'create complaint','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(323,'edit complaint','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(324,'delete complaint','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(325,'manage warning','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(326,'create warning','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(327,'edit warning','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(328,'delete warning','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(329,'manage termination','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(330,'create termination','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(331,'edit termination','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(332,'delete termination','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(333,'manage termination type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(334,'create termination type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(335,'edit termination type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(336,'delete termination type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(337,'manage job application','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(338,'create job application','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(339,'show job application','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(340,'delete job application','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(341,'move job application','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(342,'add job application skill','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(343,'add job application note','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(344,'delete job application note','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(345,'manage job onBoard','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(346,'manage job category','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(347,'create job category','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(348,'edit job category','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(349,'delete job category','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(350,'manage job','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(351,'create job','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(352,'edit job','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(353,'show job','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(354,'delete job','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(355,'manage job stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(356,'create job stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(357,'edit job stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(358,'delete job stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(359,'Manage Competencies','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(360,'Create Competencies','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(361,'Edit Competencies','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(362,'Delete Competencies','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(363,'manage custom question','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(364,'create custom question','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(365,'edit custom question','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(366,'delete custom question','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(367,'create interview schedule','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(368,'edit interview schedule','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(369,'delete interview schedule','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(370,'show interview schedule','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(371,'create estimation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(372,'view estimation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(373,'edit estimation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(374,'delete estimation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(375,'edit holiday','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(376,'create holiday','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(377,'delete holiday','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(378,'manage holiday','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(379,'show career','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(380,'manage meeting','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(381,'create meeting','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(382,'edit meeting','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(383,'delete meeting','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(384,'manage event','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(385,'create event','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(386,'edit event','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(387,'delete event','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(388,'manage transfer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(389,'create transfer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(390,'edit transfer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(391,'delete transfer','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(392,'manage announcement','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(393,'create announcement','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(394,'edit announcement','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(395,'delete announcement','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(396,'manage leave','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(397,'create leave','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(398,'edit leave','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(399,'delete leave','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(400,'manage leave type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(401,'create leave type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(402,'edit leave type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(403,'delete leave type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(404,'manage attendance','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(405,'create attendance','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(406,'edit attendance','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(407,'delete attendance','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(408,'manage report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(409,'manage project','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(410,'create project','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(411,'view project','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(412,'edit project','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(413,'delete project','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(414,'share project','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(415,'create milestone','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(416,'edit milestone','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(417,'delete milestone','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(418,'view milestone','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(419,'view grant chart','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(420,'manage project stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(421,'create project stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(422,'edit project stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(423,'delete project stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(424,'view timesheet','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(425,'view expense','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(426,'manage project task','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(427,'create project task','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(428,'edit project task','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(429,'view project task','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(430,'delete project task','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(431,'view activity','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(432,'view CRM activity','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(433,'manage project task stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(434,'edit project task stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(435,'create project task stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(436,'delete project task stage','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(437,'manage timesheet','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(438,'create timesheet','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(439,'edit timesheet','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(440,'delete timesheet','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(441,'manage bug report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(442,'create bug report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(443,'edit bug report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(444,'delete bug report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(445,'move bug report','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(446,'manage bug status','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(447,'create bug status','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(448,'edit bug status','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(449,'delete bug status','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(450,'manage client dashboard','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(451,'manage super admin dashboard','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(452,'manage system settings','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(453,'manage plan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(454,'create plan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(455,'edit plan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(456,'manage coupon','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(457,'create coupon','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(458,'edit coupon','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(459,'delete coupon','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(460,'manage company plan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(461,'buy plan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(462,'manage form builder','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(463,'create form builder','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(464,'edit form builder','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(465,'delete form builder','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(466,'manage performance type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(467,'create performance type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(468,'edit performance type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(469,'delete performance type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(470,'manage form field','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(471,'create form field','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(472,'edit form field','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(473,'delete form field','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(474,'view form response','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(475,'create budget plan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(476,'edit budget plan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(477,'manage budget plan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(478,'delete budget plan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(479,'view budget plan','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(480,'manage warehouse','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(481,'create warehouse','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(482,'edit warehouse','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(483,'show warehouse','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(484,'delete warehouse','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(485,'manage purchase','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(486,'create purchase','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(487,'edit purchase','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(488,'show purchase','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(489,'delete purchase','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(490,'send purchase','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(491,'create payment purchase','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(492,'delete payment purchase','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(493,'manage pos','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(494,'manage contract type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(495,'create contract type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(496,'edit contract type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(497,'delete contract type','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(498,'manage contract','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(499,'create contract','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(500,'edit contract','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(501,'delete contract','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(502,'show contract','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(503,'create barcode','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(504,'create webhook','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(505,'edit webhook','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(506,'delete webhook','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(507,'manage project expense','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(508,'create project expense','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(509,'edit project expense','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(510,'delete project expense','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(511,'manage quotation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(512,'create quotation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(513,'edit quotation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(514,'delete quotation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(515,'show quotation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(516,'convert quotation','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(517,'show pos','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(518,'manage zoom meeting','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(519,'create zoom meeting','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(520,'show zoom meeting','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(521,'delete zoom meeting','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(522,'delete company policy','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(523,'manage biometric attendance','web','2024-10-08 20:46:58','2024-10-08 20:46:58'),
(524,'biometric attendance synchronize','web','2024-10-08 20:46:58','2024-10-08 20:46:58');

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_spanish_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_spanish_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `pipelines` */

DROP TABLE IF EXISTS `pipelines`;

CREATE TABLE `pipelines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `pipelines` */

/*Table structure for table `plan_requests` */

DROP TABLE IF EXISTS `plan_requests`;

CREATE TABLE `plan_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `plan_id` int NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'monthly',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `plan_requests` */

/*Table structure for table `plans` */

DROP TABLE IF EXISTS `plans`;

CREATE TABLE `plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `price` decimal(30,2) DEFAULT '0.00',
  `duration` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `max_users` int NOT NULL DEFAULT '0',
  `max_customers` int NOT NULL DEFAULT '0',
  `max_venders` int NOT NULL DEFAULT '0',
  `max_clients` int NOT NULL DEFAULT '0',
  `max_invoices` int NOT NULL DEFAULT '0',
  `trial` int NOT NULL DEFAULT '0',
  `trial_days` int DEFAULT NULL,
  `is_disable` int NOT NULL DEFAULT '1',
  `storage_limit` double(8,2) NOT NULL DEFAULT '0.00',
  `chatgpt` int NOT NULL DEFAULT '0',
  `crm` int NOT NULL DEFAULT '0',
  `hrm` int NOT NULL DEFAULT '0',
  `account` int NOT NULL DEFAULT '0',
  `project` int NOT NULL DEFAULT '0',
  `pos` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_spanish_ci,
  `image` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plans_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `plans` */

insert  into `plans`(`id`,`name`,`price`,`duration`,`max_users`,`max_customers`,`max_venders`,`max_clients`,`max_invoices`,`trial`,`trial_days`,`is_disable`,`storage_limit`,`chatgpt`,`crm`,`hrm`,`account`,`project`,`pos`,`description`,`image`,`created_at`,`updated_at`) values 
(1,'Plan Gratuito',0.00,'lifetime',1,1,1,1,3,0,NULL,1,0.00,0,0,1,1,0,1,'Plan diseñado para Persona fisica','free_plan.png','2024-08-16 13:52:07','2024-08-18 22:17:11');

/*Table structure for table `pos` */

DROP TABLE IF EXISTS `pos`;

CREATE TABLE `pos` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `pos` */

/*Table structure for table `pos_payments` */

DROP TABLE IF EXISTS `pos_payments`;

CREATE TABLE `pos_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pos_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(15,2) DEFAULT '0.00',
  `discount_amount` decimal(15,2) DEFAULT '0.00',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `pos_payments` */

/*Table structure for table `pos_products` */

DROP TABLE IF EXISTS `pos_products`;

CREATE TABLE `pos_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pos_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `tax` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0.00',
  `discount` double(8,2) DEFAULT '0.00',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `pos_products` */

/*Table structure for table `product_service_categories` */

DROP TABLE IF EXISTS `product_service_categories`;

CREATE TABLE `product_service_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0',
  `chart_account_id` int NOT NULL DEFAULT '0',
  `color` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '#fc544b',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `product_service_categories` */

/*Table structure for table `product_service_units` */

DROP TABLE IF EXISTS `product_service_units`;

CREATE TABLE `product_service_units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `product_service_units` */

/*Table structure for table `product_services` */

DROP TABLE IF EXISTS `product_services`;

CREATE TABLE `product_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `sale_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `tax_id` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `category_id` int NOT NULL DEFAULT '0',
  `unit_id` int NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `sale_chartaccount_id` int NOT NULL DEFAULT '0',
  `expense_chartaccount_id` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_spanish_ci,
  `pro_image` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `product_services` */

/*Table structure for table `project_email_templates` */

DROP TABLE IF EXISTS `project_email_templates`;

CREATE TABLE `project_email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int NOT NULL,
  `project_id` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `project_email_templates` */

/*Table structure for table `project_expenses` */

DROP TABLE IF EXISTS `project_expenses`;

CREATE TABLE `project_expenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `attachment` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `project_id` int NOT NULL,
  `task_id` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `project_expenses` */

/*Table structure for table `project_invoices` */

DROP TABLE IF EXISTS `project_invoices`;

CREATE TABLE `project_invoices` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `project_invoices` */

/*Table structure for table `project_tasks` */

DROP TABLE IF EXISTS `project_tasks`;

CREATE TABLE `project_tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `estimated_hrs` int NOT NULL DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'medium',
  `priority_color` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `assign_to` text COLLATE utf8mb4_spanish_ci,
  `project_id` int NOT NULL DEFAULT '0',
  `milestone_id` int NOT NULL DEFAULT '0',
  `stage_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `is_favourite` int NOT NULL DEFAULT '0',
  `is_complete` int NOT NULL DEFAULT '0',
  `marked_at` date DEFAULT NULL,
  `progress` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `project_tasks` */

/*Table structure for table `project_users` */

DROP TABLE IF EXISTS `project_users`;

CREATE TABLE `project_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `user_id` int NOT NULL,
  `invited_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `project_users` */

/*Table structure for table `projects` */

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `project_image` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `budget` int DEFAULT NULL,
  `client_id` int NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estimated_hrs` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `copylinksetting` text COLLATE utf8mb4_spanish_ci,
  `tags` text COLLATE utf8mb4_spanish_ci,
  `created_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `projects` */

/*Table structure for table `projectstages` */

DROP TABLE IF EXISTS `projectstages`;

CREATE TABLE `projectstages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `color` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `projectstages` */

/*Table structure for table `promotions` */

DROP TABLE IF EXISTS `promotions`;

CREATE TABLE `promotions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL DEFAULT '0',
  `designation_id` int NOT NULL DEFAULT '0',
  `promotion_title` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `promotion_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `promotions` */

/*Table structure for table `proposal_products` */

DROP TABLE IF EXISTS `proposal_products`;

CREATE TABLE `proposal_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `proposal_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `proposal_products` */

/*Table structure for table `proposals` */

DROP TABLE IF EXISTS `proposals`;

CREATE TABLE `proposals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `proposal_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `issue_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `discount_apply` int NOT NULL DEFAULT '0',
  `is_convert` int NOT NULL DEFAULT '0',
  `converted_invoice_id` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `proposals` */

/*Table structure for table `purchase_payments` */

DROP TABLE IF EXISTS `purchase_payments`;

CREATE TABLE `purchase_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `account_id` int NOT NULL,
  `payment_method` int NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `add_receipt` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `purchase_payments` */

/*Table structure for table `purchase_products` */

DROP TABLE IF EXISTS `purchase_products`;

CREATE TABLE `purchase_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `purchase_products` */

/*Table structure for table `purchases` */

DROP TABLE IF EXISTS `purchases`;

CREATE TABLE `purchases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `purchases` */

/*Table structure for table `quotation_products` */

DROP TABLE IF EXISTS `quotation_products`;

CREATE TABLE `quotation_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `tax` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0.00',
  `discount` double(8,2) DEFAULT '0.00',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `quotation_products` */

/*Table structure for table `quotations` */

DROP TABLE IF EXISTS `quotations`;

CREATE TABLE `quotations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` bigint unsigned NOT NULL DEFAULT '0',
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `warehouse_id` int NOT NULL DEFAULT '0',
  `quotation_date` date DEFAULT NULL,
  `category_id` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `converted_pos_id` int NOT NULL DEFAULT '0',
  `is_converted` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `quotations` */

/*Table structure for table `referral_settings` */

DROP TABLE IF EXISTS `referral_settings`;

CREATE TABLE `referral_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `percentage` int NOT NULL,
  `minimum_threshold_amount` int NOT NULL,
  `is_enable` int NOT NULL DEFAULT '0',
  `guideline` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `referral_settings` */

/*Table structure for table `referral_transactions` */

DROP TABLE IF EXISTS `referral_transactions`;

CREATE TABLE `referral_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `plan_id` int NOT NULL,
  `plan_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `commission` int NOT NULL,
  `referral_code` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `referral_transactions` */

/*Table structure for table `resignations` */

DROP TABLE IF EXISTS `resignations`;

CREATE TABLE `resignations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL DEFAULT '0',
  `notice_date` date NOT NULL,
  `resignation_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `resignations` */

/*Table structure for table `revenues` */

DROP TABLE IF EXISTS `revenues`;

CREATE TABLE `revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `category_id` int NOT NULL,
  `payment_method` int NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `add_receipt` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `revenues` */

/*Table structure for table `role_has_permissions` */

DROP TABLE IF EXISTS `role_has_permissions`;

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `role_has_permissions` */

insert  into `role_has_permissions`(`permission_id`,`role_id`) values 
(7,1),
(8,1),
(9,1),
(10,1),
(11,1),
(12,1),
(13,1),
(14,1),
(15,1),
(16,1),
(17,1),
(18,1),
(19,1),
(23,1),
(90,1),
(451,1),
(452,1),
(453,1),
(454,1),
(455,1),
(456,1),
(457,1),
(458,1),
(459,1),
(32,2),
(58,2),
(99,2),
(100,2),
(101,2),
(121,2),
(124,2),
(63,3),
(81,3),
(102,3),
(103,3),
(104,3),
(105,3),
(1,4),
(2,4),
(3,4),
(4,4),
(5,4),
(6,4),
(7,4),
(8,4),
(9,4),
(10,4),
(12,4),
(13,4),
(14,4),
(15,4),
(16,4),
(17,4),
(18,4),
(19,4),
(20,4),
(21,4),
(22,4),
(24,4),
(25,4),
(26,4),
(27,4),
(28,4),
(29,4),
(30,4),
(31,4),
(32,4),
(33,4),
(34,4),
(35,4),
(36,4),
(37,4),
(38,4),
(39,4),
(40,4),
(41,4),
(42,4),
(43,4),
(44,4),
(45,4),
(46,4),
(47,4),
(48,4),
(49,4),
(50,4),
(51,4),
(52,4),
(53,4),
(54,4),
(55,4),
(56,4),
(57,4),
(58,4),
(59,4),
(60,4),
(61,4),
(62,4),
(63,4),
(64,4),
(65,4),
(66,4),
(67,4),
(68,4),
(69,4),
(70,4),
(71,4),
(72,4),
(73,4),
(74,4),
(75,4),
(76,4),
(77,4),
(78,4),
(79,4),
(80,4),
(81,4),
(82,4),
(83,4),
(84,4),
(85,4),
(86,4),
(87,4),
(88,4),
(89,4),
(90,4),
(91,4),
(92,4),
(93,4),
(94,4),
(95,4),
(96,4),
(97,4),
(98,4),
(106,4),
(107,4),
(108,4),
(109,4),
(110,4),
(111,4),
(112,4),
(113,4),
(114,4),
(115,4),
(116,4),
(117,4),
(118,4),
(119,4),
(120,4),
(121,4),
(122,4),
(123,4),
(125,4),
(126,4),
(127,4),
(128,4),
(129,4),
(130,4),
(131,4),
(132,4),
(133,4),
(134,4),
(135,4),
(136,4),
(137,4),
(138,4),
(139,4),
(140,4),
(141,4),
(142,4),
(143,4),
(144,4),
(145,4),
(146,4),
(147,4),
(148,4),
(149,4),
(150,4),
(151,4),
(152,4),
(153,4),
(154,4),
(155,4),
(156,4),
(157,4),
(158,4),
(159,4),
(160,4),
(161,4),
(162,4),
(163,4),
(164,4),
(165,4),
(166,4),
(167,4),
(168,4),
(169,4),
(170,4),
(171,4),
(172,4),
(173,4),
(174,4),
(175,4),
(176,4),
(177,4),
(178,4),
(179,4),
(180,4),
(181,4),
(182,4),
(183,4),
(184,4),
(185,4),
(186,4),
(187,4),
(188,4),
(189,4),
(190,4),
(191,4),
(192,4),
(193,4),
(194,4),
(195,4),
(196,4),
(197,4),
(198,4),
(199,4),
(200,4),
(201,4),
(202,4),
(203,4),
(204,4),
(205,4),
(206,4),
(207,4),
(208,4),
(209,4),
(210,4),
(211,4),
(212,4),
(213,4),
(214,4),
(215,4),
(216,4),
(217,4),
(218,4),
(219,4),
(220,4),
(221,4),
(222,4),
(223,4),
(224,4),
(225,4),
(226,4),
(227,4),
(228,4),
(229,4),
(230,4),
(231,4),
(232,4),
(233,4),
(234,4),
(235,4),
(236,4),
(237,4),
(238,4),
(239,4),
(240,4),
(241,4),
(242,4),
(243,4),
(244,4),
(245,4),
(246,4),
(247,4),
(248,4),
(249,4),
(250,4),
(251,4),
(252,4),
(253,4),
(254,4),
(255,4),
(256,4),
(257,4),
(258,4),
(259,4),
(260,4),
(261,4),
(262,4),
(263,4),
(264,4),
(265,4),
(266,4),
(267,4),
(268,4),
(269,4),
(270,4),
(271,4),
(272,4),
(273,4),
(274,4),
(275,4),
(276,4),
(277,4),
(278,4),
(279,4),
(280,4),
(281,4),
(282,4),
(283,4),
(284,4),
(285,4),
(286,4),
(287,4),
(288,4),
(289,4),
(290,4),
(291,4),
(292,4),
(293,4),
(294,4),
(295,4),
(296,4),
(297,4),
(298,4),
(299,4),
(300,4),
(301,4),
(302,4),
(303,4),
(304,4),
(305,4),
(306,4),
(307,4),
(308,4),
(309,4),
(310,4),
(311,4),
(312,4),
(313,4),
(314,4),
(315,4),
(316,4),
(317,4),
(318,4),
(319,4),
(320,4),
(321,4),
(322,4),
(323,4),
(324,4),
(325,4),
(326,4),
(327,4),
(328,4),
(329,4),
(330,4),
(331,4),
(332,4),
(333,4),
(334,4),
(335,4),
(336,4),
(337,4),
(338,4),
(339,4),
(340,4),
(341,4),
(342,4),
(343,4),
(344,4),
(345,4),
(346,4),
(347,4),
(348,4),
(349,4),
(350,4),
(351,4),
(352,4),
(353,4),
(354,4),
(355,4),
(356,4),
(357,4),
(358,4),
(359,4),
(360,4),
(361,4),
(362,4),
(363,4),
(364,4),
(365,4),
(366,4),
(367,4),
(368,4),
(369,4),
(370,4),
(371,4),
(372,4),
(373,4),
(374,4),
(375,4),
(376,4),
(377,4),
(378,4),
(379,4),
(380,4),
(381,4),
(382,4),
(383,4),
(384,4),
(385,4),
(386,4),
(387,4),
(388,4),
(389,4),
(390,4),
(391,4),
(392,4),
(393,4),
(394,4),
(395,4),
(396,4),
(397,4),
(398,4),
(399,4),
(400,4),
(401,4),
(402,4),
(403,4),
(404,4),
(405,4),
(406,4),
(407,4),
(408,4),
(409,4),
(410,4),
(411,4),
(412,4),
(413,4),
(414,4),
(415,4),
(416,4),
(417,4),
(418,4),
(419,4),
(420,4),
(421,4),
(422,4),
(423,4),
(424,4),
(425,4),
(426,4),
(427,4),
(428,4),
(429,4),
(430,4),
(431,4),
(432,4),
(433,4),
(434,4),
(435,4),
(436,4),
(437,4),
(438,4),
(439,4),
(440,4),
(441,4),
(442,4),
(443,4),
(444,4),
(445,4),
(446,4),
(447,4),
(448,4),
(449,4),
(453,4),
(460,4),
(461,4),
(462,4),
(463,4),
(464,4),
(465,4),
(466,4),
(467,4),
(468,4),
(469,4),
(470,4),
(471,4),
(472,4),
(473,4),
(474,4),
(475,4),
(476,4),
(477,4),
(478,4),
(479,4),
(480,4),
(481,4),
(482,4),
(483,4),
(484,4),
(485,4),
(486,4),
(487,4),
(488,4),
(489,4),
(490,4),
(491,4),
(492,4),
(493,4),
(494,4),
(495,4),
(496,4),
(497,4),
(498,4),
(499,4),
(500,4),
(501,4),
(502,4),
(503,4),
(504,4),
(505,4),
(506,4),
(507,4),
(508,4),
(509,4),
(510,4),
(511,4),
(512,4),
(513,4),
(514,4),
(515,4),
(516,4),
(517,4),
(518,4),
(519,4),
(520,4),
(521,4),
(522,4),
(523,4),
(524,4),
(6,5),
(21,5),
(24,5),
(25,5),
(26,5),
(27,5),
(28,5),
(29,5),
(30,5),
(31,5),
(32,5),
(33,5),
(34,5),
(35,5),
(36,5),
(37,5),
(38,5),
(39,5),
(40,5),
(41,5),
(42,5),
(43,5),
(44,5),
(45,5),
(46,5),
(47,5),
(48,5),
(49,5),
(50,5),
(51,5),
(52,5),
(53,5),
(54,5),
(55,5),
(56,5),
(57,5),
(58,5),
(59,5),
(60,5),
(61,5),
(62,5),
(63,5),
(64,5),
(65,5),
(66,5),
(67,5),
(68,5),
(69,5),
(70,5),
(71,5),
(72,5),
(73,5),
(74,5),
(75,5),
(76,5),
(77,5),
(78,5),
(79,5),
(80,5),
(81,5),
(82,5),
(83,5),
(84,5),
(85,5),
(86,5),
(87,5),
(88,5),
(89,5),
(91,5),
(92,5),
(93,5),
(94,5),
(95,5),
(96,5),
(97,5),
(98,5),
(106,5),
(107,5),
(108,5),
(109,5),
(110,5),
(111,5),
(112,5),
(113,5),
(116,5),
(117,5),
(118,5),
(119,5),
(120,5),
(121,5),
(122,5),
(123,5),
(125,5),
(126,5),
(127,5),
(128,5),
(129,5),
(130,5),
(131,5),
(132,5),
(133,5),
(134,5),
(135,5),
(136,5),
(137,5),
(138,5),
(139,5),
(140,5),
(141,5),
(142,5),
(143,5),
(144,5),
(145,5),
(146,5),
(147,5),
(148,5),
(149,5),
(475,5),
(476,5),
(477,5),
(478,5),
(479,5),
(503,5),
(504,5),
(505,5),
(506,5),
(523,5),
(524,5),
(3,6),
(7,6),
(199,6),
(201,6),
(204,6),
(205,6),
(264,6),
(267,6),
(301,6),
(317,6),
(321,6),
(325,6),
(329,6),
(350,6),
(353,6),
(378,6),
(380,6),
(384,6),
(392,6),
(396,6),
(164,7),
(168,7),
(173,7),
(177,7),
(181,7),
(183,7),
(188,7),
(190,7),
(195,7),
(409,7),
(411,7),
(419,7),
(424,7),
(426,7),
(427,7),
(428,7),
(429,7),
(430,7),
(431,7),
(437,7),
(441,7),
(442,7),
(443,7),
(444,7),
(445,7),
(450,7),
(498,7),
(502,7);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`guard_name`,`created_by`,`created_at`,`updated_at`) values 
(1,'super admin','web',0,'2024-10-08 20:46:58','2024-10-08 20:46:58'),
(2,'customer','web',0,'2024-10-08 20:46:58','2024-10-08 20:46:58'),
(3,'vender','web',0,'2024-10-08 20:46:59','2024-10-08 20:46:59'),
(4,'company','web',0,'2024-10-08 20:46:59','2024-10-08 20:46:59'),
(5,'accountant','web',2,'2024-10-08 20:47:00','2024-10-08 20:47:00'),
(6,'Employee','web',2,'2024-10-08 20:47:00','2024-10-08 20:47:00'),
(7,'client','web',2,'2024-10-08 20:47:00','2024-10-08 20:47:00');

/*Table structure for table `saturation_deductions` */

DROP TABLE IF EXISTS `saturation_deductions`;

CREATE TABLE `saturation_deductions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `deduction_option` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `saturation_deductions` */

/*Table structure for table `set_salaries` */

DROP TABLE IF EXISTS `set_salaries`;

CREATE TABLE `set_salaries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `set_salaries` */

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_name_created_by_unique` (`name`,`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `settings` */

insert  into `settings`(`id`,`name`,`value`,`created_by`,`created_at`,`updated_at`) values 
(1,'local_storage_validation','jpg,jpeg,png,xlsx,xls,csv,pdf',1,'2024-10-08 20:47:01','2024-10-08 20:47:01'),
(2,'wasabi_storage_validation','jpg,jpeg,png,xlsx,xls,csv,pdf',1,'2024-10-08 20:47:01','2024-10-08 20:47:01'),
(3,'s3_storage_validation','jpg,jpeg,png,xlsx,xls,csv,pdf',1,'2024-10-08 20:47:01','2024-10-08 20:47:01'),
(4,'local_storage_max_upload_size','2048000',1,'2024-10-08 20:47:01','2024-10-08 20:47:01'),
(5,'wasabi_max_upload_size','2048000',1,'2024-10-08 20:47:01','2024-10-08 20:47:01'),
(6,'s3_max_upload_size','2048000',1,'2024-10-08 20:47:01','2024-10-08 20:47:01'),
(7,'SITE_RTL','off',2,NULL,NULL);

/*Table structure for table `sources` */

DROP TABLE IF EXISTS `sources`;

CREATE TABLE `sources` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `sources` */

/*Table structure for table `stages` */

DROP TABLE IF EXISTS `stages`;

CREATE TABLE `stages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pipeline_id` int NOT NULL,
  `created_by` int NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `stages` */

/*Table structure for table `stock_reports` */

DROP TABLE IF EXISTS `stock_reports`;

CREATE TABLE `stock_reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `type_id` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `stock_reports` */

/*Table structure for table `support_replies` */

DROP TABLE IF EXISTS `support_replies`;

CREATE TABLE `support_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `support_id` int NOT NULL,
  `user` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL,
  `is_read` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `support_replies` */

/*Table structure for table `supports` */

DROP TABLE IF EXISTS `supports`;

CREATE TABLE `supports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ticket_created` int NOT NULL DEFAULT '0',
  `user` int NOT NULL DEFAULT '0',
  `priority` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `end_date` date NOT NULL,
  `ticket_code` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0',
  `attachment` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `supports` */

/*Table structure for table `task_checklists` */

DROP TABLE IF EXISTS `task_checklists`;

CREATE TABLE `task_checklists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `task_id` int NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `task_checklists` */

/*Table structure for table `task_comments` */

DROP TABLE IF EXISTS `task_comments`;

CREATE TABLE `task_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `task_id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `task_comments` */

/*Table structure for table `task_files` */

DROP TABLE IF EXISTS `task_files`;

CREATE TABLE `task_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `file_size` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `task_id` int NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `task_files` */

/*Table structure for table `task_stages` */

DROP TABLE IF EXISTS `task_stages`;

CREATE TABLE `task_stages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT '0',
  `project_id` bigint unsigned NOT NULL DEFAULT '0',
  `color` varchar(15) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `task_stages` */

/*Table structure for table `taxes` */

DROP TABLE IF EXISTS `taxes`;

CREATE TABLE `taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `rate` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `taxes` */

/*Table structure for table `templates` */

DROP TABLE IF EXISTS `templates`;

CREATE TABLE `templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `prompt` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `field_json` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `is_tone` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `templates` */

/*Table structure for table `termination_types` */

DROP TABLE IF EXISTS `termination_types`;

CREATE TABLE `termination_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `termination_types` */

/*Table structure for table `terminations` */

DROP TABLE IF EXISTS `terminations`;

CREATE TABLE `terminations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL DEFAULT '0',
  `notice_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `terminations` */

/*Table structure for table `time_trackers` */

DROP TABLE IF EXISTS `time_trackers`;

CREATE TABLE `time_trackers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `tag_id` text COLLATE utf8mb4_spanish_ci,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `is_billable` int NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `total_time` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0',
  `is_active` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '1',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `time_trackers` */

/*Table structure for table `timesheets` */

DROP TABLE IF EXISTS `timesheets`;

CREATE TABLE `timesheets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `task_id` int NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `timesheets` */

/*Table structure for table `track_photos` */

DROP TABLE IF EXISTS `track_photos`;

CREATE TABLE `track_photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `track_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `img_path` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `track_photos` */

/*Table structure for table `trainers` */

DROP TABLE IF EXISTS `trainers`;

CREATE TABLE `trainers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `address` text COLLATE utf8mb4_spanish_ci,
  `expertise` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `trainers` */

/*Table structure for table `training_types` */

DROP TABLE IF EXISTS `training_types`;

CREATE TABLE `training_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `training_types` */

/*Table structure for table `trainings` */

DROP TABLE IF EXISTS `trainings`;

CREATE TABLE `trainings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch` int NOT NULL,
  `trainer_option` int NOT NULL,
  `training_type` int NOT NULL,
  `trainer` int NOT NULL,
  `training_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `employee` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci,
  `performance` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `remarks` text COLLATE utf8mb4_spanish_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `trainings` */

/*Table structure for table `transaction_lines` */

DROP TABLE IF EXISTS `transaction_lines`;

CREATE TABLE `transaction_lines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `reference_id` int NOT NULL,
  `reference_sub_id` int NOT NULL,
  `date` date NOT NULL,
  `credit` decimal(15,2) NOT NULL DEFAULT '0.00',
  `debit` decimal(15,2) NOT NULL DEFAULT '0.00',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `transaction_lines` */

/*Table structure for table `transaction_orders` */

DROP TABLE IF EXISTS `transaction_orders`;

CREATE TABLE `transaction_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `req_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `req_user_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `transaction_orders` */

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `account` int NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_spanish_ci,
  `date` date NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `payment_id` int NOT NULL DEFAULT '0',
  `category` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `transactions` */

/*Table structure for table `transfers` */

DROP TABLE IF EXISTS `transfers`;

CREATE TABLE `transfers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL DEFAULT '0',
  `branch_id` int NOT NULL DEFAULT '0',
  `department_id` int NOT NULL DEFAULT '0',
  `transfer_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `transfers` */

/*Table structure for table `travels` */

DROP TABLE IF EXISTS `travels`;

CREATE TABLE `travels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL DEFAULT '0',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `purpose_of_visit` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `place_of_visit` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `travels` */

/*Table structure for table `user_contacts` */

DROP TABLE IF EXISTS `user_contacts`;

CREATE TABLE `user_contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `user_contacts` */

/*Table structure for table `user_coupons` */

DROP TABLE IF EXISTS `user_coupons`;

CREATE TABLE `user_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user` int NOT NULL,
  `coupon` int NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `user_coupons` */

/*Table structure for table `user_deals` */

DROP TABLE IF EXISTS `user_deals`;

CREATE TABLE `user_deals` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `user_deals` */

/*Table structure for table `user_email_templates` */

DROP TABLE IF EXISTS `user_email_templates`;

CREATE TABLE `user_email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int NOT NULL,
  `user_id` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `user_email_templates` */

insert  into `user_email_templates`(`id`,`template_id`,`user_id`,`is_active`,`created_at`,`updated_at`) values 
(1,1,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(2,2,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(3,3,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(4,4,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(5,5,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(6,6,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(7,7,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(8,8,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(9,9,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(10,10,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(11,11,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(12,12,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(13,13,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(14,14,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(15,15,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(16,16,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(17,17,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(18,18,2,1,'2024-10-08 20:47:26','2024-10-08 20:47:26'),
(19,19,2,1,'2024-10-08 20:47:27','2024-10-08 20:47:27'),
(20,20,2,1,'2024-10-08 20:47:27','2024-10-08 20:47:27'),
(21,21,2,1,'2024-10-08 20:47:27','2024-10-08 20:47:27'),
(22,22,2,1,'2024-10-08 20:47:27','2024-10-08 20:47:27'),
(23,23,2,1,'2024-10-08 20:47:27','2024-10-08 20:47:27'),
(24,24,2,1,'2024-10-08 20:47:27','2024-10-08 20:47:27'),
(25,25,2,1,'2024-10-08 20:47:27','2024-10-08 20:47:27'),
(26,26,2,1,'2024-10-08 20:47:27','2024-10-08 20:47:27'),
(27,27,2,1,'2024-10-08 20:47:27','2024-10-08 20:47:27'),
(28,28,2,1,'2024-10-08 20:47:27','2024-10-08 20:47:27');

/*Table structure for table `user_leads` */

DROP TABLE IF EXISTS `user_leads`;

CREATE TABLE `user_leads` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `user_leads` */

/*Table structure for table `user_to_dos` */

DROP TABLE IF EXISTS `user_to_dos`;

CREATE TABLE `user_to_dos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `user_to_dos` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `plan` int DEFAULT NULL,
  `plan_expire_date` date DEFAULT NULL,
  `requested_plan` int NOT NULL DEFAULT '0',
  `trial_plan` int NOT NULL DEFAULT '0',
  `trial_expire_date` date DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `storage_limit` double(8,2) NOT NULL DEFAULT '0.00',
  `avatar` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'avatar.png',
  `messenger_color` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '#2180f3',
  `lang` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `default_pipeline` int DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '0',
  `delete_status` int NOT NULL DEFAULT '1',
  `mode` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'light',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `is_disable` int NOT NULL DEFAULT '1',
  `is_enable_login` int NOT NULL DEFAULT '1',
  `is_active` int NOT NULL DEFAULT '1',
  `referral_code` int NOT NULL DEFAULT '0',
  `used_referral_code` int NOT NULL DEFAULT '0',
  `commission_amount` int NOT NULL DEFAULT '0',
  `last_login_at` datetime DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `subdomain` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_subdomain_unique` (`subdomain`),
  KEY `users_subdomain_index` (`subdomain`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`plan`,`plan_expire_date`,`requested_plan`,`trial_plan`,`trial_expire_date`,`type`,`storage_limit`,`avatar`,`messenger_color`,`lang`,`default_pipeline`,`active_status`,`delete_status`,`mode`,`dark_mode`,`is_disable`,`is_enable_login`,`is_active`,`referral_code`,`used_referral_code`,`commission_amount`,`last_login_at`,`created_by`,`remember_token`,`created_at`,`updated_at`,`is_email_verified`,`subdomain`) values 
(1,'Soporte Quickbill','soporte@quickbill.com','2024-10-08 20:46:58','$2y$10$T3Ioy0TYKSe50GMTqKE1D.i85A7ZSR3nu0FfT3d9MG.KfUvP.MBWe',NULL,NULL,0,0,NULL,'super admin',0.00,'','#2180f3','es',NULL,0,1,'light',0,1,1,1,0,0,0,NULL,0,NULL,'2024-10-08 20:46:58','2024-10-08 20:46:58',0,NULL),
(2,'Mario Gabriel Fallas','gabrielfallas1905@gmail.com','2024-10-08 20:46:44','$2y$10$GUEiGDGuhnHzTBdT5/teEuhbPe9v3.1HC/Ih8VJOYBZimPiqyr3Fm',1,NULL,0,0,NULL,'company',0.00,'','#2180f3','es',NULL,0,1,'light',0,1,1,1,606968,0,0,'2024-10-11 05:01:22',1,NULL,'2024-10-08 20:46:15','2024-10-11 05:01:22',0,NULL);

/*Table structure for table `users_tenant` */

DROP TABLE IF EXISTS `users_tenant`;

CREATE TABLE `users_tenant` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint unsigned NOT NULL,
  `database` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_tenant_id_user_foreign` (`id_user`),
  CONSTRAINT `users_tenant_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `users_tenant` */

/*Table structure for table `users_verify` */

DROP TABLE IF EXISTS `users_verify`;

CREATE TABLE `users_verify` (
  `user_id` int NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `users_verify` */

/*Table structure for table `venders` */

DROP TABLE IF EXISTS `venders`;

CREATE TABLE `venders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vender_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `tax_number` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '',
  `created_by` int NOT NULL DEFAULT '0',
  `is_active` int NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_spanish_ci,
  `shipping_name` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_spanish_ci,
  `lang` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `venders` */

/*Table structure for table `warehouse_products` */

DROP TABLE IF EXISTS `warehouse_products`;

CREATE TABLE `warehouse_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `warehouse_products` */

/*Table structure for table `warehouse_transfers` */

DROP TABLE IF EXISTS `warehouse_transfers`;

CREATE TABLE `warehouse_transfers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_warehouse` int NOT NULL DEFAULT '0',
  `to_warehouse` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `warehouse_transfers` */

/*Table structure for table `warehouses` */

DROP TABLE IF EXISTS `warehouses`;

CREATE TABLE `warehouses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `address` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `city_zip` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `warehouses` */

/*Table structure for table `warnings` */

DROP TABLE IF EXISTS `warnings`;

CREATE TABLE `warnings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `warning_to` int NOT NULL,
  `warning_by` int NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `warning_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `warnings` */

/*Table structure for table `webhook_settings` */

DROP TABLE IF EXISTS `webhook_settings`;

CREATE TABLE `webhook_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `webhook_settings` */

/*Table structure for table `zoom_meetings` */

DROP TABLE IF EXISTS `zoom_meetings`;

CREATE TABLE `zoom_meetings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `meeting_id` int NOT NULL DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `client_id` int NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duration` int NOT NULL DEFAULT '0',
  `start_url` text COLLATE utf8mb4_spanish_ci,
  `join_url` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_spanish_ci DEFAULT 'waiting',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `zoom_meetings` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
