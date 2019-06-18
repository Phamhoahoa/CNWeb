-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2019 at 08:24 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teamwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `c_id` bigint(50) NOT NULL,
  `c_author_id` bigint(11) NOT NULL,
  `c_post_id` bigint(11) NOT NULL,
  `c_content` varchar(10000) CHARACTER SET utf8mb4 NOT NULL,
  `c_edited` int(11) NOT NULL DEFAULT '0',
  `c_time_edited` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `c_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`c_id`, `c_author_id`, `c_post_id`, `c_content`, `c_edited`, `c_time_edited`, `c_time`) VALUES
(1559837225, 991723115800150, 1559382256, 'v&acirc;ng ạ', 0, '', 1557900154),
(1560676956, 86673113963860, 1559382256, 'v&acirc;ng ạ', 0, '', 1557855287),
(1561269890, 86673113963860, 1562190544, '1', 0, '', 1557646019),
(1562986870, 548753115709260, 1559382256, 'C&aacute;c bạn lưu &yacute; l&agrave; mỗi nh&oacute;m nộp 10 c&acirc;u hỏi trắc nghiệm, theo mẫu ở file Excel trong thư mục chung của lớp nh&eacute;.', 0, '', 1557855273),
(1564692360, 411923115709820, 1559382256, 'ok ạ', 0, '', 1557855312);

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` bigint(11) NOT NULL,
  `uf_one` bigint(11) NOT NULL,
  `uf_two` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `uf_one`, `uf_two`) VALUES
(6, 272383115709950, 548753115709260),
(7, 991723115800150, 548753115709260);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(11) NOT NULL,
  `liker` bigint(11) NOT NULL,
  `post_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `liker`, `post_id`) VALUES
(32, 86673113963860, 1562190544),
(33, 86673113963860, 1559382256),
(34, 272383115709950, 1559382256),
(35, 991723115800150, 1559382256),
(36, 548753115709260, 1566370296);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `m_id` bigint(11) NOT NULL,
  `message` varchar(1538) CHARACTER SET utf8mb4 NOT NULL,
  `m_from` bigint(11) NOT NULL,
  `m_to` bigint(11) NOT NULL,
  `m_time` int(11) NOT NULL,
  `m_seen` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `m_id`, `message`, `m_from`, `m_to`, `m_time`, `m_seen`) VALUES
(2, 2528010235, '?????', 380673114057950, 86673113963860, 1557212933, 1),
(3, 1559697150, 'ok', 86673113963860, 380673114057950, 1557212944, 1),
(4, 2076413921, '=.=', 86673113963860, 380673114057950, 1557212955, 1),
(5, 1570311827, 'a nam lol', 676573114772830, 86673113963860, 1557386454, 1),
(6, 2017766333, 'haha', 676573114772830, 86673113963860, 1557386478, 1),
(7, 2129847564, 'Hi', 676573114772830, 86673113963860, 1557386481, 1),
(8, 2133190293, 'adfasdfasdfds', 86673113963860, 380673114057950, 1557437857, 1),
(9, 1673092318, 'aasdf', 380673114057950, 86673113963860, 1557437868, 1),
(10, 2425301593, 'adsfadf', 380673114057950, 86673113963860, 1557437871, 1),
(11, 2056526890, 'gg', 86673113963860, 380673114057950, 1557437879, 1),
(12, 2407315232, '????????', 380673114057950, 86673113963860, 1557813647, 1),
(13, 1684816531, 'ok', 86673113963860, 380673114057950, 1557813657, 1),
(14, 2268442692, 'Thưa thầy cho em hỏi. Nghỉ 3 buổi điểm danh trừ bao nhi&ecirc;u điểm ạ?', 272383115709950, 548753115709260, 1557855820, 1),
(15, 1573326165, 'Chắc k trừ đ&acirc;u em', 548753115709260, 272383115709950, 1557855833, 1),
(16, 1905332097, 'V&acirc;ng em c&aacute;m ơn thầy ạ', 272383115709950, 548753115709260, 1557855858, 1),
(17, 2005950735, 'em ch&agrave;o thầy', 991723115800150, 548753115709260, 1557900319, 1),
(18, 2365643921, 'ch&agrave;o em', 548753115709260, 991723115800150, 1557900330, 1),
(19, 2552073412, 'ok', 548753115709260, 991723115800150, 1557900350, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myclass`
--

