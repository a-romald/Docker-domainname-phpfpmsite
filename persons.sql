
-- --------------------------------------------------------

--
-- Table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump table `persons`
--

INSERT INTO `persons` (`id`, `title`, `description`) VALUES
(1, 'Jack', 'Actor'),
(2, 'John', 'Engineer'),
(3, 'Harry', 'Musician'),
(4, 'Sally', 'Scientist'),
(5, 'Andy', 'Architect'),
(6, 'Maggie', 'Cartoonist'),
(7, 'Mary', 'Cartographer'),
(8, 'Hannah', 'Composer'),
(9, 'Charlie', 'Dentist'),
(10, 'Fred', 'Economist');


--
-- Indexes of table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
