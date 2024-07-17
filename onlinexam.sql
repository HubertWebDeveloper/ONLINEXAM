-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2024 at 02:51 PM
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
-- Database: `onlinexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(191) NOT NULL,
  `course_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_title`) VALUES
(3, 'CISY 104', 'Analog Electronics'),
(4, 'CISY 111', 'Structured Programming'),
(5, 'CISY 221', 'Database Management Systems'),
(6, 'CISY 222', 'Systems Analysis And Design'),
(7, 'MATH 103', 'Calcuus 1'),
(8, 'MATH 132', 'Probability and Statistics I');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `class` varchar(191) NOT NULL,
  `examTitle` varchar(191) NOT NULL,
  `questions` text NOT NULL,
  `answers` text NOT NULL,
  `questionMarks` int(2) NOT NULL,
  `images` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `class`, `examTitle`, `questions`, `answers`, `questionMarks`, `images`, `date`, `status`, `type`) VALUES
(39, 'Database Management Systems', 'Software development exam1 ', 'How do you insert an image in the HTML webpage?', '<!DOCTYPE html>\r\n\r\n<html>\r\n\r\n  <body>\r\n\r\n    <h2>HTML Image Example</h2>\r\n\r\n    <img src=\"tulip.jpeg\" />\r\n\r\n  </body>\r\n\r\n</html>', 5, '', '2024-07-17', 'activated', 'practical'),
(40, 'Database Management Systems', 'Software development exam1 ', ' How would you display the given table on an HTML webpage?', '<table>\r\n\r\n  <tr>\r\n\r\n    <td>50 pcs</td>\r\n\r\n    <td>100</td>\r\n\r\n    <td>500</td>\r\n\r\n  </tr>\r\n\r\n  <tr>\r\n\r\n    <td>10 pcs</td>\r\n\r\n    <td>5</td>\r\n\r\n    <td>50</td>\r\n\r\n  </tr>\r\n\r\n</table>', 10, '2024-07-15 16_00_07-Top 55+ HTML Interview Questions.png', '2024-07-17', 'activated', 'practical'),
(41, 'Database Management Systems', 'Software development exam1 ', 'Differentiate between an Ordered list and an Unordered list?', '<!DOCTYPE html>\r\n\r\n<html>\r\n\r\n  <body>\r\n\r\n    <h2>HTML List Example</h2>\r\n\r\n    <ul>\r\n\r\n      <li>Coffee</li>\r\n\r\n      <li>Tea</li>\r\n\r\n      <li>Milk</li>\r\n\r\n    </ul>\r\n\r\n    <ol>\r\n\r\n      <li>Coffee</li>\r\n\r\n      <li>Tea</li>\r\n\r\n      <li>Milk</li>\r\n\r\n    </ol>\r\n\r\n  </body>\r\n\r\n</html>', 10, '2024-07-15 16_00_07-Top 55+ HTML Interview Questions & Answers in 2024.png', '2024-07-17', 'activated', 'practical');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL,
  `exam_title` varchar(191) NOT NULL,
  `exam_code` varchar(191) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `total_marks` int(50) NOT NULL,
  `examMarks` int(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `exam_title`, `exam_code`, `reg_no`, `total_marks`, `examMarks`, `status`, `Date`) VALUES
(6, 'Software development exam1 ', 'CISY 221', 'CIS-2-2222-2/2024', 6, 25, 'approved', '2024-07-17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `RegNo` varchar(191) NOT NULL,
  `fullname` varchar(191) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(191) NOT NULL,
  `courseList` varchar(255) NOT NULL,
  `password` varchar(191) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `is_logged_in` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `RegNo`, `fullname`, `phone`, `email`, `courseList`, `password`, `user_type`, `status`, `is_logged_in`) VALUES
(3, '', 'hubert Developer', '0742241398', 'hhirwa1390@stu.ke', '', 'Admin123!', 'admin', 'approved', 0),
(4, 'cjdjd', 'hubert hirwa', '0781794795', 'hirwa1998.hubert@gmail.com', '[\"computer science\",\"physical\"]', '12', 'student', 'approved', 0),
(8, 'CIS-1-1230-3/2024', 'hubert hirwa', '0781794795', 'juwimana@gmail.com', '[\"Probability and Statistics I\",\"Calcuus 1\",\"Systems Analysis And Design\",\"Database Management Systems\",\"Structured Programming\",\"Analog Electronics\"]', '123', 'student', 'pending', 0),
(9, 'CIS-1-1111-1/2024', 'new user text', '938336633', 'new@gmail.com', '[\"Probability and Statistics I\",\"Calcuus 1\",\"Systems Analysis And Design\",\"Database Management Systems\",\"Structured Programming\",\"Analog Electronics\"]', '1234', 'student', 'approved', 0),
(11, 'CIS-2-2222-2/2024', 'new user', '72722727', 'user@gmail.com', '[\"Probability and Statistics I\",\"Calcuus 1\",\"Database Management Systems\",\"Structured Programming\",\"Analog Electronics\"]', '12', 'student', 'approved', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_results`
--

CREATE TABLE `user_results` (
  `id` int(11) NOT NULL,
  `student_reg` varchar(191) NOT NULL,
  `exam_code` varchar(191) NOT NULL,
  `exam_title` varchar(191) NOT NULL,
  `questions` text NOT NULL,
  `answers` text NOT NULL,
  `completed_date` datetime NOT NULL,
  `comment` text NOT NULL,
  `examType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_results`
--

INSERT INTO `user_results` (`id`, `student_reg`, `exam_code`, `exam_title`, `questions`, `answers`, `completed_date`, `comment`, `examType`) VALUES
(127, 'CIS-2-2222-2/2024', 'CISY 221', 'Software development exam1 ', 'How do you insert an image in the HTML webpage?', '<img arc=\"image.png\" alt=\"\">', '2024-07-17 14:39:14', 'thank you sir', 'practical'),
(128, 'CIS-2-2222-2/2024', 'CISY 221', 'Software development exam1 ', ' How would you display the given table on an HTML webpage?', '<table>\r\n    <tr>\r\n        <td>\r\n            5pcs\r\n        </td>\r\n        <td>\r\n            10\r\n        </td>\r\n        <td>\r\n            5\r\n        </td>\r\n    </tr>\r\n</table>', '2024-07-17 14:39:14', 'thank you sir', 'practical'),
(129, 'CIS-2-2222-2/2024', 'CISY 221', 'Software development exam1 ', 'Differentiate between an Ordered list and an Unordered list?', 'i dont know ', '2024-07-17 14:39:14', 'thank you sir', 'practical');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_results`
--
ALTER TABLE `user_results`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_results`
--
ALTER TABLE `user_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