CREATE TABLE `myclass` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `malop` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myclass`
--

INSERT INTO `myclass` (`id`, `name`, `malop`) VALUES
(10, 'Cong nghe Web va dich vu truc tuyen', '108534'),
(11, 'An toan va bao mat thong tin', '108528'),
(12, 'Co so du lieu nang cao', '108536');

-- --------------------------------------------------------

--
-- Table structure for table `mynotepad`
--

CREATE TABLE `mynotepad` (
  `main_id` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `author_id` bigint(11) NOT NULL,
  `note_title` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `note_content` varchar(10000) CHARACTER SET utf8mb4 NOT NULL,
  `note_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mynotepad`
--

INSERT INTO `mynotepad` (`main_id`, `id`, `author_id`, `note_title`, `note_content`, `note_time`) VALUES
(1, 1561754046, 86673113963860, 'b&agrave;i tập', 'hello', 1556982312);

-- --------------------------------------------------------

--
-- Table structure for table `mystudy`
--

CREATE TABLE `mystudy` (
  `class_id` int(11) NOT NULL,
  `id` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mystudy`
--

INSERT INTO `mystudy` (`class_id`, `id`) VALUES
(10, 86673113963860),
(10, 272383115709950),
(10, 411923115709820),
(10, 548753115709260),
(10, 991723115800150),
(11, 86673113963860),
(11, 272383115709950),
(12, 86673113963860),
(12, 272383115709950),
(12, 411923115709820);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `n_id` bigint(11) NOT NULL,
  `from_id` bigint(11) NOT NULL,
  `for_id` bigint(11) NOT NULL,
  `notifyType_id` bigint(11) NOT NULL,
  `notifyType` varchar(100) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `n_id`, `from_id`, `for_id`, `notifyType_id`, `notifyType`, `seen`, `time`) VALUES
(83, 2551535620, 86673113963860, 254263114242730, 1564054740, 'share', 0, 1557777151),
(84, 1872145052, 86673113963860, 254263114242730, 1564241296, 'share', 0, 1557777154),
(86, 1898009436, 86673113963860, 548753115709260, 1559382256, 'like', 1, 1557855282),
(87, 1701594531, 86673113963860, 548753115709260, 1559382256, 'comment', 1, 1557855287),
(88, 2319430243, 411923115709820, 548753115709260, 1559382256, 'comment', 1, 1557855312),
(89, 2228447735, 272383115709950, 548753115709260, 1559382256, 'like', 1, 1557855335),
(91, 1958033098, 272383115709950, 548753115709260, 272383115709950, 'follow', 1, 1557855757),
(92, 1636139211, 991723115800150, 548753115709260, 1559382256, 'like', 1, 1557900151),
(93, 2443130869, 991723115800150, 548753115709260, 1559382256, 'comment', 1, 1557900154),
(94, 1717474474, 548753115709260, 991723115800150, 1566370296, 'like', 1, 1557900299),
(95, 1794700758, 991723115800150, 548753115709260, 991723115800150, 'follow', 0, 1557900311);

-- --------------------------------------------------------

--
-- Table structure for table `r_star`
--

CREATE TABLE `r_star` (
  `id` bigint(11) NOT NULL,
  `u_id` bigint(11) NOT NULL,
  `p_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `main_id` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `post_id` bigint(11) NOT NULL,
  `user_saved_id` bigint(11) NOT NULL,
  `saved_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `main_id` int(11) NOT NULL,
  `id` bigint(50) NOT NULL,
  `Fullname` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `Username` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `Email` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `Password` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `followers` int(100) NOT NULL DEFAULT '0',
  `Userphoto` varchar(300) CHARACTER SET utf8mb4 NOT NULL,
  `user_cover_photo` varchar(300) CHARACTER SET utf8mb4 NOT NULL,
  `school` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `work` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `work0` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `country` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `birthday` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `verify` int(11) NOT NULL,
  `website` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `bio` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `admin` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `gender` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `login_attempts` int(11) NOT NULL,
  `language` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `aSetup` int(11) NOT NULL DEFAULT '0',
  `online` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`main_id`, `id`, `Fullname`, `Username`, `Email`, `Password`, `followers`, `Userphoto`, `user_cover_photo`, `school`, `work`, `work0`, `country`, `birthday`, `verify`, `website`, `bio`, `admin`, `gender`, `login_attempts`, `language`, `aSetup`, `online`) VALUES
