-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2023 at 01:51 PM
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
(10, 'Juan Dela Cruz', '68', 'male', '2023-09-15', 'fourth year', '20_UCS_01@gov.ph', '12345', 'active');

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
(95, 28, 'What is the square root of 81?', '9', '8', '7', '6', '9', 'active');

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
(28, 68, 'Career Advice Test', '60', 60, 'Read carefully the following questions.', '2023-09-14 16:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedbacks_tbl`
--

INSERT INTO `feedbacks_tbl` (`fb_id`, `exmne_id`, `fb_exmne_as`, `fb_feedbacks`, `fb_date`) VALUES
(4, 6, 'Glenn Duerme', 'Gwapa kay Miss Pam', 'December 05, 2019'),
(5, 6, 'Anonymous', 'Lageh, idol na nako!', 'December 05, 2019'),
(6, 4, 'Rogz Nunezsss', 'Yes', 'December 08, 2019'),
(7, 4, '', '', 'December 08, 2019'),
(8, 4, '', '', 'December 08, 2019'),
(9, 8, 'Anonymous', 'dfsdf', 'January 05, 2020');

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
-- Indexes for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);

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
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
