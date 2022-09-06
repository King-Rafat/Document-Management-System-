-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2022 at 08:29 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `document`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add userdata', 7, 'add_userdata'),
(26, 'Can change userdata', 7, 'change_userdata'),
(27, 'Can delete userdata', 7, 'delete_userdata'),
(28, 'Can view userdata', 7, 'view_userdata'),
(29, 'Can add works_for', 8, 'add_works_for'),
(30, 'Can change works_for', 8, 'change_works_for'),
(31, 'Can delete works_for', 8, 'delete_works_for'),
(32, 'Can view works_for', 8, 'view_works_for'),
(33, 'Can add document', 9, 'add_document'),
(34, 'Can change document', 9, 'change_document'),
(35, 'Can delete document', 9, 'delete_document'),
(36, 'Can view document', 9, 'view_document'),
(37, 'Can add group', 10, 'add_group'),
(38, 'Can change group', 10, 'change_group'),
(39, 'Can delete group', 10, 'delete_group'),
(40, 'Can view group', 10, 'view_group'),
(41, 'Can add notification', 11, 'add_notification'),
(42, 'Can change notification', 11, 'change_notification'),
(43, 'Can delete notification', 11, 'delete_notification'),
(44, 'Can view notification', 11, 'view_notification'),
(45, 'Can add folder', 12, 'add_folder'),
(46, 'Can change folder', 12, 'change_folder'),
(47, 'Can delete folder', 12, 'delete_folder'),
(48, 'Can view folder', 12, 'view_folder'),
(49, 'Can add contains_in', 13, 'add_contains_in'),
(50, 'Can change contains_in', 13, 'change_contains_in'),
(51, 'Can delete contains_in', 13, 'delete_contains_in'),
(52, 'Can view contains_in', 13, 'view_contains_in'),
(53, 'Can add recieves', 14, 'add_recieves'),
(54, 'Can change recieves', 14, 'change_recieves'),
(55, 'Can delete recieves', 14, 'delete_recieves'),
(56, 'Can view recieves', 14, 'view_recieves'),
(57, 'Can add roles', 15, 'add_roles'),
(58, 'Can change roles', 15, 'change_roles'),
(59, 'Can delete roles', 15, 'delete_roles'),
(60, 'Can view roles', 15, 'view_roles'),
(61, 'Can add works_on', 16, 'add_works_on'),
(62, 'Can change works_on', 16, 'change_works_on'),
(63, 'Can delete works_on', 16, 'delete_works_on'),
(64, 'Can view works_on', 16, 'view_works_on');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(4, 'pbkdf2_sha256$260000$rxzfUwzVeghmYcYKeLvRrA$H1WB1W3IqcQJObg9Q03l/ffyYVWZpj2XdjRFc1FR28g=', '2021-06-03 07:41:36.570513', 0, 'Sadia_Islam', '', '', 'sadia.islam5@northsouth.edu', 0, 1, '2021-05-11 14:22:57.278370'),
(9, 'pbkdf2_sha256$260000$92fHVyqTJyJM5dOHcrVbIR$efxc9gOPBOxCZ634cKUdt05I2mxtVt1z3Ru/ffKT3/U=', '2021-06-03 22:25:27.608844', 0, 'Rafat', '', '', 'kingrafat82@gmail.com', 0, 1, '2021-05-14 20:26:03.421813'),
(10, 'pbkdf2_sha256$260000$v96ltobfVoCrXBtMu7dmLu$wpP/MXFR36aRk5Ay1dY/10TU9CPXGkTeAbChpvRH7k8=', NULL, 0, 'Sadia_Islam2', '', '', 'munnisadiaislam@gmail.com', 0, 1, '2021-05-17 20:55:07.603108'),
(14, 'pbkdf2_sha256$260000$JgdYR0CkhT0ON1nE4aUC4Q$NBsKB44cbnn1exI0PngabNA8X19JKF1XSxwx0Yy7KAk=', NULL, 0, 'Tushar', '', '', 'tushar.basak@northsouth.edu', 0, 1, '2021-05-17 21:13:44.559245');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contains`
--

CREATE TABLE `contains` (
  `id` bigint(20) NOT NULL,
  `Doc_id` int(11) NOT NULL,
  `Folder_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'first', 'contains_in'),
