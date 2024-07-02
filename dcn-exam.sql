-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 02, 2024 lúc 05:54 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dcn_examphp`
--
CREATE DATABASE IF NOT EXISTS `dcn_examphp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dcn_examphp`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(11) NOT NULL,
  `cate_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cate_id`, `cate_name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop'),
(3, 'PC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` double NOT NULL,
  `images` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price`, `quantity`, `images`, `description`, `cate_id`) VALUES
(1, '', 0, 0, '[value-5]', '', 0),
(2, '[value-2]', 0, 0, '[value-5]', '[value-6]', 0),
(4, 'Điện thoại', 1200, 12305, '439032773_1034243041398513_5378771203850211831_n.jpg', ' ok', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Cơ sở dữ liệu: `ecourse`
--
CREATE DATABASE IF NOT EXISTS `ecourse` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecourse`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add category', 6, 'add_category'),
(22, 'Can change category', 6, 'change_category'),
(23, 'Can delete category', 6, 'delete_category'),
(24, 'Can view category', 6, 'view_category'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add course', 8, 'add_course'),
(30, 'Can change course', 8, 'change_course'),
(31, 'Can delete course', 8, 'delete_course'),
(32, 'Can view course', 8, 'view_course'),
(33, 'Can add lesson', 9, 'add_lesson'),
(34, 'Can change lesson', 9, 'change_lesson'),
(35, 'Can delete lesson', 9, 'delete_lesson'),
(36, 'Can view lesson', 9, 'view_lesson'),
(37, 'Can add tag', 10, 'add_tag'),
(38, 'Can change tag', 10, 'change_tag'),
(39, 'Can delete tag', 10, 'delete_tag'),
(40, 'Can view tag', 10, 'view_tag');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_category`
--

CREATE TABLE `course_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `course_category`
--

INSERT INTO `course_category` (`id`, `name`) VALUES
(1, 'Lập Trình Java'),
(2, 'Lập trình Py'),
(3, 'Thiet ke web html, css');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_course`
--

CREATE TABLE `course_course` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `course_course`
--

INSERT INTO `course_course` (`id`, `subject`, `description`, `created_date`, `updated_date`, `active`, `category_id`, `image`) VALUES
(1, 'Core Java', 'Nhap Mon', '2024-06-30 08:52:12.365710', '2024-06-30 08:52:12.365710', 1, 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_lesson`
--

CREATE TABLE `course_lesson` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `course_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_lesson_tags`
--

CREATE TABLE `course_lesson_tags` (
  `id` bigint(20) NOT NULL,
  `lesson_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_tag`
--

CREATE TABLE `course_tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_user`
--

CREATE TABLE `course_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_user_groups`
--

CREATE TABLE `course_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_user_user_permissions`
--

CREATE TABLE `course_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(6, 'course', 'category'),
(8, 'course', 'course'),
(9, 'course', 'lesson'),
(10, 'course', 'tag'),
(7, 'course', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-30 03:54:27.587511'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-06-30 03:54:27.628163'),
(3, 'auth', '0001_initial', '2024-06-30 03:54:27.831765'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-06-30 03:54:27.873158'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-06-30 03:54:27.877973'),
(6, 'auth', '0004_alter_user_username_opts', '2024-06-30 03:54:27.882194'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-06-30 03:54:27.886220'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-06-30 03:54:27.888227'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-06-30 03:54:27.892747'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-06-30 03:54:27.898650'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-06-30 03:54:27.904927'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-06-30 03:54:27.913258'),
(13, 'auth', '0011_update_proxy_permissions', '2024-06-30 03:54:27.919577'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-06-30 03:54:27.923098'),
(15, 'course', '0001_initial', '2024-06-30 03:54:28.215642'),
(16, 'admin', '0001_initial', '2024-06-30 03:54:28.329759'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-06-30 03:54:28.336491'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-30 03:54:28.344649'),
(19, 'sessions', '0001_initial', '2024-06-30 03:54:28.373428'),
(20, 'course', '0002_course_image_alter_course_unique_together_lesson', '2024-06-30 10:13:41.648727'),
(21, 'course', '0003_tag_lesson_tags', '2024-07-01 09:27:51.297120');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `course_course`
--
ALTER TABLE `course_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_course_subject_category_id_f450d4d6_uniq` (`subject`,`category_id`),
  ADD KEY `course_course_category_id_0b2127b9_fk_course_category_id` (`category_id`);

--
-- Chỉ mục cho bảng `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_lesson_subject_course_id_e0fc9ec7_uniq` (`subject`,`course_id`),
  ADD KEY `course_lesson_course_id_65df4a1c_fk_course_course_id` (`course_id`);

--
-- Chỉ mục cho bảng `course_lesson_tags`
--
ALTER TABLE `course_lesson_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_lesson_tags_lesson_id_tag_id_24182f5a_uniq` (`lesson_id`,`tag_id`),
  ADD KEY `course_lesson_tags_tag_id_1b78748a_fk_course_tag_id` (`tag_id`);

--
-- Chỉ mục cho bảng `course_tag`
--
ALTER TABLE `course_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `course_user`
--
ALTER TABLE `course_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `course_user_groups`
--
ALTER TABLE `course_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_user_groups_user_id_group_id_10ea1645_uniq` (`user_id`,`group_id`),
  ADD KEY `course_user_groups_group_id_b6ac1380_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `course_user_user_permissions`
--
ALTER TABLE `course_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_user_user_permissions_user_id_permission_id_1acf7e74_uniq` (`user_id`,`permission_id`),
  ADD KEY `course_user_user_per_permission_id_4eb7662b_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_course_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `course_category`
--
ALTER TABLE `course_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `course_course`
--
ALTER TABLE `course_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `course_lesson`
--
ALTER TABLE `course_lesson`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `course_lesson_tags`
--
ALTER TABLE `course_lesson_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `course_tag`
--
ALTER TABLE `course_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `course_user`
--
ALTER TABLE `course_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `course_user_groups`
--
ALTER TABLE `course_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `course_user_user_permissions`
--
ALTER TABLE `course_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `course_course`
--
ALTER TABLE `course_course`
  ADD CONSTRAINT `course_course_category_id_0b2127b9_fk_course_category_id` FOREIGN KEY (`category_id`) REFERENCES `course_category` (`id`);

--
-- Các ràng buộc cho bảng `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD CONSTRAINT `course_lesson_course_id_65df4a1c_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`);

--
-- Các ràng buộc cho bảng `course_lesson_tags`
--
ALTER TABLE `course_lesson_tags`
  ADD CONSTRAINT `course_lesson_tags_lesson_id_df9aa86e_fk_course_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `course_lesson` (`id`),
  ADD CONSTRAINT `course_lesson_tags_tag_id_1b78748a_fk_course_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `course_tag` (`id`);

--
-- Các ràng buộc cho bảng `course_user_groups`
--
ALTER TABLE `course_user_groups`
  ADD CONSTRAINT `course_user_groups_group_id_b6ac1380_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `course_user_groups_user_id_15a6d5ce_fk_course_user_id` FOREIGN KEY (`user_id`) REFERENCES `course_user` (`id`);

--
-- Các ràng buộc cho bảng `course_user_user_permissions`
--
ALTER TABLE `course_user_user_permissions`
  ADD CONSTRAINT `course_user_user_per_permission_id_4eb7662b_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `course_user_user_permissions_user_id_a0266d38_fk_course_user_id` FOREIGN KEY (`user_id`) REFERENCES `course_user` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_course_user_id` FOREIGN KEY (`user_id`) REFERENCES `course_user` (`id`);
--
-- Cơ sở dữ liệu: `nhasachhoangha`
--
CREATE DATABASE IF NOT EXISTS `nhasachhoangha` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `nhasachhoangha`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` char(10) DEFAULT NULL,
  `quyen` varchar(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`, `quyen`) VALUES
('admin', '12345', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chungloai`
--

CREATE TABLE `chungloai` (
  `MaCL` char(10) NOT NULL,
  `TenCL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chungloai`
--

INSERT INTO `chungloai` (`MaCL`, `TenCL`) VALUES
('sa001', 'ca dao,tục ngữ'),
('sa002', 'tiểu thuyết'),
('sa003', 'lịch sử'),
('sa005', 'the gioi'),
('sa006', 'vũ trụ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_hoadon`
--

CREATE TABLE `ct_hoadon` (
  `SoHD` char(10) NOT NULL,
  `MaTB` char(10) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `DonGia` int(11) DEFAULT NULL,
  `ThanhTien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ct_hoadon`
--

INSERT INTO `ct_hoadon` (`SoHD`, `MaTB`, `SoLuong`, `DonGia`, `ThanhTien`) VALUES
('[hd01', 's1', 6, 25000, 150000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_phieunhap`
--

CREATE TABLE `ct_phieunhap` (
  `SoPN` char(10) NOT NULL,
  `MaTB` char(10) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaNhap` int(11) DEFAULT NULL,
  `ThanhTien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ct_phieunhap`
--

INSERT INTO `ct_phieunhap` (`SoPN`, `MaTB`, `SoLuong`, `GiaNhap`, `ThanhTien`) VALUES
('pn1', 'sách2', 7, 10000, 70000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_thanhly`
--

CREATE TABLE `ct_thanhly` (
  `MaThanhLy` char(10) NOT NULL,
  `MaTB` char(10) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `DonGia` int(11) DEFAULT NULL,
  `ThanhTien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `SoHD` char(10) NOT NULL,
  `NgayLap_HD` date DEFAULT NULL,
  `ThueXuat` char(20) DEFAULT NULL,
  `TongGiaTri` int(11) DEFAULT NULL,
  `MaKH` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` char(10) NOT NULL,
  `TenKH` varchar(80) DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `GioiTinh` char(5) NOT NULL,
  `SDT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasanxua`
--

CREATE TABLE `nhasanxua` (
  `MaNSX` char(10) NOT NULL,
  `TenNSX` varchar(100) DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `SDT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `SoPN` char(10) NOT NULL,
  `NgayLap_PN` date DEFAULT NULL,
  `ThueXuat` char(20) NOT NULL,
  `TongGiaTri` int(11) DEFAULT NULL,
  `MaNCC` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `MaSach` varchar(10) NOT NULL,
  `MaCL` char(10) NOT NULL,
  `TenSach` varchar(50) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `GiaNhap` int(11) NOT NULL,
  `NgayCapNhat` date NOT NULL,
  `MaNSX` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_thanhly`
--

CREATE TABLE `tb_thanhly` (
  `MaThanhLy` char(10) NOT NULL,
  `NgayThanhLy` date DEFAULT NULL,
  `LyDoChiThanhLy` varchar(50) NOT NULL,
  `HinhThucThanhLy` varchar(50) DEFAULT NULL,
  `GhiChu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `chungloai`
--
ALTER TABLE `chungloai`
  ADD PRIMARY KEY (`MaCL`);

--
-- Chỉ mục cho bảng `ct_hoadon`
--
ALTER TABLE `ct_hoadon`
  ADD PRIMARY KEY (`SoHD`);

--
-- Chỉ mục cho bảng `ct_phieunhap`
--
ALTER TABLE `ct_phieunhap`
  ADD PRIMARY KEY (`SoPN`);

--
-- Chỉ mục cho bảng `ct_thanhly`
--
ALTER TABLE `ct_thanhly`
  ADD PRIMARY KEY (`MaThanhLy`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`SoHD`),
  ADD KEY `fk_hoadon` (`MaKH`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `nhasanxua`
--
ALTER TABLE `nhasanxua`
  ADD PRIMARY KEY (`MaNSX`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`SoPN`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`MaSach`),
  ADD KEY `fk_sach` (`MaCL`),
  ADD KEY `fk_sach_MaNSX` (`MaNSX`);

--
-- Chỉ mục cho bảng `tb_thanhly`
--
ALTER TABLE `tb_thanhly`
  ADD PRIMARY KEY (`MaThanhLy`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_hoadon` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `fk_hoadon_kh` FOREIGN KEY (`SoHD`) REFERENCES `ct_hoadon` (`SoHD`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `fk_phieunhap` FOREIGN KEY (`SoPN`) REFERENCES `ct_phieunhap` (`SoPN`);

--
-- Các ràng buộc cho bảng `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `fk_sach` FOREIGN KEY (`MaCL`) REFERENCES `chungloai` (`MaCL`),
  ADD CONSTRAINT `fk_sach_MaNSX` FOREIGN KEY (`MaNSX`) REFERENCES `nhasanxua` (`MaNSX`);

--
-- Các ràng buộc cho bảng `tb_thanhly`
--
ALTER TABLE `tb_thanhly`
  ADD CONSTRAINT `fk_thanhly` FOREIGN KEY (`MaThanhLy`) REFERENCES `ct_thanhly` (`MaThanhLy`);
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Đang đổ dữ liệu cho bảng `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"qlsach\",\"table\":\"sach\"},{\"db\":\"qlsach\",\"table\":\"theloai\"},{\"db\":\"qlsach\",\"table\":\"hoadon\"},{\"db\":\"qlsach\",\"table\":\"phieunhaphang\"},{\"db\":\"qlsach\",\"table\":\"khachhang\"},{\"db\":\"qlsach\",\"table\":\"nhacungcap\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-06-13 01:27:24', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"vi\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `qlsach`
--
CREATE DATABASE IF NOT EXISTS `qlsach` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `qlsach`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `sdt` int(11) DEFAULT NULL,
  `diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `sdt`, `diachi`) VALUES
('admin', '1', '', NULL, ''),
('admin123', '123', 'vinh', 0, ''),
('admin1234', '1234', '', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `id_sach` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `id_kh`, `id_sach`, `soluong`, `gia`, `date`, `description`) VALUES
(128, 126, 110, 2, 38000, '2024-06-12', 'ok'),
(129, 129, 110, 6, 114000, '2024-05-23', 'ok'),
(131, 131, 29101, 6, 1050000, '2024-06-13', 'ok');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `id_nhomkh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `name`, `sdt`, `email`, `diachi`, `id_nhomkh`) VALUES
(126, 'Vinh', '0987654321', '', 'Hoài Đức-Hà Nội', 1),
(129, 'Quyền', '0229331228', '', 'UBND XÃ Đất Mũi 2', 1),
(130, 'Đức', '09931312', '', '29 Hà Nội 35', 1),
(131, 'Nguyễn Văn A', '0987654321', '', '29 Hà Nội', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `name`, `diachi`, `phone`, `email`, `description`) VALUES
(1, 'CTY TNHH S', 'UBND XÃ ĐẤT MỚI', 322435789, 'ctys1@gmail.com', 'CTY TNHH S: NCC'),
(2, 'CTY TaoBao', 'Ủy Ban Xã Hồ Nam', 2147483647, 'taobao1@gmail.com', 'CTY Tao : NCC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomkhachhang`
--

CREATE TABLE `nhomkhachhang` (
  `id` int(11) NOT NULL,
  `name_kh` varchar(255) DEFAULT 'khachvanglai',
  `sale` int(11) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhomkhachhang`
--

INSERT INTO `nhomkhachhang` (`id`, `name_kh`, `sale`) VALUES
(1, 'Khách Vãng Lai', 5),
(2, 'Khách Thân Quen', 10),
(3, 'VIP', 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhaphang`
--

CREATE TABLE `phieunhaphang` (
  `id` int(11) NOT NULL,
  `id_nhacungcap` int(11) NOT NULL,
  `namesach` varchar(255) NOT NULL,
  `soluong` double NOT NULL,
  `gianhap` double NOT NULL,
  `giaban` float NOT NULL,
  `thanhtien` double NOT NULL,
  `theloai_pn` int(11) NOT NULL,
  `tacgia` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhaphang`
--

INSERT INTO `phieunhaphang` (`id`, `id_nhacungcap`, `namesach`, `soluong`, `gianhap`, `giaban`, `thanhtien`, `theloai_pn`, `tacgia`, `date`, `img`) VALUES
(16, 2, 'Nhật Ký Trong Tù', 20, 25000, 210000, 500000, 1, 'Hồ Chí Minh', '2024-06-07', ''),
(29, 2, 'Uống Cafe Trên Đường Của Vũ', 20, 50000, 100000, 1000000, 1, 'NXB Hà Nội', '2024-06-10', ''),
(30, 2, 'Thơ Cho Những Trái Tim Tan Vỡ', 21, 53000, 105000, 1113000, 2, 'NXB Hà Nội', '2024-06-10', ''),
(31, 2, 'Người Lạ Quanh Ta', 22, 56000, 110000, 1232000, 3, 'NXB Hà Nội', '2024-06-10', ''),
(32, 2, 'Nhân Gian Tiểu Mãn', 23, 59000, 115000, 1357000, 4, 'NXB Hà Nội', '2024-06-10', ''),
(33, 2, 'Bỗng Một Ngày Tôi Có Vị Hôn Thê Là Gal - Tập 1', 24, 62000, 120000, 1488000, 5, 'NXB Hà Nội', '2024-06-10', ''),
(34, 1, 'Chí Phèo', 12, 12500, 22000, 150000, 6, 'Nam Cao', '2024-06-10', ''),
(35, 2, 'Kẻ \"Hủy Diệt\" Ngôn Từ', 26, 68000, 130000, 1768000, 1, 'NXB Hà Nội', '2024-06-10', ''),
(36, 2, 'Mười Tám Hai Hai', 27, 71000, 135000, 1917000, 2, 'NXB Hà Nội', '2024-06-10', ''),
(37, 2, 'Đáng Yêu Là \"Siêu Năng Lực\" Của Tớ', 28, 74000, 140000, 2072000, 3, 'NXB Hà Nội', '2024-06-10', ''),
(38, 2, 'Bóng Tối Dưới Ánh Đèn - Tập 2', 29, 77000, 145000, 2233000, 4, 'NXB Hà Nội', '2024-06-10', ''),
(39, 2, 'Yêu Là Những Cuộc Chia Tay Không Hồi Kết', 30, 80000, 150000, 2400000, 5, 'NXB Hà Nội', '2024-06-10', ''),
(40, 2, 'Nhà Trọ Chim Hoàng Yến', 31, 83000, 155000, 2573000, 6, 'NXB Hà Nội', '2024-06-10', ''),
(41, 2, 'Kẻ Nhập Vai', 32, 86000, 160000, 2752000, 1, 'NXB Hà Nội', '2024-06-10', ''),
(42, 2, 'Thị Trấn Chuyện Kể', 33, 89000, 165000, 2937000, 2, 'NXB Hà Nội', '2024-06-10', ''),
(43, 2, 'Ma Vương Kiến Tạo', 34, 92000, 170000, 3128000, 3, 'NXB Hà Nội', '2024-06-10', ''),
(44, 2, 'Rạp Chiếu Phim Thời Gian', 35, 95000, 175000, 3325000, 4, 'NXB Hà Nội', '2024-06-10', ''),
(45, 2, 'Bức Họa Múa Rối Xương', 36, 98000, 180000, 3528000, 5, 'NXB Hà Nội', '2024-06-10', ''),
(46, 2, 'ôi Muốn Sống Tự Do Tự Tại Ở Vương Đô', 37, 101000, 185000, 3737000, 6, 'NXB Hà Nội', '2024-06-10', ''),
(47, 2, 'Tuôi trẻ rực rỡ', 38, 104000, 190000, 3952000, 1, 'NXB Hà Nội', '2024-06-10', ''),
(230, 2, 'Học tarot cho người mới', 12, 25000, 50000, 300000, 1, 'NXB Hà Nội', '2024-06-10', ''),
(231, 2, 'Tiếng Mõ Cầu Trong Gió', 13, 26000, 60000, 338000, 2, 'NXB Hà Nội', '2024-06-10', ''),
(239, 1, 'Nóng Giận Là Bản Năng , Tĩnh Lặng Là Bản Lĩnh', 1, 20000, 50000, 20000, 4, 'sdc', '2024-06-12', ''),
(240, 2, 'Nóng Giận Là Bản Năng , Tĩnh Lặng Là Bản Lĩnh', 2, 200000, 600000, 400000, 3, 'NXB Trung Quốc', '2024-06-12', ''),
(241, 1, 'Thủy Hử Bộ Đọc', 12, 12000, 44000, 144000, 1, 'NXB Trung Quốc', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `id_theloai` int(11) NOT NULL,
  `ngaynhapkho` date NOT NULL,
  `mota` varchar(1000) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` double NOT NULL COMMENT 'giá nhập',
  `giaban` double NOT NULL COMMENT 'giá bán',
  `tacgia` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`id`, `name`, `img`, `id_theloai`, `ngaynhapkho`, `mota`, `soluong`, `gia`, `giaban`, `tacgia`) VALUES
(101, 'Tô Bình Yên Vẽ Hạnh Phúc (Tái Bản 2022)', NULL, 1, '2024-05-21', 'Câu chuyện cảm động về tình yêu và sự sống.', 10, 130000, 130000, 'José Mauro de Vasconcelos'),
(103, 'Vị Thần Của Những Quyết Định', '', 1, '2024-05-21', 'Phương pháp mới giúp giải quyết vấn đề thông qua câu hỏi và vị thần quyết định.', 2, 150000, 150000, 'Universe'),
(104, 'Không Phải Sói Nhưng Cũng Đừng Là Cừu', 'Screenshot 2024-05-11 084935.png', 1, '2023-07-08', 'Sự thấu suốt và thách thức lối tư duy của bạn.', 4, 86900, 120000, 'Lê Bảo Ngọc'),
(105, 'Chuyện Tâm Lý Trong Phòng Pháp Lý', '439024754_945137823958230_6552558436107716295_n.jpg', 1, '2023-10-10', 'Sự thấu suốt và thách thức lối tư duy của bạn.', 15, 108800, 120000, 'Lê Bảo Ngọc'),
(108, 'Sổ Tay Nhà Thôi Miên', '', 1, '2024-02-22', 'Câu chuyện hấp dẫn và bí ẩn về những thế giới giả tạo.', 12, 258000, 258000, 'Cao Minh'),
(110, 'Hãy Tìm Tôi Giữa Cánh Đồng', '', 6, '2024-06-11', 'Thái độ và chân lý hiểu biết về công việc và cuộc sống.', 4, 12000, 20000, 'NXB Trung Quốc'),
(230, 'Rèn Luyện Tư Duy Phản Biện', '', 1, '2024-05-17', 'Mở rộng tầm nhìn và tri thức thông qua thu thập ý tưởng và đức tin từ mọi người.', 12, 100000, 185000, 'Nhà Xuất Bản Phụ Nữ'),
(231, 'Yêu Những Ngày Nắng Chẳng Ghét Những Ngày Mưa', '', 6, '2024-06-07', 'Thế giới đầy màu sắc, truyền cảm hứng và chữa lành tâm hồn', 21, 200000, 200000, 'Nhà Xuất Bản Phụ Nữ'),
(359, ' Ông già và biển cả', '', 1, '2024-05-03', 'Tác phẩm này được viết theo thể loại truyện viễn tưởng và được nhiều người đọc biết đến với nguyên lý “tảng băng trôi” với lý thuyết là một phần nổi - bảy phần chìm. Câu chuyện xoay quanh về cuộc đối đầu không cân sức giữa ông lão đánh cá và con cá hung dữ giữa biển khơi.', 27, 80000, 270000, 'Ernest Hemingway'),
(29093, 'Giải Mã Thuật Tiên Tri', '', 1, '2024-05-11', 'Bản chất sức hút của Luật Hấp dẫn là: chính suy nghĩ của bạn sẽ làm cho bạn cảm thấy tốt hơn, sẽ thu hút tiền, vật chất, mối quan hệ, kinh nghiệm, hoàn cảnh hay sự kiện tốt đẹp hơn cho bạn. Tiền và Luật Hấp dẫn sẽ chỉ cho bạn điều đó trong từng chi tiết của cuộc sống', 20, 124, 250000, 'Elsie Wild'),
(29094, 'Tu Tâm', '', 2, '2024-05-10', 'Tu tâm dạy chúng ta tu tâm dưỡng tính theo giáo lý nhà Phật. Từ các ham muốn vật chất như danh lợi, địa vị, tiền tài, sắc dục đến các ham muốn tinh thần như sức khỏe và an lạc thân tâm đều được tác giả phân tích, giảng giải thông qua các công án thiền và những câu chuyện thực tế đời thường sinh động, dễ đọc, dễ hiểu.', 21, 87, 258000, 'Mộc Mộc'),
(29095, 'Hoà Thượng Nói Với Doanh Nhân', '', 3, '2024-05-11', 'Nhận thức là một hòn đảo, hòn đảo càng lớn thì lĩnh vực chúng ta chưa biết tới càng rộng. Tri thức, văn hóa, khoa học đã khơi mở tư tưởng cho con người, nhưng đừng tùy tiện nói: Tôi biết rồi.”\r\nĐối xử tốt với người khác, đối xử tốt với xã hội, đối xử tốt với thiên nhiên, suy cho cùng chính là đối xử tốt với chính mình.”', 20, 76, 150000, 'Diệu Hoa Pháp Sư'),
(29096, 'Tâm Và Thuật Trong Đối Nhân Xử Thế\r\n', '', 1, '2024-05-10', 'Một triết gia nổi tiếng từng nói: “Thói quen là một loại sức mạnh vừa ngoan cường lại vừa mạnh mẽ. Nó có thể làm chúa tể cuộc đời của con người. Cho nên, ai cũng cần phải thông qua giáo dục để bồi dưỡng nên những thói quen tốt đẹp.”\r\nVì vậy, các lời khuyên về nguyên tắc đối nhân xử thế trong TÂM & THUẬT TRONG ĐỐI NHÂN XỬ THẾ sẽ giúp bạn “học một lần, cả đời được lợi”!\r\nXã hội càng phát triển, con người càng có nhiều mối quan hệ phức tạp, vì thế muốn làm nên sự nghiệp lớn, tất yếu mỗi người phải cần có “tâm” và “thuật”.', 26, 158, 200000, 'MÃ NGÂN XUÂN - VIÊN LỆ BÌNH'),
(29097, 'Sống Trong Ánh Sáng', '', 6, '2024-05-10', 'Cuốn sách Sống trong Ánh Sáng của tác giả Shakti Gawain. Cuốn sách đã tạo ra một tác động mạnh mẽ trong lần xuất bản đầu tiên, được dịch ra hơn 35 thứ tiếng, bán được hơn 10 triệu bản và dành được sự đón nhận nồng nhiệt của hàng triệu người trên khắp thế giới.', 10, 124, 190000, 'Shakti Gawain'),
(29098, 'Vòng Tròn Bất Tận\r\n', '', 4, '2024-05-10', 'Vòng Tròn Bất Tận\r\n\r\n“Một cuốn sách thông thái cả về tâm linh và đời sống. Glassman là một vị thầy sáng suốt với phương tiện thiện xảo, có thể làm sáng tỏ những chủ đề sâu xa trong Thiền.”', 20, 45, 189000, 'NXB Hồng Đức'),
(29099, 'Đức Phật Trong Tấm Gương Của Bạn\r\n', '', 2, '2024-05-10', 'Đức Phật Trong Tấm Gương Của Bạn\r\n\r\nBất kể bạn đọc cuốn sách này vì tò mò hay có nhu cầu nâng cao đời sống tinh thần và hoàn cảnh của mình, hãy nỗ lực kiên trì làm theo các lời khuyên thực tế được cung cấp trong cuốn sách này. Có thể một số khái niệm Phật giáo ở đây dường như kỳ lạ hoặc cách xa hành trình tâm linh của riêng bạn, nhưng nếu bạn đang gặp khó khăn thì đã đến lúc tự mở cánh cửa để nhìn thấy một điều gì đó mới mẻ trong cuộc đời', 120, 124, 250000, 'Nhiều Tác Giả'),
(29101, 'Hạnh Phúc Đến Từ Sự Biến Mất', '', 4, '2024-05-15', 'ạnh Phúc Đến Từ Sự Biến Mất Mọi người đều muốn cuộc sống diễn ra êm đềm, nhưng mọi thứ chẳng mấy khi như mong đợi. Dù chỉ là những va vấp trên đường hay khủng hoảng thực sự, chúng ta cũng sống trong một thế giới của những sự kiện không mong muốn mà không năng lực ý chí nào ngăn cản được. Trong Hạnh Phúc Đến Từ Sự Biến Mất: Ajahn Brahm giúp chúng ta học cách trừ bỏ cơn gió ngược, tức những mong đợi sai lầm, và thay vào đó đi theo con đường giác ngộ của Đức Phật. Một khi giải tỏa sự dính mắc vào quá khứ và tương lai, vào bản thân và người khác, chúng ta có thể trực tiếp trải nghiệm trạng thái thanh tĩnh tự nhiên, khám phá phúc lạc của khoảnh khắc hiện tại. Trong không gian ấy, chúng ta hiểu biến mất là gì. Ajahn Brahm, người hướng dẫn đầy sáng tạo về phúc lạc của thiền, sẽ chỉ ra rằng chuyến hành trình ấy tràn ngập niềm vui và rất đáng thực hiện.', 2, 104000, 250000, 'NXB Hồng Đức'),
(29102, 'Chú Hổ Ma Thuật: Vua Sư Tử Đá Banh', '', 5, '2024-05-15', 'Trong tập này, các bạn sẽ gặp được nhiều nhân vật nổi tiếng trong rừng sâu, không chỉ có vua sư tử mà còn có sói xám, khủng long, tê giác, hổ vằn… Đây là những con vật to lớn và hung tợn mà ai nghe đến cũng đều giật mình sợ hãi. Nhưng trong tập này, chúng ta sẽ thấy một bộ mặt hoàn toàn khác của chúng. Vua sư tử hiểu chuyện lắm, còn biết đá banh cùng con người nữa. Còn sói xám con thì thật thà và hiền lành, muốn đi học và kết bạn với tất cả các loài. Còn khủng long, tê giác, hổ vằn… thì sao? Vô số câu chuyện hấp dẫn đang chờ các bạn tìm đọc trong tập “Vua sư tử đá banh” đó nhé.', 6, 52000, 58000, 'NXB Hồng Đức'),
(29103, 'Nàng heo Annie gầy còm', '', 5, '2024-05-15', 'Nàng Heo Annie Gầy Còm.Liều thuốc tăng cân thần kỳ của Annie. Một triết lý sống nhẹ nhàng và vui tươi. Ddành cho các bạn nhỏ.Hạnh phúc… đến từ đâu?. Phải chăng là có thật nhiều tiền?. Là được tiêu tiền thỏa thích?. Hay bước lên những nấc thang thành công cao hơn?', 20, 80000, 150000, 'NXB Hồng Đức'),
(29104, 'Sách Chú Hổ Ma Thuật: Ảo Thuật Gia Gian Xảo', '', 5, '2024-05-14', 'Lần này Chú Hổ Ma Thuật đã gặp phải một đối thủ đáng gờm “nhà ảo thuật” phép thuật cao cường. Hắn không chỉ nhanh trí mà còn gian xảo, khiến Chú Hổ Ma Thuật và Tiểu Bảo bao phen lao đao. Hắn không chỉ ăn cắp chiếc dù bay thần kỳ, còn vu oan giá họa cho Chú Hổ Ma Thuật và Tiểu Bảo, khiến Tiểu Bảo bị tống vào ngục, còn Chú Hổ Ma Thuật bị cảnh sát truy lùng. Kiếp nạn này liệu Chú Hổ Ma Thuật có vượt qua? Cuối cùng công lý có đứng về phía người ngay thẳng? Các bạn hãy cùng theo dõi câu chuyện hấp dẫn này trong cuốn “Ảo thuật gia gian xảo” nhé', 22, 49000, 79000, 'NXB Hồng Đức'),
(29105, 'Sách Chú Hổ Ma Thuật: Vị Khách Thần Bí Lúc Nửa Đêm', '', 5, '2024-05-14', 'Ai là vị khách thần bí lúc nửa đêm? Vị khách đến đã làm xáo trộn cuộc sống của Tiểu Bảo và bà nội như thế nào? Ở trường Tiểu Bảo và Chú Hổ Ma Thuật đã gây náo loạn ra sao? Các bạn và cô giáo đã bất ngờ đến thế nào? Các tay “đàn anh” hay bắt nạt các bạn trong trường sẽ bị chú hổ và Tiểu Bảo xử lý ra sao? Cuộc sống trường lớp vui nhộn của Tiểu Bảo sẽ được thể hiện hết trong tập “Vị khách thần bí lúc nửa đêm”. Các bạn đừng bỏ qua những câu chuyện thú vị trong tập này nhé!', 1, 124000, 250000, 'NXB Hồng Đức'),
(29106, 'Sách Chú Hổ Ma Thuật: Thợ Săn Trong Rừng', '', 1, '2024-05-12', 'Trong rừng sâu, nơi bạn bè Chú Hổ Ma Thuật đang sinh sống bỗng xảy ra biến cố, có một tên thợ săn “nhanh như chớp” đang hoành hành. Hắn nhắm chuẩn vô cùng và làm hại muôn loài. Các con thú phải trốn chạy, khổ sở vô cùng. Chú Hổ Ma Thuật trở về liền ra tay giúp đỡ. Nhưng liệu phép thuật của chú có đấu lại cây súng của tên thợ săn không? Trong tập “Thợ săn trong rừng” này còn có câu chuyện của gấu đen và thỏ con cũng vô cùng hấp dẫn, các bạn hãy cùng tìm đọc nhé.', 20, 94000, 250000, 'NXB Hồng Đức'),
(29107, 'Sách Chú Hổ Ma Thuật: Ngôi Trường Tinh Nghịch', '', 5, '2024-05-13', 'Có bạn nào đi học mà dám trộm đề thi chưa? Nỗi sợ thi cử chắc hẳn luôn ám ảnh mỗi chúng ta. Tiểu Bảo cũng vậy, học bài chưa hết mà ngày thi cận kề rồi. Làm sao đây? Chỉ còn cách nhờ Chú Hổ Ma Thuật giúp đỡ thôi. Nhưng không phải chuyện nào chú hổ cũng giúp được đâu, có chuyện chú hổ càng giúp càng rối tung. Kết quả cuối cùng bài thi của Tiểu Bảo ra sao? Cô giáo có phát hiện ra hành vi gian dối của Tiểu bảo không? Vô số tình tiết hấp dẫn sẽ được hé lộ trong tập “Ngôi trường tinh nghịch”, các bạn đừng bỏ lỡ nhé!', 26, 73000, 249000, 'NXB Hồng Đức'),
(29126, 'Nhật Ký Trong Tù', '', 1, '2024-06-07', '', 61, 25000, 210000, 'Hồ Chí Minh'),
(29127, 'Mùa Xuân Ở Xứ Sở Nhiệt Đới', '', 3, '2024-06-10', '', 14, 27000, 70000, 'NXB Hà Nội'),
(29129, 'Hãy Thôi Để Quá Khứ Níu Kéo', '', 4, '2024-06-10', '', 15, 28000, 80000, 'NXB Hà Nội'),
(29131, 'Cây Cam Ngọt Của Tôi', '', 1, '2024-06-12', '', 12, 50000, 50000, 'NXB Trung Quốc'),
(29132, 'Chí Phèo', '', 6, '2024-06-10', '', 12, 12500, 22000, 'Nam Cao'),
(29133, 'Tiếng Mõ Cầu Trong Gió', '', 2, '2024-06-10', '', 13, 26000, 60000, 'NXB Hà Nội'),
(29136, 'Nóng Giận Là Bản Năng , Tĩnh Lặng Là Bản Lĩnh', '', 3, '2024-06-12', '', 10, 200000, 600000, 'NXB Trung Quốc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `chuthich` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `name`, `chuthich`) VALUES
(1, 'Văn Học', ''),
(2, 'Tiểu Sử Hồi Kĩ', ''),
(3, 'Kinh Tế - Chính Trị', ''),
(4, 'Tâm Lý - Kĩ Năng Sống', ''),
(5, 'Sách Thiếu Nhi', ''),
(6, 'Nghệ Thuật - Giải Trí', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hoadon_khachhang` (`id_kh`),
  ADD KEY `fk_hoadon_sach` (`id_sach`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_khachang_nhomkhachhang` (`id_nhomkh`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhomkhachhang`
--
ALTER TABLE `nhomkhachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieunhaphang`
--
ALTER TABLE `phieunhaphang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phieunhap_nhacungcap` (`id_nhacungcap`),
  ADD KEY `fk_phieunhap_sach` (`namesach`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sach_theloai` (`id_theloai`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nhomkhachhang`
--
ALTER TABLE `nhomkhachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `phieunhaphang`
--
ALTER TABLE `phieunhaphang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29140;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_hoadon_khachhang` FOREIGN KEY (`id_kh`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `fk_hoadon_sach` FOREIGN KEY (`id_sach`) REFERENCES `sach` (`id`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `fk_khachang_nhomkhachhang` FOREIGN KEY (`id_nhomkh`) REFERENCES `nhomkhachhang` (`id`);

--
-- Các ràng buộc cho bảng `phieunhaphang`
--
ALTER TABLE `phieunhaphang`
  ADD CONSTRAINT `fk_phieunhap_nhacungcap` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nhacungcap` (`id`);

--
-- Các ràng buộc cho bảng `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `fk_sach_theloai` FOREIGN KEY (`id_theloai`) REFERENCES `theloai` (`id`);
--
-- Cơ sở dữ liệu: `shopping`
--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopping`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `id_sach` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gia` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`id_sach`, `name`, `gia`) VALUES
(1, 'Thay doi', 44000),
(2, 'huan hoa hong', 20000),
(3, 'normal a bdvc', 15000),
(4, 'cv dep cach sua', 8000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`id_sach`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `id_sach` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Cơ sở dữ liệu: `sql_access`
--
CREATE DATABASE IF NOT EXISTS `sql_access` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sql_access`;
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Cơ sở dữ liệu: `websach`
--
CREATE DATABASE IF NOT EXISTS `websach` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `websach`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
