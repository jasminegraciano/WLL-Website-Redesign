-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2025 at 03:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `questionnaire_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answer_id`, `question_id`, `answer_text`) VALUES
(1, 1, 'Italian'),
(2, 1, 'German'),
(3, 1, 'French'),
(4, 1, 'Chinese'),
(5, 1, 'Spanish'),
(6, 2, 'Academic'),
(7, 2, 'Corporate'),
(8, 2, 'Small Business'),
(9, 2, 'Government'),
(10, 2, 'Not for profit'),
(11, 2, 'Not sure'),
(12, 3, 'Yes'),
(13, 3, 'Maybe'),
(14, 3, 'No'),
(15, 4, 'Definitely not'),
(16, 4, 'Probably not'),
(17, 4, 'Might or might not'),
(18, 4, 'Probably yes'),
(19, 4, 'Definitely yes'),
(20, 5, 'Yes'),
(21, 5, 'Maybe'),
(22, 5, 'No'),
(23, 6, 'Yes'),
(24, 6, 'Maybe'),
(25, 6, 'No'),
(26, 7, 'Team'),
(27, 7, 'I don\'t care'),
(28, 7, 'Alone'),
(29, 8, 'Teach, educate, train'),
(30, 8, 'Analyze, solve, think through'),
(31, 8, 'Communicate, convince, organize'),
(32, 9, 'Yes'),
(33, 9, 'Maybe'),
(34, 9, 'No'),
(35, 10, 'Yes'),
(36, 10, 'Maybe'),
(37, 10, 'No'),
(38, 11, 'Yes'),
(39, 11, 'Maybe'),
(40, 11, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_description` text DEFAULT NULL,
  `alumni_stories` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_title`, `job_description`, `alumni_stories`) VALUES