(12, 86673113963860, 'hieu', 'hieu', 'hieu@gmail.com', '$2y$12$tnF7M7AQDi2DgIckRINZNekkmKzR1bIeGzp2RKEfHG2N3O3Lf7jfW', 1, '15577764491737593921.jpg', '15577764831314907380.jpg', 'a', 'a', 'a', 'Angola', '2019/01/01', 0, 'a', '', '2', 'Male', 1, 'English', 0, 0),
(17, 548753115709260, 'Do Ba Lam', 'Lam', 'Lam@gmail.com', '$2y$12$Bvk8N9gh4zfMXdyrZXvTLeapWHCmIe1DXyaKPWRra3XiKDoCHZUfS', 2, '15578547691883539100.png', '1557854851513630483.png', '', '', '', '', '', 1, '', '', '2', 'Male', 0, 'English', 0, 0),
(18, 411923115709820, 'Pham Thi Hoa', 'hoa', 'hoa@gmail.com', '$2y$12$lRK8V/.Ps5.pmberQ6oOdup9eVH2njnBY0pJZ2BYVG7IfN/S2j1ju', 0, 'user-female.png', '', '', '', '', '', '', 0, '', '', '', 'Female', 1, 'English', 0, 0),
(19, 272383115709950, 'Pham Duy Hieu', 'pdhieu', 'hieu.pd@gmail.com', '$2y$12$Il/M.mbwFdXOtOaQl1OZFu8jg8seKB0mjlUvAU6FpkyH4694oU1cG', 0, 'user-male.png', '', '', '', '', '', '', 0, '', '', '', 'Male', 0, 'English', 0, 0),
(20, 991723115800150, 'hieu3', 'hieu3', 'hieu3@gmail.com', '$2y$12$glrZultMlr38.2FH1QRurOISlU/OtiX64ZtMpdowdOYgiL54S2a9y', 0, 'user-male.png', '', '', '', '', '', '', 0, '', '', '', 'Male', 0, 'English', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supportbox`
--

CREATE TABLE `supportbox` (
  `id` int(11) NOT NULL,
  `r_id` bigint(11) NOT NULL,
  `from_id` bigint(11) NOT NULL,
  `for_id` bigint(11) NOT NULL,
  `r_type` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `subject` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `report` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `r_time` int(11) NOT NULL,
  `r_replay` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `r_replay_time` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supportbox`
--

INSERT INTO `supportbox` (`id`, `r_id`, `from_id`, `for_id`, `r_type`, `subject`, `report`, `r_time`, `r_replay`, `r_replay_time`, `status`) VALUES
(2, 2374471556, 86673113963860, 1559836376, 'post', '', '', 1557212766, '=&gt;&gt;', 0, 1),
(3, 1826855248, 86673113963860, 1559836376, 'post', '', '', 1557212772, 'dis', 0, 1),
(4, 2506703356, 86673113963860, 0, 'problem', 'ABC', 'a', 1557813769, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `typing_m`
--

CREATE TABLE `typing_m` (
  `id` bigint(11) NOT NULL,
  `t_from` bigint(11) NOT NULL,
  `t_to` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wpost`
--

CREATE TABLE `wpost` (
  `post_id` bigint(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `author_id` bigint(11) NOT NULL,
  `post_img` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `post_time` int(11) NOT NULL,
  `post_content` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `p_title` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `p_likes` int(100) NOT NULL DEFAULT '0',
  `p_privacy` int(11) NOT NULL DEFAULT '0',
  `shared` varchar(1000) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wpost`
--

INSERT INTO `wpost` (`post_id`, `class_id`, `author_id`, `post_img`, `post_time`, `post_content`, `p_title`, `p_likes`, `p_privacy`, `shared`) VALUES
(1558749049, 2, 86673113963860, '', 1557776356, 'aaaa', '', 0, 0, ''),
(1559382256, 10, 548753115709260, '', 1557855235, 'Chào các bạn, thầy gửi các thông tin về BTL.\r\n[Về bảo vệ]\r\nMỗi nhóm có 20 phút, bao gồm trình bày slide và demo chương trình 10-15 phút + hỏi-đáp 5-10 phút.\r\nCó điểm danh những hôm bảo vệ.\r\n\r\n[Thứ tự bảo vệ]\r\nhttps://docs.google.com/…/1CQW2JjUJi2TVARCl38Zz9ADAc7…/edit…\r\nBắt đầu bảo vệ vào thứ 6 (10/5)\r\n\r\n[Tiêu chí đánh giá liên quan tới BTL]\r\n1. Chất lượng báo cáo, bài trình bày slide, và việc upload tài liệu lên thư mục BTL có trước hạn không (xem phần Nộp BTL bên dưới). Báo cáo và slide các bạn IN RA, không cần in mầu, không cần đóng bìa bóng kính.\r\n2. Chất lượng chương trình, khối lượng công việc, giao diện chương trình, công nghệ được sử dụng. Thầy sẽ hỏi việc hiểu code và yêu cầu chỉnh sửa code cho thành viên phụ trách đoạn mã code đó (liên quan tới tiêu chí - phân công công việc).\r\n3. Phân công công việc có hợp lý không, có nhật ký làm việc nhóm để kiểm tra không (trello, github..)\r\n4. Chất lượng câu trả lời\r\n5. Điểm BTL là chung cho tất cả thành viên trong nhóm. Tuy nhiên vẫn có thể có sự khác biệt giữa các thành viên. Khi một nhóm lên trình bày, các bạn SV bên dưới có thể đặt câu hỏi. Câu hỏi hay thì bạn đặt câu hỏi sẽ được cộng điểm. Ngoài ra căn cứ vào việc điểm danh để cộng/trừ điểm, nên điểm Quá trình giữa các thành viên trong nhóm sẽ có thể khác nhau.\r\n\r\n[Về nộp BTL]\r\nTất cả các nhóm tạo thư mục BTL trên thư mục dành riêng cho nhóm và upload các tài liệu sau lên thư mục BTL: \r\n1. File báo cáo (docx hoặc pdf) trình bày về hệ thống nhóm xây dựng, các công nghệ được sử dụng, phân công công việc\r\n2. File 10 câu hỏi TRẮC NGIỆM, theo mẫu trong thư mục của lớp. File này không cần in ra.\r\n3. Chương trình - đóng gói mã nguồn.\r\n4. Slide trình bày (pptx, hoặc pdf). \r\n', 'Hạn nộp là trước 0h sáng trong buổi bảo vệ của nhóm.', 3, 0, ''),
(1560172952, 2, 86673113963860, '', 1557642322, '2 test\r\n', '', 0, 0, ''),
(1560407513, 4, 86673113963860, '', 1557776341, 'what', '', 0, 0, ''),
(1562128674, 3, 86673113963860, '', 1557642847, '3test\r\n', '', 1, 0, ''),
(1564007860, 10, 991723115800150, '', 1557900247, 'Giải bài này hộ tớ', '', 0, 0, ''),
(1564054740, 0, 86673113963860, '', 1557777151, '', '', 0, 0, '1567012468'),
(1564241296, 0, 86673113963860, '', 1557777154, '', '', 0, 0, '1567012468'),
(1564448870, 4, 86673113963860, '', 1557776373, 'webb', '', 0, 0, ''),
(1564744337, 2, 86673113963860, '', 1557776320, 'what if', '', 0, 0, ''),
(1565363103, 1, 86673113963860, '', 1557642312, '1 test', '', 1, 0, ''),
(1566370296, 10, 991723115800150, 'user_post_img/15579002881980876234.jpg', 1557900288, 'ooooo', 'giúp t bài này', 1, 0, ''),
(1566589882, 0, 86673113963860, '', 1557777155, '', '', 0, 0, '1558749049');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myclass`
--
ALTER TABLE `myclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mynotepad`
--
ALTER TABLE `mynotepad`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `mystudy`
--
ALTER TABLE `mystudy`
  ADD PRIMARY KEY (`class_id`,`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_star`
--
ALTER TABLE `r_star`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved`
--
ALTER TABLE `saved`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `supportbox`
--
ALTER TABLE `supportbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typing_m`
--
ALTER TABLE `typing_m`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wpost`
--
ALTER TABLE `wpost`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `c_id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1564692361;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `myclass`
--
ALTER TABLE `myclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mynotepad`
--
ALTER TABLE `mynotepad`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `r_star`
--
ALTER TABLE `r_star`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved`
--
ALTER TABLE `saved`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `supportbox`
--
ALTER TABLE `supportbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `typing_m`
--
ALTER TABLE `typing_m`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mystudy`
--
ALTER TABLE `mystudy`
  ADD CONSTRAINT `f1` FOREIGN KEY (`class_id`) REFERENCES `myclass` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
