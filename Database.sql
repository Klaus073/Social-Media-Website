drop database proj;
create database proj;
use proj;
--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `trending_id` int(20) NOT NULL,
  `user1_id` int(25) NOT NULL,
  `usr_name` varchar(30) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`trending_id`, `user1_id`, `usr_name`, `comment`) VALUES
(15, 1, 'nomi', 'nice pic dear'),
(15, 1, 'nomi', 'Ouff'),
(15, 1, 'nomi', 'test'),
(15, 1, 'nomi', 'ouff'),
(15, 1, 'nomi', 'asdasd'),
(18, 1, 'nomi', 'asdasd'),
(32, 1, 'nomi', 'asdasd'),
(15, 2, 'Abdullah_T', 'asdasd'),
(16, 2, 'Abdullah_T', 'asdasd'),
(15, 2, 'Abdullah_T', 'asdads'),
(20, 2, 'Abdullah_T', 'asdads'),
(37, 2, 'Abdullah_T', 'asdads'),
(15, 2, 'Abdullah_T', 'ASas'),
(15, 2, 'Abdullah_T', 'ASas'),
(15, 2, 'Abdullah_T', 'ASsa'),
(37, 2, 'Abdullah_T', 'ASsa'),
(15, 2, 'Abdullah_T', 'Ouff'),
(33, 2, 'Abdullah_T', 'Ouff'),
(28, 1, 'nomi', ''),
(46, 1, 'nomi', ''),
(46, 1, 'nomi', ''),
(46, 1, 'nomi', ''),
(46, 1, 'nomi', ''),
(15, 2, 'Abdullah_T', 'testing'),
(17, 1, 'nomi', ''),
(15, 1, 'nomi', 'as'),
(17, 1, 'nomi', 'as'),
(19, 1, 'nomi', 'testg');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `user1_id` int(25) NOT NULL,
  `follower_name` varchar(30) NOT NULL,
  `flag` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`user1_id`, `follower_name`, `flag`) VALUES
(2, 'nomi', 'Following'),
(1, 'nomi', 'Following');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `user1_id` int(25) NOT NULL,
  `usr_name` varchar(30) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`user1_id`, `usr_name`, `note`) VALUES
(1, 'Abdullah_T', 'Has Liked Your Photo'),
(1, 'Abdullah_T', 'Has Disiked Your Photo'),
(1, 'Abdullah_T', 'Has Liked Your Photo'),
(1, 'Abdullah_T', 'Has Liked Your Photo'),
(1, 'Abdullah_T', 'Has Liked Your Photo'),
(1, 'Abdullah_T', 'Has Liked Your Photo'),
(1, 'Abdullah_T', 'Has Liked Your Photo'),
(1, 'Abdullah_T', 'Has Liked Your Photo'),
(13, 'nomi', 'Has Liked Your Photo'),
(1, 'abuzar', 'Has Liked Your Photo'),
(2, 'nomi', 'Has Disiked Your Photo');

-- --------------------------------------------------------

--
-- Table structure for table `post_info`
--

