-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 01:38 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Admin@123', ''),
(2, 'akash', 'Akash@123', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(4, 'Ayurveda', 5, 7, 8050, '2020-12-14', '08:41', '2020-12-12 03:11:05', 1, 1, ''),
(5, 'General Physician', 3, 7, 1200, '2020-12-23', '00:44', '2020-12-12 03:11:53', 1, 1, ''),
(6, 'Homeopath', 2, 13, 600, '2021-04-14', '17:45', '2021-04-02 12:14:49', 0, 1, ''),
(7, 'Homeopath', 4, 13, 700, '2021-04-16', '05:50', '2021-04-02 12:20:59', 1, 1, ''),
(8, 'Homeopath', 2, 14, 600, '2021-04-14', '01:17', '2021-04-03 04:47:27', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj@gmail.com', 'Anuj@123', '2020-12-14 00:07:25', ''),
(2, 'Homeopath', 'Raj', 'Varanasi', '600', 2147483647, 'raj@gmail.com', 'Raj@123', '2020-12-14 00:07:25', ''),
(3, 'General Physician', 'Nitesh ', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'Nitesh@123', '2020-12-14 00:07:25', ''),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 999999999, 'vijay@gmail.com', 'Vijay@123', '2020-12-14 00:07:25', ''),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'Sanjeev@123', '2020-12-14 00:07:25', ''),
(6, 'General Physician', 'Rakesh', 'New Delhi India', '2500', 45497964, 'rakesh@gmail.com', 'Rakesh@123', '2020-12-14 00:07:25', ''),
(12, 'Ear-Nose-Throat (Ent) Specialist\r\n', 'Ansh', 'Rajkot', '10000', 43534543, 'ansh@gmail.com', 'Ansh123@', '2020-12-12 06:45:35', ''),
(13, 'Demo test', 'demo', 'demo', '1000', 324324, 'demo@gmail.com', 'e14c05f0dc27e6be1fc127abaf474a59', '2020-12-12 04:13:13', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(18, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:19:25', '', 0),
(19, 0, 'ansh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:19:55', '', 0),
(20, 0, 'ansh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:23:29', '', 0),
(21, 0, 'ansh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:23:46', '', 0),
(22, 0, 'ansh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:23:58', '', 0),
(23, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:24:20', '', 0),
(24, 0, 'ansh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:26:58', '', 0),
(25, 0, 'ansh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:27:07', '', 0),
(26, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:27:19', '', 0),
(27, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:27:56', '', 0),
(28, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:28:59', '', 0),
(29, 0, 'ansh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:29:07', '', 0),
(30, 0, 'ansh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:29:18', '', 0),
(31, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:30:26', '', 0),
(32, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2020-12-12 03:31:23', '', 0),
(33, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2020-12-12 03:31:39', '', 0),
(34, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:32:34', '', 0),
(35, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:40:29', '', 0),
(36, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 06:53:43', '', 0),
(37, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 06:53:54', '', 0),
(38, 0, 'nitesh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 06:54:13', '', 0),
(39, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 06:54:57', '', 0),
(40, 0, 'fdsf', 0x3a3a3100000000000000000000000000, '2020-12-13 06:57:34', '', 0),
(41, 0, 'anuj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-27 04:54:39', '', 0),
(42, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:16:03', '02-04-2021 05:46:24 PM', 0),
(43, 0, 'Raj', 0x3a3a3100000000000000000000000000, '2021-04-02 12:18:08', '02-04-2021 05:48:29 PM', 0),
(44, 0, 'Raj', 0x3a3a3100000000000000000000000000, '2021-04-02 12:19:19', '02-04-2021 05:49:33 PM', 0),
(45, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:21:48', '02-04-2021 05:52:03 PM', 0),
(46, 0, 'vijay@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:22:25', '02-04-2021 06:02:54 PM', 0),
(47, 0, 'vijay@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-03 04:03:32', '', 0),
(48, 0, 'test@demo.com ', 0x3a3a3100000000000000000000000000, '2021-04-03 04:04:59', '', 0),
(49, 0, 'nitesh@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-03 04:07:55', '', 0),
(50, 0, 'nitesh@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-03 04:08:11', '', 0),
(51, 0, 'Nitesh', 0x3a3a3100000000000000000000000000, '2021-04-03 04:08:46', '', 0),
(52, 0, 'Raj', 0x3a3a3100000000000000000000000000, '2021-04-03 04:09:07', '', 0),
(53, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-03 04:09:30', '', 0),
(54, 0, 'vijay@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-03 04:14:04', '03-04-2021 09:44:16 AM', 0),
(55, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-03 04:19:54', '', 0),
(56, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-03 04:49:34', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2020-12-12 00:07:25', ''),
(2, 'General Physician', '2020-12-12 00:07:25', ''),
(3, 'Dermatologist', '2020-12-12 00:07:25', ''),
(4, 'Homeopath', '2020-12-12 00:07:25', ''),
(5, 'Ayurveda', '2020-12-12 00:07:25', ''),
(6, 'Dentist', '2020-12-12 00:07:25', ''),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2020-12-12 00:07:25', ''),
(9, 'Demo test', '2020-12-12 00:07:25', ''),
(10, 'Bones Specialist demo', '2020-12-12 00:07:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(17, 0, 'Ram', 0x3a3a3100000000000000000000000000, '2020-12-12 03:10:21', '', 0),
(18, 7, 'ram@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-12 03:10:38', '12-12-2020 08:46:12 AM', 1),
(19, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 04:21:44', '', 0),
(20, 8, 'raj12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 04:23:02', '', 1),
(21, 0, 'raj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 06:19:53', '', 0),
(22, 8, 'raj12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 06:20:07', '', 1),
(23, 0, 'asa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-26 10:16:12', '', 0),
(24, 0, 'asa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-26 10:16:36', '', 0),
(25, 10, 'asa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-26 10:18:37', '', 1),
(26, 11, 'ansh123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 11:49:33', '', 1),
(27, 0, 'ansh@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:02:32', '', 0),
(28, 0, 'ansh123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:02:46', '', 0),
(29, 0, 'ansh@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:02:57', '', 0),
(30, 0, 'ansh123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:03:12', '', 0),
(31, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:03:40', '', 0),
(32, 0, 'ansh123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:04:13', '', 0),
(33, 0, 'ansh123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:04:23', '', 0),
(34, 0, 'jaydip@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:06:13', '', 0),
(35, 0, 'jaydip@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:06:18', '', 0),
(36, 0, 'jaydip@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:06:31', '', 0),
(37, 0, 'jaydip@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:07:08', '', 0),
(38, 0, 'jaydip@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:08:59', '', 0),
(39, 13, 'raj123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:10:12', '', 1),
(40, 13, 'raj123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:12:01', '02-04-2021 05:45:05 PM', 1),
(41, 0, 'jaydip@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:19:58', '', 0),
(42, 0, 'jaydip@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:20:06', '', 0),
(43, 13, 'raj123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-02 12:20:26', '02-04-2021 05:51:05 PM', 1),
(44, 14, 'sankit@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-03 04:46:17', '03-04-2021 10:17:39 AM', 1),
(45, 14, 'sankit@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-04 03:29:11', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Akash', 'Falal', 'jamana', 'male', 'agravatakash1212@gmail.com', 'b8a0314a6d29e1d55987873fe564aaa5', '2020-12-11 03:58:10', ''),
(7, 'Ram', 'delhi', 'delhi', 'male', 'ram@gmail.com', 'b04d6c7efa125fc28ece9ebc04967a8c', '2020-12-12 03:10:02', ''),
(8, 'raj', 'sasd', 'dsad', 'male', 'raj12@gmail.com', 'f8d53959da9bc156492d1a3f66e5c9d1', '2020-12-13 04:22:35', ''),
(10, 'Asa', 'sa', 'sada', 'female', 'asa@gmail.com', '03b1a500a9d1374cefefaf17a7f4d454', '2021-02-26 10:18:13', ''),
(11, 'Ansh', 'Rajkot', 'Ahemdabad', 'male', 'ansh123@gmail.com', 'c4281f99157106d42c3486f9fe5bb03a', '2021-04-02 11:49:07', ''),
(12, 'Jaydip', 'rah', 'raj', 'male', 'jaydip@gmail.com', 'Jaydip@123', '2021-04-02 12:05:09', ''),
(13, 'raj', 'Rajkot', 'JAMNAGAR', 'male', 'raj123@gmail.com', '56cfb46bd49b787e005f18fa92c33465', '2021-04-02 12:09:47', ''),
(14, 'Sankit', 'Rajkot', 'Rajkot', 'male', 'sankit@gmail.com', '242f451ce33a38283c08aca64eb65aa4', '2021-04-03 04:45:36', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
