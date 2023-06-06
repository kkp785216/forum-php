-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql309.byetcluster.com
-- Generation Time: Jun 06, 2023 at 03:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_31392867_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `sno` int(11) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` text NOT NULL,
  `category_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`sno`, `category_id`, `category_name`, `category_description`, `category_created`) VALUES
(1, 'python', 'Python', 'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small- and large-scale projects.', '2022-03-30 17:31:38'),
(2, 'javascript', 'JavaScript', 'JavaScript, often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. Over 97% of websites use JavaScript on the client side for web page behavior, often incorporating third-party libraries.', '2022-03-30 17:32:18'),
(3, 'java', 'Java', 'Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.', '2022-03-30 17:32:46'),
(4, 'typescript', 'TypeScript', 'TypeScript is a programming language developed and maintained by Microsoft. It is a strict syntactical superset of JavaScript and adds optional static typing to the language. TypeScript is designed for the development of large applications and transcompiles to JavaScript.', '2022-03-30 17:31:38'),
(5, 'html', 'Html', 'The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets and scripting languages such as JavaScript.', '2022-03-31 16:14:15'),
(6, 'css', 'CSS', 'Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.', '2022-03-31 16:14:40'),
(7, 'django', 'Django', 'Django is a Python-based free and open-source web framework that follows the model–template–views architectural pattern. It is maintained by the Django Software Foundation, an independent organization established in the US as a 501 non-profit.', '2022-03-31 16:44:13'),
(8, 'flask', 'Flask', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions.', '2022-03-31 16:44:49'),
(9, 'react', 'React', 'React is a free and open-source front-end JavaScript library for building user interfaces based on UI components. It is maintained by Meta and a community of individual developers and companies.', '2022-03-31 16:45:25'),
(10, 'bootstrap', 'Bootstrap', 'Bootstrap is a free and open-source CSS framework directed at responsive, mobile-first front-end web development. It contains HTML, CSS and JavaScript-based design templates for typography, forms, buttons, navigation, and other interface components.', '2022-04-05 17:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_desc` text NOT NULL,
  `thread_id` int(11) NOT NULL,
  `comment_user_id` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_desc`, `thread_id`, `comment_user_id`, `date`) VALUES
(1, 'Ek kaam karo ki python ke official website pe chale jaoo aur waha se download karo install ho jayega. apne system ke hisab se 32 bit ya fir 64 bit wala version download kar lena. ', 1, 'fad@gmail.com', '2022-04-03 10:08:32'),
(2, 'First install node js and open terminal and type node. after that npm install python. that\'s is your python will be installed.', 1, 'kkp785216@gmail.com', '2022-04-03 10:24:34'),
(3, 'Reinstall python.', 1, 'kkp785216@gmail.com', '2022-04-03 10:57:06'),
(6, 'Laoo mai install kardu 😃😀😉', 1, 'kkp785216@gmail.com', '2022-04-03 11:15:23'),
(7, 'Hello body do the google your query and find the solution.', 10, 'manish@gmail.com', '2022-04-03 12:18:02'),
(8, 'Hello there how are you haha', 1, 'manish@gmail.com', '2022-04-03 16:52:51'),
(9, 'ek kaam karo ye run karlo samsjh gaye n', 1, 'kkp785216@gmail.com', '2022-04-04 12:19:50'),
(14, 'let url = \"example.com\";\r\nfetch( url );\r\n    .then( );\r\n    .then( );', 3, 'kkp785216@gmail.com', '2022-04-04 16:13:45'),
(17, '<script>alert(\"hello\")</script>', 3, 'kkp785216@gmail.com', '2022-04-04 16:18:34'),
(22, '<script>hello</script>', 1, 'kkp785216@gmail.com', '2022-04-04 20:02:29'),
(23, 'your overflow has been fixed now', 10, 'kkp785216@gmail.com', '2022-04-05 11:35:09'),
(24, '2u3', 1, 'kkp785216@gmail.com', '2022-04-28 02:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `sno` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`sno`, `first_name`, `last_name`, `email`, `phone`, `message`, `date`) VALUES
(1, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '8858899958', 'Hello this is krishna kumar prajapati.', '2022-03-31 12:02:25'),
(2, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '09044388872', '', '2022-03-31 12:16:38'),
(3, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '09044388872', '', '2022-03-31 12:18:16'),
(4, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '09044388872', '', '2022-03-31 12:21:28'),
(6, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '424545', '546456546', '2022-03-31 12:22:00'),
(7, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '424545', '546456546', '2022-03-31 12:22:49'),
(8, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '424545', '546456546', '2022-03-31 12:23:10'),
(9, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '424545', '546456546', '2022-03-31 12:23:55'),
(10, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '424545', '', '2022-03-31 12:25:01'),
(11, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '424545', '546456546', '2022-03-31 12:27:32'),
(12, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '424545', '546456546', '2022-03-31 12:27:36'),
(13, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '424545', '546456546', '2022-03-31 12:29:42'),
(14, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '424545', '546456546', '2022-03-31 12:29:54'),
(15, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '+918858899958', 'Hello this is krishna', '2022-03-31 15:26:18'),
(16, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '+918858899958', 'Hello this is krishna', '2022-03-31 15:27:52'),
(17, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '+918858899958', 'Hello this is krishna', '2022-03-31 15:28:45'),
(18, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '+918858899958', 'Hello this is krishna', '2022-03-31 15:28:50'),
(19, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '+918858899958', 'fghfghdfg', '2022-03-31 15:29:19'),
(20, 'Krishna', 'Prajapati', 'kkp785216@gmail.com', '+918858899958', 'asdfasdfsdfa', '2022-04-01 11:35:56'),
(21, 'Rama', 'Ho Rama', 'ram@gmail.com', '654654654', 'I am bhagwan.', '2022-04-01 11:36:27'),
(23, 'Krishna', 'Prajapati', 'kkp785215@gmail.com', '+917800346364', 'Wow amazing website.', '2022-04-03 23:43:42'),
(24, 'Kanhaiya', 'Prajapati', 'kanhaiya277501@gmail.com', '09044388872', 'Hello this is krishna.', '2022-04-04 10:45:50'),
(25, 'Kanhaiya', 'Prajapati', 'kanhaiya277501@gmail.com', '09044388872', 'Hello this is krishna.', '2022-04-04 10:45:53'),
(26, 'Kanhaiya', 'Prajapati', 'kanhaiya277501@gmail.com', '09044388872', 'Hello this is krishna.', '2022-04-04 10:45:56'),
(27, 'Kanhaiya', 'Prajapati', 'kanhaiya277501@gmail.com', '09044388872', 'Hello this is krishna.', '2022-04-04 10:45:59'),
(28, 'Kanhaiya', 'Prajapati', 'kanhaiya277501@gmail.com', '09044388872', 'sdfsdf', '2022-04-04 10:49:14'),
(29, 'Kanhaiya', 'Prajapati', 'kanhaiya277501@gmail.com', '09044388872', 'asdfasdfsdfdsf', '2022-04-04 11:19:10'),
(30, 'Krishna', 'Prajapati', 'kkp785215@gmail.com', '+917800346364', 'Hii', '2022-04-05 09:24:42'),
(31, 'Hhj', 'Hhjj', 'hsjjs@r83js.dkkd', '1234567890', '123', '2022-04-05 10:01:04'),
(32, 'Krishna', 'Prajapati', 'kkp785215@gmail.com', '+917800346364', 'Fdd', '2022-04-08 09:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `myusers`
--

CREATE TABLE `myusers` (
  `sno` int(11) NOT NULL,
  `first_name` varchar(16) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myusers`
--

INSERT INTO `myusers` (`sno`, `first_name`, `last_name`, `email`, `password`, `date`) VALUES
(1, 'Krishna', 'Kumar', 'kkp785216@gmail.com', '$2y$10$qSwotp5uTOL9GfP.JZDZTult.cPHMLEyC6w4uG6Spvgh3iu1Rv/Bm', '2022-03-31 01:22:58'),
(2, 'Fad', 'Magician', 'fad@gmail.com', '$2y$10$621ww93pgFIXoP5V3vneD.HS7fdFUv7nXJVc1naK23RhV9A2SG0qG', '2022-03-31 09:36:16'),
(3, 'Manish', 'Kumar', 'manish@gmail.com', '$2y$10$orwD/RZuOUfu.TJJMuFjbuOTkUJCpoOHRnO2XGNJfXXpGNpfyeFCO', '2022-04-03 12:17:11'),
(4, 'Alan', 'Walker', 'alanwalker@gmail.com', '$2y$10$ODt5dPvsT/Zc27w.kcY8R.n94ivjuBvZ8YYiBaLT0v68vtO7Q.Une', '2022-04-05 09:30:52'),
(5, 'Shivam ', 'Yadav', 'official.mrunknowngamer@gmail.com', '$2y$10$TYdYZ/qVIQjHx0NmtOOKk.XIqYlucTX9eHPo/mVHHnxDF6ZwiWZ1K', '2022-04-08 10:13:04'),
(6, 'God', 'Devta', 'kkp785213@gmail.com', '$2y$10$yw5ph74f2oJTFrMF1Bq29OMY4fG4Bt8ldav2DLdQhLOdcR.3zYev.', '2022-05-09 12:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(11) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` varchar(255) NOT NULL,
  `thread_user_id` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `date`) VALUES
(1, 'Unable to install python in my local computer.', 'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation.', 'python', 'kkp785216@gmail.com', '2022-04-01 12:36:04'),
(2, 'Not able to use python.', 'Please help me.', 'python', 'fad@gmail.com', '2022-04-01 14:18:15'),
(3, 'How to use fetch api in JavaScript', 'I want to fetch a url Please help me.', 'javascript', 'kkp785216@gmail.com', '2022-04-01 17:04:10'),
(4, 'How do I change the text overflow to ellipsis when there is no space', 'I have a container with some text and a button as seen below. The text on the top of the container is dynamic. It will be short sometimes or longer.\r\n\r\nOn larger screens it will have enough space to contain all the elements I want even if the text breaks into a second line as seen on the first row of the image below. (Not more than that).\r\n\r\nOn smaller screens, it can\'t even break into a second line because it won\'t have the height to contain everything.', 'css', 'fad@gmail.com', '2022-04-01 17:26:55'),
(5, 'How to use flex box alignment.', 'I need to align two text vertically so how can I do it please help me.', 'css', 'kkp785216@gmail.com', '2022-04-02 22:46:13'),
(6, 'Should I learn java as a beganer.', 'My intersts in computer so I am thinking to do the coding. So which language should I learn first?', 'java', 'kkp785216@gmail.com', '2022-04-02 23:09:18'),
(7, 'Problem download java.', 'Java faild to install in my pc. why this happining plz help me.', 'java', 'kkp785216@gmail.com', '2022-04-02 23:11:11'),
(8, 'How to use data object in JavaScript?', 'I used date = new Date( );\r\nbut there is a problem I need to print january but it prints 0 for january.', 'javascript', 'kkp785216@gmail.com', '2022-04-02 23:13:57'),
(9, 'How to install python in linux?', 'how can I install latest python in ubontu linux machine?', 'python', 'kkp785216@gmail.com', '2022-04-02 23:25:19'),
(10, 'I want to fix overflow', 'https://www.google.com/search?q=I+have+a+container+with+some+text+and+a+button+as+seen+below.+The+text+on+the+top+of+the+container+is+dynamic.+It+will+be+short+sometimes+or+longer.+On+larger+screens+it+will+have+enough+space+to+contain+all+the+elements+I+want+even+if+the+text+breaks+into+a+second+line+as+seen+on+the+first+row+of+the+image+below.+(Not+more+than+that).+On+smaller+screens%2C+it+can%27t+even+break+into+a+second+line+because+it+won%27t+have+the+height+to+contain+everything.&oq=I+have+a+container+with+some+text+and+a+button+as+seen+below.+The+text+on+the+top+of+the+container+is+dynamic.+It+will+be+short+sometimes+or+longer.+On+larger+screens+it+will+have+enough+space+to+contain+all+the+elements+I+want+even+if+the+text+breaks+into+a+second+line+as+seen+on+the+first+row+of+the+image+below.+(Not+more+than+that).+On+smaller+screens%2C+it+can%27t+even+break+into+a+second+line+because+it+won%27t+have+the+height+to+contain+everything.&aqs=chrome..69i57j69i64l3.959j0j4&sourceid=chrome&ie=UTF-8', 'css', 'kkp785216@gmail.com', '2022-04-03 12:05:02'),
(12, 'How to use Html', 'I wana learn web html anyone suggest me the best course for web devlopment.', 'html', 'manish@gmail.com', '2022-04-03 12:33:51'),
(13, 'How to add href attribute in a tag', 'I wana learn web html anyone suggest me the best course for web devlopment.\r\nI wana learn web html anyone suggest me the best course for web devlopment.\r\nI wana learn web html anyone suggest me the best course for web devlopment.', 'html', 'manish@gmail.com', '2022-04-03 17:44:22'),
(35, 'How to use pygame on python', 'I want to use pygame in python plz help me', 'python', 'alanwalker@gmail.com', '2022-04-05 09:31:48'),
(36, 'How to use pygame on python', 'I want to use pygame in python plz help me', 'python', 'alanwalker@gmail.com', '2022-04-05 09:32:22'),
(37, 'Unable to use python', 'Hii', 'python', 'kkp785216@gmail.com', '2022-05-09 12:27:13'),
(38, 'Huluaa dhakel', 'Hahahahha', 'python', 'kkp785216@gmail.com', '2022-05-16 01:03:44'),
(39, 'Heruru', 'Sysyey', 'javascript', 'kkp785216@gmail.com', '2022-06-13 09:42:48'),
(40, 'How to run this?', 'console.log(\"this is krishna\")', 'django', 'kkp785216@gmail.com', '2022-12-07 09:44:39'),
(41, 'How to run this?', 'console.log(\"this is krishna\")', 'django', 'kkp785216@gmail.com', '2022-12-07 09:44:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `category_id` (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `myusers`
--
ALTER TABLE `myusers`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `myusers`
--
ALTER TABLE `myusers`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
