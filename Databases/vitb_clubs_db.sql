-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 07:27 AM
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
-- Database: `vitb_clubs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `coordinator_name` varchar(255) DEFAULT NULL,
  `club_type` varchar(50) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `name`, `description`, `coordinator_name`, `club_type`, `instagram_url`, `website_url`) VALUES
(NULL, 'Advanced Intelligence In Electronics & Mechanics (AIEM)', 'Details about Advanced Intelligence In Electronics & Mechanics (AIEM) club.', 'Dr. Soumitra K Nayak (100163)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Al Club', 'Details about Al Club.', 'Dr. Ajeet Singh', 'Technical', 'abcd', 'abcd'),
(NULL, 'Android Club', 'Details about Android Club.', 'Mr. G. Ganeshan', 'Technical', 'abcd', 'abcd'),
(NULL, 'Andy Haryana Club', 'Details about Andy Haryana Club.', 'Dr. Jyoti Chauhan (100340)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Anime Club', 'Details about Anime Club.', 'Dr. Amrita Parashar', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'ANTERIX', 'Details about ANTERIX club.', 'Dr. Dipanjana Hazra', 'Technical', 'abcd', 'abcd'),
(NULL, 'Antique Arcade Club', 'Details about Antique Arcade Club.', 'Dr. Sheetal Sharma (100249)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'AWS Club', 'Details about AWS Club.', 'Dr. Sanay Naha (100604)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Bashcraft Club', 'Details about Bashcraft Club.', 'Dr. Dheresh Soni', 'Technical', 'abcd', 'abcd'),
(NULL, 'Bengali Club', 'Details about Bengali Club.', 'Dr. Arindam Ghosh', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Bio-Engineering Club', 'Details about Bio-Engineering Club.', 'Dr. Arub Kumar K', 'Technical', 'abcd', 'abcd'),
(NULL, 'Biz Whiz Club', 'Details about Biz Whiz Club.', 'Dr. Jitendra Pratap Singh (100526)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Blockchain Club', 'Details about Blockchain Club.', 'Dr. Hemraj Lamkuche', 'Technical', 'abcd', 'abcd'),
(NULL, 'Central India Club', 'Details about Central India Club.', 'Dr. Suneet Joshi (100533)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'CISCO Community', 'Details about CISCO Community.', 'Dr. KANNAIYA RAJA N (100630)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Cloud Zone', 'Details about Cloud Zone.', 'Dr. Vijay Birchha', 'Technical', 'abcd', 'abcd'),
(NULL, 'Coding Blocks', 'Details about Coding Blocks.', 'Dr. S. Aanjankumar (100432)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Cognitive Fitness club', 'Details about Cognitive Fitness club.', 'Gopal Singh Tandel (100408)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Computer Society of India', 'Details about Computer Society of India.', 'Dr. K Murugweshwari (100256)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Cooking and Feasting Club', 'Details about Cooking and Feasting Club.', 'Dr. Monica Sankat (100537)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'D2C Igniters club', 'Details about D2C Igniters club.', 'Dr. Subhash Chandra Patel (100194)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Dance Club', 'Details about Dance Club.', 'Dr. Yogesh Shukla (100130)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Data Science Club', 'Details about Data Science Club.', 'Dr. Abha Trivedi (100259)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Defence Warriors Club', 'Details about Defence Warriors Club.', 'Dr. G R Hemalakshmi (100527)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Dramatics Club', 'Details about Dramatics Club.', 'Dr. A. Sirajudeen', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'E-Cell', 'Details about E-Cell.', 'Dr. Maragatharajan M', 'Technical', 'abcd', 'abcd'),
(NULL, 'E-Commerce Club', 'Details about E-Commerce Club.', 'Dr. Sukumar. R (100474)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Edu4U', 'Details about Edu4U.', 'Dr. Bandla Pawan Babu', 'Technical', 'abcd', 'abcd'),
(NULL, 'Electric Vehicle Club', 'Details about Electric Vehicle Club.', 'Dr. Ajay Sharma (100513)', 'Technical', 'abcd', 'abcd'),
(NULL, 'English Literary Club', 'Details about English Literary Club.', 'Dr. Anita Yadav (100014)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Feedbox College Club', 'Details about Feedbox College Club.', 'Dr. Chandan Kumar Behera', 'Technical', 'abcd', 'abcd'),
(NULL, 'Fine Arts Club', 'Details about Fine Arts Club.', 'Dr. Mamta Agarwal(100022)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Fraternity of Young Innovators Club', 'Details about Fraternity of Young Innovators Club.', 'Dr. Siddhartha Maiti (100203)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Freelancing Club', 'Details about Freelancing Club.', 'Mr. M.Suresh', 'Technical', 'abcd', 'abcd'),
(NULL, 'Fusion Club', 'Details about Fusion Club.', 'Dr. Ranjita', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Ganga Bhumi Club', 'Details about Ganga Bhumi Club.', 'Dr. Rahul Kumar (100448)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'GeeksForGeeks student chapter', 'Details about GeeksForGeeks student chapter.', 'Dr. Jiterndra Pratap Singh Mathur', 'Technical', 'abcd', 'abcd'),
(NULL, 'Google Developer Groups', 'Details about Google Developer Groups.', 'Dr. Kamlesh Chandravanshi (100360)', 'Technical', 'abcd', 'abcd'),
(NULL, 'GSOC Innovators Club', 'Details about GSOC Innovators Club.', 'Dr. Javed Khan Sheikh', 'Technical', 'abcd', 'abcd'),
(NULL, 'Gujarati Club', 'Details about Gujarati Club.', 'Dr Bhumika Girishkumar Choksi (100190)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Health Informatics Club', 'Details about Health Informatics Club.', 'Dr.Swagat Kumar Samantaray (100261)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Hindi Club', 'Details about Hindi Club.', 'Dr. Rajeev Saxena (100081)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'iCreate', 'Details about iCreate.', 'Dr. Arindam Sadhukhan (100511)', 'Technical', 'abcd', 'abcd'),
(NULL, 'IEEE Student Chapter', 'Details about IEEE Student Chapter.', 'Dr. Ankur Beohar (100158)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Insights Club', 'Details about Insights Club.', 'Dr.I. Jasmine Selvakumari Jeya (100529)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Ios Club', 'Details about Ios Club.', 'Dr E Nirmala (100326)', 'Technical', 'abcd', 'abcd'),
(NULL, 'IOT Club', 'Details about IOT Club.', 'Dr. Ankur Jain (100397)', 'Technical', 'abcd', 'abcd'),
(NULL, 'LINPACK club', 'Details about LINPACK club.', 'Dr. Benevatho Jaison (100162)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Linux Club', 'Details about Linux Club.', 'Dr. P.S. Patheja (100031)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Malayalam Club', 'Details about Malayalam Club.', 'Dr. Achu Govnd K. R.', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Marathi Club', 'Details about Marathi Club.', 'Dr.Jyoti Badge (100147)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Matrix The Multimedia Club', 'Details about Matrix The Multimedia Club.', 'Dr. Humaira Fatima', 'Technical', 'abcd', 'abcd'),
(NULL, 'MERN Stack', 'Details about MERN Stack.', 'Sayed Mohammed Zeeshan', 'Technical', 'abcd', 'abcd'),
(NULL, 'Metaversity - Metaverse Club VITB', 'Details about Metaversity - Metaverse Club VITB.', 'Dr. Jitendra Pratap Singh Mathur', 'Technical', 'abcd', 'abcd'),
(NULL, 'Microsoft Technical Club', 'Details about Microsoft Technical Club.', 'Dr. Hariharasitaraman S (100237)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Mozilla Firefox Club VIT Bhopal', 'Details about Mozilla Firefox Club VIT Bhopal.', 'Dr. Balaji A', 'Technical', 'abcd', 'abcd'),
(NULL, 'MUN Club', 'Details about MUN Club.', 'Dr. Tauseef Qamar', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Music & Band Club', 'Details about Music & Band Club.', 'Dr. Suchetana Sadhukhan (100284)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Nature & Trekking Club', 'Details about Nature & Trekking Club.', 'Dr. SAURAV PRASAD (100227)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'North Eastern Club', 'Details about North Eastern Club.', 'Dr. Shafiul Alom Ahmed (100540)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Notion Community', 'Details about Notion Community.', 'Dr. G Vishnuvarthanan (100524)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Null Student Chapter', 'Details about Null Student Chapter.', 'Dr. Subhash Chandra Patel (100194)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Odia Club', 'Details about Odia Club.', 'Dr. Kiran Kumar Behera (100581)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Open-Source Club', 'Details about Open-Source Club.', 'Dr. Narottam Das Patel (100519)', 'Technical', 'abcd', 'abcd'),
(NULL, 'OWASP Club', 'Details about OWASP Club.', 'Dr. D. SARAVANAN (100244)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Photography & Movie Making Club', 'Details about Photography & Movie Making Club.', 'Mr. Mayank Gupta (100016)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'PSI Society', 'Details about PSI Society.', 'Dr. Sharad Chandra Tripathi (100015)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Punjabi Club', 'Details about Punjabi Club.', 'Dr. P.S. Patheja (100031)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Rajasthani Club', 'Details about Rajasthani Club.', 'Mr.C.S. Rajpoot (100592)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Ramanuja Mathematica Club', 'Details about Ramanuja Mathematica Club.', 'Dr Bhumika Girishkumar Choksi (100190)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Robotics Club', 'Details about Robotics Club.', 'Dr. Shiv Manjaree Gopaliya (100282)', 'Technical', 'abcd', 'abcd'),
(NULL, 'SEDS Nebula', 'Details about SEDS Nebula.', 'Dr. Nella Anvesh Kumar (100098)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Seedhe Pahad Se', 'Details about Seedhe Pahad Se.', 'DR. SWATI CHAUHAN (100512)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'SIAM Student Chapter', 'Details about SIAM Student Chapter.', 'Dr. Pon Harshvardhana (100122)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Software Development Club', 'Details about Software Development Club.', 'Dr. Praveen Lalwani (100100)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Startup Club', 'Details about Startup Club.', 'Dr. Pranshu Pranjal (100516)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Stats-O-Locked Club', 'Details about Stats-O-Locked Club.', 'Dr. Jyoti Badge', 'Technical', 'abcd', 'abcd'),
(NULL, 'Tamil Club', 'Details about Tamil Club.', 'Dr. Benevatho Jaison (100162)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'Techno Mech', 'Details about Techno Mech.', 'Dr. Pushpdant Jain (100210)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Telugu Club', 'Details about Telugu Club.', 'Dr. Narendra Babu (100324)', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'The FinTech Club', 'Details about The FinTech Club.', 'Dr. Rudra Kalyan Nayak (100370)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Toastmasters International-VITB Chapter', 'Details about Toastmasters International-VITB Chapter.', 'Dr. Poonkuntran S', 'Technical', 'abcd', 'abcd'),
(NULL, 'UX Club', 'Details about UX Club.', 'Mr. T Venkateswara Rao', 'Technical', 'abcd', 'abcd'),
(NULL, 'Virtual Reality & Gaming Club', 'Details about Virtual Reality & Gaming Club.', 'Dr. S. Devaraju (100414)', 'Technical', 'abcd', 'abcd'),
(NULL, 'VIT Bhopal - Al Innovators Hub', 'Details about VIT Bhopal - Al Innovators Hub.', 'Dr. A V R Mayuri (100255)', 'Technical', 'abcd', 'abcd'),
(NULL, 'VIT Bhopal ACM Student chapter', 'Details about VIT Bhopal ACM Student chapter.', 'Dr. P.S. Patheja (100031)', 'Technical', 'abcd', 'abcd'),
(NULL, 'VIT Bhopal Cyber Warriors', 'Details about VIT Bhopal Cyber Warriors.', 'Dr. Sajjad Ahmed', 'Technical', 'abcd', 'abcd'),
(NULL, 'VIT Bhopal University Material Advantage Chapter', 'Details about VIT Bhopal University Material Advantage Chapter.', 'Dr. S Balaguru (100217)', 'Technical', 'abcd', 'abcd'),
(NULL, 'VIT VISTA VOICES', 'Details about VIT VISTA VOICES.', 'Dr. Devraj Vishnu', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'VITB DSA Community', 'Details about VITB DSA Community.', 'Dr. Vinesh Kumar', 'Technical', 'abcd', 'abcd'),
(NULL, 'VITB-IEEE COMPUTER SOCIETY STUDENT CHAPTER', 'Details about VITB-IEEE COMPUTER SOCIETY STUDENT CHAPTER.', 'Dr. Ankur Beohar (100158)', 'Technical', 'abcd', 'abcd'),
(NULL, 'VITERA', 'Details about VITERA.', 'Dr. Santosh Kumar Bhal', 'Non Technical', 'abcd', 'abcd'),
(NULL, 'VITKULT', 'Details about VITKULT.', 'Dr. Monica (100618)', 'Technical', 'abcd', 'abcd'),
(NULL, 'VITronix Club', 'Details about VITronix Club.', 'Prof. Nella Anvesh Kumar (100098)', 'Technical', 'abcd', 'abcd'),
(NULL, 'Women in Cyber Security', 'Details about Women in Cyber Security.', 'Dr. Krishna Chouhan (10606)', 'Technical', 'abcd', 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