CREATE TABLE `post_info` (
  `trending_id` int(20) NOT NULL,
  `usr_id` int(20) NOT NULL,
  `flag` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_info`
--

INSERT INTO `post_info` (`trending_id`, `usr_id`, `flag`) VALUES
(1, 1, 'like'),
(4, 1, 'like'),
(5, 1, 'like'),
(7, 1, 'like'),
(6, 1, 'dislike'),
(1, 2, 'like'),
(4, 2, 'like'),
(5, 2, 'like'),
(6, 2, 'like'),
(8, 2, 'like'),
(12, 2, 'like'),
(14, 2, 'dislike'),
(14, 1, 'like'),
(15, 2, 'like'),
(15, 1, 'like'),
(16, 2, 'like'),
(17, 2, 'like'),
(20, 2, 'like'),
(21, 2, 'like'),
(19, 2, 'like'),
(18, 1, 'like'),
(22, 1, 'like'),
(25, 1, 'like'),
(24, 1, 'like'),
(46, 1, 'like'),
(17, 1, 'like'),
(15, 21, 'like'),
(28, 1, 'dislike');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user1_id` int(25) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user1_id`, `first_name`, `last_name`, `gender`, `city`, `country`, `birth_date`, `age`, `image`, `bio`) VALUES
(1, 'Nomi', 'Rao', 'M', 'Lahore', 'pakistan', '2001-08-09', 20, '585a81d33ec34869cf4cd52dea2f1a60.jpg', 'asdasd'),
(2, 'Abdullah', 'tahir', 'M', 'Lahore', 'Pakistan', '2000-09-08', 21, 'wanda.jpg', 'asdasd'),
(13, 'Abdullah', 'Rauf', 'M', 'Islamabad', 'Pakistab', '2000-12-08', 21, 'abdullah1.png', 'Memer'),
(20, 'OUFF', 'OUFF', 'F', 'OUFF', 'OUFF', '2001-02-22', 12, 'f9639c2bc2fe632cc7c54a77ddf00356.jpg', 'OUFF'),
(21, 'abuzar', 'zulfiqar', 'M', 'Lahore', 'Pakistan', '1998-08-10', 22, 'ff1fae83635b9add3e9a07dfa5aa4705.jpg', 'rich life'),
(22, 'Love ', 'Daddy', 'M', 'lahore', 'pakistan', '2002-08-09', 22, 'NFTs-B.jpg', 'oufff');

-- --------------------------------------------------------

--
-- Table structure for table `trending`
--

CREATE TABLE `trending` (
  `trending_id` int(20) NOT NULL,
  `user1_id` int(25) NOT NULL,
  `usr_name` varchar(30) NOT NULL,
  `image` text NOT NULL,
  `imagetext` text NOT NULL,
  `catagory` text NOT NULL,
  `likes` int(20) DEFAULT NULL,
  `dislikes` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trending`
--

INSERT INTO `trending` (`trending_id`, `user1_id`, `usr_name`, `image`, `imagetext`, `catagory`, `likes`, `dislikes`) VALUES
(15, 1, 'nomi', 'the_scarlet_witch_by_mizuriau_defcnrf-fullview.jpg', 'Elizbeth Olsen', 'Celebrity', 3, 0),
(17, 1, 'nomi', 'i1.jpg', 'Iron man', 'SuperHero', 2, 0),
(18, 1, 'nomi', 'i2.jpg', 'RDJ as Iron Man', 'SuperHero', 1, 0),
(19, 1, 'nomi', 'i3.jpg', 'Iron man wallpaper', 'SuperHero', 1, 0),
(20, 1, 'nomi', 'i4.jpg', 'I am iron Man', 'SuperHero', 1, 0),
(22, 1, 'nomi', 's2.jpg', 'See You In a Minute', 'SuperHero', 1, 0),
(23, 1, 'nomi', 's3.jpg', 'Balck Widow Poster', 'Movie', 0, 0),
(24, 1, 'nomi', 's5.jpg', 'Scarlette Johanson', 'Celebrity', 1, 0),
(27, 2, 'Abdullah_T', 'o2.jpg', 'Elizbeth Olsen Sitting On Couch', 'Actress', 0, 0),
(28, 2, 'Abdullah_T', 'f1.jpg', 'Florence Pugh showing off !!', 'Actress', 0, 1),
(29, 2, 'Abdullah_T', 'f2.jpg', 'Still Showing Off !!!', 'Actress', 0, 0),
(31, 2, 'Abdullah_T', 'f4.jpg', 'Showing Off Yet Again', 'Actress', 0, 0),
(32, 2, 'Abdullah_T', 'f5.jpg', 'Shwoing Off Last  Time', 'Actress', 0, 0),
(33, 2, 'Abdullah_T', 'a1.jpg', 'Anya Doing somthing', 'Actress', 0, 0),
(34, 2, 'Abdullah_T', 'a2.jpg', 'Anya On Saturday Night Live', 'Actress', 0, 0),
(40, 13, 'M.Abdullah', 'r1.jpg', 'Hitman\'s Bodyguard meme', 'Movie', 0, 0),
(41, 13, 'M.Abdullah', 'r2.jpg', 'Coming agian', 'Movie', 0, 0),
(42, 13, 'M.Abdullah', 'r3.jpg', 'Ryan Reynold Goin Home', 'Celebrity', 0, 0),
(43, 13, 'M.Abdullah', 'ff1fae83635b9add3e9a07dfa5aa4705.jpg', 'Desi Foo ,, Love Desi Food', 'Food', 0, 0),
(44, 13, 'M.Abdullah', 'af67173fc0cd47d277497d456c3a932b.jpg', 'Still Desi Food ,, Love it!!!', 'Food', 0, 0),
(45, 13, 'M.Abdullah', 'c41117ed7946495023c72a4666e41c86.jpg', 'Cat Feeling Cozy', 'Cats', 0, 0),
(46, 13, 'M.Abdullah', '7e890e5bdae7e7157676fe5d8af3230e.jpg', 'Cute naughty Cat', 'Cats', 1, 0),
(47, 13, 'M.Abdullah', 'cc4e849c5888458a0e8b533922dc888b.jpg', 'Balck Cat', 'Cat', 0, 0),
(48, 13, 'M.Abdullah', '585a81d33ec34869cf4cd52dea2f1a60.jpg', 'Last Cat', 'Cats', 0, 0),
(49, 13, 'M.Abdullah', '85e58bc590812e2d1f3b178adbebd536.jpg', 'Nice Look By The Way', 'Tv Show', 0, 0),
(50, 13, 'M.Abdullah', '853debdc05a9ce2899c30f736348cfe2.jpg', 'Loki Reading Book', 'Celebrity', 0, 0),
(51, 2, 'Abdullah_T', 'ff1fae83635b9add3e9a07dfa5aa4705.jpg', 'test', 'test', 0, 0),
(52, 1, 'nomi', 'a6.jpg', 'asdasd', 'asd', 0, 0),
(53, 13, 'M.Abdullah', 'abdullah1.png', 'zsd', 'sad', 0, 0),
(54, 13, 'M.Abdullah', 'NFTs-B.jpg', 'zz', 'zz', 0, 0),
(55, 13, 'M.Abdullah', 'WhatsApp Image 2021-06-26 at 9.22.31 PM.jpeg', 'z', 'z', 0, 0),
(56, 1, 'nomi', 'NFTs-B.jpg', 'asasasa', 'Food', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user1_id` int(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user1_id`, `email`, `username`, `password`) VALUES
(2, 'test@n', 'Abdullah_T', '098f6bcd4621d373cade4e832627b4f6'),
(21, 'abu@gmail.com', 'abuzar', '4911e516e5aa21d327512e0c8b197616'),
(22, 'daddy@d', 'daddy', '093ec71f562ba6cbf5825b7c9a48f19e'),
(13, 'oop@p', 'M.Abdullah', '403a96cff2a323f74bfb1c16992895be'),
(1, 'nomi@n', 'nomi', 'fa7cb6982ceecd60b638650027806c9c'),
(20, 'oof@o', 'Ouff', 'b4453d1f9f5386a1846e57a3ec95678f'),
(19, 't@t', 'tuffy', 'f970e2767d0cfe75876ea857f92e319b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD KEY `user1_id` (`user1_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD KEY `user1_id` (`user1_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD KEY `user1_id` (`user1_id`);

--
-- Indexes for table `trending`
--
ALTER TABLE `trending`
  ADD PRIMARY KEY (`trending_id`),
  ADD KEY `user1_id` (`user1_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user1_id` (`user1_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trending`
--
ALTER TABLE `trending`
  MODIFY `trending_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user1_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `users` (`user1_id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `users` (`user1_id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `users` (`user1_id`);

--
-- Constraints for table `trending`
--
ALTER TABLE `trending`
  ADD CONSTRAINT `trending_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `users` (`user1_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