(9, 'first', 'document'),
(12, 'first', 'folder'),
(10, 'first', 'group'),
(11, 'first', 'notification'),
(14, 'first', 'recieves'),
(15, 'first', 'roles'),
(7, 'first', 'userdata'),
(8, 'first', 'works_for'),
(16, 'first', 'works_on'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-10 14:10:02.540905'),
(2, 'auth', '0001_initial', '2021-05-10 14:10:02.936329'),
(3, 'admin', '0001_initial', '2021-05-10 14:10:03.039905'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-10 14:10:03.051016'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-10 14:10:03.067017'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-10 14:10:03.147017'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-10 14:10:03.187015'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-10 14:10:03.211030'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-10 14:10:03.219018'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-10 14:10:03.267015'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-10 14:10:03.267015'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-10 14:10:03.275025'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-10 14:10:03.299050'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-10 14:10:03.315050'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-10 14:10:03.331018'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-10 14:10:03.355052'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-05-10 14:10:03.371015'),
(18, 'sessions', '0001_initial', '2021-05-10 14:10:03.411018'),
(19, 'first', '0001_initial', '2021-05-10 14:15:06.151129'),
(20, 'first', '0002_auto_20210513_1406', '2021-05-13 08:07:30.135711'),
(21, 'first', '0003_alter_document_file', '2021-05-13 08:18:50.710489'),
(22, 'first', '0004_alter_document_file', '2021-05-13 08:31:10.409440');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5ghh0dmtynyfl8ws7o1ek2o92yygx2ps', 'e30:1lneON:6ibvOYRqdI0qtA-yVsWoDOu1TLNevXf23OGZWQWJLG8', '2021-06-14 09:39:27.915990'),
('6ywstqdpom9hck7qiwgasds4dp2h9je2', 'e30:1lneSU:EqZMSF13MLMP2hrC3AuyPiCU8mLtOuFPcbUF1MAwyaE', '2021-06-14 09:43:42.630244'),
('7uagixu39auej1h1le2jyu2nyo23o3t8', 'e30:1lneM2:Bn83XJgIolsIcLXdKpSa0aaa5upjKot-oxPC_xO9ud8', '2021-06-14 09:37:02.327311'),
('9alg7zukymb4c8cv0di5ivieb0i3mp2v', 'e30:1lneEz:87YM-JKtuHsEpq-muaaEqyOgvoT9buWjkUqfRWCu8To', '2021-06-14 09:29:45.660908'),
('9h3k6xlbm8yu9gvfjaxuxe68du5zudl0', 'e30:1lndDB:GRSs81kz75PF987ZllCoEvMS_hpE6oNqlV4smxYsGsY', '2021-06-14 08:23:49.071433'),
('arjj09h42ylcwzw0rl6zubpr0w5owcqw', '.eJxVjDsOwkAMBe-yNVplg5PYlPQ0XCDyxjYJn10pnwpxdxIpBbRv5s3btbzMfbtMOraDuJMjd_jdIncPTRuQO6db9l1O8zhEvyl-p5O_ZNHneXf_Aj1P_foG0QYZsRY5UtSmEi3NgAQNgkUoCw0VA4FiTcCEZnWpGLoAlRZka3TLJX7pWruy8ew-X2etPnY:1louSE:wU6PZirn4WLe3FHDcwXDYwgdRn12GYJsALfmvE3QZnA', '2021-06-17 21:00:38.128637'),
('b89bgyr1a48am6442vkjadr885l973nk', 'e30:1lohsV:xFnwTJqeeTkO2roCe1NFbQVpuWeYcYsdBjJ488p3Zro', '2021-06-17 07:34:55.122008'),
('cdps04nbehhy58tan94186l0oz3q6rzj', 'e30:1lndtD:FrFxbzsT2MUvEpOxFv0mFAFYGilZ-hWm3SpDyjI8ADw', '2021-06-14 09:07:15.316101'),
('fb5sific8j8tjdn5urj1vjk8vj897h7h', '.eJxVjDsOwkAMBe-yNVplg5PYlPQ0XCDyxjYJn10pnwpxdxIpBbRv5s3btbzMfbtMOraDuJMjd_jdIncPTRuQO6db9l1O8zhEvyl-p5O_ZNHneXf_Aj1P_foG0QYZsRY5UtSmEi3NgAQNgkUoCw0VA4FiTcCEZnWpGLoAlRZka3TLJX7pWruy8ew-X2etPnY:1lovmJ:4856U9u3x7XG1oPHsilJFYpRZ8dFwjWfK_KlaZU_IS0', '2021-06-17 22:25:27.714587'),
('isdtjupmtq5a4zf458eqrp2ojy084hh9', 'e30:1lndlD:_vTRngKr21htZBoxrXCsU8P8hsr4axPUb0iJku3eskY', '2021-06-14 08:58:59.555346'),
('jvmvxn0euko62henumma01lb2j1b91ix', 'e30:1lohsf:ER3q3_C0KNsK6vwvOIH2tKa9Is-rIucCM_fCKHQgcrk', '2021-06-17 07:35:05.836052'),
('kheshfrw31zfycc8q13z5tbgnpa44s7w', '.eJxVjDkOwjAURO_iGlm2sxBT0lFQcQDrbyYB4khxUiHujiOlgG408-a9VYB16cOaZQ4Dq5Oq1eG3Q6CnpG3gB6T7pGlKyzyg3hC9r1lfJ5bXeWf_BD3kvrwJDHKMR4QueiMlGvDWUkRyjm1dWRKyTYt1FVsr3FTGdB49WxdN412RbroEoxTbDXiAcMkvGNXnCxojQTM:1ln8j7:xbJu3eMM2B_HblUQ9tfLqIYypx_VA5qPGA0fackPc34', '2021-06-12 23:50:45.232051'),
('kk2pkkj9h2jc40iuz55qyhjb1kbhrsk6', 'e30:1lneEd:NYwlkbG7MsNVYSdDrgi1LoQwyOTgjfB7rQIuLF19vIE', '2021-06-14 09:29:23.408009'),
('nvque6absg4hf2h9b4rjbgo111yfjssu', 'e30:1lneNO:w0DpNbTDQ3_Kk-j6UTU_Dr837urgqAJICN_QFSNXqGM', '2021-06-14 09:38:26.761926'),
('oalxanna43jr1p7at6wftktdktd8vz6c', 'e30:1lohub:OQR-mmyEENCUID0CA5xzmWDafzLOc5u6diXJ1QjnQ_Q', '2021-06-17 07:37:05.540291'),
('olod4aa88g9vf9w754ico29wdm47512y', 'e30:1lndmZ:yWEgLLsC5MsKUP85MvOyCP5q_QQ3VDxjL7Jkz2BO00I', '2021-06-14 09:00:23.364431'),
('oxswojbthkwl8gphd1isqjiawb7lqss5', 'e30:1lof3Q:VNNQsIotipf6yHNfQL_ZArAhpUhgRxg2yNFC8-QxF7w', '2021-06-17 04:34:00.430616'),
('p79g3ya1henk9avbrclx22r4he1jgcse', 'e30:1lneRs:-oxhTMQv1mwTObKfAjwCrsADwE4EoRvJit1J2eT4K18', '2021-06-14 09:43:04.377902'),
('qj13l19dszggw7h1skfk9g0a9q7ts079', 'e30:1lneSl:cQVrr7eStQgwTrMYXO-jhQw-LtWI8sLcPobxFKf2wYw', '2021-06-14 09:43:59.292120'),
('r3m3fachdps9xtovy6vo374tkio82d4x', 'e30:1lnd1U:osuOOcgAQQHJoG5d0TPtveKk-t6LfcehpEjpZ_oSL8I', '2021-06-14 08:11:44.678277'),
('rakv1fzyibo137qt8a2is7l7yi0e5xeb', 'e30:1lnd96:NqqOPKLtUCigrf0yCrtX5duiCmYJyRPVS5pEcpQJZ40', '2021-06-14 08:19:36.311894'),
('rvtz2emijg86gagg65df3cvk1sq68ont', 'e30:1lhect:wNhogjrwViq_cXfbQZ50hrT7PqW-SzFISRDpfYRjzEg', '2021-05-28 20:41:39.769534'),
('u028jhcjpr1r5ehtcxbpcigvdgifhtk7', 'e30:1lohrK:Ro730KRCOEv_RHO95yL3GnuS3T69wbRQwE80CccJ88k', '2021-06-17 07:33:42.493939'),
('vb6xd9s262340sdx5egjgurw4zeahw6j', 'e30:1lndoo:yRE7B9pcDHT0zDtkZf7bg2e4ZaLH2JHuC5L-fPslNMQ', '2021-06-14 09:02:42.836790'),
('vlb8scfj23vq2enw8rebksqjrunv8td6', 'e30:1lndle:P2IsHmE-ZbnJ90rA3kdpNvrqDmxAWKOzUGp8u8b8u4c', '2021-06-14 08:59:26.980563'),
('vyvi2fy5f3bunc8hxqua2ys8rktscpu0', 'e30:1lncqU:xaUgqJc-3LHds6xvVy1n1zjf3JpK1vH49AsDZGyDnjg', '2021-06-14 08:00:22.322882'),
('xki24x7u664jsmfhi4ene9ws03mv4086', 'e30:1lndst:UvnKkBzskl3PUat63v_pIi_Juzl83gkVumfN81-T6Zk', '2021-06-14 09:06:55.188838'),
('y5ypethu87u6q7qhym8ovqjz6fmpv9l8', 'e30:1lohre:Y1_oG3EPb6FJaZydaFLP5kjfL4a9ePezGB5wcEm1If4', '2021-06-17 07:34:02.646182'),
('zeigcj6bnidoqxrioevfbw21rjtkbpzi', 'e30:1lneMS:tIHOckWHc80_x9MhCypD-rZ7UdcyVM_VemAGGqQscPI', '2021-06-14 09:37:28.139881'),
('zgx4jdyn3flhasrct4p2cu5sza07wjoj', 'e30:1lndmN:VK0bcM1kR3szI97gPLFrAjy4WSqi2tgE-9fnqI5WOzA', '2021-06-14 09:00:11.466699'),
('zkt0uo21l63l3yc8oh5nc3yy7sq6qqmy', 'e30:1lndqn:IMjtN14wCb1mq1N6n27FrfIhiNsejvXdKVlWldCeuYI', '2021-06-14 09:04:45.304963');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `SerialNo` int(11) NOT NULL,
  `File` varchar(100) NOT NULL,
  `Archived` tinyint(1) NOT NULL,
  `Upload_date` date NOT NULL,
  `Expiry_date` date NOT NULL,
  `Document_type` varchar(50) NOT NULL,
  `Index` longtext NOT NULL,
  `User_name_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`SerialNo`, `File`, `Archived`, `Upload_date`, `Expiry_date`, `Document_type`, `Index`, `User_name_id`) VALUES
(3, 'Document/kazi_Rafat.30.pdf', 1, '2021-05-13', '2021-05-19', 'public', 'Rafat Exam, Math,350', 'Sadia_Islam'),
(4, 'Document/Rafat_cse_373.pdf', 0, '2021-05-14', '2022-05-20', 'public', '373 Exam', 'Sadia_Islam'),
(9, 'Document/Kazi_Rafat_Haameem.pdf', 1, '2021-05-16', '2022-05-20', 'private', '373 part 2', 'Sadia_Islam'),
(10, 'Document/Sample_problems.pdf', 1, '2021-05-18', '2021-05-27', 'public', 'Physics, Rafat, Exam', 'Rafat'),
(11, 'Document/Kazi_Rafat_Haameem_1911391642_Sadia_Islam_1821039642_XPSpeyM.docx', 1, '2021-06-03', '2021-05-20', 'public', 'Test', 'Sadia_Islam'),
(12, 'Document/high_level_component_design.png', 0, '2021-06-04', '2021-06-18', 'public', 'Rafat Test 1', 'Rafat'),
(13, 'Document/Sequence_diagram1.png', 1, '2021-06-04', '2021-06-03', 'public', 'Rafat Test 2', 'Rafat'),
(14, 'Document/database_schema.png', 1, '2021-06-04', '2021-06-02', 'private', 'Rafat Test 3', 'Rafat'),
(15, 'Document/database_schema_CZeODAY.png', 1, '2021-06-04', '2021-06-03', 'public', 'Double chk', 'Rafat'),
(16, 'Document/ER-diagram.png', 1, '2021-06-04', '2021-06-02', 'public', 'Double chk 2', 'Rafat');

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `Folder_Id` int(11) NOT NULL,
  `F_Name` varchar(50) NOT NULL,
  `F_Cr_date` datetime(6) NOT NULL,
  `Parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `Group_ID` int(11) NOT NULL,
  `Date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`Group_ID`, `Date_created`) VALUES
(1, '2021-05-18'),
(2, '2021-05-18'),
(3, '2021-05-18'),
(4, '2021-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `Serial_No` int(11) NOT NULL,
  `Description` longtext NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recieves`
--

CREATE TABLE `recieves` (
  `id` bigint(20) NOT NULL,
  `Serial_num_id` int(11) NOT NULL,
  `User_Name_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `Position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Position`) VALUES
('Administrator'),
('Employee'),
('Manager'),
('Test'),
('Test a Role'),
('test test'),
('Test1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Avatar` varchar(100) NOT NULL,
  `Role_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Username`, `Email`, `password`, `Avatar`, `Role_id`) VALUES
('Rafat', 'kingrafat82@gmail.com', 'abcd1234', 'Avatar/WIN_20210112_16_10_59_Pro_hT3YC7U.jpg', 'Administrator'),
('Sadia_Islam', 'sadia.islam5@northsouth.edu', 'abc123', 'Avatar/184285413_770875073432700_5642602029070355969_n.jpg', 'Manager'),
('Sadia_Islam2', 'munnisadiaislam@gmail.com', '123456cat', 'Avatar/154789813_246572080464216_1480247741264585043_o.jpg', 'Employee'),
('Tushar', 'tushar.basak@northsouth.edu', '123456', 'Avatar/6ef02e62847f44cb470e816efc3e0219_R0fW7kU.jpg', 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) NOT NULL,
  `Group_id` int(11) NOT NULL,
  `User_Name_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `Group_id`, `User_Name_id`) VALUES
(1, 1, 'Rafat'),
(2, 1, 'Sadia_Islam'),
(6, 2, 'Sadia_Islam'),
(4, 3, 'Sadia_Islam'),
(3, 1, 'Sadia_Islam2'),
(7, 2, 'Tushar');

-- --------------------------------------------------------

--
-- Table structure for table `works_for`
--

CREATE TABLE `works_for` (
  `id` bigint(20) NOT NULL,
  `Group_id` int(11) NOT NULL,
  `Ser_No_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works_for`
--

INSERT INTO `works_for` (`id`, `Group_id`, `Ser_No_id`) VALUES
(2, 1, 3),
(1, 1, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `contains`
--
ALTER TABLE `contains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Contains_Doc_id_Folder_id_e64a07ee_uniq` (`Doc_id`,`Folder_id`),
  ADD KEY `Contains_Folder_id_57ff8e2b_fk_Folder_Folder_Id` (`Folder_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`SerialNo`),
  ADD KEY `Document_User_name_id_e180deac_fk_User_Username` (`User_name_id`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`Folder_Id`),
  ADD KEY `Folder_Parent_id_214e9312_fk_Folder_Folder_Id` (`Parent_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`Group_ID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`Serial_No`);

