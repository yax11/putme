-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 13, 2022 at 05:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PUTME`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `post_utme_ssce_1`
--

CREATE TABLE `post_utme_ssce_1` (
  `id` int(250) NOT NULL,
  `reg_number` varchar(250) NOT NULL,
  `exam_number` varchar(250) NOT NULL,
  `exam_center` varchar(250) NOT NULL,
  `exam_year` varchar(250) NOT NULL,
  `exam_type` varchar(250) NOT NULL,
  `subject_1` varchar(250) NOT NULL,
  `subject_2` varchar(250) NOT NULL,
  `subject_3` varchar(250) NOT NULL,
  `subject_4` varchar(250) NOT NULL,
  `subject_5` varchar(250) NOT NULL,
  `subject_6` varchar(250) NOT NULL,
  `subject_7` varchar(250) NOT NULL,
  `subject_8` varchar(250) NOT NULL,
  `subject_9` varchar(250) NOT NULL,
  `grade_1` varchar(250) NOT NULL,
  `grade_2` varchar(250) NOT NULL,
  `grade_3` varchar(250) NOT NULL,
  `grade_4` varchar(250) NOT NULL,
  `grade_5` varchar(250) NOT NULL,
  `grade_6` varchar(250) NOT NULL,
  `grade_7` varchar(250) NOT NULL,
  `grade_8` varchar(250) NOT NULL,
  `grade_9` varchar(250) NOT NULL,
  `passport` varchar(250) NOT NULL,
  `ind_cert` varchar(250) NOT NULL,
  `birth_cert` varchar(250) NOT NULL,
  `admission_status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_utme_ssce_1`
--

INSERT INTO `post_utme_ssce_1` (`id`, `reg_number`, `exam_number`, `exam_center`, `exam_year`, `exam_type`, `subject_1`, `subject_2`, `subject_3`, `subject_4`, `subject_5`, `subject_6`, `subject_7`, `subject_8`, `subject_9`, `grade_1`, `grade_2`, `grade_3`, `grade_4`, `grade_5`, `grade_6`, `grade_7`, `grade_8`, `grade_9`, `passport`, `ind_cert`, `birth_cert`, `admission_status`) VALUES
(40, '903469SF', 'dghdghdghd', 'dfghdghd', '2008', 'neco', 'economics', 'economics', 'economics', 'economics', 'chemistry', 'civid_education', 'government', 'physics', 'CRS', 'c4', 'c5', 'c4', 'c6', 'c5', 'b2', 'c5', 'b3', 'c5', 'png', 'png', 'png', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student_application`
--

