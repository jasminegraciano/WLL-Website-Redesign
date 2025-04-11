-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2025 at 03:57 PM
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
(13, 'French Teacher', 'A French Teacher is an educator who specializes in teaching the French language to students of various age groups and proficiency levels. They help students develop skills in speaking, reading, writing, and understanding French, often incorporating cultural elements such as French history, literature, and customs into their lessons. French teachers may work in primary or secondary schools, colleges, language institutes, or offer private tutoring, and they often design lesson plans, assess student progress, and encourage language immersion to enhance learning.', NULL),
(14, 'Language Specialist', 'A Language Specialist is a professional who works with one or more languages to support communication, translation, localization, or education. They may translate written or spoken content, interpret conversations, analyze linguistic patterns, or develop language learning materials. Language specialists often work in fields such as education, international business, government, or media, and their expertise helps bridge communication gaps across different languages and cultures. Their role may also involve ensuring linguistic accuracy and cultural relevance in various forms of communication.', NULL),
(15, 'Bilingual Customer Service Representative', 'A Bilingual Customer Service Representative assists customers in two or more languages, providing support through phone, email, chat, or in-person interactions. They help resolve issues, answer questions, process orders, and provide product or service information while ensuring a positive customer experience. Their ability to communicate fluently in multiple languages allows them to serve a diverse customer base and bridge language barriers, making them valuable in global companies, call centers, and customer-focused industries.', NULL),
(16, 'Study Abroad Coordinator', 'A Study Abroad Coordinator organizes and manages international study programs for students, helping them explore educational opportunities in other countries. They guide students through the application process, advise on academic requirements, coordinate travel and housing logistics, and ensure compliance with visa and institutional policies. Study Abroad Coordinators also collaborate with foreign universities and faculty to maintain strong partnerships and support students throughout their overseas experience, promoting global awareness and cross-cultural understanding.', NULL),
(17, 'Italian Language Specialist', 'An Italian Language Specialist is an expert in the Italian language who works in areas such as translation, interpretation, language instruction, or content localization. They ensure accurate and culturally appropriate communication in Italian, often translating documents, interpreting conversations, or teaching the language to learners. Italian Language Specialists may work in education, international business, tourism, or media, using their deep understanding of Italian grammar, vocabulary, and cultural nuances to support effective communication and cross-cultural exchange.', NULL),
(18, 'Italian Language Teacher (K-12)', 'An Italian Language Teacher (K-12) is an educator who teaches Italian to students from kindergarten through 12th grade. They design engaging lessons that help students develop skills in speaking, reading, writing, and understanding Italian, often incorporating cultural elements like Italian history, music, and traditions. These teachers assess student progress, adapt instruction to different learning levels, and foster an appreciation for Italian language and culture. They may work in public or private schools and often support extracurricular activities such as language clubs or cultural events.', NULL),
(19, 'Italian Immersion Program Instructor', 'An Italian Immersion Program Instructor teaches Italian entirely or primarily through the target language, creating an immersive environment to help students achieve fluency more naturally. They design and deliver lessons that integrate language learning with subjects like history, art, or daily life activities, encouraging students to think and communicate in Italian. These instructors often work in specialized language programs, schools, or cultural institutions, and play a key role in promoting deep linguistic and cultural understanding through hands-on, real-world learning experiences.', NULL),
(20, 'Italian Language Assessment Specialist', 'An Italian Language Assessment Specialist develops, administers, and evaluates tests to measure proficiency in the Italian language. They design assessments for listening, speaking, reading, and writing skills, ensuring they align with language standards such as the CEFR (Common European Framework of Reference for Languages). These specialists may work for educational institutions, testing organizations, or government agencies, and they play a critical role in certifying language skills for academic placement, professional qualifications, or immigration purposes. Their work ensures that assessments are fair, reliable, and culturally appropriate.', NULL),
(21, 'Curriculum Developer', 'A Curriculum Developer designs and creates educational programs and materials for schools, colleges, or training organizations. They work closely with educators and subject matter experts to develop lesson plans, instructional strategies, and assessments that align with educational standards and meet the needs of learners. Curriculum Developers often focus on ensuring that the content is engaging, effective, and adaptable to different learning styles. Their work may involve the integration of technology, creating educational resources, and evaluating the effectiveness of the curriculum to improve student outcomes.', NULL),
(22, 'Italian Cultural Education Coordinator', 'An Italian Cultural Education Coordinator is responsible for organizing and promoting educational programs that focus on Italian culture, history, and traditions. They develop and coordinate activities such as cultural workshops, language classes, events, and exhibitions that engage students and the community in learning about Italy\'s rich cultural heritage. These coordinators often collaborate with educational institutions, cultural organizations, and local communities to foster a deeper appreciation for Italian art, cuisine, music, and customs. Their role is key in creating immersive cultural experiences that enhance cross-cultural understanding.', NULL),
(23, 'Italian Language Lab Coordinator', 'An Italian Language Lab Coordinator manages and oversees language lab facilities dedicated to teaching Italian. They ensure that the lab is equipped with the necessary tools, software, and resources for effective language learning, such as audio-visual equipment, language learning apps, and interactive exercises. The coordinator may assist instructors in integrating technology into lessons, organize lab schedules, and provide support to students using the lab for independent study. They play a key role in creating a conducive environment for immersive language practice, helping students improve their Italian proficiency through interactive and self-paced learning.', NULL),
(24, 'Italian Language Tutor/Private Instructor', 'An Italian Language Tutor/Private Instructor provides personalized language instruction to individuals or small groups, tailoring lessons to the specific needs and goals of their students. They help learners improve their Italian language skills in areas such as speaking, listening, reading, writing, and grammar. These tutors often create custom lesson plans and provide focused practice based on the student\'s proficiency level, whether for academic purposes, travel, or professional development. They may work independently or through tutoring centers and often offer flexible scheduling to accommodate students\' availability.', NULL),
(25, 'Italian Textbook Author or Editor', 'An Italian Textbook Author or Editor is responsible for writing, developing, or editing educational materials focused on teaching the Italian language. Authors create comprehensive textbooks that cover grammar, vocabulary, reading comprehension, and cultural aspects of Italy, often targeting specific learning levels or goals. Editors review and refine the content to ensure clarity, accuracy, and pedagogical effectiveness, ensuring that the materials align with current educational standards. These professionals may work for publishing companies, educational institutions, or independently, contributing to the creation of textbooks, workbooks, and supplementary resources used by students and teachers.', NULL),
(26, 'Italian Language Program Administrator', 'An Italian Language Program Administrator oversees the development, management, and operation of Italian language programs in educational institutions, language schools, or cultural organizations. They are responsible for curriculum planning, faculty recruitment, scheduling, budgeting, and ensuring that the program meets academic standards and student needs. Additionally, they manage student enrollment, assess program outcomes, and coordinate extracurricular activities such as cultural events or language immersion trips. The administrator plays a key role in promoting the program, maintaining partnerships with Italian-speaking communities, and enhancing the overall learning experience for students.', NULL),
(27, 'Bilingual Education Specialist (Italian-English)', 'A Bilingual Education Specialist (Italian-English) is an educator or professional who specializes in teaching both Italian and English to students in bilingual or dual-language settings. They develop and implement instructional strategies that support language acquisition in both languages, helping students become proficient in Italian and English across speaking, reading, writing, and listening skills. These specialists often work in schools, language immersion programs, or educational institutions, focusing on creating inclusive learning environments that cater to students with diverse linguistic backgrounds. They also assess students\' language proficiency and provide tailored support to ensure academic success in both languages.', NULL),
(28, 'Italian Heritage Language Program Coordinator', 'An Italian Heritage Language Program Coordinator manages and oversees programs designed to teach Italian to individuals with Italian heritage who may speak it at home but wish to strengthen or reconnect with their language skills. They develop curricula that focus on both language proficiency and cultural preservation, integrating history, traditions, and cultural practices into lessons. The coordinator ensures that the program meets the specific needs of heritage learners, often working with community organizations, schools, or cultural centers. Their role includes recruiting students, organizing classes, and fostering a supportive environment that encourages the continued use and appreciation of the Italian language and culture within the heritage community.', NULL),
(29, 'Localization Specialist', 'A Localization Specialist is responsible for adapting content, products, or services to fit the cultural, linguistic, and functional needs of a specific target market or region. This includes translating text, adjusting graphics, and ensuring that all elements of a product (e.g., websites, software, marketing materials) align with local customs, legal requirements, and cultural preferences. Localization specialists work in a variety of industries, including technology, entertainment, e-commerce, and education, to ensure that content is not only accurately translated but also resonates with the local audience. They play a key role in expanding global reach by making content accessible and relevant in multiple languages and regions.', NULL),
(30, 'Marketing Specialist for Italian Brands', 'A Marketing Specialist for Italian Brands focuses on promoting and growing the presence of Italian brands in various markets. They develop and implement marketing strategies that highlight the unique qualities of Italian products, such as their design, craftsmanship, and cultural heritage. This role involves market research, campaign management, branding, and collaboration with international teams to tailor marketing efforts for different regions. The specialist may work on digital marketing, advertising, public relations, and events to strengthen the brand’s identity and reach potential customers. They ensure that marketing messages resonate with both local and global audiences, leveraging the appeal of Italian style and quality.', NULL),
(31, 'Tourism and Hospitality Manager', 'A Tourism and Hospitality Manager oversees the operations of businesses in the tourism and hospitality industry, such as hotels, resorts, travel agencies, or tour companies. They are responsible for ensuring a high-quality customer experience, managing staff, developing marketing strategies, and handling day-to-day operations like bookings, guest services, and event coordination. They also monitor budgets, maintain compliance with industry standards, and work to improve customer satisfaction and business performance. Tourism and Hospitality Managers may also collaborate with local businesses and attractions to promote destinations and enhance the overall visitor experience.', NULL),
(32, 'Food and Wine Industry Specialist', 'A Food and Wine Industry Specialist is an expert who works within the food and beverage sector, focusing on the production, distribution, and marketing of food and wine products. They may provide consulting services to wineries, restaurants, food producers, or retailers, advising on industry trends, quality control, sourcing, and pairing food with wine. They also help companies navigate regulatory requirements, create promotional campaigns, and enhance customer experiences. Specialists in this field often have in-depth knowledge of culinary arts, wine regions, tasting techniques, and the cultural significance of food and wine, and they work to bridge the gap between production and consumer demand.', NULL),
(33, 'Cultural Events Coordinator', 'A Cultural Events Coordinator organizes and manages events that celebrate or promote cultural traditions, art forms, or heritage. They plan and oversee activities such as festivals, performances, exhibitions, workshops, and community celebrations, ensuring that the events run smoothly and align with the cultural themes being highlighted. The coordinator works with artists, performers, sponsors, and local organizations to create engaging experiences for participants and audiences. Their responsibilities include logistics, budgeting, marketing, and ensuring that the event fosters cultural awareness and engagement within the community.', NULL),
(35, 'Social Media Specialist for Italian markets', 'A Social Media Specialist for Italian Markets focuses on creating, managing, and optimizing social media strategies specifically for Italian audiences. They develop content that resonates with local cultural preferences, trends, and language, ensuring that it aligns with the brand’s image and goals. This role involves monitoring social media platforms, engaging with followers, and analyzing performance metrics to drive audience growth and engagement. The specialist also adapts campaigns to regional specifics, leveraging popular Italian platforms and influencers to enhance brand visibility and engagement within the Italian market.', NULL),
(36, 'International Student Services Coordinator', 'An International Student Services Coordinator provides support and guidance to international students studying abroad. They assist with the visa application process, help students adjust to life in a new country, and offer resources for academic, social, and cultural integration. Their responsibilities include organizing orientation programs, advising on housing, employment, and legal matters, and connecting students with local resources. The coordinator also works to ensure students feel supported throughout their academic journey, promoting cross-cultural exchange and helping them navigate any challenges they may face while studying internationally.', NULL),
(37, 'Spanish Teacher', 'A Spanish Teacher is an educator who specializes in teaching the Spanish language to students of various age groups and proficiency levels. They help students develop skills in speaking, reading, writing, and understanding Spanish, often incorporating cultural aspects such as Spanish-speaking countries\' history, literature, and traditions into their lessons. Spanish teachers may work in primary or secondary schools, colleges, language institutes, or offer private tutoring. Their role includes creating lesson plans, assessing student progress, and fostering an appreciation for the language and culture.', NULL),
(38, 'Social Worker', 'A Social Worker is a professional who helps individuals, families, and communities overcome challenges and improve their well-being. They provide support in areas such as mental health, substance abuse, child welfare, and family services. Social workers assess the needs of their clients, create treatment plans, offer counseling, and connect individuals with resources like healthcare, housing, or financial assistance. They work in a variety of settings, including schools, hospitals, government agencies, and non-profit organizations.', NULL),
(39, 'Healthcare Administrator', 'A Healthcare Administrator manages the operations of healthcare facilities such as hospitals, clinics, nursing homes, or public health organizations. They are responsible for overseeing the daily activities, budgeting, staffing, and ensuring compliance with healthcare laws and regulations. Healthcare administrators work to improve the efficiency and quality of care provided to patients, managing both clinical and non-clinical departments. Their role often involves strategic planning, resource allocation, and coordinating with medical staff to optimize healthcare delivery. They may also handle patient relations, marketing, and the implementation of healthcare policies within the organization.', NULL),
(40, 'Hospitality Manager', 'A Hospitality Manager oversees the operations of businesses in the hospitality industry, such as hotels, resorts, restaurants, or event venues. They are responsible for ensuring a high level of customer satisfaction, managing staff, handling budgeting and financials, and maintaining the smooth running of daily operations. Hospitality managers often develop marketing strategies, ensure compliance with health and safety regulations, and coordinate events or services that enhance guest experiences. Their role involves problem-solving, leadership, and making decisions that improve the overall performance of the business while creating a welcoming and efficient environment for guests.', NULL),
(41, 'Immigration Lawyer', 'An Immigration Lawyer specializes in helping individuals navigate the complex legal processes involved in immigration. They provide legal advice and representation for clients seeking visas, green cards, citizenship, asylum, or other immigration-related matters. Immigration lawyers assist with paperwork, represent clients in hearings or appeals, and ensure compliance with immigration laws. They work with individuals, families, businesses, and sometimes government agencies, helping clients understand their rights and options while advocating for their best interests throughout the immigration process.', NULL),
(42, 'Writer', 'A Writer creates written content across a variety of mediums, including books, articles, blogs, scripts, advertisements, and more. Writers may specialize in different genres or fields, such as fiction, non-fiction, technical writing, journalism, marketing, or copywriting. Their work involves research, crafting compelling narratives, ensuring clarity and engagement, and tailoring content to specific audiences. Writers often collaborate with editors, publishers, or clients to refine their work and may also self-publish. Their role is central to communication, storytelling, and information sharing across multiple platforms.', NULL),
(43, 'Market Research Analyst', 'A Market Research Analyst studies market conditions to examine potential sales of a product or service. They gather and analyze data about consumers, competitors, and market trends to help companies make informed business decisions. Market research analysts use surveys, focus groups, interviews, and data analytics tools to collect information about consumer behavior, preferences, and purchasing habits. They interpret this data to identify opportunities, forecast future trends, and advise companies on pricing, marketing strategies, and product development to meet consumer demand and stay competitive in the market.', NULL),
(44, 'ESL (English as a Second Language) Teacher', 'An ESL (English as a Second Language) Teacher helps non-native speakers learn and improve their English language skills. They teach students how to read, write, speak, and understand English, often focusing on grammar, vocabulary, pronunciation, and communication strategies. ESL teachers work in a variety of settings, including schools, language institutes, or online platforms, and may teach students of different age groups and proficiency levels. Their role also involves assessing students\' progress, providing tailored lessons, and fostering an inclusive, supportive learning environment that encourages language acquisition and cultural adaptation.', NULL),
(45, 'EFL (English as a Foreign Language) Teacher', 'An EFL (English as a Foreign Language) Teacher teaches English to students whose first language is not English, typically in countries where English is not the native language. They help learners develop their speaking, listening, reading, and writing skills in English, often focusing on practical language use in real-life situations. EFL teachers design lessons that address grammar, vocabulary, pronunciation, and cultural understanding, and they may work with students of varying age groups and proficiency levels. These teachers often work abroad in schools, language centers, or private tutoring settings, adapting their teaching to the needs of students learning English as a foreign language.', NULL),
(46, 'K-12 ESL Teacher', 'A K-12 ESL Teacher teaches English to students from kindergarten through 12th grade whose first language is not English. They help students develop their skills in reading, writing, speaking, and listening to English while supporting their academic growth in other subjects. These teachers design lessons that focus on English language development, including grammar, vocabulary, pronunciation, and language comprehension, while also integrating cultural awareness. They create an inclusive, supportive classroom environment where students can practice English and adapt to the academic challenges of a new language. K-12 ESL teachers work closely with other educators to ensure students\' success and help them achieve fluency in English for both academic and social purposes.', NULL),
(47, 'Adult ESL Educator', 'An Adult ESL Educator teaches English to adult learners whose first language is not English. They focus on helping students improve their speaking, reading, writing, and listening skills to enhance their ability to communicate in everyday life, work environments, and academic settings. Adult ESL educators often work in community colleges, adult education centers, or language programs, offering flexible class schedules to accommodate learners\' work and family commitments. In addition to language skills, they may address cultural integration, workplace communication, and basic literacy to support adults in achieving their personal, professional, and educational goals.', NULL),
(48, 'Online English Teacher', 'An Online English Teacher teaches English to students remotely, using digital platforms such as video calls, webinars, or virtual classrooms. They may teach English as a second or foreign language (ESL/EFL) to learners of all ages and proficiency levels. These teachers create and deliver lessons that focus on improving speaking, listening, reading, and writing skills, often incorporating interactive activities, exercises, and multimedia resources. Online English teachers offer flexibility for students from around the world, adapting their teaching methods to different cultural backgrounds and learning styles. They may work for language schools, tutoring companies, or independently as freelancers.', NULL),
(49, 'English Language Instructor', 'An English Language Instructor teaches English to students, focusing on improving their skills in speaking, reading, writing, and listening. These instructors work with students of various ages and proficiency levels, helping them understand English grammar, vocabulary, pronunciation, and usage. English Language Instructors may teach in schools, universities, language institutes, or online, and often design lesson plans and activities that are engaging and tailored to the needs of their students. They may also help students prepare for standardized English language exams, such as TOEFL or IELTS, and provide support for academic or professional language development.', NULL),
(50, 'Academic English Instructor', 'An Academic English Instructor teaches English to students in higher education or academic settings, focusing on the skills needed for success in academic environments. They help students improve their reading, writing, speaking, and listening abilities, with an emphasis on academic language use, research skills, essay writing, critical thinking, and presenting ideas clearly. These instructors typically work in colleges or universities, preparing students for academic success, including standardized tests and assignments. They also guide students in understanding academic texts, writing research papers, and participating in scholarly discussions, ensuring that learners can communicate effectively in a formal academic context.', NULL),
(51, 'Corporate Language Trainer', 'A Corporate Language Trainer provides language instruction to employees within a corporate setting, helping them improve their language skills for professional communication. They may teach business-specific vocabulary, writing emails, participating in meetings, giving presentations, and understanding industry terminology in languages such as English, Spanish, French, or others. Corporate language trainers tailor their lessons to the specific needs of the company and its employees, focusing on enhancing communication, cross-cultural understanding, and productivity in the workplace. They may conduct group sessions, one-on-one training, or online courses to accommodate employees\' schedules and learning preferences.', NULL),
(52, 'Exam Preparation Coach (e.g., TOEFL, IELTS)', 'An Exam Preparation Coach (e.g., TOEFL, IELTS) helps students prepare for standardized English proficiency exams such as the TOEFL (Test of English as a Foreign Language) or IELTS (International English Language Testing System). They focus on improving test-takers\' skills in the four core areas of language proficiency: listening, speaking, reading, and writing, with strategies tailored to the specific format and requirements of each exam. The coach provides practice tests, tips for time management, and techniques for improving performance on each section. They also offer feedback on areas that need improvement and guide students on how to approach the exam confidently, helping them achieve their desired scores for university admissions, visas, or career opportunities.', NULL),
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
