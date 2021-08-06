-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 21, 2019 at 08:49 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `abid` int(11) NOT NULL AUTO_INCREMENT,
  `abname` varchar(100) NOT NULL,
  `abdetail` text NOT NULL,
  `abimage` varchar(500) NOT NULL,
  PRIMARY KEY (`abid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`abid`, `abname`, `abdetail`, `abimage`) VALUES
(1, 'Who we are to Serave', 'inappropriate behavior is often laughed off as â€œboys will be boys,â€ women face higher conduct standards especially in the workplace. Thatâ€™s why itâ€™s crucial that, as women, our behavior on the job is beyond reproach.\r\n\r\ninappropriate behavior is often laughed off as â€œboys will be boys,â€ women face higher conduct standards especially in the workplace. Thatâ€™s why itâ€™s crucial that, as women, our behavior on the job is beyond reproach. inappropriate behavior is often laughed off as â€œboys will be boys,â€ women face higher conduct standards especially in the workplace. Thatâ€™s why itâ€™s crucial that, as women, our behavior on the job is beyond reproach. ', 'about/6a00e54ee3905b883301b7c6fe3354970.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `aname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(100) NOT NULL,
  `secque` varchar(400) NOT NULL,
  `secans` varchar(50) NOT NULL,
  `usertypeid` varchar(10) NOT NULL,
  `joindate` date NOT NULL,
  `actstatus` varchar(20) NOT NULL,
  `photo` varchar(200) NOT NULL,
  PRIMARY KEY (`aid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `email`, `mobile`, `username`, `password`, `secque`, `secans`, `usertypeid`, `joindate`, `actstatus`, `photo`) VALUES
(1, 'Admin', 'admin@gmail.com', '9876543210', 'admin123', '123456', 'Whats your name?', 'Admin', 'Admin', '2019-08-04', '', 'adminimage/26187896-754157354779217-7351798827411570688-n-1516376726.jpg'),
(29, 'Shabab', 'shabab@gmail.com', '745854125', 'shabab123', '123456', 'where are you from?', 'Unhel', '3', '2019-08-04', 'Active', 'adminimage/26187896-754157354779217-7351798827411570688-n-1516376726.jpg'),
(32, 'Nadir', 'nadir@gmail.com', '987452145', 'nadir123', '123456', 'What Are You Doing ?', 'Nothing', '2', '2019-08-04', 'Active', 'adminimage/Featured-Image-3-650x813.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `boardinfo`
--

CREATE TABLE IF NOT EXISTS `boardinfo` (
  `boardid` int(11) NOT NULL AUTO_INCREMENT,
  `boardname` varchar(100) NOT NULL,
  `boarddetail` text NOT NULL,
  PRIMARY KEY (`boardid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `boardinfo`
--

INSERT INTO `boardinfo` (`boardid`, `boardname`, `boarddetail`) VALUES
(1, 'Mp Board', 'Mp Board'),
(2, 'CBSE', 'CBSE'),
(3, 'ICSE', 'ICSE');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `chatid` int(11) NOT NULL AUTO_INCREMENT,
  `chat_room_id` int(11) NOT NULL,
  `chat_msg` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `chat_date` datetime NOT NULL,
  PRIMARY KEY (`chatid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatid`, `chat_room_id`, `chat_msg`, `userid`, `chat_date`) VALUES
(40, 1, 'hi', 2, '2017-08-30 14:31:43'),
(41, 1, 'hello', 1, '2017-08-30 14:32:01'),
(42, 1, 'how are you?', 1, '2017-08-30 14:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `chat_room`
--

CREATE TABLE IF NOT EXISTS `chat_room` (
  `chat_room_id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_room_name` varchar(50) NOT NULL,
  PRIMARY KEY (`chat_room_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `chat_room`
--

INSERT INTO `chat_room` (`chat_room_id`, `chat_room_name`) VALUES
(1, 'Sample Chat Room');

-- --------------------------------------------------------

--
-- Table structure for table `classinfo`
--

CREATE TABLE IF NOT EXISTS `classinfo` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL,
  `classroman` varchar(10) NOT NULL,
  `remark` varchar(100) NOT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `classinfo`
--

INSERT INTO `classinfo` (`classid`, `classname`, `classroman`, `remark`) VALUES
(1, 'First', 'I', 'First'),
(2, 'Second', 'II', 'Second'),
(3, 'Third', 'III', 'Third'),
(4, 'Fourth', 'IV', 'Fourth');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eid`, `ename`, `date`, `description`, `status`) VALUES
(3, 'Republic Day', '2019-08-03', 'Republic Day Republic Day Republic Day\r\n\r\n ', 'Active'),
(4, 'Function', '2019-08-05', 'Annual Function  ', 'Active'),
(6, 'Farewell', '2019-09-12', 'Farewell ', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `eventgallery`
--

CREATE TABLE IF NOT EXISTS `eventgallery` (
  `egid` int(11) NOT NULL AUTO_INCREMENT,
  `egname` varchar(100) NOT NULL,
  `egallery` varchar(1000) NOT NULL,
  `date` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `eid` int(11) NOT NULL,
  PRIMARY KEY (`egid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `eventgallery`
--

INSERT INTO `eventgallery` (`egid`, `egname`, `egallery`, `date`, `description`, `status`, `eid`) VALUES
(2, 'Technology', 'eventgallery/6a00e54ee3905b883301b7c6fe3354970.jpg', '5/12/2015', 'When television was young, there was a hugely popular show based on the still popular fictional characterWhen television was young, there was a hugely popular show based on the still popular fictional character', 'Active', 4),
(4, 'Teach', 'eventgallery/eae402094c2c95582cf719fd0681a39c--construction-website-brand-building.jpg', '5/14/2019', 'For most of us, the idea of astronomy is something we directly connect to â€œstargazingâ€, telescopes and seeing magnificent displays in the heavens.  ', 'Active', 6),
(5, 'Advertisement', 'eventgallery/ADVERTISING-07.png', '8/12/2019', 'For most of us, the idea of astronomy is something we directly connect to â€œstargazingâ€, telescopes and seeing magnificent displays in the heavens. ', 'Active', 3),
(6, 'Technology', 'eventgallery/AR-190629339.jpg&MaxW=780&imageVersion=16by9&NCS_modified=20190626203406.jpg', '5/14/2019', 'For most of us, the idea of astronomy is something we directly connect to â€œstargazingâ€, telescopes and seeing magnificent displays in the heavens. ', 'Active', 4);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE IF NOT EXISTS `facilities` (
  `facid` int(11) NOT NULL AUTO_INCREMENT,
  `factitle` varchar(100) NOT NULL,
  `facdescription` text NOT NULL,
  `facimage` varchar(300) NOT NULL,
  `facdate` date NOT NULL,
  `facstatus` varchar(40) NOT NULL,
  PRIMARY KEY (`facid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`facid`, `factitle`, `facdescription`, `facimage`, `facdate`, `facstatus`) VALUES
(2, 'Bus', 'Our mission at SIGS is to create a safe and nurturing environment for children, to erase the traditional worries of parents and instill the confidence of education. We shall strive to develop a stimulating environment thatâ€™s soft but preaches practicality and individuality yet in no dimension subdues the feel of feminist.', 'facility/photo.jpg', '2019-08-07', 'Active'),
(4, 'Information and Communication Technology (ICT)', 'The School has six ICT labs and all computers are equipped with multimedia kits and interconnected nodes with internet facilities. Technology is used to make teaching and learning meaningful and fun. ICT is well integrated into all subject areas and all classrooms are equipped with laptops and overhead projectors. New technology tools like Interactive LED boards are used for visualizing and modelling, especially in the Sciences. ', 'facility/2656eba166aa206427bf5d9c12294be9f932bdb4.jpg', '2019-08-07', 'Active'),
(5, 'Interactive Screens in classrooms', 'The interactive flat panel Clevertouch LED 75â€, displays have been newly installed in the classrooms. It is a leading educational interactive flat panel which is a highly effective collaborative device to facilitate classroom teaching and digital learning.', 'facility/a9545227ba1d8440cc457b05f18a0f1fc3dc09b1.jpg', '2019-08-07', 'Active'),
(6, 'Science Laboratories', 'To provide hands-on practical experience to our students, excellent equipment and facilities are provided in separate laboratories for Physics, Chemistry, Biology and Home Science in accordance with the CBSE curriculum.', 'facility/409d16332919882432c026105045d78527eee7fd.jpg', '2019-08-07', 'Active'),
(8, 'Innovation Studio and Learning Hub', '\r\n	 These are equipped with interactive smart boards, laptops, Lego kits, and other innovative resources thus making our students techno smart. This has provided teachers and students with highly interactive instructional tools enabling them to cater to all learning styles.', 'facility/4f1d53bb2e13c3f1283103b82a55642069bd9289.jpg', '2019-08-07', 'Active'),
(9, 'Sports Facilities', '    Indoor Games Area\r\n    AstroTurf\r\n    200 Meters Race Track\r\n    Synthetic courts for Badminton, Basketball\r\n    Volleyball & Throw ball in Block A and Block B.\r\n', 'facility/2d6f0a7ddea4ace146444234fd40b12ea6cb0291.jpg', '2019-08-07', 'Active'),
(10, 'Auditorium', 'The multi-purpose auditorium provides an ideal space for school assemblies, events, stage productions, and Inter-School activities', 'facility/9fda65525354fcaf297e12867fdf51337b550146.jpg', '2019-08-07', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `facultyinfo`
--

CREATE TABLE IF NOT EXISTS `facultyinfo` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(90) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `photo` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(500) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(400) NOT NULL,
  `username` varchar(200) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `secquest` varchar(500) NOT NULL,
  `secans` varchar(500) NOT NULL,
  `joindate` varchar(20) NOT NULL,
  `actstatus` varchar(15) NOT NULL,
  `userid` varchar(20) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `facultyinfo`
--

INSERT INTO `facultyinfo` (`fid`, `fname`, `gender`, `dob`, `photo`, `description`, `address`, `mobile`, `email`, `username`, `pwd`, `secquest`, `secans`, `joindate`, `actstatus`, `userid`) VALUES
(1, 'Shabab', 'Male', '12/4/1995', 'faculty/26187896-754157354779217-7351798827411570688-n-1516376726.jpg', 'About 64% of all on-line teens say that do things online that they wouldnâ€™t want their parents to know about.', 'Unhel', '987456254', 'shabab@gmail.com', 'shabab123', '123456', 'where are you from?', 'Unhel', '20/7/2019', 'Active', '1'),
(3, 'Kriti ', 'Female', '12/5/1991', 'faculty/indian-lady-college-student-teaching-ECX77M.jpg', 'About 64% of all on-line teens say that do things online that they wouldnï¿½t want their parents to know about', 'Mumbai', '8745862156', 'Kriti@gmail.com', 'kriti123', '123456', 'whats app', 'Nothing', '10/3/2015', 'Active', '1'),
(9, 'Nadir', 'Male', '25/9/1996', 'faculty/Featured-Image-3-650x813.jpg', 'About 64% of all on-line teens say that do things online that they wouldnâ€™t want their parents to know about	', 'Ujjain', '8745695412', 'nadir@gmail.com', 'nadir123', '123456', 'What Are You Doing ?', 'Nothing', '18/3/2019', 'Active', '1'),
(10, 'Farheen', 'Female', '12/5/1991', 'faculty/index.jpg', 'About 64% of all on-line teens say that do things online that they wouldnï¿½t want their parents to know about ', 'New Delhi', '8745852145', 'farheen@gmail.com', 'farheen123', '123456', 'where are u from?', 'Ashta', '18/3/2019', 'Active', '1');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `femail` varchar(100) NOT NULL,
  `fsubject` varchar(300) NOT NULL,
  `fmessage` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `fname`, `femail`, `fsubject`, `fmessage`, `date`) VALUES
(1, 'shahbaz', 'shahbaz@gmail.com', 'shahbaz', 'shahbazshahbazshahbazshahbazshahbaz', '2019-08-06'),
(6, 'nadir', 'nadir@gmail.com', 'sd', 'vgfv', '2019-08-06'),
(7, 'khizer', 'Shabab@gmail.com', 'n', 'jkhuh', '2019-08-06'),
(8, 'shabab', 'shahbaz@gmail.com', 'Shahbaz', 'subjectsubject', '2019-08-29'),
(9, 'Nadir', 'shahbaz123@gmail.com', 'Shahbaz', 'Shahbaz Shahbaz  Shahbaz Shahbaz Shahbaz ShahbazShahbazShahbaz', '2019-08-29'),
(10, 'admin', 'admin000@gmail.com', 'admin', 'admin admin admin admin admin ', '2019-08-29'),
(11, 'admin', 'shahbaz@gmail.com', 'admin', 'echo echo echo echo echo ', '2019-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `gid` int(8) NOT NULL AUTO_INCREMENT,
  `gytid` int(8) NOT NULL,
  `name` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `setdate` date NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gid`, `gytid`, `name`, `detail`, `image`, `setdate`, `status`) VALUES
(7, 3, 'Farewell Party', 'Farewell Party For Last batch      ', 'gallery/AR-190629339.jpg&MaxW=780&imageVersion=16by9&NCS_modified=20190626203406.jpg', '2019-08-03', 'Active'),
(8, 5, 'Function', 'Our School Organise A Function For Disabled Peoples   ', 'gallery/3629.jpg', '2019-08-03', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `gallerytype`
--

CREATE TABLE IF NOT EXISTS `gallerytype` (
  `gytid` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL,
  `detail` text NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`gytid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `gallerytype`
--

INSERT INTO `gallerytype` (`gytid`, `name`, `detail`, `status`) VALUES
(3, 'Annual', '    Annual Function', 'Active'),
(5, 'Independ', ' A Small Events Organise By School For Disable Peoples', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `menusetup`
--

CREATE TABLE IF NOT EXISTS `menusetup` (
  `mid` int(8) NOT NULL AUTO_INCREMENT,
  `mname` varchar(15) NOT NULL,
  `morder` varchar(10) NOT NULL,
  `mdetail` text NOT NULL,
  `mstatus` varchar(20) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `menusetup`
--

INSERT INTO `menusetup` (`mid`, `mname`, `morder`, `mdetail`, `mstatus`) VALUES
(7, 'Home', '1', 'index.php', 'Active'),
(8, 'About', '2', 'about.php', 'Active'),
(9, 'Gallery', '3', 'gallery.php', 'Active'),
(10, 'Faculty', '4', 'faculty.php', 'Active'),
(11, 'Event', '5', 'event.php', 'Active'),
(12, 'Contact', '6', 'contact.php', 'Active'),
(13, 'Facility', '7', 'facility.php', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `nid` int(8) NOT NULL AUTO_INCREMENT,
  `nname` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `classid` varchar(30) NOT NULL,
  `photo` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(13) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`nid`, `nname`, `detail`, `classid`, `photo`, `date`, `status`) VALUES
(5, 'Science', '	Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Hulda Sutton Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. ', '3', 'notification/AR-190629339.jpg&MaxW=780&imageVersion=16by9&NCS_modified=20190626203406.jpg', '2019-07-31', 'Active'),
(6, 'Shabab', 'Shabab Uddin Qureshi', '3', 'notification/3629.jpg', '2019-07-31', 'Active'),
(10, 'Lab Start', 'Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.\r\nHulda Sutton\r\n\r\nAccessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.\r\n', '1', 'notification/2656eba166aa206427bf5d9c12294be9f932bdb4.jpg', '2019-08-20', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `pid` int(9) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `mid` int(8) NOT NULL,
  `choose` varchar(10) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`pid`, `uid`, `mid`, `choose`) VALUES
(2, 3, 6, 'yes'),
(4, 1, 2, 'yes'),
(5, 1, 1, 'yes'),
(6, 1, 4, 'yes'),
(9, 1, 2, 'yes'),
(10, 1, 1, 'yes'),
(15, 2, 5, 'yes'),
(17, 2, 6, 'yes'),
(18, 2, 7, 'yes'),
(19, 2, 7, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `studentclass`
--

CREATE TABLE IF NOT EXISTS `studentclass` (
  `scid` int(11) NOT NULL AUTO_INCREMENT,
  `srollno` varchar(20) NOT NULL,
  `classid` varchar(10) NOT NULL,
  `admityear` varchar(20) NOT NULL,
  `medium` varchar(40) NOT NULL,
  `boardname` varchar(100) NOT NULL,
  `section` varchar(10) NOT NULL,
  PRIMARY KEY (`scid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `studentclass`
--

INSERT INTO `studentclass` (`scid`, `srollno`, `classid`, `admityear`, `medium`, `boardname`, `section`) VALUES
(1, '101', '3', '12/5/2019', 'Hindi', 'Mp Board', 'B'),
(2, '102', '4', '5/4/2018', 'Hindi', 'CBSE', 'D'),
(3, '102', '3', '02.05.1998', 'English', 'CBSE', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE IF NOT EXISTS `studentinfo` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) NOT NULL,
  `srollno` varchar(150) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `fathername` varchar(100) NOT NULL,
  `mothername` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `category` varchar(40) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `caste` varchar(40) NOT NULL,
  `admitdate` varchar(15) NOT NULL,
  `classid` int(9) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `photo` varchar(500) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`sid`, `sname`, `srollno`, `dob`, `gender`, `fathername`, `mothername`, `occupation`, `userid`, `address`, `postcode`, `mobile`, `email`, `category`, `religion`, `caste`, `admitdate`, `classid`, `username`, `password`, `photo`) VALUES
(2, 'Shabab', '101', '5/5/1995', 'Male', 'Abc', 'Xyz', 'Businessman', '1', 'Unhel', '453652', '9854751222', 'shabab@gmail.com', 'General', 'Muslim', 'Qureshi', '12/3/1998', 2, 'shabab123', '123456', 'studentpic/Featured-Image-3-650x813.jpg'),
(3, 'Shahbaz', '102', '12/4/1995', 'Male', 'Mohammad Raees', 'Shaheeda Bee', 'Employee', '1', 'Ashta', '456335', '8745862156', 'shahbaz@gmail.com', 'General', 'Muslim', 'Shaikh', '15/5/2018', 4, 'shahbaz123', '123456', 'studentpic/ironman4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `smid` int(11) NOT NULL AUTO_INCREMENT,
  `smname` varchar(30) NOT NULL,
  `smdetail` text NOT NULL,
  `smstatus` varchar(30) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`smid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`smid`, `smname`, `smdetail`, `smstatus`, `mid`) VALUES
(1, 'Upcoming Event', 'upcomingevent.php', 'Active', 11),
(2, 'Event Gallery', 'galleryevent.php', 'Active', 9);

-- --------------------------------------------------------

--
-- Table structure for table `titlesetup`
--

CREATE TABLE IF NOT EXISTS `titlesetup` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) NOT NULL,
  `logo` varchar(999) NOT NULL,
  `temail` varchar(100) NOT NULL,
  `tcontact` varchar(50) NOT NULL,
  `tfax` varchar(40) NOT NULL,
  `taddress` varchar(1000) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `titlesetup`
--

INSERT INTO `titlesetup` (`tid`, `tname`, `logo`, `temail`, `tcontact`, `tfax`, `taddress`) VALUES
(2, 'Education.', 'title/international-schools-partnership-w-logo.png', 'education@gmail.com', '9874521025', '053-214-2424815', 'Ujjain');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `your_name` varchar(60) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `your_name`) VALUES
(1, 'neovic', 'devierte', 'neovic'),
(2, 'lee', 'ann', 'lee');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `userid` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `secquest` varchar(1000) NOT NULL,
  `secans` varchar(1000) NOT NULL,
  `usertypeid` int(8) NOT NULL,
  `email` varchar(400) NOT NULL,
  `status` varchar(50) NOT NULL,
  `joindate` varchar(20) NOT NULL,
  `photo` varchar(500) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`userid`, `username`, `password`, `secquest`, `secans`, `usertypeid`, `email`, `status`, `joindate`, `photo`) VALUES
(2, 'Shabab', '12345', 'where are you live?', 'Nagda', 2, 'shabab@gmail.com', 'Active', '12/05/2012', 'user/5454.jpg'),
(3, 'Admin', '123456789', 'whats app', 'Nothing', 2, 'admin@gmail.com', 'Active', '5/12/2015', 'user/ADVERTISING-07.png');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE IF NOT EXISTS `usertype` (
  `usertypeid` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `detail` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`usertypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`usertypeid`, `name`, `detail`, `status`) VALUES
(2, 'Senior', 'Nadir Khan', 'Active'),
(3, 'Teacher', 'Shabab Uddin Qureshi', 'Active'),
(8, 'Junior', 'Mohammad Shahbaz Shaikh', 'Active');