CREATE TABLE `student_application` (
  `id` int(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `other_name` varchar(250) NOT NULL,
  `jamb_sub_1` varchar(250) NOT NULL,
  `jamb_sub_1_score` int(250) NOT NULL,
  `jamb_sub_2` varchar(250) NOT NULL,
  `jamb_sub_2_score` int(250) NOT NULL,
  `jamb_sub_3` varchar(250) NOT NULL,
  `jamb_sub_3_score` int(250) NOT NULL,
  `jamb_sub_4` varchar(250) NOT NULL,
  `jamb_sub_4_score` int(250) NOT NULL,
  `date_of_birth` varchar(250) NOT NULL,
  `state_of_origin` varchar(250) NOT NULL,
  `lga` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `faculty` varchar(250) NOT NULL,
  `department` varchar(250) NOT NULL,
  `admission_status` varchar(250) DEFAULT NULL,
  `phone_number` varchar(250) NOT NULL,
  `reg_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_application`
--

INSERT INTO `student_application` (`id`, `email`, `first_name`, `last_name`, `other_name`, `jamb_sub_1`, `jamb_sub_1_score`, `jamb_sub_2`, `jamb_sub_2_score`, `jamb_sub_3`, `jamb_sub_3_score`, `jamb_sub_4`, `jamb_sub_4_score`, `date_of_birth`, `state_of_origin`, `lga`, `gender`, `faculty`, `department`, `admission_status`, `phone_number`, `reg_number`) VALUES
(1, 'yakubu_h@gmail.com', 'yakubu', 'haruna', 'gata', 'Use of English', 22, 'Mathematics', 73, 'physics', 81, 'chemistry', 11, '29-01-1998', 'Nasarawa', 'akwanga', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749932', '903455SD'),
(2, 'john_doe@kmail.com', 'John', 'Doe', 'yakubu', 'Use of English', 37, 'Mathematics', 70, 'Biology', 70, 'physics', 61, '29-01-1998', 'Kano', 'kano ', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749803', '903456BA'),
(3, 'joy_emma@gmail.com', 'Joy', 'Emmanuel', 'Doe', 'Use of English', 24, 'Mathematics', 62, 'physics', 37, 'chemistry', 17, '27-11-1997', 'Kogi', 'Olamaboro', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749872', '903457HG'),
(4, 'florence_abdul@gmail.com', 'Florence', 'Abdul', 'yakubu', 'Use of English', 94, 'Mathematics', 33, 'Biology', 63, 'physics', 73, '26-02-1985', 'Niger', 'minna', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749856', '903458SE'),
(5, 'gata_y@mailer.com', 'gata', 'yakubu', 'haruna', 'Use of English', 57, 'Mathematics', 79, 'physics', 79, 'chemistry', 84, '18-02-1986', 'Kaduna', 'Barnawa', 'male', 'Natural and Applied Science', 'Plant science', '', '23481585749692', '903459TY'),
(6, 'yjd@hotmail.com', 'yakubu', 'John', 'Doe', 'Use of English', 100, 'Mathematics', 79, 'physics', 64, 'biology', 22, '13-12-1987', 'Benue', 'guma', 'male', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749901', '903460AB'),
(7, 'doe_joy@gmai.com', 'Doe', 'Joy', 'Emmanuel', 'Use of English', 59, 'Mathematics', 58, 'Biology', 62, 'physics', 67, '15-12-1986', 'Niger', 'minna', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749734', '903461AF'),
(8, 'florence_ya@pmail.com', 'yakubu', 'Florence', 'Abdul', 'Use of English', 31, 'Mathematics', 64, 'chemistry', 37, 'biology', 44, '15-09-1999', 'Nasarawa', 'toto', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749947', '903462EG'),
(9, 'AlAdamputme@gmail.com', 'Abigail', 'Adam', 'Abraham', 'Use of English', 61, 'Mathematics', 68, 'physics', 37, 'physics', 84, '19-03-1985', 'Abia', 'Aba North', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749797', '903463DR'),
(10, 'AaAdrianputme@gmail.com', 'Alexandra', 'Adrian', 'Allan', 'Use of English', 81, 'Mathematics', 56, 'Biology', 49, 'chemistry', 53, '27-11-1997', 'Adamawa', 'Aba South', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749930', '903464TH'),
(11, 'AnAlanputme@gmail.com', 'Alison', 'Alan', 'Alsop', 'Use of English', 68, 'Mathematics', 68, 'chemistry', 59, 'physics', 40, '16-05-1983', 'Akwa Ibom', 'Arochukwu', 'male', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749903', '903465IO'),
(12, 'AaAlexanderputme@gmail.com', 'Amanda', 'Alexander', 'Anderson', 'Use of English', 95, 'Mathematics', 71, 'physics', 43, 'chemistry', 37, '23-06-2001', 'Anambra', 'Bende', 'male', 'Natural and Applied Science', 'Microbiology', '', '23481585749784', '903466EW'),
(13, 'AaAndrewputme@gmail.com', 'Amelia', 'Andrew', 'Arnold', 'Use of English', 67, 'Mathematics', 69, 'Biology', 26, 'biology', 49, '30-03-1991', 'Bauchi', 'Ikwuano', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749934', '903467AD'),
(14, 'AyAnthonyputme@gmail.com', 'Amy', 'Anthony', 'Avery', 'Use of English', 80, 'Mathematics', 38, 'chemistry', 28, 'physics', 71, '16-05-1983', 'Bayelsa', 'Isiala Ngwa North', 'female', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749752', '903468CE'),
(15, 'AaAustinputme@gmail.com', 'Andrea', 'Austin', 'Bailey', 'Use of English', 82, 'Mathematics', 39, 'physics', 55, 'biology', 62, '18-08-1981', 'Benue', 'Isiala Ngwa South', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749921', '903469SF'),
(16, 'AaBenjaminputme@gmail.com', 'Angela', 'Benjamin', 'Baker', 'Use of English', 60, 'Mathematics', 62, 'Biology', 25, 'physics', 27, '16-05-1983', 'Borno', 'Isuikwuato', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749760', '903470RE'),
(17, 'AaBlakeputme@gmail.com', 'Anna', 'Blake', 'Ball', 'Use of English', 76, 'Mathematics', 39, 'chemistry', 78, 'chemistry', 77, '15-06-1996', 'Cross River', 'Obi Ngwa', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749773', '903471FE'),
(18, 'AeBorisputme@gmail.com', 'Anne', 'Boris', 'Bell', 'Use of English', 87, 'Mathematics', 59, 'physics', 68, 'physics', 45, '16-05-1983', 'Delta', 'Mayo Belwa', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749756', '903472DE'),
(19, 'AyBrandonputme@gmail.com', 'Audrey', 'Brandon', 'Berry', 'Use of English', 48, 'Mathematics', 98, 'Biology', 54, 'chemistry', 25, '26-06-1993', 'Ebonyi', 'Michika', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749997', '903473AV'),
(20, 'AaBrianputme@gmail.com', 'Ava', 'Brian', 'Black', 'Use of English', 77, 'Mathematics', 42, 'chemistry', 40, 'biology', 90, '18-07-1984', 'Edo', 'Mubi North', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749730', '903474CE'),
(21, 'BaCameronputme@gmail.com', 'Bella', 'Cameron', 'Blake', 'Use of English', 59, 'Mathematics', 67, 'physics', 76, 'physics', 37, '19-04-2002', 'Ekiti', 'Mubi South', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749726', '903475RG'),
(22, 'BeCarlputme@gmail.com', 'Bernadette', 'Carl', 'Bond', 'Use of English', 37, 'Mathematics', 56, 'Biology', 37, 'biology', 87, '25-02-1982', 'Enugu', 'Numan', 'male', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749803', '903476TE'),
(23, 'ClCharlesputme@gmail.com', 'Carol', 'Charles', 'Bower', 'Use of English', 24, 'Mathematics', 90, 'chemistry', 30, 'physics', 39, '25-02-1988', 'Gombe', 'Shelleng', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749733', '903477AS'),
(24, 'CeChristianputme@gmail.com', 'Caroline', 'Christian', 'Brown', 'Use of English', 33, 'Mathematics', 37, 'physics', 61, 'chemistry', 32, '18-07-1984', 'Imo', 'Song', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749721', '903478DE'),
(25, 'CnChristopherputme@gmail.com', 'Carolyn', 'Christopher', 'Buckland', 'Use of English', 23, 'Mathematics', 64, 'Biology', 64, 'physics', 60, '16-05-1983', 'Jigawa', 'Toungo', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749731', '903479AC'),
(26, 'CeColinputme@gmail.com', 'Chloe', 'Colin', 'Burgess', 'Use of English', 82, 'Mathematics', 86, 'chemistry', 57, 'chemistry', 34, '18-01-1993', 'Kaduna', 'Yola North', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749770', '903480SD'),
(27, 'CeConnorputme@gmail.com', 'Claire', 'Connor', 'Butler', 'Use of English', 44, 'Mathematics', 59, 'physics', 46, 'biology', 46, '28-09-1981', 'Kano', 'Yola South', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749943', '903481BA'),
(28, 'DeDanputme@gmail.com', 'Deirdre', 'Dan', 'Cameron', 'Use of English', 83, 'Mathematics', 66, 'Biology', 65, 'physics', 42, '25-12-1992', 'Katsina', 'Makurdi', 'male', 'Natural and Applied Science', 'Microbiology', '', '23481585749836', '903482HG'),
(29, 'DaDavidputme@gmail.com', 'Diana', 'David', 'Campbell', 'Use of English', 93, 'Mathematics', 92, 'chemistry', 89, 'biology', 31, '17-02-1982', 'Kebbi', 'Obi', 'male', 'Natural and Applied Science', 'Plant science', '', '23481585749882', '903483SE'),
(30, 'DeDominicputme@gmail.com', 'Diane', 'Dominic', 'Carr', 'Use of English', 40, 'Mathematics', 38, 'physics', 60, 'physics', 29, '26-06-1993', 'Kogi', 'Ogbadibo', 'female', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749873', '903484TY'),
(31, 'DaDylanputme@gmail.com', 'Donna', 'Dylan', 'Chapman', 'Use of English', 87, 'Mathematics', 30, 'Biology', 38, 'chemistry', 28, '15-09-1995', 'Kwara', 'Ohimini', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749893', '903485AB'),
(32, 'DyEdwardputme@gmail.com', 'Dorothy', 'Edward', 'Churchill', 'Use of English', 85, 'Mathematics', 37, 'chemistry', 77, 'physics', 31, '24-02-1995', 'Lagos', 'Oju', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749724', '903486AF'),
(33, 'EhEricputme@gmail.com', 'Elizabeth', 'Eric', 'Clark', 'Use of English', 72, 'Mathematics', 73, 'physics', 38, 'chemistry', 60, '19-04-2002', 'Nasarawa', 'Okpokwu', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749776', '903487EG'),
(34, 'EaEvanputme@gmail.com', 'Ella', 'Evan', 'Clarkson', 'Use of English', 41, 'Mathematics', 75, 'Biology', 58, 'biology', 18, '24-04-1993', 'Niger', 'Oturkpo', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749961', '903488DR'),
(35, 'EyFrankputme@gmail.com', 'Emily', 'Frank', 'Coleman', 'Use of English', 82, 'Mathematics', 84, 'chemistry', 62, 'physics', 60, '20-11-1988', 'Ogun', 'Tarka', 'male', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749938', '903489TH'),
(36, 'EaGavinputme@gmail.com', 'Emma', 'Gavin', 'Cornish', 'Use of English', 74, 'Mathematics', 62, 'physics', 57, 'biology', 77, '26-03-1981', 'Ondo', 'Ukum', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749851', '903490IO'),
(37, 'FhGordonputme@gmail.com', 'Faith', 'Gordon', 'Davidson', 'Use of English', 23, 'Mathematics', 47, 'Biology', 23, 'physics', 93, '25-12-1992', 'Osun', 'Ushongo', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749749', '903491EW'),
(38, 'FyHarryputme@gmail.com', 'Felicity', 'Harry', 'Davies', 'Use of English', 65, 'Mathematics', 88, 'chemistry', 49, 'chemistry', 97, '28-09-1981', 'Oyo', 'Vandeikya', 'female', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749980', '903492AD'),
(39, 'FaIanputme@gmail.com', 'Fiona', 'Ian', 'Dickens', 'Use of English', 47, 'Mathematics', 100, 'physics', 45, 'physics', 44, '20-12-1996', 'Plateau', 'Aba North', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749832', '903493CE'),
(40, 'GeIsaacputme@gmail.com', 'Gabrielle', 'Isaac', 'Dowd', 'Use of English', 36, 'Mathematics', 48, 'Biology', 65, 'chemistry', 59, '13-07-1987', 'Rivers', 'Aba South', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749802', '903494SF'),
(41, 'GeJackputme@gmail.com', 'Grace', 'Jack', 'Duncan', 'Use of English', 45, 'Mathematics', 88, 'chemistry', 75, 'biology', 79, '20-05-1982', 'Sokoto', 'Arochukwu', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749986', '903495RE'),
(42, 'HhJacobputme@gmail.com', 'Hannah', 'Jacob', 'Dyer', 'Use of English', 35, 'Mathematics', 69, 'physics', 90, 'physics', 22, '21-04-1981', 'Taraba', 'Bende', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749990', '903496FE'),
(43, 'HrJakeputme@gmail.com', 'Heather', 'Jake', 'Edmunds', 'Use of English', 20, 'Mathematics', 72, 'Biology', 68, 'biology', 74, '20-12-1996', 'Yobe', 'Ikwuano', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749968', '903497DE'),
(44, 'IeJamesputme@gmail.com', 'Irene', 'James', 'Ellison', 'Use of English', 72, 'Mathematics', 78, 'chemistry', 90, 'physics', 15, '18-04-1997', 'Zamfara', 'Isiala Ngwa North', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749879', '903498AV'),
(45, 'JnJasonputme@gmail.com', 'Jan', 'Jason', 'Ferguson', 'Use of English', 58, 'Mathematics', 60, 'physics', 82, 'chemistry', 21, '24-03-1985', 'Ekiti', 'Isiala Ngwa South', 'male', 'Natural and Applied Science', 'Plant science', '', '23481585749774', '903499CE'),
(46, 'JeJoeputme@gmail.com', 'Jane', 'Joe', 'Fisher', 'Use of English', 51, 'Mathematics', 89, 'Biology', 90, 'physics', 10, '30-04-1989', 'Enugu', 'Isuikwuato', 'male', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749792', '903500RG'),
(47, 'JeJohnputme@gmail.com', 'Jasmine', 'John', 'Forsyth', 'Use of English', 52, 'Mathematics', 32, 'chemistry', 34, 'chemistry', 42, '20-05-1986', 'Gombe', 'Obi Ngwa', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749736', '903501TE'),
(48, 'JrJonathanputme@gmail.com', 'Jennifer', 'Jonathan', 'Fraser', 'Use of English', 69, 'Mathematics', 35, 'physics', 66, 'biology', 22, '24-05-2002', 'Imo', 'Mayo Belwa', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749750', '903502AS'),
(49, 'JaJosephputme@gmail.com', 'Jessica', 'Joseph', 'Gibson', 'Use of English', 23, 'Mathematics', 39, 'Biology', 31, 'physics', 38, '25-07-2000', 'Jigawa', 'Michika', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749914', '903503DE'),
(50, 'JnJoshuaputme@gmail.com', 'Joan', 'Joshua', 'Gill', 'Use of English', 25, 'Mathematics', 47, 'chemistry', 60, 'biology', 89, '22-09-1986', 'Kaduna', 'Mubi North', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749834', '903504AC'),
(51, 'JeJulianputme@gmail.com', 'Joanne', 'Julian', 'Glover', 'Use of English', 26, 'Mathematics', 37, 'physics', 36, 'physics', 54, '18-06-1981', 'Kano', 'Mubi South', 'male', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749794', '903505SD'),
(52, 'JaJustinputme@gmail.com', 'Julia', 'Justin', 'Graham', 'Use of English', 68, 'Mathematics', 36, 'Biology', 31, 'chemistry', 15, '22-09-1986', 'Katsina', 'Numan', 'male', 'Natural and Applied Science', 'Microbiology', '', '23481585749883', '903506BA'),
(53, 'KnKeithputme@gmail.com', 'Karen', 'Keith', 'Grant', 'Use of English', 69, 'Mathematics', 82, 'chemistry', 51, 'physics', 41, '27-05-1989', 'Kebbi', 'Shelleng', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749798', '903507HG'),
(54, 'KeKevinputme@gmail.com', 'Katherine', 'Kevin', 'Gray', 'Use of English', 84, 'Mathematics', 46, 'physics', 45, 'chemistry', 70, '27-01-2001', 'Kogi', 'Song', 'female', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749888', '903508SE'),
(55, 'KyLeonardputme@gmail.com', 'Kimberly', 'Leonard', 'Greene', 'Use of English', 73, 'Mathematics', 42, 'Biology', 51, 'biology', 86, '16-10-1986', 'Kwara', 'Toungo', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749862', '903509TY'),
(56, 'KeLiamputme@gmail.com', 'Kylie', 'Liam', 'Hamilton', 'Use of English', 32, 'Mathematics', 61, 'chemistry', 23, 'physics', 56, '26-05-1996', 'Lagos', 'Yola North', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749791', '903510AB'),
(57, 'LnLucasputme@gmail.com', 'Lauren', 'Lucas', 'Hardacre', 'Use of English', 97, 'Mathematics', 76, 'physics', 39, 'biology', 30, '25-12-1999', 'Nasarawa', 'Yola South', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749969', '903511AF'),
(58, 'LhLukeputme@gmail.com', 'Leah', 'Luke', 'Harris', 'Use of English', 31, 'Mathematics', 99, 'Biology', 82, 'physics', 54, '25-05-1999', 'Niger', 'Makurdi', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749981', '903512EG'),
(59, 'LnMattputme@gmail.com', 'Lillian', 'Matt', 'Hart', 'Use of English', 97, 'Mathematics', 91, 'chemistry', 32, 'chemistry', 65, '22-09-2000', 'Ogun', 'Obi', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749934', '903513DR'),
(60, 'LyMaxputme@gmail.com', 'Lily', 'Max', 'Hemmings', 'Use of English', 83, 'Mathematics', 52, 'physics', 88, 'physics', 93, '19-12-1994', 'Ondo', 'Ogbadibo', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749939', '903514TH'),
(61, 'LaMichaelputme@gmail.com', 'Lisa', 'Michael', 'Henderson', 'Use of English', 74, 'Mathematics', 76, 'Biology', 45, 'chemistry', 56, '30-09-1994', 'Osun', 'Ohimini', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749862', '903515IO'),
(62, 'MeNathanputme@gmail.com', 'Madeleine', 'Nathan', 'Hill', 'Use of English', 92, 'Mathematics', 60, 'chemistry', 32, 'biology', 37, '17-10-1994', 'Oyo', 'Oju', 'male', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749990', '903516EW'),
(63, 'MaNeilputme@gmail.com', 'Maria', 'Neil', 'Hodges', 'Use of English', 73, 'Mathematics', 66, 'physics', 28, 'physics', 86, '14-09-1986', 'Plateau', 'Okpokwu', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749961', '903517AD'),
(64, 'MyNicholasputme@gmail.com', 'Mary', 'Nicholas', 'Howard', 'Use of English', 44, 'Mathematics', 48, 'Biology', 22, 'biology', 45, '26-05-1996', 'Ekiti', 'Oturkpo', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749717', '903518CE'),
(65, 'MnOliverputme@gmail.com', 'Megan', 'Oliver', 'Hudson', 'Use of English', 23, 'Mathematics', 86, 'chemistry', 44, 'physics', 64, '18-09-1993', 'Enugu', 'Tarka', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749849', '903519SF'),
(66, 'MeOwenputme@gmail.com', 'Melanie', 'Owen', 'Hughes', 'Use of English', 23, 'Mathematics', 68, 'physics', 23, 'chemistry', 46, '22-09-2000', 'Gombe', 'Ukum', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749751', '903520RE'),
(67, 'MePaulputme@gmail.com', 'Michelle', 'Paul', 'Hunter', 'Use of English', 56, 'Mathematics', 78, 'Biology', 48, 'physics', 53, '15-02-1991', 'Imo', 'Ushongo', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749759', '903521FE'),
(68, 'MyPeterputme@gmail.com', 'Molly', 'Peter', 'Ince', 'Use of English', 25, 'Mathematics', 94, 'chemistry', 45, 'chemistry', 15, '13-12-1988', 'Jigawa', 'Vandeikya', 'male', 'Natural and Applied Science', 'Microbiology', '', '23481585749929', '903522DE'),
(69, 'NePhilputme@gmail.com', 'Natalie', 'Phil', 'Jackson', 'Use of English', 35, 'Mathematics', 75, 'physics', 60, 'biology', 92, '22-08-1981', 'Kaduna', 'Aba North', 'male', 'Natural and Applied Science', 'Plant science', '', '23481585749985', '903523AV'),
(70, 'NaPiersputme@gmail.com', 'Nicola', 'Piers', 'James', 'Use of English', 42, 'Mathematics', 78, 'Biology', 67, 'physics', 97, '29-09-1988', 'Kano', 'Aba South', 'female', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749859', '903524CE'),
(71, 'OaRichardputme@gmail.com', 'Olivia', 'Richard', 'Johnston', 'Use of English', 47, 'Mathematics', 80, 'chemistry', 60, 'biology', 16, '14-05-2001', 'Katsina', 'Arochukwu', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749714', '903525RG'),
(72, 'PeRobertputme@gmail.com', 'Penelope', 'Robert', 'Jones', 'Use of English', 74, 'Mathematics', 30, 'physics', 68, 'physics', 57, '26-03-1983', 'Kebbi', 'Bende', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749920', '903526TE'),
(73, 'PaRyanputme@gmail.com', 'Pippa', 'Ryan', 'Kelly', 'Use of English', 96, 'Mathematics', 84, 'Biology', 35, 'chemistry', 38, '30-11-1995', 'Kogi', 'Ikwuano', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749843', '903527AS'),
(74, 'RlSamputme@gmail.com', 'Rachel', 'Sam', 'Kerr', 'Use of English', 97, 'Mathematics', 67, 'chemistry', 24, 'physics', 79, '22-08-1981', 'Kwara', 'Isiala Ngwa North', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749931', '903528DE'),
(75, 'RaSeanputme@gmail.com', 'Rebecca', 'Sean', 'King', 'Use of English', 89, 'Mathematics', 83, 'physics', 57, 'chemistry', 15, '15-05-1983', 'Lagos', 'Isiala Ngwa South', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749925', '903529AC'),
(76, 'ReSebastianputme@gmail.com', 'Rose', 'Sebastian', 'Knox', 'Use of English', 27, 'Mathematics', 68, 'Biology', 33, 'biology', 72, '24-03-2001', 'Nasarawa', 'Isuikwuato', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749754', '903530SD'),
(77, 'RhSimonputme@gmail.com', 'Ruth', 'Simon', 'Lambert', 'Use of English', 83, 'Mathematics', 90, 'chemistry', 76, 'physics', 63, '20-03-1993', 'Niger', 'Obi Ngwa', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749952', '903531BA'),
(78, 'SyStephenputme@gmail.com', 'Sally', 'Stephen', 'Langdon', 'Use of English', 90, 'Mathematics', 44, 'physics', 34, 'biology', 28, '16-08-1983', 'Ogun', 'Mayo Belwa', 'female', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749815', '903532HG'),
(79, 'SaStevenputme@gmail.com', 'Samantha', 'Steven', 'Lawrence', 'Use of English', 39, 'Mathematics', 56, 'Biology', 72, 'physics', 12, '15-05-1983', 'Ondo', 'Michika', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749918', '903533SE'),
(80, 'ShStewartputme@gmail.com', 'Sarah', 'Stewart', 'Lee', 'Use of English', 34, 'Mathematics', 90, 'chemistry', 40, 'chemistry', 72, '14-06-1986', 'Osun', 'Mubi North', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749807', '903534TY'),
(81, 'SaThomasputme@gmail.com', 'Sonia', 'Thomas', 'Lewis', 'Use of English', 80, 'Mathematics', 39, 'physics', 46, 'physics', 70, '18-02-1998', 'Oyo', 'Mubi South', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749776', '903535AB'),
(82, 'SeTimputme@gmail.com', 'Sophie', 'Tim', 'Lyman', 'Use of English', 49, 'Mathematics', 74, 'Biology', 54, 'chemistry', 82, '27-09-1987', 'Plateau', 'Numan', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749914', '903536AF'),
(83, 'SeTrevorputme@gmail.com', 'Stephanie', 'Trevor', 'MacDonald', 'Use of English', 41, 'Mathematics', 46, 'chemistry', 36, 'biology', 91, '26-03-1983', 'Rivers', 'Shelleng', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749975', '903537EG'),
(84, 'SeVictorputme@gmail.com', 'Sue', 'Victor', 'Mackay', 'Use of English', 65, 'Mathematics', 53, 'physics', 88, 'physics', 91, '30-09-1981', 'Sokoto', 'Song', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749992', '903538DR'),
(85, 'TaWarrenputme@gmail.com', 'Theresa', 'Warren', 'Mackenzie', 'Use of English', 55, 'Mathematics', 75, 'Biology', 38, 'biology', 83, '23-11-1991', 'Taraba', 'Toungo', 'male', 'Natural and Applied Science', 'Plant science', '', '23481585749803', '903539TH'),
(86, 'TyWilliamputme@gmail.com', 'Tracey', 'William', 'MacLeod', 'Use of English', 56, 'Mathematics', 71, 'chemistry', 49, 'physics', 90, '22-08-1981', 'Yobe', 'Yola North', 'male', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749971', '903540IO'),
(87, 'UaSimonputme@gmail.com', 'Una', 'Simon', 'Manning', 'Use of English', 41, 'Mathematics', 64, 'physics', 20, 'chemistry', 89, '24-05-1993', 'Ekiti', 'Yola South', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749811', '903541EW'),
(88, 'VaStephenputme@gmail.com', 'Vanessa', 'Stephen', 'Marshall', 'Use of English', 38, 'Mathematics', 97, 'Biology', 59, 'physics', 54, '23-07-1997', 'Enugu', 'Makurdi', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749834', '903542AD'),
(89, 'VaStevenputme@gmail.com', 'Victoria', 'Steven', 'Martin', 'Use of English', 94, 'Mathematics', 69, 'chemistry', 54, 'chemistry', 49, '15-05-1983', 'Gombe', 'Obi', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749782', '903543CE'),
(90, 'VaStewartputme@gmail.com', 'Virginia', 'Stewart', 'Mathis', 'Use of English', 89, 'Mathematics', 97, 'physics', 57, 'biology', 42, '17-06-2001', 'Imo', 'Ogbadibo', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749822', '903544SF'),
(91, 'WaThomasputme@gmail.com', 'Wanda', 'Thomas', 'May', 'Use of English', 49, 'Mathematics', 68, 'Biology', 23, 'physics', 66, '23-03-1990', 'Jigawa', 'Ohimini', 'male', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749828', '903545RE'),
(92, 'WyTimputme@gmail.com', 'Wendy', 'Tim', 'McDonald', 'Use of English', 33, 'Mathematics', 97, 'chemistry', 26, 'biology', 26, '17-06-2001', 'Kaduna', 'Oju', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749984', '903546FE'),
(93, 'YePeterputme@gmail.com', 'Yvonne', 'Peter', 'McLean', 'Use of English', 66, 'Mathematics', 30, 'physics', 60, 'physics', 100, '24-10-2000', 'Kano', 'Okpokwu', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749858', '903547DE'),
(94, 'ZeEmmanuelputme@gmail.com', 'Zoe', 'Emmanuel', 'McGrath', 'Use of English', 72, 'Mathematics', 63, 'Biology', 56, 'chemistry', 84, '22-03-2000', 'Katsina', 'Oturkpo', 'female', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749857', '903548AV'),
(95, 'AlKoehlerputme@gmail.com', 'Azriel', 'Koehler', 'Louie', 'Use of English', 69, 'Mathematics', 81, 'chemistry', 83, 'physics', 34, '23-07-1997', 'Kebbi', 'Tarka', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749741', '903549CE'),
(96, 'LnCarmichaelputme@gmail.com', 'Landyn', 'Carmichael', 'Rowdy', 'Use of English', 68, 'Mathematics', 61, 'physics', 30, 'chemistry', 58, '24-10-2000', 'Kogi', 'Ukum', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749872', '903550RG'),
(97, 'AaBaileyputme@gmail.com', 'Alina', 'Bailey', 'Yousef', 'Use of English', 55, 'Mathematics', 80, 'Biology', 38, 'biology', 57, '22-06-1993', 'Kwara', 'Ushongo', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749749', '903551TE'),
(98, 'NaRichterputme@gmail.com', 'Navya', 'Richter', 'Javon', 'Use of English', 46, 'Mathematics', 95, 'chemistry', 49, 'physics', 72, '23-07-1997', 'Lagos', 'Vandeikya', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749889', '903552AS'),
(99, 'ShJohnputme@gmail.com', 'Shiloh', 'John', 'Aaryan', 'Use of English', 27, 'Mathematics', 30, 'physics', 35, 'biology', 54, '22-11-1983', 'Nasarawa', 'Aba North', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749922', '903553DE'),
(100, 'ElLockhartputme@gmail.com', 'Eliel', 'Lockhart', 'Vincenzo', 'Use of English', 79, 'Mathematics', 69, 'Biology', 64, 'physics', 78, '19-05-1996', 'Niger', 'Aba South', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749706', '903554AC'),
(101, 'MaGlassputme@gmail.com', 'Mckayla', 'Glass', 'Jethro', 'Use of English', 34, 'Mathematics', 31, 'chemistry', 68, 'chemistry', 17, '19-05-1996', 'Ogun', 'Arochukwu', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749808', '903555SD'),
(102, 'LnSandsputme@gmail.com', 'Lucian', 'Sands', 'Nathen', 'Use of English', 27, 'Mathematics', 98, 'physics', 36, 'physics', 82, '19-09-1996', 'Ondo', 'Bende', 'male', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749951', '903556BA'),
(103, 'BnDillputme@gmail.com', 'Brogan', 'Dill', 'Ari', 'Use of English', 77, 'Mathematics', 91, 'Biology', 69, 'chemistry', 37, '23-02-1999', 'Osun', 'Ikwuano', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749907', '903557HG'),
(104, 'SiMortonputme@gmail.com', 'Sanvi', 'Morton', 'Brennon', 'Use of English', 59, 'Mathematics', 46, 'chemistry', 22, 'biology', 13, '17-06-2001', 'Oyo', 'Isiala Ngwa North', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749974', '903558SE'),
(105, 'PoStarksputme@gmail.com', 'Pablo', 'Starks', 'Dillon', 'Use of English', 60, 'Mathematics', 56, 'physics', 46, 'physics', 23, '22-03-2000', 'Plateau', 'Isiala Ngwa South', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749771', '903559TY'),
(106, 'MeSylvesterputme@gmail.com', 'Monroe', 'Sylvester', 'Yosef', 'Use of English', 61, 'Mathematics', 40, 'Biology', 31, 'biology', 42, '22-06-1993', 'Rivers', 'Isuikwuato', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749689', '903560AB'),
(107, 'GnBowenputme@gmail.com', 'German', 'Bowen', 'Mordechai', 'Use of English', 27, 'Mathematics', 38, 'chemistry', 67, 'physics', 21, '22-03-2000', 'Sokoto', 'Obi Ngwa', 'male', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749788', '903561AF'),
(108, 'LnWilkinsputme@gmail.com', 'Leighton', 'Wilkins', 'Luis', 'Use of English', 55, 'Mathematics', 30, 'physics', 25, 'chemistry', 16, '17-06-2001', 'Taraba', 'Mayo Belwa', 'male', 'Natural and Applied Science', 'Microbiology', '', '23481585749690', '903562EG'),
(109, 'SyPendletonputme@gmail.com', 'Stacy', 'Pendleton', 'Tai', 'Use of English', 37, 'Mathematics', 75, 'Biology', 57, 'physics', 92, '23-11-1989', 'Yobe', 'Michika', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749912', '903563DR'),
(110, 'KrMckinneyputme@gmail.com', 'Kyler', 'Mckinney', 'Baron', 'Use of English', 33, 'Mathematics', 84, 'chemistry', 68, 'chemistry', 62, '19-09-1996', 'Zamfara', 'Mubi North', 'female', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749708', '903564TH'),
(111, 'KeRojasputme@gmail.com', 'Khloe', 'Rojas', 'Markell', 'Use of English', 48, 'Mathematics', 73, 'physics', 64, 'biology', 90, '23-07-1987', 'Ekiti', 'Mubi South', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749763', '903565IO'),
(112, 'YaRussoputme@gmail.com', 'Yeshua', 'Russo', 'Jamil', 'Use of English', 91, 'Mathematics', 64, 'Biology', 36, 'physics', 62, '22-09-1984', 'Enugu', 'Numan', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749765', '903566EW'),
(113, 'DnDelongputme@gmail.com', 'Dylan', 'Delong', 'Alberto', 'Use of English', 74, 'Mathematics', 56, 'chemistry', 87, 'biology', 16, '13-05-1997', 'Gombe', 'Shelleng', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749897', '903567AD'),
(114, 'DaPikeputme@gmail.com', 'Dina', 'Pike', 'Randall', 'Use of English', 94, 'Mathematics', 71, 'physics', 65, 'physics', 59, '20-08-1993', 'Imo', 'Song', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749820', '903568CE'),
(115, 'JeFunkputme@gmail.com', 'Jayde', 'Funk', 'Matthew', 'Use of English', 35, 'Mathematics', 49, 'Biology', 43, 'chemistry', 94, '23-11-1989', 'Jigawa', 'Toungo', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749807', '903569SF'),
(116, 'JeLovettputme@gmail.com', 'Jubilee', 'Lovett', 'Roland', 'Use of English', 83, 'Mathematics', 88, 'chemistry', 38, 'physics', 13, '22-11-1983', 'Kaduna', 'Yola North', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749988', '903570RE'),
(117, 'CrLackeyputme@gmail.com', 'Clover', 'Lackey', 'Dyland', 'Use of English', 85, 'Mathematics', 68, 'physics', 30, 'chemistry', 27, '20-06-1981', 'Kano', 'Yola South', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749772', '903571FE'),
(118, 'DaHaasputme@gmail.com', 'Dasha', 'Haas', 'Ryden', 'Use of English', 55, 'Mathematics', 65, 'Biology', 79, 'biology', 81, '14-11-1993', 'Katsina', 'Makurdi', 'female', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749845', '903572DE'),
(119, 'EhWorkmanputme@gmail.com', 'Emmaleigh', 'Workman', 'Anders', 'Use of English', 73, 'Mathematics', 70, 'chemistry', 71, 'physics', 72, '22-09-1984', 'Kebbi', 'Obi', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749707', '903573AV'),
(120, 'JhSwiftputme@gmail.com', 'Judah', 'Swift', 'Jaron', 'Use of English', 100, 'Mathematics', 35, 'physics', 76, 'biology', 78, '19-01-1997', 'Kogi', 'Ogbadibo', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749830', '903574CE'),
(121, 'CeWoodsputme@gmail.com', 'Clementine', 'Woods', 'Damir', 'Use of English', 91, 'Mathematics', 51, 'Biology', 43, 'physics', 52, '20-02-1990', 'Kwara', 'Ohimini', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749828', '903575RG'),
(122, 'KySummersputme@gmail.com', 'Kasey', 'Summers', 'Miles', 'Use of English', 46, 'Mathematics', 85, 'chemistry', 54, 'chemistry', 57, '27-07-1981', 'Lagos', 'Oju', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749984', '903576TE'),
(123, 'AeFerreiraputme@gmail.com', 'Ace', 'Ferreira', 'Wesley', 'Use of English', 94, 'Mathematics', 78, 'physics', 69, 'physics', 23, '22-10-1983', 'Nasarawa', 'Okpokwu', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749858', '903577AS'),
(124, 'FdRossiputme@gmail.com', 'Fred', 'Rossi', 'Milo', 'Use of English', 44, 'Mathematics', 80, 'Biology', 67, 'chemistry', 31, '27-01-1997', 'Niger', 'Oturkpo', 'male', 'Natural and Applied Science', 'Microbiology', '', '23481585749857', '903578DE'),
(125, 'DnBrowneputme@gmail.com', 'Damon', 'Browne', 'Eliott', 'Use of English', 34, 'Mathematics', 83, 'chemistry', 30, 'biology', 13, '22-06-1999', 'Ogun', 'Tarka', 'male', 'Natural and Applied Science', 'Plant science', '', '23481585749741', '903579AC'),
(126, 'LnGroveputme@gmail.com', 'Lauryn', 'Grove', 'Brandt', 'Use of English', 68, 'Mathematics', 53, 'physics', 38, 'physics', 77, '18-07-1987', 'Ondo', 'Ukum', 'female', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749872', '903580SD'),
(127, 'KeStoneputme@gmail.com', 'Kale', 'Stone', 'Titan', 'Use of English', 74, 'Mathematics', 93, 'Biology', 67, 'biology', 58, '19-01-1997', 'Osun', 'Ushongo', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749749', '903581BA'),
(128, 'GsHernandezputme@gmail.com', 'Gus', 'Hernandez', 'Donnie', 'Use of English', 32, 'Mathematics', 84, 'chemistry', 79, 'physics', 58, '18-07-1987', 'Oyo', 'Vandeikya', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749889', '903582HG'),
(129, 'FnMurilloputme@gmail.com', 'Finnian', 'Murillo', 'Zakaria', 'Use of English', 37, 'Mathematics', 65, 'physics', 82, 'chemistry', 52, '19-07-1994', 'Plateau', 'Aba North', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749922', '903583SE'),
(130, 'KnBloomputme@gmail.com', 'Kellin', 'Bloom', 'Colton', 'Use of English', 98, 'Mathematics', 80, 'Biology', 39, 'physics', 41, '24-09-1990', 'Ekiti', 'Aba South', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749706', '903584TY'),
(131, 'MtSharpputme@gmail.com', 'Monserrat', 'Sharp', 'Jethro', 'Use of English', 95, 'Mathematics', 53, 'chemistry', 57, 'chemistry', 88, '18-07-1987', 'Enugu', 'Arochukwu', 'male', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749808', '903585AB'),
(132, 'AiGodwinputme@gmail.com', 'Averi', 'Godwin', 'Ayman', 'Use of English', 49, 'Mathematics', 66, 'physics', 47, 'biology', 10, '20-02-1990', 'Gombe', 'Bende', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749951', '903586AF'),
(133, 'IaGrayputme@gmail.com', 'Itzayana', 'Gray', 'Jon', 'Use of English', 20, 'Mathematics', 41, 'Biology', 79, 'physics', 60, '22-12-1994', 'Imo', 'Ikwuano', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749907', '903587EG'),
(134, 'SrTriplettputme@gmail.com', 'Sailor', 'Triplett', 'Rene', 'Use of English', 87, 'Mathematics', 77, 'chemistry', 49, 'biology', 45, '30-01-1991', 'Jigawa', 'Isiala Ngwa North', 'female', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749974', '903588DR'),
(135, 'TeMeansputme@gmail.com', 'Tremaine', 'Means', 'Alijah', 'Use of English', 54, 'Mathematics', 63, 'physics', 77, 'physics', 37, '19-10-1981', 'Kaduna', 'Isiala Ngwa South', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749771', '903589TH'),
(136, 'KnFischerputme@gmail.com', 'Karsten', 'Fischer', 'Johnny', 'Use of English', 60, 'Mathematics', 35, 'Biology', 78, 'chemistry', 79, '18-05-1999', 'Kano', 'Isuikwuato', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749689', '903590IO'),
(137, 'LaTylerputme@gmail.com', 'Leia', 'Tyler', 'Eliseo', 'Use of English', 26, 'Mathematics', 34, 'chemistry', 49, 'physics', 51, '25-09-1988', 'Katsina', 'Obi Ngwa', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749788', '903591EW'),
(138, 'AyKimballputme@gmail.com', 'Abbey', 'Kimball', 'Travis', 'Use of English', 98, 'Mathematics', 84, 'physics', 82, 'chemistry', 22, '20-10-1997', 'Kebbi', 'Mayo Belwa', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749690', '903592AD'),
(139, 'BnSantosputme@gmail.com', 'Braelynn', 'Santos', 'Michael', 'Use of English', 57, 'Mathematics', 51, 'Biology', 64, 'biology', 91, '30-01-1991', 'Kogi', 'Michika', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749912', '903593CE'),
(140, 'KnEstesputme@gmail.com', 'Kamren', 'Estes', 'Briggs', 'Use of English', 28, 'Mathematics', 47, 'chemistry', 50, 'physics', 15, '27-07-1981', 'Kwara', 'Mubi North', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749708', '903594SF'),
(141, 'AsLangputme@gmail.com', 'Amaris', 'Lang', 'Daquan', 'Use of English', 52, 'Mathematics', 81, 'physics', 88, 'biology', 95, '18-07-1987', 'Lagos', 'Mubi South', 'male', 'Natural and Applied Science', 'Plant science', '', '23481585749763', '903595RE'),
(142, 'JhWattsputme@gmail.com', 'Josiah', 'Watts', 'Nikhil', 'Use of English', 22, 'Mathematics', 83, 'Biology', 37, 'physics', 66, '24-09-1990', 'Nasarawa', 'Numan', 'male', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749765', '903596FE'),
(143, 'AsPrestonputme@gmail.com', 'Augustus', 'Preston', 'Jet', 'Use of English', 61, 'Mathematics', 70, 'chemistry', 21, 'chemistry', 17, '30-08-1988', 'Niger', 'Shelleng', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749897', '903597DE'),
(144, 'LfDillardputme@gmail.com', 'Leif', 'Dillard', 'Zander', 'Use of English', 59, 'Mathematics', 79, 'physics', 30, 'physics', 29, '25-09-1988', 'Ogun', 'Song', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749820', '903598AV'),
(145, 'EsMcleanputme@gmail.com', 'Ellis', 'Mclean', 'Angel', 'Use of English', 88, 'Mathematics', 96, 'Biology', 87, 'chemistry', 72, '16-03-1992', 'Ondo', 'Toungo', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749807', '903599CE'),
(146, 'IoCorcoranputme@gmail.com', 'Isidro', 'Corcoran', 'Ulysses', 'Use of English', 51, 'Mathematics', 52, 'chemistry', 68, 'biology', 51, '20-10-1997', 'Osun', 'Yola North', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749988', '903600RG'),
(147, 'VnHuberputme@gmail.com', 'Vaughn', 'Huber', 'Zev', 'Use of English', 83, 'Mathematics', 51, 'physics', 40, 'physics', 40, '13-06-1986', 'Oyo', 'Yola South', 'male', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749772', '903601TE'),
(148, 'BxGregoryputme@gmail.com', 'Beatrix', 'Gregory', 'Bennett', 'Use of English', 65, 'Mathematics', 96, 'Biology', 39, 'biology', 98, '15-09-1991', 'Plateau', 'Makurdi', 'male', 'Natural and Applied Science', 'Microbiology', '', '23481585749845', '903602AS'),
(149, 'KnStahlputme@gmail.com', 'Kipton', 'Stahl', 'Caius', 'Use of English', 33, 'Mathematics', 77, 'chemistry', 89, 'physics', 26, '25-09-1988', 'Rivers', 'Obi', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749707', '903603DE'),
(150, 'LyAndradeputme@gmail.com', 'Lacey', 'Andrade', 'Jedidiah', 'Use of English', 66, 'Mathematics', 43, 'physics', 55, 'chemistry', 87, '16-03-1992', 'Sokoto', 'Ogbadibo', 'female', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749830', '903604AC'),
(151, 'CnBillingsputme@gmail.com', 'Cayden', 'Billings', 'Johnathon', 'Use of English', 74, 'Mathematics', 49, 'Biology', 76, 'physics', 59, '19-12-1986', 'Taraba', 'Ohimini', 'female', 'Natural and Applied Science', 'computer science', '', '23481585749828', '903605SD'),
(152, 'LiLoveputme@gmail.com', 'Lorelai', 'Love', 'Lucien', 'Use of English', 66, 'Mathematics', 76, 'chemistry', 65, 'chemistry', 78, '23-10-1991', 'Yobe', 'Oju', 'female', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749984', '903606BA'),
(153, 'BnBauerputme@gmail.com', 'Braiden', 'Bauer', 'Taylen', 'Use of English', 47, 'Mathematics', 100, 'physics', 38, 'biology', 75, '23-10-1991', 'Ekiti', 'Okpokwu', 'male', 'Natural and Applied Science', 'Geology and Mining', '', '23481585749858', '903607HG'),
(154, 'MlSamuelsputme@gmail.com', 'Mabel', 'Samuels', 'Joziah', 'Use of English', 39, 'Mathematics', 65, 'Biology', 51, 'physics', 29, '17-10-1987', 'Enugu', 'Oturkpo', 'male', 'Natural and Applied Science', 'computer science', '', '23481585749857', '903608SE'),
(155, 'HrTysonputme@gmail.com', 'Hunter', 'Tyson', 'Ruben', 'Use of English', 96, 'Mathematics', 95, 'chemistry', 63, 'biology', 43, '22-03-1997', 'Gombe', 'Tarka', 'female', 'Natural and Applied Science', 'Science and Lab. Tech', '', '23481585749741', '903609TY'),
(156, 'HrHuttonputme@gmail.com', 'Hunter', 'Hutton', 'Kalvin', 'Use of English', 40, 'Mathematics', 67, 'physics', 71, 'physics', 17, '29-09-1983', 'Imo', 'Ukum', 'female', 'Natural and Applied Science', 'Microbiology', '', '23481585749872', '903610AB'),
(157, 'BeLangeputme@gmail.com', 'Blaine', 'Lange', 'Kristopher', 'Use of English', 31, 'Mathematics', 41, 'Biology', 83, 'chemistry', 57, '19-01-2001', 'Jigawa', 'Ushongo', 'female', 'Natural and Applied Science', 'Plant science', '', '23481585749749', '903611AF'),
(158, 'DnBurkeputme@gmail.com', 'Dylan', 'Burke', 'Ashwin', 'Use of English', 78, 'Mathematics', 87, 'chemistry', 83, 'physics', 63, '29-09-1992', 'Kaduna', 'Vandeikya', 'male', 'Natural and Applied Science', 'Molecular Biology', '', '23481585749889', '903612EG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_utme_ssce_1`
--
ALTER TABLE `post_utme_ssce_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_application`
--
ALTER TABLE `student_application`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_utme_ssce_1`
--
ALTER TABLE `post_utme_ssce_1`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `student_application`
--
ALTER TABLE `student_application`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