--
-- Indexes for table `recieves`
--
ALTER TABLE `recieves`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Recieves_Serial_num_id_User_Name_id_413aa203_uniq` (`Serial_num_id`,`User_Name_id`),
  ADD KEY `Recieves_User_Name_id_ce8f9071_fk_User_Username` (`User_Name_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Position`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Username`),
  ADD KEY `User_Role_id_df36bbe3_fk_Role_Position` (`Role_id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `works_User_Name_id_Group_id_33849bb6_uniq` (`User_Name_id`,`Group_id`),
  ADD KEY `works_Group_id_c0e578c2_fk_Group_Group_ID` (`Group_id`);

--
-- Indexes for table `works_for`
--
ALTER TABLE `works_for`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Works_for_Group_id_Ser_No_id_0fb52d3c_uniq` (`Group_id`,`Ser_No_id`),
  ADD KEY `Works_for_Ser_No_id_bd7d322d_fk_Document_SerialNo` (`Ser_No_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contains`
--
ALTER TABLE `contains`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `SerialNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `Folder_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `Group_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `Serial_No` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recieves`
--
ALTER TABLE `recieves`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `works_for`
--
ALTER TABLE `works_for`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `contains`
--
ALTER TABLE `contains`
  ADD CONSTRAINT `Contains_Doc_id_f65bcf95_fk_Document_SerialNo` FOREIGN KEY (`Doc_id`) REFERENCES `document` (`SerialNo`),
  ADD CONSTRAINT `Contains_Folder_id_57ff8e2b_fk_Folder_Folder_Id` FOREIGN KEY (`Folder_id`) REFERENCES `folder` (`Folder_Id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `Document_User_name_id_e180deac_fk_User_Username` FOREIGN KEY (`User_name_id`) REFERENCES `user` (`Username`);

--
-- Constraints for table `folder`
--
ALTER TABLE `folder`
  ADD CONSTRAINT `Folder_Parent_id_214e9312_fk_Folder_Folder_Id` FOREIGN KEY (`Parent_id`) REFERENCES `folder` (`Folder_Id`);

--
-- Constraints for table `recieves`
--
ALTER TABLE `recieves`
  ADD CONSTRAINT `Recieves_Serial_num_id_566acbd2_fk_Notifications_Serial_No` FOREIGN KEY (`Serial_num_id`) REFERENCES `notifications` (`Serial_No`),
  ADD CONSTRAINT `Recieves_User_Name_id_ce8f9071_fk_User_Username` FOREIGN KEY (`User_Name_id`) REFERENCES `user` (`Username`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `User_Role_id_df36bbe3_fk_Role_Position` FOREIGN KEY (`Role_id`) REFERENCES `role` (`Position`);

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `works_Group_id_c0e578c2_fk_Group_Group_ID` FOREIGN KEY (`Group_id`) REFERENCES `group` (`Group_ID`),
  ADD CONSTRAINT `works_User_Name_id_e2b9d3f1_fk_User_Username` FOREIGN KEY (`User_Name_id`) REFERENCES `user` (`Username`);

--
-- Constraints for table `works_for`
--
ALTER TABLE `works_for`
  ADD CONSTRAINT `Works_for_Group_id_3b91792f_fk_Group_Group_ID` FOREIGN KEY (`Group_id`) REFERENCES `group` (`Group_ID`),
  ADD CONSTRAINT `Works_for_Ser_No_id_bd7d322d_fk_Document_SerialNo` FOREIGN KEY (`Ser_No_id`) REFERENCES `document` (`SerialNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