(1, 'Translator/Interpreter', 'Translate languages and interpret in real-time.', 'This is where an alumni story would go.'),
(2, 'World Language Teacher', 'Teach students to understand and speak foreign languages.', ''),
(3, 'International Business Specialist', 'Specialize in international trade, investment, and relationships.', ''),
(4, 'Diplomat or Foreign Service Officer', 'Represent your country abroad, negotiate treaties and policies.', ''),
(5, 'Tourism and Travel Consultant', 'Assist clients in planning their travel and tourism activities.', ''),
(6, 'Public Relations Specialist', 'Manage communications between an organization and the public.', ''),
(7, 'Nonprofit/NGO Coordinator', 'Organize and manage activities in nonprofit or NGO sectors.', ''),
(8, 'Journalist or Foreign Correspondent', 'Report on news, often from foreign countries or regions.', ''),
(9, 'Cultural Program Director', 'Direct and oversee cultural programs or projects.', ''),
(10, 'International Aid Worker', 'Provide humanitarian aid and support in crisis situations.', ''),
(11, 'Fashion or Luxury Goods Specialist', 'Work in the fashion industry, often with high-end goods.', ''),
(12, 'Graduate Researcher or Professor', 'Conduct research and teach at the university level.', ''),
(13, 'French Teacher', NULL, NULL),
(14, 'Language Specialist', NULL, NULL),
(15, 'Bilingual Customer Service Representative', NULL, NULL),
(16, 'Study Abroad Coordinator', NULL, NULL),
(17, 'Italian Language Specialist', NULL, NULL),
(18, 'Italian Language Teacher (K-12)', NULL, NULL),
(19, 'Italian Immersion Program Instructor', NULL, NULL),
(20, 'Italian Language Assessment Specialist', NULL, NULL),
(21, 'Curriculum Developer', NULL, NULL),
(22, 'Italian Cultural Education Coordinator', NULL, NULL),
(23, 'Italian Language Lab Coordinator', NULL, NULL),
(24, 'Italian Language Tutor/Private Instructor', NULL, NULL),
(25, 'Italian Textbook Author or Editor', NULL, NULL),
(26, 'Italian Language Program Administrator', NULL, NULL),
(27, 'Bilingual Education Specialist (Italian-English)', NULL, NULL),
(28, 'Italian Heritage Language Program Coordinator', NULL, NULL),
(29, 'Localization Specialist', NULL, NULL),
(30, 'Marketing Specialist for Italian Brands', NULL, NULL),
(31, 'Tourism and Hospitality Manager', NULL, NULL),
(32, 'Food and Wine Industry Specialist', NULL, NULL),
(33, 'Cultural Events Coordinator', NULL, NULL),
(34, 'Cultural Exchange Program Coordinator', NULL, NULL),
(35, 'Social Media Specialist for Italian markets', NULL, NULL),
(36, 'International Student Services Coordinator', NULL, NULL),
(37, 'Spanish Teacher', NULL, NULL),
(38, 'Social Worker', NULL, NULL),
(39, 'Healthcare Administrator', NULL, NULL),
(40, 'Hospitality Manager', NULL, NULL),
(41, 'Immigration Lawyer', NULL, NULL),
(42, 'Writer', NULL, NULL),
(43, 'Market Research Analyst', NULL, NULL),
(44, 'ESL (English as a Second Language) Teacher', NULL, NULL),
(45, 'EFL (English as a Foreign Language) Teacher', NULL, NULL),
(46, 'K-12 ESL Teacher', NULL, NULL),
(47, 'Adult ESL Educator', NULL, NULL),
(48, 'Online English Teacher', NULL, NULL),
(49, 'English Language Instructor', NULL, NULL),
(50, 'Academic English Instructor', NULL, NULL),
(51, 'Corporate Language Trainer', NULL, NULL),
(52, 'Exam Preparation Coach (e.g., TOEFL, IELTS)', NULL, NULL),
(53, 'Bilingual Healthcare Provider', 'Bilingual providers are especially valuable in regions with significant Spanish-speaking populations, as they improve patient communication and care quality without relying on interpreters.', NULL),
(54, 'Community Health Worker', 'Educate Spanish-speaking communities on health topics, facilitate healthcare access, and support preventative care efforts.', NULL),
(55, 'Healthcare Administration and Patient Advocacy', 'Support patients by helping them navigate the healthcare system, understand their rights, and access the services they need.', NULL),
(56, 'Public Health Professional', 'Public health workers focus on disease prevention and health promotion, using their language skills to create and deliver culturally relevant health education programs.', NULL),
(57, 'Medical Social Worker', 'Social workers with medical Spanish skills can assist Spanish-speaking patients and their families with counseling, discharge planning, and referrals to social services.', NULL),
(58, 'Health Educator or Outreach Coordinator', 'Health educators with Medical Spanish skills can develop bilingual materials and run educational sessions for Spanish-speaking communities.', NULL),
(59, 'Telehealth Specialist', 'Telehealth specialists with bilingual skills can provide direct care and support to Spanish-speaking patients in remote or underserved areas.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobweights`
--

CREATE TABLE `jobweights` (
  `job_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `weight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobweights`
--

INSERT INTO `jobweights` (`job_id`, `answer_id`, `weight`) VALUES
(1, 1, 1),
(1, 6, 1),
(1, 12, 1),
(1, 15, 1),
(1, 20, 1),
(1, 23, 1),
(1, 26, 1),
(1, 29, 1),
(1, 32, 1),
(1, 35, 1),
(1, 38, 1),
(2, 2, 1),
(2, 7, 1),
(2, 13, 1),
(2, 16, 1),
(2, 21, 1),
(2, 24, 1),
(2, 27, 1),
(2, 30, 1),
(2, 33, 1),
(2, 36, 1),
(2, 39, 1),
(3, 3, 1),
(3, 8, 1),
(3, 14, 1),
(3, 17, 1),
(3, 22, 1),
(3, 25, 1),
(3, 28, 1),
(3, 31, 1),
(3, 34, 1),
(3, 37, 1),
(3, 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `question_text` varchar(255) DEFAULT NULL,
  `multiple_choice` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `question_text`, `multiple_choice`) VALUES
(1, 'What language are you learning/do you already know?', 1),
(2, 'Which sector could you imagine yourself in?', 0),
(3, 'Would you like to work remotely?', 0),
(4, 'Are you a \'people\' person? (chatty, outgoing)', 0),
(5, 'Do you like to work with texts (reading, writing, editing, etc.)?', 0),
(6, 'Do you like to work with numbers?', 0),
(7, 'Do you like to work in a team or do you prefer to work alone?', 0),
(8, 'Do you like to (check all that apply):', 1),
(9, 'Do you like to travel?', 0),
(10, 'Do you consider yourself a problem solver?', 0),
(11, 'Are you a leader?', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `jobweights`
--
ALTER TABLE `jobweights`
  ADD PRIMARY KEY (`job_id`,`answer_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`);

--
-- Constraints for table `jobweights`
--
ALTER TABLE `jobweights`
  ADD CONSTRAINT `jobweights_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`job_id`),
  ADD CONSTRAINT `jobweights_ibfk_2` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`answer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
