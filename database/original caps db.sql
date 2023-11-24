-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 02:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(68, 'ICT', '2023-09-14 16:54:59'),
(69, 'H.E', '2023-09-14 16:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_course`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(27, 'Juan Dela Cruz', '69', 'male', '2023-11-06', 'Grade 12', '20_UCS_01@gov.ph', '12345', 'active'),
(28, 'Josh Dela Cruz', '69', 'male', '2023-11-02', 'Grade 12', '20_UCS_03@gov.ph', '12345', 'active'),
(29, 'juan tamad 1', '69', 'male', '2023-11-12', 'Grade 12', '20_UCS_02@gov.ph', '12345', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(324, 11, 28, 78, '(x - 3)(x + 3)', 'new', '2023-09-20 13:06:49'),
(325, 11, 28, 76, 'x = 2', 'new', '2023-09-20 13:06:49'),
(326, 11, 28, 68, 'Oxygen', 'new', '2023-09-20 13:06:49'),
(327, 11, 28, 39, 'Monitor', 'new', '2023-09-20 13:06:49'),
(328, 11, 28, 81, '1/6', 'new', '2023-09-20 13:06:49'),
(329, 11, 28, 72, 'Telescope', 'new', '2023-09-20 13:06:49'),
(330, 11, 28, 58, 'Java', 'new', '2023-09-20 13:06:49'),
(331, 11, 28, 65, 'Cerebellum', 'new', '2023-09-20 13:06:49'),
(332, 11, 28, 91, '24', 'new', '2023-09-20 13:06:49'),
(333, 11, 28, 42, 'Managing computer hardware', 'new', '2023-09-20 13:06:49'),
(334, 11, 28, 37, ' CPU', 'new', '2023-09-20 13:06:49'),
(335, 11, 28, 67, '6', 'new', '2023-09-20 13:06:49'),
(336, 11, 28, 60, 'Geography', 'new', '2023-09-20 13:06:49'),
(337, 11, 28, 46, 'Managing computer hardware resources', 'new', '2023-09-20 13:06:49'),
(338, 11, 28, 63, 'Proton', 'new', '2023-09-20 13:06:49'),
(339, 11, 28, 90, 'Mean', 'new', '2023-09-20 13:06:49'),
(340, 11, 28, 93, '15', 'new', '2023-09-20 13:06:49'),
(341, 11, 28, 36, 'TCP/IP', 'new', '2023-09-20 13:06:49'),
(342, 11, 28, 44, 'Host-To-Host Transfer Protocol', 'new', '2023-09-20 13:06:49'),
(343, 11, 28, 52, 'HyperText Markup Language', 'new', '2023-09-20 13:06:49'),
(344, 11, 28, 49, 'Trojan', 'new', '2023-09-20 13:06:49'),
(345, 11, 28, 77, 'x = 9', 'new', '2023-09-20 13:06:49'),
(346, 11, 28, 41, 'Microsoft Word', 'new', '2023-09-20 13:06:49'),
(347, 11, 28, 94, '5', 'new', '2023-09-20 13:06:49'),
(348, 11, 28, 53, 'Spreadsheet', 'new', '2023-09-20 13:06:49'),
(349, 11, 28, 50, 'Array', 'new', '2023-09-20 13:06:49'),
(350, 11, 28, 55, 'Organism', 'new', '2023-09-20 13:06:49'),
(351, 11, 28, 48, 'Structured Query Language', 'new', '2023-09-20 13:06:49'),
(352, 11, 28, 64, 'Photosynthesis', 'new', '2023-09-20 13:06:49'),
(353, 11, 28, 73, '300,000 km/s', 'new', '2023-09-20 13:06:49'),
(354, 11, 28, 79, '6', 'new', '2023-09-20 13:06:49'),
(355, 11, 28, 66, 'Photosynthesis', 'new', '2023-09-20 13:06:49'),
(356, 11, 28, 59, 'Watt', 'new', '2023-09-20 13:06:49'),
(357, 11, 28, 85, 'Not enough information', 'new', '2023-09-20 13:06:49'),
(358, 11, 28, 56, 'Kidneys', 'new', '2023-09-20 13:06:49'),
(359, 11, 28, 83, '28', 'new', '2023-09-20 13:06:49'),
(360, 11, 28, 51, '1010', 'new', '2023-09-20 13:06:49'),
(361, 11, 28, 54, 'Central Program Unit', 'new', '2023-09-20 13:06:49'),
(362, 11, 28, 74, 'Frictional force', 'new', '2023-09-20 13:06:49'),
(363, 11, 28, 71, 'Oxygen', 'new', '2023-09-20 13:06:49'),
(364, 11, 28, 95, '9', 'new', '2023-09-20 13:06:50'),
(365, 11, 28, 84, 'Y', 'new', '2023-09-20 13:06:50'),
(366, 11, 28, 40, 'Computer Peripheral Unit', 'new', '2023-09-20 13:06:50'),
(367, 11, 28, 43, 'Limited Area Network', 'new', '2023-09-20 13:06:50'),
(368, 11, 28, 70, 'H2O', 'new', '2023-09-20 13:06:50'),
(369, 11, 28, 86, 'Standard error', 'new', '2023-09-20 13:06:50'),
(370, 11, 28, 47, 'JavaScript', 'new', '2023-09-20 13:06:50'),
(371, 11, 28, 82, 'SRQR', 'new', '2023-09-20 13:06:50'),
(372, 11, 28, 88, 'Bar chart', 'new', '2023-09-20 13:06:50'),
(373, 11, 28, 80, '200', 'new', '2023-09-20 13:06:50'),
(374, 11, 28, 38, 'Random Access Memory', 'new', '2023-09-20 13:06:50'),
(375, 11, 28, 92, 'Equilateral', 'new', '2023-09-20 13:06:50'),
(376, 11, 28, 89, 'The data is perfectly symmetrical', 'new', '2023-09-20 13:06:50'),
(377, 11, 28, 45, 'Java', 'new', '2023-09-20 13:06:50'),
(378, 11, 28, 57, 'Uniform Resource Locator', 'new', '2023-09-20 13:06:50'),
(379, 11, 28, 69, 'Melting', 'new', '2023-09-20 13:06:50'),
(380, 11, 28, 75, 'Ohm', 'new', '2023-09-20 13:06:50'),
(381, 11, 28, 87, 'Nominal', 'new', '2023-09-20 13:06:50'),
(382, 12, 29, 96, 'ss', 'new', '2023-09-20 13:23:23'),
(383, 12, 29, 97, 'sss', 'new', '2023-09-20 13:23:23'),
(384, 13, 28, 74, 'Gravitational force', 'new', '2023-09-23 13:43:13'),
(385, 13, 28, 72, 'Microscope', 'new', '2023-09-23 13:43:13'),
(386, 13, 28, 64, 'Transpiration', 'new', '2023-09-23 13:43:13'),
(387, 13, 28, 46, 'Creating virtual machines', 'new', '2023-09-23 13:43:13'),
(388, 13, 28, 63, 'Neutron', 'new', '2023-09-23 13:43:13'),
(389, 13, 28, 92, 'Right-angled', 'new', '2023-09-23 13:43:13'),
(390, 13, 28, 51, '1100', 'new', '2023-09-23 13:43:13'),
(391, 13, 28, 41, 'Adobe Photoshop', 'new', '2023-09-23 13:43:13'),
(392, 13, 28, 84, 'B', 'new', '2023-09-23 13:43:13'),
(393, 13, 28, 83, '36', 'new', '2023-09-23 13:43:13'),
(394, 13, 28, 90, 'Range', 'new', '2023-09-23 13:43:13'),
(395, 13, 28, 54, 'Central Program Unit', 'new', '2023-09-23 13:43:13'),
(396, 13, 28, 82, 'RSPQ', 'new', '2023-09-23 13:43:13'),
(397, 13, 28, 71, 'Aluminum', 'new', '2023-09-23 13:43:13'),
(398, 13, 28, 48, 'Sequential Query Language', 'new', '2023-09-23 13:43:13'),
(399, 13, 28, 94, '7', 'new', '2023-09-23 13:43:13'),
(400, 13, 28, 52, 'Hardware and Technology Markup Language', 'new', '2023-09-23 13:43:13'),
(401, 13, 28, 81, '1/2', 'new', '2023-09-23 13:43:13'),
(402, 13, 28, 86, 'Correlation coefficient', 'new', '2023-09-23 13:43:13'),
(403, 13, 28, 85, 'B', 'new', '2023-09-23 13:43:13'),
(404, 13, 28, 50, 'Array', 'new', '2023-09-23 13:43:13'),
(405, 13, 28, 70, 'CO2', 'new', '2023-09-23 13:43:13'),
(406, 13, 28, 73, '300,000 km/s', 'new', '2023-09-23 13:43:13'),
(407, 13, 28, 79, '4', 'new', '2023-09-23 13:43:13'),
(408, 13, 28, 37, 'RAM', 'new', '2023-09-23 13:43:13'),
(409, 13, 28, 53, 'Browser', 'new', '2023-09-23 13:43:13'),
(410, 13, 28, 76, 'x = 4', 'new', '2023-09-23 13:43:13'),
(411, 13, 28, 89, 'The data is normally distributed', 'new', '2023-09-23 13:43:13'),
(412, 13, 28, 80, '100', 'new', '2023-09-23 13:43:13'),
(413, 13, 28, 91, '64', 'new', '2023-09-23 13:43:13'),
(414, 13, 28, 57, 'Uniform Resource Locator', 'new', '2023-09-23 13:43:13'),
(415, 13, 28, 68, 'Carbon dioxide', 'new', '2023-09-23 13:43:13'),
(416, 13, 28, 69, 'Vaporization', 'new', '2023-09-23 13:43:13'),
(417, 13, 28, 56, 'Kidneys', 'new', '2023-09-23 13:43:13'),
(418, 13, 28, 49, 'Spyware', 'new', '2023-09-23 13:43:13'),
(419, 13, 28, 77, 'x = 12', 'new', '2023-09-23 13:43:13'),
(420, 13, 28, 59, 'Newton', 'new', '2023-09-23 13:43:13'),
(421, 13, 28, 95, '7', 'new', '2023-09-23 13:43:13'),
(422, 13, 28, 42, 'Storing and retrieving data', 'new', '2023-09-23 13:43:13'),
(423, 13, 28, 66, 'Meiosis', 'new', '2023-09-23 13:43:13'),
(424, 13, 28, 40, 'Computer Peripheral Unit', 'new', '2023-09-23 13:43:13'),
(425, 13, 28, 44, 'Host-To-Host Transfer Protocol', 'new', '2023-09-23 13:43:13'),
(426, 13, 28, 67, '6', 'new', '2023-09-23 13:43:13'),
(427, 13, 28, 88, 'Histogram', 'new', '2023-09-23 13:43:13'),
(428, 13, 28, 87, 'Ordinal', 'new', '2023-09-23 13:43:13'),
(429, 13, 28, 36, 'TCP/IP', 'new', '2023-09-23 13:43:13'),
(430, 13, 28, 60, 'Geology', 'new', '2023-09-23 13:43:13'),
(431, 13, 28, 38, ' Real-time Access Module', 'new', '2023-09-23 13:43:13'),
(432, 13, 28, 39, 'Keyboard', 'new', '2023-09-23 13:43:13'),
(433, 13, 28, 58, 'HTML', 'new', '2023-09-23 13:43:13'),
(434, 13, 28, 45, 'C++', 'new', '2023-09-23 13:43:13'),
(435, 13, 28, 55, 'Organism', 'new', '2023-09-23 13:43:13'),
(436, 13, 28, 78, '(x - 9)(x + 1)', 'new', '2023-09-23 13:43:13'),
(437, 13, 28, 47, 'Ruby', 'new', '2023-09-23 13:43:13'),
(438, 13, 28, 75, 'Ampere', 'new', '2023-09-23 13:43:13'),
(439, 13, 28, 93, '30', 'new', '2023-09-23 13:43:13'),
(440, 13, 28, 43, 'Local Access Network', 'new', '2023-09-23 13:43:13'),
(441, 13, 28, 65, 'Hypothalamus', 'new', '2023-09-23 13:43:13'),
(442, 15, 28, 88, 'Bar chart', 'new', '2023-09-26 07:51:33'),
(443, 15, 28, 41, 'Windows 10', 'new', '2023-09-26 07:51:33'),
(444, 15, 28, 74, 'Gravitational force', 'new', '2023-09-26 07:51:33'),
(445, 15, 28, 91, '32', 'new', '2023-09-26 07:51:33'),
(446, 15, 28, 58, 'Java', 'new', '2023-09-26 07:51:33'),
(447, 15, 28, 77, 'x = 3', 'new', '2023-09-26 07:51:33'),
(448, 15, 28, 37, 'RAM', 'new', '2023-09-26 07:51:33'),
(449, 15, 28, 81, '1/4', 'new', '2023-09-26 07:51:33'),
(450, 15, 28, 94, '6', 'new', '2023-09-26 07:51:33'),
(451, 15, 28, 39, 'Motherboard', 'new', '2023-09-26 07:51:33'),
(452, 15, 28, 93, '15', 'new', '2023-09-26 07:51:33'),
(453, 15, 28, 56, 'Liver', 'new', '2023-09-26 07:51:33'),
(454, 15, 28, 71, 'Oxygen', 'new', '2023-09-26 07:51:33'),
(455, 15, 28, 85, 'A', 'new', '2023-09-26 07:51:33'),
(456, 15, 28, 92, 'Isosceles', 'new', '2023-09-26 07:51:33'),
(457, 15, 28, 73, '300,000 km/s', 'new', '2023-09-26 07:51:33'),
(458, 15, 28, 95, '9', 'new', '2023-09-26 07:51:33'),
(459, 15, 28, 45, 'HTML', 'new', '2023-09-26 07:51:33'),
(460, 15, 28, 86, 'Z-score', 'new', '2023-09-26 07:51:33'),
(461, 15, 28, 84, 'Z', 'new', '2023-09-26 07:51:33'),
(462, 15, 28, 46, 'Managing computer hardware resources', 'new', '2023-09-26 07:51:33'),
(463, 15, 28, 49, 'Virus', 'new', '2023-09-26 07:51:33'),
(464, 15, 28, 57, 'Uniform Resource Locator', 'new', '2023-09-26 07:51:33'),
(465, 15, 28, 36, 'TCP/IP', 'new', '2023-09-26 07:51:33'),
(466, 15, 28, 75, 'Ampere', 'new', '2023-09-26 07:51:33'),
(467, 15, 28, 44, 'HyperText Transfer Protocol', 'new', '2023-09-26 07:51:33'),
(468, 15, 28, 59, 'Watt', 'new', '2023-09-26 07:51:33'),
(469, 15, 28, 65, 'Cerebellum', 'new', '2023-09-26 07:51:33'),
(470, 15, 28, 63, 'Proton', 'new', '2023-09-26 07:51:33'),
(471, 15, 28, 54, 'Central Processing Unit', 'new', '2023-09-26 07:51:33'),
(472, 15, 28, 55, 'Atom', 'new', '2023-09-26 07:51:33'),
(473, 15, 28, 50, 'Queue', 'new', '2023-09-26 07:51:33'),
(474, 15, 28, 78, '(x^2 + 9)', 'new', '2023-09-26 07:51:33'),
(475, 15, 28, 64, 'Fermentation', 'new', '2023-09-26 07:51:33'),
(476, 15, 28, 68, 'Chlorophyll', 'new', '2023-09-26 07:51:33'),
(477, 15, 28, 66, 'Meiosis', 'new', '2023-09-26 07:51:33'),
(478, 15, 28, 76, 'x = 6', 'new', '2023-09-26 07:51:33'),
(479, 15, 28, 80, '2', 'new', '2023-09-26 07:51:33'),
(480, 15, 28, 90, 'Median', 'new', '2023-09-26 07:51:33'),
(481, 15, 28, 52, 'HyperText Markup Language', 'new', '2023-09-26 07:51:33'),
(482, 15, 28, 79, '8', 'new', '2023-09-26 07:51:33'),
(483, 15, 28, 67, '6', 'new', '2023-09-26 07:51:33'),
(484, 15, 28, 48, 'Structured Query Language', 'new', '2023-09-26 07:51:33'),
(485, 15, 28, 53, 'Antivirus', 'new', '2023-09-26 07:51:33'),
(486, 15, 28, 40, 'Central Processing Unit', 'new', '2023-09-26 07:51:33'),
(487, 15, 28, 38, 'Random Access Memory', 'new', '2023-09-26 07:51:33'),
(488, 15, 28, 47, 'JavaScript', 'new', '2023-09-26 07:51:33'),
(489, 15, 28, 89, 'The data is highly variable', 'new', '2023-09-26 07:51:33'),
(490, 15, 28, 83, '28', 'new', '2023-09-26 07:51:33'),
(491, 15, 28, 87, 'Ordinal', 'new', '2023-09-26 07:51:33'),
(492, 15, 28, 70, 'H2O', 'new', '2023-09-26 07:51:33'),
(493, 15, 28, 72, 'Microscope', 'new', '2023-09-26 07:51:33'),
(494, 15, 28, 82, 'QRSU', 'new', '2023-09-26 07:51:33'),
(495, 15, 28, 43, 'Local Access Network', 'new', '2023-09-26 07:51:33'),
(496, 15, 28, 51, '1010', 'new', '2023-09-26 07:51:33'),
(497, 15, 28, 69, 'Sublimation', 'new', '2023-09-26 07:51:33'),
(498, 15, 28, 60, 'Geography', 'new', '2023-09-26 07:51:33'),
(499, 15, 28, 42, 'Managing computer hardware', 'new', '2023-09-26 07:51:33'),
(500, 16, 28, 63, 'Proton', 'new', '2023-09-26 08:12:40'),
(501, 16, 28, 81, '1/3', 'new', '2023-09-26 08:12:40'),
(502, 16, 28, 78, '(x - 9)(x + 1)', 'new', '2023-09-26 08:12:40'),
(503, 16, 28, 53, 'Firewall', 'new', '2023-09-26 08:12:40'),
(504, 16, 28, 52, 'HyperText Markup Language', 'new', '2023-09-26 08:12:40'),
(505, 16, 28, 69, 'Vaporization', 'new', '2023-09-26 08:12:40'),
(506, 16, 28, 44, 'HyperText Transfer Protocol', 'new', '2023-09-26 08:12:40'),
(507, 16, 28, 94, '4', 'new', '2023-09-26 08:12:40'),
(508, 16, 28, 43, 'Local Access Network', 'new', '2023-09-26 08:12:40'),
(509, 16, 28, 42, 'Storing and retrieving data', 'new', '2023-09-26 08:12:40'),
(510, 16, 28, 92, 'Scalene', 'new', '2023-09-26 08:12:40'),
(511, 16, 28, 80, '2', 'new', '2023-09-26 08:12:40'),
(512, 16, 28, 87, 'Ordinal', 'new', '2023-09-26 08:12:40'),
(513, 16, 28, 54, 'Central Processing Unit', 'new', '2023-09-26 08:12:40'),
(514, 16, 28, 91, '32', 'new', '2023-09-26 08:12:40'),
(515, 16, 28, 45, 'HTML', 'new', '2023-09-26 08:12:40'),
(516, 16, 28, 67, '12', 'new', '2023-09-26 08:12:40'),
(517, 16, 28, 75, 'Watt', 'new', '2023-09-26 08:12:40'),
(518, 16, 28, 38, 'Random Access Memory', 'new', '2023-09-26 08:12:40'),
(519, 16, 28, 66, 'Embryogenesis', 'new', '2023-09-26 08:12:40'),
(520, 16, 28, 93, '15', 'new', '2023-09-26 08:12:40'),
(521, 16, 28, 68, 'Chlorophyll', 'new', '2023-09-26 08:12:40'),
(522, 16, 28, 56, 'Liver', 'new', '2023-09-26 08:12:40'),
(523, 16, 28, 70, 'H2O', 'new', '2023-09-26 08:12:40'),
(524, 16, 28, 73, '300,000 km/s', 'new', '2023-09-26 08:12:40'),
(525, 16, 28, 36, 'SMTP', 'new', '2023-09-26 08:12:40'),
(526, 16, 28, 47, 'Python', 'new', '2023-09-26 08:12:40'),
(527, 16, 28, 85, 'A', 'new', '2023-09-26 08:12:40'),
(528, 16, 28, 88, 'Pie chart', 'new', '2023-09-26 08:12:40'),
(529, 16, 28, 86, 'Standard error', 'new', '2023-09-26 08:12:40'),
(530, 16, 28, 60, 'Geology', 'new', '2023-09-26 08:12:40'),
(531, 16, 28, 64, 'Photosynthesis', 'new', '2023-09-26 08:12:40'),
(532, 16, 28, 82, 'QRSU', 'new', '2023-09-26 08:12:40'),
(533, 16, 28, 84, 'A', 'new', '2023-09-26 08:12:40'),
(534, 16, 28, 57, 'Universal Request Language', 'new', '2023-09-26 08:12:40'),
(535, 16, 28, 95, '9', 'new', '2023-09-26 08:12:40'),
(536, 16, 28, 50, 'Array', 'new', '2023-09-26 08:12:40'),
(537, 16, 28, 79, '2', 'new', '2023-09-26 08:12:40'),
(538, 16, 28, 76, 'x = 4', 'new', '2023-09-26 08:12:40'),
(539, 16, 28, 39, 'Motherboard', 'new', '2023-09-26 08:12:40'),
(540, 16, 28, 72, 'Telescope', 'new', '2023-09-26 08:12:40'),
(541, 16, 28, 71, 'Carbon', 'new', '2023-09-26 08:12:40'),
(542, 16, 28, 65, 'Cerebellum', 'new', '2023-09-26 08:12:40'),
(543, 16, 28, 55, 'Atom', 'new', '2023-09-26 08:12:40'),
(544, 16, 28, 51, '1001', 'new', '2023-09-26 08:12:40'),
(545, 16, 28, 46, 'Tracking changes in source code and collaborating on software projects', 'new', '2023-09-26 08:12:40'),
(546, 16, 28, 40, 'Central Processing Unit', 'new', '2023-09-26 08:12:40'),
(547, 16, 28, 49, 'Trojan', 'new', '2023-09-26 08:12:40'),
(548, 16, 28, 48, 'Structured Query Language', 'new', '2023-09-26 08:12:40'),
(549, 16, 28, 77, 'x = 3', 'new', '2023-09-26 08:12:40'),
(550, 16, 28, 59, 'Newton', 'new', '2023-09-26 08:12:40'),
(551, 16, 28, 83, '30', 'new', '2023-09-26 08:12:40'),
(552, 16, 28, 89, 'The data is perfectly symmetrical', 'new', '2023-09-26 08:12:40'),
(553, 16, 28, 74, 'Gravitational force', 'new', '2023-09-26 08:12:40'),
(554, 16, 28, 41, 'Windows 10', 'new', '2023-09-26 08:12:40'),
(555, 16, 28, 37, 'Hard Drive', 'new', '2023-09-26 08:12:40'),
(556, 16, 28, 58, 'Java', 'new', '2023-09-26 08:12:40'),
(557, 16, 28, 90, 'Median', 'new', '2023-09-26 08:12:40'),
(558, 15, 30, 120, 'r', 'new', '2023-10-17 14:23:09'),
(559, 21, 31, 121, 't', 'new', '2023-10-17 15:20:58'),
(560, 27, 28, 71, 'Oxygen', 'new', '2023-11-06 13:02:48'),
(561, 27, 28, 80, '100', 'new', '2023-11-06 13:02:48'),
(562, 27, 28, 52, 'HyperText Markup Language', 'new', '2023-11-06 13:02:48'),
(563, 27, 28, 87, 'Interval', 'new', '2023-11-06 13:02:48'),
(564, 27, 28, 91, '24', 'new', '2023-11-06 13:02:48'),
(565, 27, 28, 107, 'Determine the author’s intent', 'new', '2023-11-06 13:02:48'),
(566, 27, 28, 47, 'Python', 'new', '2023-11-06 13:02:48'),
(567, 27, 28, 38, 'Rapid Application Management', 'new', '2023-11-06 13:02:48'),
(568, 27, 28, 44, 'HyperText Transfer Protocol', 'new', '2023-11-06 13:02:48'),
(569, 27, 28, 63, 'Photon', 'new', '2023-11-06 13:02:48'),
(570, 27, 28, 56, 'Pancreas', 'new', '2023-11-06 13:02:48'),
(571, 27, 28, 45, 'Python', 'new', '2023-11-06 13:02:48'),
(572, 27, 28, 72, 'Telescope', 'new', '2023-11-06 13:02:48'),
(573, 27, 28, 112, 'The book is above the table', 'new', '2023-11-06 13:02:48'),
(574, 27, 28, 49, 'Worm', 'new', '2023-11-06 13:02:48'),
(575, 27, 28, 111, 'Penguins are insects', 'new', '2023-11-06 13:02:48'),
(576, 27, 28, 88, 'Histogram', 'new', '2023-11-06 13:02:48'),
(577, 27, 28, 113, 'Socrates is mortal', 'new', '2023-11-06 13:02:48'),
(578, 27, 28, 100, 'Author', 'new', '2023-11-06 13:02:48'),
(579, 27, 28, 116, 'MAN (Metropolitan Area Network) ', 'new', '2023-11-06 13:02:48'),
(580, 27, 28, 74, 'Frictional force', 'new', '2023-11-06 13:02:48'),
(581, 27, 28, 50, 'Array', 'new', '2023-11-06 13:02:48'),
(582, 27, 28, 99, 'Socrates is a deep thinker', 'new', '2023-11-06 13:02:48'),
(583, 27, 28, 57, 'User-Request Locator', 'new', '2023-11-06 13:02:48'),
(584, 27, 28, 76, 'x = 4', 'new', '2023-11-06 13:02:48'),
(585, 27, 28, 118, 'Java', 'new', '2023-11-06 13:02:48'),
(586, 27, 28, 103, 'Logical conjunction', 'new', '2023-11-06 13:02:48'),
(587, 27, 28, 101, 'Some bats can fly', 'new', '2023-11-06 13:02:48'),
(588, 27, 28, 40, 'Central Processing Unit', 'new', '2023-11-06 13:02:48'),
(589, 27, 28, 60, 'Paleontology', 'new', '2023-11-06 13:02:48'),
(590, 27, 28, 46, 'Managing computer hardware resources', 'new', '2023-11-06 13:02:48'),
(591, 27, 28, 105, 'Cats are mammals. Mammals have lungs. Therefore, cats have lungs.', 'new', '2023-11-06 13:02:48'),
(592, 27, 28, 39, 'Monitor', 'new', '2023-11-06 13:02:48'),
(593, 27, 28, 108, 'Ad hominem', 'new', '2023-11-06 13:02:48'),
(594, 27, 28, 70, 'H2O', 'new', '2023-11-06 13:02:48'),
(595, 27, 28, 36, 'FTP', 'new', '2023-11-06 13:02:48'),
(596, 27, 28, 75, 'Ohm', 'new', '2023-11-06 13:02:48'),
(597, 27, 28, 42, 'Managing computer hardware', 'new', '2023-11-06 13:02:48'),
(598, 27, 28, 83, '36', 'new', '2023-11-06 13:02:48'),
(599, 27, 28, 109, 'Ad hominem', 'new', '2023-11-06 13:02:48'),
(600, 27, 28, 82, 'RSPQ', 'new', '2023-11-06 13:02:48'),
(601, 27, 28, 59, 'Watt', 'new', '2023-11-06 13:02:48'),
(602, 27, 28, 43, 'Local Access Network', 'new', '2023-11-06 13:02:48'),
(603, 27, 28, 41, 'Google Chrome', 'new', '2023-11-06 13:02:48'),
(604, 27, 28, 114, 'She went to the store, bought eggs milk and bread.', 'new', '2023-11-06 13:02:48'),
(605, 27, 28, 85, 'B', 'new', '2023-11-06 13:02:48'),
(606, 27, 28, 95, '6', 'new', '2023-11-06 13:02:48'),
(607, 27, 28, 48, 'Standard Query Language', 'new', '2023-11-06 13:02:48'),
(608, 27, 28, 93, '25', 'new', '2023-11-06 13:02:48'),
(609, 27, 28, 84, 'A', 'new', '2023-11-06 13:02:48'),
(610, 27, 28, 73, '300,000 km/s', 'new', '2023-11-06 13:02:48'),
(611, 27, 28, 51, '1110', 'new', '2023-11-06 13:02:48'),
(612, 27, 28, 92, 'Right-angled', 'new', '2023-11-06 13:02:48'),
(613, 27, 28, 90, 'Median', 'new', '2023-11-06 13:02:48'),
(614, 27, 28, 58, 'Java', 'new', '2023-11-06 13:02:48'),
(615, 27, 28, 89, 'The data is highly variable', 'new', '2023-11-06 13:02:48'),
(616, 27, 28, 53, 'Browser', 'new', '2023-11-06 13:02:48'),
(617, 27, 28, 64, 'Respiration', 'new', '2023-11-06 13:02:48'),
(618, 27, 28, 86, 'Standard error', 'new', '2023-11-06 13:02:48'),
(619, 27, 28, 115, 'Solid State Drive (SSD)', 'new', '2023-11-06 13:02:48'),
(620, 27, 28, 79, '6', 'new', '2023-11-06 13:02:48'),
(621, 27, 28, 117, 'To filter spam emails', 'new', '2023-11-06 13:02:48'),
(622, 27, 28, 55, 'Organism', 'new', '2023-11-06 13:02:48'),
(623, 27, 28, 94, '7', 'new', '2023-11-06 13:02:48'),
(624, 27, 28, 104, 'Logical equivalence', 'new', '2023-11-06 13:02:48'),
(625, 27, 28, 102, 'John’s car is in the parking lot', 'new', '2023-11-06 13:02:48'),
(626, 27, 28, 119, 'To protect against unauthorized access and cyber threats', 'new', '2023-11-06 13:02:48'),
(627, 27, 28, 110, 'All students like math', 'new', '2023-11-06 13:02:48'),
(628, 27, 28, 69, 'Sublimation', 'new', '2023-11-06 13:02:48'),
(629, 27, 28, 78, '(x - 3)(x + 3)', 'new', '2023-11-06 13:02:48'),
(630, 27, 28, 77, 'x = 3', 'new', '2023-11-06 13:02:48'),
(631, 27, 28, 81, '1/4', 'new', '2023-11-06 13:02:48'),
(632, 27, 28, 98, 'It will rain tomorrow', 'new', '2023-11-06 13:02:48'),
(633, 27, 28, 54, 'Central Program Unit', 'new', '2023-11-06 13:02:48'),
(634, 27, 28, 68, 'Oxygen', 'new', '2023-11-06 13:02:48'),
(635, 27, 28, 106, 'To support the argument with facts and examples', 'new', '2023-11-06 13:02:48'),
(636, 27, 28, 67, '6', 'new', '2023-11-06 13:02:48'),
(637, 27, 28, 65, 'Medulla oblongata', 'new', '2023-11-06 13:02:48'),
(638, 27, 28, 66, 'Photosynthesis', 'new', '2023-11-06 13:02:48'),
(639, 27, 28, 37, 'Hard Drive', 'new', '2023-11-06 13:02:48'),
(640, 28, 28, 116, 'LAN (Local Area Network)', 'new', '2023-11-07 16:51:21'),
(641, 28, 28, 60, 'Paleontology', 'new', '2023-11-07 16:51:21'),
(642, 28, 28, 69, 'Vaporization', 'new', '2023-11-07 16:51:21'),
(643, 28, 28, 78, '(x^2 + 9)', 'new', '2023-11-07 16:51:21'),
(644, 28, 28, 38, ' Real-time Access Module', 'new', '2023-11-07 16:51:21'),
(645, 28, 28, 119, 'To prevent overheating of the computer', 'new', '2023-11-07 16:51:22'),
(646, 28, 28, 55, 'Atom', 'new', '2023-11-07 16:51:22'),
(647, 28, 28, 108, 'Hasty generalization', 'new', '2023-11-07 16:51:22'),
(648, 28, 28, 77, 'x = 9', 'new', '2023-11-07 16:51:22'),
(649, 28, 28, 109, 'Ad hominem', 'new', '2023-11-07 16:51:22'),
(650, 28, 28, 65, 'Hypothalamus', 'new', '2023-11-07 16:51:22'),
(651, 28, 28, 107, 'Identify the conclusion', 'new', '2023-11-07 16:51:22'),
(652, 28, 28, 47, 'Swift', 'new', '2023-11-07 16:51:22'),
(653, 28, 28, 43, 'Local Access Network', 'new', '2023-11-07 16:51:22'),
(654, 28, 28, 88, 'Histogram', 'new', '2023-11-07 16:51:22'),
(655, 28, 28, 86, 'Correlation coefficient', 'new', '2023-11-07 16:51:22'),
(656, 28, 28, 89, 'All data points are the same.', 'new', '2023-11-07 16:51:22'),
(657, 28, 28, 84, 'B', 'new', '2023-11-07 16:51:22'),
(658, 28, 28, 110, 'Some students study logic', 'new', '2023-11-07 16:51:22'),
(659, 28, 28, 93, '30', 'new', '2023-11-07 16:51:22'),
(660, 28, 28, 80, '100', 'new', '2023-11-07 16:51:22'),
(661, 28, 28, 68, 'Nitrogen', 'new', '2023-11-07 16:51:22'),
(662, 28, 28, 46, 'Tracking changes in source code and collaborating on software projects', 'new', '2023-11-07 16:51:22'),
(663, 28, 28, 99, 'Socrates is an artist', 'new', '2023-11-07 16:51:22'),
(664, 28, 28, 94, '5', 'new', '2023-11-07 16:51:22'),
(665, 28, 28, 72, 'Microscope', 'new', '2023-11-07 16:51:22'),
(666, 28, 28, 49, 'Spyware', 'new', '2023-11-07 16:51:22'),
(667, 28, 28, 70, 'CO2', 'new', '2023-11-07 16:51:22'),
(668, 28, 28, 50, 'Array', 'new', '2023-11-07 16:51:22'),
(669, 28, 28, 67, '12', 'new', '2023-11-07 16:51:22'),
(670, 28, 28, 58, 'PHP', 'new', '2023-11-07 16:51:22'),
(671, 28, 28, 45, 'C++', 'new', '2023-11-07 16:51:22'),
(672, 28, 28, 112, 'The book is under the table', 'new', '2023-11-07 16:51:22'),
(673, 28, 28, 115, 'Floppy Disk', 'new', '2023-11-07 16:51:22'),
(674, 28, 28, 90, 'Range', 'new', '2023-11-07 16:51:22'),
(675, 28, 28, 54, 'Central Peripheral Unit', 'new', '2023-11-07 16:51:22'),
(676, 28, 28, 104, 'Logical negation', 'new', '2023-11-07 16:51:22'),
(677, 28, 28, 63, 'Neutron', 'new', '2023-11-07 16:51:22'),
(678, 28, 28, 52, 'Hardware and Technology Markup Language', 'new', '2023-11-07 16:51:22'),
(679, 28, 28, 37, 'RAM', 'new', '2023-11-07 16:51:22'),
(680, 28, 28, 36, 'TCP/IP', 'new', '2023-11-07 16:51:22'),
(681, 28, 28, 73, '300 km/s', 'new', '2023-11-07 16:51:22'),
(682, 28, 28, 87, 'Ordinal', 'new', '2023-11-07 16:51:22'),
(683, 28, 28, 64, 'Photosynthesis', 'new', '2023-11-07 16:51:22'),
(684, 28, 28, 42, 'Creating web applications', 'new', '2023-11-07 16:51:22'),
(685, 28, 28, 82, 'QRSU', 'new', '2023-11-07 16:51:22'),
(686, 28, 28, 101, 'Some bats can fly', 'new', '2023-11-07 16:51:22'),
(687, 28, 28, 117, 'To filter spam emails', 'new', '2023-11-07 16:51:22'),
(688, 28, 28, 39, 'Printer', 'new', '2023-11-07 16:51:22'),
(689, 28, 28, 103, 'Logical conjunction', 'new', '2023-11-07 16:51:22'),
(690, 28, 28, 81, '1/2', 'new', '2023-11-07 16:51:22'),
(691, 28, 28, 71, 'Carbon', 'new', '2023-11-07 16:51:22'),
(692, 28, 28, 105, 'Some dogs are brown. This dog is brown. Therefore, all dogs are brown.', 'new', '2023-11-07 16:51:22'),
(693, 28, 28, 100, 'Library', 'new', '2023-11-07 16:51:22'),
(694, 28, 28, 74, 'Magnetic force', 'new', '2023-11-07 16:51:22'),
(695, 28, 28, 48, 'Structured Query Language', 'new', '2023-11-07 16:51:22'),
(696, 28, 28, 57, 'Unified Resource Link', 'new', '2023-11-07 16:51:22'),
(697, 28, 28, 85, 'B', 'new', '2023-11-07 16:51:22'),
(698, 28, 28, 95, '6', 'new', '2023-11-07 16:51:22'),
(699, 28, 28, 83, '36', 'new', '2023-11-07 16:51:22'),
(700, 28, 28, 56, 'Pancreas', 'new', '2023-11-07 16:51:22'),
(701, 28, 28, 114, 'She went to the store; bought eggs, milk, and bread.', 'new', '2023-11-07 16:51:22'),
(702, 28, 28, 53, 'Firewall', 'new', '2023-11-07 16:51:22'),
(703, 28, 28, 76, 'x = 8', 'new', '2023-11-07 16:51:22'),
(704, 28, 28, 106, 'To persuade the reader emotionally', 'new', '2023-11-07 16:51:22'),
(705, 28, 28, 111, 'Penguins can’t fly', 'new', '2023-11-07 16:51:22'),
(706, 28, 28, 113, 'Socrates is a god', 'new', '2023-11-07 16:51:22'),
(707, 28, 28, 59, 'Watt', 'new', '2023-11-07 16:51:22'),
(708, 28, 28, 79, '8', 'new', '2023-11-07 16:51:22'),
(709, 28, 28, 41, 'Microsoft Word', 'new', '2023-11-07 16:51:22'),
(710, 28, 28, 102, 'John doesn’t own a car', 'new', '2023-11-07 16:51:22'),
(711, 28, 28, 91, '64', 'new', '2023-11-07 16:51:22'),
(712, 28, 28, 98, 'Streets make rain wet ', 'new', '2023-11-07 16:51:22'),
(713, 28, 28, 51, '1110', 'new', '2023-11-07 16:51:22'),
(714, 28, 28, 40, 'Computer Power Unit', 'new', '2023-11-07 16:51:22'),
(715, 28, 28, 66, 'Mitosis', 'new', '2023-11-07 16:51:22'),
(716, 28, 28, 44, 'Hypertext Text Transfer Protocol', 'new', '2023-11-07 16:51:22'),
(717, 28, 28, 118, 'Ruby', 'new', '2023-11-07 16:51:22'),
(718, 28, 28, 92, 'Right-angled', 'new', '2023-11-07 16:51:22'),
(719, 28, 28, 75, 'Volt', 'new', '2023-11-07 16:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(57, 11, 28, 'used'),
(58, 12, 29, 'used'),
(59, 13, 28, 'used'),
(60, 15, 28, 'used'),
(61, 16, 28, 'used'),
(62, 15, 30, 'used'),
(63, 21, 31, 'used'),
(64, 27, 28, 'used'),
(65, 28, 28, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(36, 28, 'What protocol is commonly used for sending and receiving emails?', 'HTTP', 'FTP', 'SMTP', 'TCP/IP', 'SMTP', 'active'),
(37, 28, 'Which component of a computer stores data even when the computer is turned off?', ' CPU', 'RAM', 'Hard Drive', ' Monitor', 'Hard Drive', 'active'),
(38, 28, 'What is RAM an abbreviation for in the context of computer hardware?', 'Random Access Memory', 'Read-Only Memory', 'Rapid Application Management', ' Real-time Access Module', 'Random Access Memory', 'active'),
(39, 28, 'Which of the following is not considered a computer peripheral?', 'Monitor', 'Keyboard', 'Motherboard', 'Printer', 'Motherboard', 'active'),
(40, 28, 'What does CPU stand for in the context of computers?', 'Central Processing Unit', 'Computer Peripheral Unit', 'Central Program Unit', 'Computer Power Unit', 'Central Processing Unit', 'active'),
(41, 28, 'Which of the following is an example of an operating system?', 'Microsoft Word', 'Adobe Photoshop', 'Windows 10', 'Google Chrome', 'Windows 10', 'active'),
(42, 28, 'What is the primary purpose of a database management system (DBMS)?', 'Managing computer hardware', 'Storing and retrieving data', 'Creating web applications', 'Writing computer programs', 'Storing and retrieving data', 'active'),
(43, 28, 'In networking, what does “LAN” stand for?', 'Large Area Network', 'Local Access Network', 'Long Array Network', 'Limited Area Network', 'Large Area Network', 'active'),
(44, 28, 'What does “HTTP” stand for in the context of web communication?', 'HyperText Transfer Protocol', 'High-Tech Transport Protocol', 'Host-To-Host Transfer Protocol', 'Hypertext Text Transfer Protocol', 'HyperText Transfer Protocol', 'active'),
(45, 28, 'Which of the following is not an object-oriented programming (OOP) language?', 'Java', 'C++', 'Python', 'HTML', 'HTML', 'active'),
(46, 28, 'What is the purpose of version control systems like Git?', 'Managing computer hardware resources', 'Tracking changes in source code and collaborating on software projects', 'Encrypting sensitive data', 'Creating virtual machines', 'Tracking changes in source code and collaborating on software projects', 'active'),
(47, 28, 'Which programming language is commonly used for web development and is known for its simplicity and ease of use?', 'Python', 'Ruby', 'JavaScript', 'Swift', 'JavaScript', 'active'),
(48, 28, 'In programming, what does the acronym “SQL” stand for?', 'Standard Query Language', 'Structured Query Language', 'System Query Language', 'Sequential Query Language', 'Structured Query Language', 'active'),
(49, 28, 'What is the term for a piece of code that is capable of replicating itself and spreading to other files or programs?', 'Virus', 'Worm', 'Trojan', 'Spyware', 'Worm', 'active'),
(50, 28, 'Which data structure operates on the principle of “last in, first out” (LIFO)?', 'Queue', 'Stack', 'Linked List', 'Array', 'Stack', 'active'),
(51, 28, 'What is the binary representation of the decimal number 10?', '1010', '1100', '1001', '1110', '1010', 'active'),
(52, 28, 'In computer science, what does \"HTML\" stand for?', 'HyperText Markup Language', 'High-Level Text Language', 'Human-Tested Markup Logic', 'Hardware and Technology Markup Language', 'HyperText Markup Language', 'active'),
(53, 28, 'What type of software is designed to protect a computer from viruses and malware?', 'Firewall', 'Spreadsheet', 'Antivirus', 'Browser', 'Antivirus', 'active'),
(54, 28, 'What does \"CPU\" stand for in the context of computers?', 'Central Processing Unit', 'Central Peripheral Unit', 'Computer Personal Unit', 'Central Program Unit', 'Central Program Unit', 'active'),
(55, 28, 'What is the smallest unit of life?', 'Cell', 'Molecule', 'Atom', 'Organism', 'Cell', 'active'),
(56, 28, 'Which organ in the human body produces insulin?', 'Liver', 'Kidneys', 'Pancreas', 'Heart', 'Pancreas', 'active'),
(57, 28, 'What does \"URL\" stand for in the context of the internet?', 'Uniform Resource Locator', 'Universal Request Language', 'Unified Resource Link', 'User-Request Locator', 'Uniform Resource Locator', 'active'),
(58, 28, 'Which programming language is known for its use in developing mobile apps?', 'Java', 'C++', 'HTML', 'PHP', 'Java', 'active'),
(59, 28, 'What is the SI unit of force?', 'Newton', 'Watt', 'Joule', 'Pascal', 'Newton', 'active'),
(60, 28, 'What is the study of the Earth\'s geological history and the evolution of life on Earth called?', 'Geography', 'Geology', 'Paleontology', 'Meteorology', 'Paleontology', 'active'),
(63, 28, 'Which of the following is a fundamental particle in an atom with a positive charge?', 'Proton', 'Neutron', 'Electron', 'Photon', 'Proton', 'active'),
(64, 28, 'What is the process by which plants convert sunlight into chemical energy in the form of glucose?', 'Respiration', 'Photosynthesis', 'Fermentation', 'Transpiration', 'Photosynthesis', 'active'),
(65, 28, 'Which part of the human brain is responsible for regulating basic functions like breathing and heart rate?', 'Cerebellum', 'Cerebrum', 'Medulla oblongata', 'Hypothalamus', 'Medulla oblongata', 'active'),
(66, 28, 'What is the process by which an organism develops from a single cell into a multi-cellular organism?', 'Photosynthesis', 'Mitosis', 'Meiosis', 'Embryogenesis', 'Embryogenesis', 'active'),
(67, 28, 'What is the atomic number of carbon?', '6', '12', '14', '24', '6', 'active'),
(68, 28, 'Which gas is responsible for the green color of plants?', 'Oxygen', 'Carbon dioxide', 'Nitrogen', 'Chlorophyll', 'Carbon dioxide', 'active'),
(69, 28, 'What is the process by which a solid changes directly into a gas without passing through the liquid state?', 'Melting', 'Condensation', 'Sublimation', 'Vaporization', 'Sublimation', 'active'),
(70, 28, 'What is the chemical formula for water?', 'H2O2', 'CO2', 'H2O', 'O2', 'H2O', 'active'),
(71, 28, 'Which element is the most abundant in Earth\'s crust?', 'Oxygen', 'Carbon', 'Silicon', 'Aluminum', 'Oxygen', 'active'),
(72, 28, 'Which of the following is an example of a simple machine?', 'Telescope', 'Microscope', 'Lever', 'Thermometer', 'Lever', 'active'),
(73, 28, 'What is the speed of light in a vacuum, approximately?', '300,000 km/s', '30,000 km/s', '3,000 km/s', '300 km/s', '300,000 km/s', 'active'),
(74, 28, 'According to Newton\'s laws of motion, an object at rest tends to stay at rest unless acted upon by which of the following?', 'Gravitational force', 'Frictional force', 'Magnetic force', 'Electric force', 'Frictional force', 'active'),
(75, 28, 'What is the SI unit for measuring electric current?', 'Ampere', 'Volt', 'Ohm', 'Watt', 'Ampere', 'active'),
(76, 28, 'If 2x + 3 = 11, what is the value of x?', 'x = 2', 'x = 4', 'x = 6', 'x = 8', 'x = 4', 'active'),
(77, 28, 'Solve the equation: 3x + 7 = 16.', 'x = 3', 'x = 5', 'x = 9', 'x = 12', 'x = 5', 'active'),
(78, 28, 'Factorize the expression: x^2 - 9.', '(x - 3)(x + 3)', '(x - 9)(x + 1)', '(x^2 - 3)', '(x^2 + 9)', '(x - 3)(x + 3)', 'active'),
(79, 28, 'What is the mode of the following data set: {2, 4, 6, 4, 8, 4}?', '2', '4', '6', '8', '4', 'active'),
(80, 28, 'If the mean of a data set is 10 and the data set has 20 values, what is the sum of all the values?', '200', '100', '20', '2', '200', 'active'),
(81, 28, 'What is the probability of rolling a 6 on a fair six-sided die?', '1/6', '1/3', '1/4', '1/2', '1/6', 'active'),
(82, 28, 'If the word \"EXAM\" is written as \"WYXZ,\" how is \"TEST\" written?', 'QRSU', 'SRQP', 'SRQR', 'RSPQ', 'SRQP', 'active'),
(83, 28, 'What is the next term in the series: 2, 6, 12, 20, ___?', '24', '28', '30', '36', '28', 'active'),
(84, 28, 'If every fourth letter of the alphabet is removed, which letter will remain?', 'A', 'B', 'Y', 'Z', 'Y', 'active'),
(85, 28, 'In a game, if A is before B, and B is before C, who comes first?', 'A', 'B', 'C', 'Not enough information', 'A', 'active'),
(86, 28, 'Which of the following is a measure of association between two variables ranging from -1 to 1?', 'Variance', 'Correlation coefficient', 'Standard error', 'Z-score', 'Correlation coefficient', 'active'),
(87, 28, 'In a survey, respondents are asked to rate their satisfaction on a scale of 1 to 5. What type of data is this?', 'Nominal', 'Ordinal', 'Interval', 'Interval', 'Ordinal', 'active'),
(88, 28, 'What type of chart is best for showing the relationship between two continuous variables?', 'Bar chart', 'Pie chart', 'Scatter plot', 'Histogram', 'Scatter plot', 'active'),
(89, 28, 'If a data set has a standard deviation of 0, what does it mean?', 'The data is perfectly symmetrical', 'The data is highly variable', 'All data points are the same.', 'The data is normally distributed', 'All data points are the same.', 'active'),
(90, 28, 'Which statistical measure provides the middle value in a data set?', 'Mean', 'Median', 'Mode', 'Range', 'Median', 'active'),
(91, 28, 'What is the next number in the sequence: 2, 4, 8, 16, ___?', '24', '20', '32', '64', '32', 'active'),
(92, 28, 'If a triangle has sides measuring 3 cm, 4 cm, and 5 cm, what type of triangle is it?', 'Equilateral', 'Isosceles', 'Scalene', 'Right-angled', 'Right-angled', 'active'),
(93, 28, 'What is 25% of 80?', '15', '20', '25', '30', '20', 'active'),
(94, 28, 'Solve for x: 2x + 3 = 11.', '4', '5', '6', '7', '5', 'active'),
(95, 28, 'What is the square root of 81?', '9', '8', '7', '6', '9', 'active'),
(96, 29, 'as', 'ss', 'ss', 'ss', 's', 's', 'active'),
(97, 29, 's', 's', 's', 'ss', 'sss', 'ssss', 'active'),
(98, 28, 'Every time it has rained, the streets have become wet. What can we reasonably conclude? ', 'Rain makes streets wet', 'Streets make rain wet ', 'It will rain tomorrow', 'Streets are always wet', 'Rain makes streets wet', 'active'),
(99, 28, 'If all philosophers are deep thinkers, and Socrates is a philosopher, what can we conclude?', 'Socrates is not a deep thinker', 'Socrates is a deep thinker', 'Socrates is a scientist', 'Socrates is an artist', 'Socrates is a deep thinker', 'active'),
(100, 28, 'Tree is to forest as book is to ___?', 'Library', 'Author', 'Page', 'Novel', 'Library', 'active'),
(101, 28, 'No mammals can fly. All bats are mammals. What can we conclude?', 'Bats can fly', 'Bats cannot fly', 'Some bats can fly', 'All bats are birds', 'Bats cannot fly', 'active'),
(102, 28, 'All cars in this parking lot are red. John’s car is red. What can we conclude?', 'John’s car is in the parking lot', 'John’s car is not in the parking lot', 'John doesn’t own a car', 'John’s car is blue', 'John’s car is in the parking lot', 'active'),
(103, 28, 'What does “OR” represent in logic?', 'Logical disjunction', 'Logical conjunction', 'Logical negation', 'Logical equivalence', 'Logical disjunction', 'active'),
(104, 28, 'What does “AND” represent in logic?', 'Logical disjunction', 'Logical conjunction', 'Logical negation', 'Logical equivalence', 'Logical conjunction', 'active'),
(105, 28, 'Which of the following is an example of a non-sequitur?', 'If it’s raining, then the ground is wet. The ground is wet, so it’s raining.', 'All humans are mortal. Socrates is a human. Therefore, Socrates is mortal.', 'Cats are mammals. Mammals have lungs. Therefore, cats have lungs.', 'Some dogs are brown. This dog is brown. Therefore, all dogs are brown.', 'Some dogs are brown. This dog is brown. Therefore, all dogs are brown.', 'active'),
(106, 28, 'What is the purpose of using evidence in an argument?', 'To confuse the reader', 'To persuade the reader emotionally', 'To support the argument with facts and examples', 'To make the argument longer', 'To support the argument with facts and examples', 'active'),
(107, 28, 'What is the first step in critical thinking when analyzing an argument?', 'Evaluate the evidence', 'Identify the conclusion', 'Determine the author’s intent', 'Assess the credibility of the source', 'Identify the conclusion', 'active'),
(108, 28, 'If a person argues that we should ban cars because some cars are involved in accidents, which logical fallacy is this?', 'Slippery slope', 'Hasty generalization', 'Ad hominem', 'Appeal to authority', 'Hasty generalization', 'active'),
(109, 28, 'Which logical fallacy is committed in the following argument: “Everyone’s using social media, so it must be good for you!” ', 'Appeal to popularity', 'Ad hominem', 'Slippery slope', 'Straw man', 'Appeal to popularity', 'active'),
(110, 28, 'If “some students like math” and “all math enthusiasts study logic,” what can we conclude? ', 'All students like math', 'Some students study logic', 'All logic enthusiasts are students', 'Some students dislike math', 'Some students study logic', 'active'),
(111, 28, 'If “all birds have wings” and “a penguin is a bird,” what can we conclude about penguins?', 'Penguins have wings', 'Penguins can’t fly', 'Penguins are not birds', 'Penguins are insects', 'Penguins can’t fly', 'active'),
(112, 28, 'What is the opposite of the statement: “The book is on the table”?', 'The book is not on the table', 'The book is under the table', 'The book is above the table', 'The book is beside the table', 'The book is not on the table', 'active'),
(113, 28, 'If all humans are mortal, and Socrates is a human, what can you conclude?', 'Socrates is immortal', 'Socrates is mortal', 'Humans are immortal', 'Socrates is a god', 'Socrates is mortal', 'active'),
(114, 28, 'Which sentence is correctly punctuated?', 'She went to the store; bought eggs, milk, and bread.', 'She went to the store, bought eggs milk and bread.', 'She went to the store bought eggs, milk, and bread.', 'She went to the store bought eggs milk and bread.', 'She went to the store; bought eggs, milk, and bread.', 'active'),
(115, 28, 'Which storage device is known for its fast data access times and is often used for caching frequently accessed data?', 'Hard Disk Drive (HDD)', 'Solid State Drive (SSD)', 'Optical Drive', 'Floppy Disk', 'Solid State Drive (SSD)', 'active'),
(116, 28, 'Which of the following is NOT a type of computer network?', 'LAN (Local Area Network)', 'WAN (Wide Area Network)', 'MAN (Metropolitan Area Network) ', 'MAN (Metropolitan Area Network)', 'CPU (Central Processing Unit)', 'active'),
(117, 28, 'What is the purpose of a router in a computer network?', 'A) To play video games', 'To filter spam emails', 'To connect multiple devices and route data between them', 'To create graphic designs', 'To connect multiple devices and route data between them', 'active'),
(118, 28, 'Which of the following is not a commonly used programming language?', 'Python', 'Ruby', 'Photoshop', 'Java', 'Photoshop', 'active'),
(119, 28, 'What is the purpose of a firewall in computer security?', 'To block unwanted emails', 'To prevent overheating of the computer', 'To protect against unauthorized access and cyber threats', 'To boost internet speed', 'To protect against unauthorized access and cyber threats', 'active'),
(120, 30, 'qwerty', 'q', 'w', 'r', 't', 'q', 'active'),
(121, 31, 'qwerty', 'q', 'w', 'r', 't', 'w', 'active'),
(122, 32, 'wa', '1', '2', '3', '4', '4', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(28, 69, 'Career Advice Test', '60', 80, 'Read carefully the following questions.', '2023-09-26 11:04:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_acc`
--
ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_acc`
--
ALTER TABLE `admin_acc`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
