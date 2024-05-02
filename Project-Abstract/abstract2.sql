-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 01:04 AM
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
-- Database: `abstract2`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `icon_image` varchar(255) NOT NULL,
  `icon_title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `icon_image`, `icon_title`, `description`) VALUES
(1, 'Group 28.png', 'Development Process', 'null'),
(2, 'Group 24.png', 'Acquisitions & Assemblages', 'null'),
(3, 'Group 5.png', 'Financial Structuring', 'null'),
(4, 'Group 3.png', 'Financial Analysis', 'null'),
(5, 'Group 12.png', 'Capital Markets', 'null'),
(6, 'path 86.png', 'Investment Evaluation', 'null'),
(7, 'Group 21.png', 'Design Process', 'null'),
(8, 'Group 18.png', 'Zoning & Entitlements', 'null'),
(9, 'Group 26.png', 'Construction & Consultant Coordination', 'null'),
(10, 'Group 23.png', 'Marketing & Leasing', 'null'),
(11, 'Group 14.png', 'Public-Private Relationships', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `designation`, `description`, `image_path`) VALUES
(1, 'Jason Algaze', 'Partner', 'A 15-year veteran of the real estate investment and development business, Jason brings a unique combination of natural creativity, a passion for building, and the requisite financial expertise which allows him to execute successful and profitable projects with a one-of-a-kind vision. His multi-faceted development experience allows him to select the right people and companies for the job and bring out the best in each team member. His areas of expertise span the entire development process including acquisitions, investment analysis, assemblages, zoning and entitlements, financing, equity structuring, contracts, legal negotiations, construction team oversight, and project design.​Earlier in his career Jason worked on over $10 billion in new development projects comprising over 8 million square feet and more than 8,000 residential units, including the ultra-luxury 1,400 ft. tower at 111 West 57th Street; a 45-story; QPS Tower, 400-unit multifamily building in Long Island City; 10 Sullivan, a boutique condominium building in SoHo and a variety of luxury condominiums throughout South Florida, including ECHO Aventura, ECHO Brickell, Muse Residences, and Sage.​A graduate of the University of Miami, he received an MA in real estate finance and development from New York University.', 'Jason Aglaze D85_5378 copy 2bw.png'),
(2, 'Daniel Rudofsky', 'Partner', 'Dan has a diverse range of experience from both inside and outside of the real estate industry. His jobs in politics and law, coupled with his family’s real estate business, have provided him with unique insights into the various challenges required to complete any project.\r\n\r\n \r\n\r\nDan is responsible for negotiating contracts, interpreting laws, zoning and other regulations, and acting as liaison to outside counsel. An integral part of the team that evaluates new opportunities, he uses his property management experience in the design process to help create more practical and thoughtful buildings.\r\n\r\n \r\n\r\nPreviously in his career Dan served as an Associate in the Litigation Department of Paul, Weiss, Rifkind, Wharton, and Garrison where he represented major banks in ongoing litigation and government investigations. Before attending law school, Dan worked for New York Senator Charles E. Schumer on the Judiciary Committee.\r\n\r\n \r\n\r\nDan earned a BA from the University of Pennsylvania and a JD from New York University School of Law.', 'Dan Rudofsky D85_4480 copy 2bw.png'),
(3, 'Scott Silverman', 'Partner', 'Scott joined Bronstein Properties in 1999 and is responsible for executive oversight of property management with a focus on identification, evaluation and oversight of major capital improvement projects, such as individual apartment renovations as well as refurbishment management and building-wide improvements. He is also responsible for leasing management and strategy, including evaluation of new tenants, leasing turnover management and leasing commercial space. Scott serves as an advisor and partner of Abstract Development. He is a graduate of Washington University in St. Louis (BS, Business Administrations/Finance).', 'Scott Silverman D85_4970 copy 2bw.png'),
(4, 'Barry Rudofsky\r\n', 'Partner', 'Barry has over 30 years of experience managing commercial real estate in the New York City area. He joined the company in 1989 and is responsible for strategic and long-term planning, with particular emphasis on recruitment and retention of key employees. In his role as an asset manager, he provides supervisory review of day-to-day property management staff, with particular focus on identification, evaluation and oversight of major capital improvement projects including individual unit renovations and building-wide improvements. Barry serves as an advisor and partner of Abstract Development.\r\n\r\n \r\n\r\nPreviously he served as Assistant District Attorney in both the Manhattan and Philadelphia District Attorneys’ Offices. He is admitted to the Bar in Pennsylvania, New York and the U.S Eastern District of Pennsylvania and is a graduate of University of Michigan Law School and University of Michigan (BA, Economics and History).\r\n\r\n \r\n\r\nBarry is also active in a number of professional and civic associations and current serves as Co-Chairman and Former President of the Community Housing Improvement Program (CHIP), a residential property Owners Organization as well as Co-Chair of its Lead Paint Legislation Committee. He is also a member of the Rent Stabilization Association.', 'Barry Rudofsky D85_4962 copy 2bw.png'),
(5, 'Peter Schack, CPA', 'Chief Financial Officer', 'Peter joined Bronstein Properties in 2017 and is responsible for overseeing accounting, treasury and financial reporting functions. His areas of expertise include real estate, construction and development accounting, property management, staff selection, accounting systems and processes.\r\n\r\n \r\n\r\nPeter has over 25 years of experience in various real estate, construction and public accounting firms. His real estate financial background includes executive level work with residential and commercial property owners and developers, sales and marketers of luxury condominiums as well as large construction contractors. Previously, he worked on the Hudson Yards Development project in Manhattan.\r\n\r\n \r\n\r\nPeter graduated from Hofstra University with a B.A. in Business Administration, is a licensed New York State CPA and a member of the New York State Society of CPAs.', 'Peter Schack  D85_4613 copy 3bw.png'),
(6, 'Brian Kreizel', 'Director of Operations', 'Brian is an operation professional with over 15 years of success across diverse industries including real estate, healthcare, technology start-ups, and crisis management consulting. He owns and operates a separate real estate platform that acquires, develops, and manages student-housing assets. In his current role, as Director of Operations for Bronstein Properties, he plays a lead role in strategic, business, and organizational operations.\r\n\r\n', 'Brian Kreizel D85_5430 copy 2bw.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
