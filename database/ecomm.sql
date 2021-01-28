-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 28, 2021 at 12:53 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(9, 9, 1, 1),
(10, 2, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Seeds', 'Seeds'),
(2, 'Fertilizers', 'Fertilizers'),
(3, 'Farm Machinary', 'Farm Machinary'),
(4, 'Agriculture Pumps', 'Agriculture Pumps');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'RCH 659 BG II COTTON RASI SEEDS', '<p>Variety : 659 BG II<br />\r\nPlant Habit : Semi-erect<br />\r\nIrrigation Requirement : Rainfed/irrigated<br />\r\nCrop Duration : Early to medium: 145-160 days<br />\r\nSowing Season : May-June<br />\r\nSowing Spacing : R-R : 4 ft; P-P: 1.5 ft<br />\r\nSpeciality : Variety has a good refreshing character; good boll bursting tendency<br />\r\nBoll Size and Shape : Large ball<br />\r\nBoll Weight : 5 - 5.5 gm<br />\r\nManufacturer Rasi Seeds Pvt. Ltd.</p>\r\n', 'rch-659-bg-ii-cotton-rasi-seeds', 650, 'rch-659-bg-ii-cotton-rasi-seeds_1611764827.jpg', '2021-01-28', 4),
(2, 1, 'US 202 MARIGOLD NUNHEMS (BAYER) 1000 SDS', '<p>1) Attractive Yellow flower</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2)Good flower compactness Bushy plant with medium</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3)height Plant height: 60 - 70 cm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4) Flower size: 8 - 12 cm High yield Picking in 60 &ndash; 72 days during long day and 55 &ndash; 60 days during short day</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5) Recommended States for this product: Maharashtra, Gujarat, Rajasthan, Karnataka, Odisha, Tamil Nadu, Andhra Pradesh &amp; Madhya Pradesh</p>\r\n', 'us-202-marigold-nunhems-bayer-1000-sds', 1299, 'us 202 marigold nunhems (bayer) 1000 sds.jpg', '2021-01-28', 4),
(3, 1, 'SW 502 MARIGOLD YELLOW SEEDS US AGRI (1000 SDS)', '<p>1) Color :-Yellow</p>\r\n\r\n<p>2) Usage/Application :- Nursery seedling purpose/Agriculture 3) Brand :- Us agri</p>\r\n\r\n<p>4) Suitable For :- all whether conditions</p>\r\n\r\n<p>5) session :- Kharif,Rabi,summer</p>\r\n\r\n<p>6) Yield :- 10-13 tons per yield</p>\r\n', 'sw-502-marigold-yellow-seeds-us-agri-1000-sds', 1160, 'sw 502 marigold yellow seeds us agri (1000 sds).jpg', '2021-01-28', 3),
(4, 1, 'RED LADY 786 PAPAYA KNOWN-YOU (10 GM)', '<p>1) Shape of fruit :- Oval</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2) Shipping &amp; Storages :- EXCELLENT</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3) Disease resistance :- Tolerant to PRSV</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4) Days from sowing :- 300</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5) Good shelf life and transportability</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6) Early, vigorous, productive, and tolerant to papaya ring spot virus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>7) Flesh is thick, red, with 13% sugar content, and aromatic</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>8) Plants bear fruit at 60-80 cm height and have over 30 fruits per fruit setting</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>9) Red fleshed fruit averaging 1.5 to 2.0 kg. Good sweetness. Sets fruit at average 70 cm above soil.</p>\r\n', 'red-lady-786-papaya-known-you-10-gm', 2250, 'red lady 786 papaya known-you (10 gm).jpg', '2021-01-28', 1),
(5, 1, 'ARJUNA F1 PUMPKIN EAST WEST ( 50 GM)', '<p>1) Fruit :- Flattish round, dark green at immature stage &amp; Yellowish orange after full maturity, good taste.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2) Average :- (wt) 4 - 5 kg. 3) Harvesting :- 80 - 85 days of seed sowing.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4) Colour :- Immature (Green), Mature (Golden)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5) Self Life :- 4-6 Weeks.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6) High Yieder Variety.</p>\r\n', 'arjuna-f1-pumpkin-east-west-50-gm', 410, 'arjuna f1 pumpkin east west ( 50 gm).jpg', '2021-01-28', 1),
(6, 1, 'ROMANCE F1 CARROT NUNHEMS', '<p>1) Brand new :- Nunhems</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2) Orange Nantes type hybrid.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3) Maturity of 110-130 days.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4) 15-20 days of good field holding capacity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5) Best sowing season is Dec-Feb.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6) Good cold storage capacity.</p>\r\n', 'romance-f1-carrot-nunhems', 2190, 'romance f1 carrot nunhems.jpg', '2021-01-01', 0),
(7, 3, 'New Holland BC5060', '<p>&nbsp;</p>\r\n\r\n<p>This family owned one stop shop is &quot;Committed to our customers for the long haul&quot; We are one of South East Queensland&rsquo;s largest parts supplier for New Holland Agriculture, Construction &amp; Hay Gear.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&bull; 4 Cylinder LS Engine &bull; 40.4 Hp Rated Power</p>\r\n\r\n<p>&bull; 16 x 16 Mechanical Transmission</p>\r\n\r\n<p>&bull; Ag Tyres - 4WD</p>\r\n\r\n<p>&bull; Rear 540 rpm Independent PTO - Electro Hyd Engagement</p>\r\n\r\n<p>&bull; 1 Set Hyd Remote Valves Standard</p>\r\n\r\n<p>&bull; Mid Mount Valve and Joystick Standard</p>\r\n\r\n<p>&bull; 2 Post Foldable Rops</p>\r\n\r\n<p>&bull; 3PL - 1250 kg Maximum capacity at Ball Ends</p>\r\n\r\n<p>&bull; 1800MM Pick up</p>\r\n\r\n<p>&bull; 5 Tine Bar</p>\r\n\r\n<p>&bull; 93 Stroke Plunger</p>\r\n\r\n<p>&bull; 6 Ball Twin Box</p>\r\n\r\n<p>&bull; Manual Grease Knotters</p>\r\n\r\n<p>&bull; Twin Rotary feeder cross feed</p>\r\n', 'new-holland-bc5060', 3652345, 'new holland bc5060.jpg', '2021-01-28', 13),
(8, 1, 'KNOWN-YOU PAPAYA SEED RED LADY 786 (2GM)', '<p>1) Shape of fruit :- Oval</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2) Shipping &amp; Storages :- EXCELLENT</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3) Disease resistance :- Tolerant to PRSV</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4) Days from sowing :- 300</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5) Good shelf life and transportability</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6) Early, vigorous, productive, and tolerant to papaya ring spot virus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>7) Flesh is thick, red, with 13% sugar content, and aromatic</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>8) Plants bear fruit at 60-80 cm height and have over 30 fruits per fruit setting</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>9) Red fleshed fruit averaging 1.5 to 2.0 kg. Good sweetness. Sets fruit at average 70 cm above soil.</p>\r\n', 'known-you-papaya-seed-red-lady-786-2gm', 729.99, 'known-you papaya seed red lady 786 (2gm).jpg', '2021-01-28', 2),
(9, 2, 'ALIKA INSECTICIDE ', '<p><strong>Technical Name:&nbsp;</strong>Thiamethoxam (12.6%) + Lambdacyhalothrin (9.5%) ZC</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Product Description:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Alika Mixture of contact &amp; Contact, Systemic insecticide, Thiamethoxam (12.6%) + Lambdacyhalothrin (9.5%) ZC, Excellent product for the Right Start of the crop with effective control against sucking pests. Exhibits good overall crop outlook and better crop greening with more branches and flower initiation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dosage:</strong>&nbsp;80 mL per acre</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Targeted Insects</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Boll worm, Aphids, Bud worm, Flower feeder, Fruit borer, Gram pod borer, Hairy caterpillars, Leaf folder, Leaf webber, pod borer, Potato tuber moth, Red ants, semilooper, Tobacco caterpillar, Fruit fly,&nbsp;Weevil, BPH, Bugs, Thrips, Hispa, Jassids, Hoppers, Spiralling Whitefly,, Mealy bugs, Anar butterfly</p>\r\n', 'alika-insecticide', 120, 'alika insecticide .jpg', '2021-01-20', 0),
(10, 2, 'NEEMARK - NEEM INSECTICIDE - 10000 PPM', '<p>Neemark&nbsp;is the extract of natural neem and contains triterpenoids &amp; azadirachtin which are very effective against insects &amp; yet are safe to human beings and animals.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Mode of action of Neemark:</strong></p>\r\n\r\n<ul><br />\r\n	<li>Anti-Feedant - Insects lose their appetite</li>\r\n	<br />\r\n	<li>Repellant - Drives away the insects</li>\r\n	<br />\r\n	<li>Growth regulatory- Larvae do not develop into full&nbsp;<br />\r\n	grown adults</li>\r\n	<br />\r\n	<li>Ovipositor &amp; ovicidal - Deposition &amp; hatching of eggs reduced</li>\r\n	<br />\r\n	<li>Safe to predators and parasites - Protects beautiful insects and<br />\r\n	keeps population of harmful insects under control</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Uses:</strong></p>\r\n\r\n<ul><br />\r\n	<li>Totally bio-degradable</li>\r\n	<br />\r\n	<li>Effective against wide range of insects</li>\r\n	<br />\r\n	<li>Safe to the environment</li>\r\n	<br />\r\n	<li>Cost effective over conventional pesticides</li>\r\n	<br />\r\n	<br />\r\n	&nbsp;\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dosage and recommendations of&nbsp; Neemark:</strong></p>\r\n\r\n<ul><br />\r\n	<li><strong>Low volume spray:</strong>&nbsp;Spray 1 to 1.5 litres of Neemarkper acre.</li>\r\n	<br />\r\n	<li><strong>High volume spray:&nbsp;</strong>Spray @ 5ml Neemark per litre water and cover the entire foliage</li>\r\n	<br />\r\n	<li><strong>Tank mix:&nbsp;</strong>Along with standard dose of insecticides or fungicide, mix 3 ml of Neemark&nbsp;<br />\r\n	per litre of spray solution.</li>\r\n</ul>\r\n', 'neemark-neem-insecticide-10000-ppm', 280, 'neemark - neem insecticide - 10000 ppm.jpg', '2021-01-28', 1),
(11, 2, 'CONTAF FUNGICIDE (1 ITR)', '<p>Contaf&nbsp;is&nbsp;a&nbsp;5%&nbsp;EC&nbsp;formulation&nbsp;of&nbsp;Hexaconazole,&nbsp;an&nbsp;excellent&nbsp;Triazole&nbsp;Fungicide,&nbsp;highly&nbsp;effective&nbsp;against&nbsp;sheath&nbsp;blight&nbsp;of&nbsp;paddy,&nbsp;leafspots&nbsp;and&nbsp;blights&nbsp;on&nbsp;all&nbsp;types&nbsp;of&nbsp;crops&nbsp;and&nbsp;powdery&nbsp;mildew&nbsp;of&nbsp;Crops&nbsp;like&nbsp;grapes,&nbsp;chillies&nbsp;etc.&nbsp;Hexaconazole&nbsp;technical&nbsp;has&nbsp;a&nbsp;Broad&nbsp;Spectrum&nbsp;Protectant&nbsp;Eradicant&nbsp;and&nbsp;Systemic&nbsp;Fungicidal&nbsp;Action.&nbsp;It&nbsp;belongs&nbsp;to&nbsp;a&nbsp;new&nbsp;class&nbsp;of&nbsp;Triazoles,&nbsp;Hexaconazole.&nbsp;The&nbsp;technical&nbsp;is&nbsp;available&nbsp;as&nbsp;a&nbsp;92%&nbsp;w/w.&nbsp;Hexaconazole&nbsp;formulations&nbsp;are&nbsp;available&nbsp;in&nbsp;5%&nbsp;EC,&nbsp;10%&nbsp;EC&nbsp;&amp;&nbsp;5%&nbsp;SC.&nbsp;We&nbsp;also&nbsp;supply&nbsp;customized&nbsp;formulations&nbsp;as&nbsp;per&nbsp;customer&#39;s&nbsp;requirements.&nbsp;</p>\r\n\r\n<p><strong>Specification</strong>&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><br />\r\n			&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Acidity&nbsp;(as&nbsp;H2SO4)&nbsp;</p>\r\n			<br />\r\n			<br />\r\n			<br />\r\n			&nbsp;</td>\r\n			<td><br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<p>1%&nbsp;max&nbsp;</p>\r\n			<br />\r\n			<br />\r\n			<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<p>Moisture&nbsp;Content&nbsp;</p>\r\n			<br />\r\n			<br />\r\n			<br />\r\n			&nbsp;</td>\r\n			<td><br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<p>1%&nbsp;max&nbsp;</p>\r\n			<br />\r\n			<br />\r\n			<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<p>Acetone&nbsp;Insoluble&nbsp;Material&nbsp;</p>\r\n			<br />\r\n			<br />\r\n			<br />\r\n			&nbsp;</td>\r\n			<td><br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<p>1%&nbsp;max&nbsp;</p>\r\n			<br />\r\n			<br />\r\n			<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'contaf-fungicide-1-itr', 235, 'contaf fungicide (1 itr).jpg', '2020-05-12', 1),
(12, 2, 'JASHN SUPER INSECTICIDE (500ML)', '<ul>\r\n	<li>Synergistic power with powerful stomach and contact action.</li>\r\n	<br />\r\n	<li>Strong ovicidal, larvicidal and acaricidal properties.</li>\r\n	<br />\r\n	<li>Quick knock down and excellent control on hard to kill boll-worm.</li>\r\n	<br />\r\n	<li>Kills insects on lower and upper surface of leaves due to penetrating action.</li>\r\n	<br />\r\n	<li>Convenient, single pack and ready to use instead of field mix.</li>\r\n	<br />\r\n	<li>Economical to use with much higher and quality produce.</li>\r\n	<br />\r\n	<li>Suitable for IPM programmes.</li>\r\n</ul>\r\n', 'jashn-super-insecticide-500ml', 180, 'jashn super insecticide (500ml).jpg', '2021-01-28', 1),
(13, 2, 'CONTAF PLUS FUNGICIDE RALLIS INDIA (500ML)', '<p><strong><em>Contaf Plus is useful for controlling Powdery mildews, rusts and leaf spots in cereals, oil seeds, horticultural and plantation crops and also for the effective control of Rice Sheath Blight.</em></strong></p>\r\n', 'contaf-plus-fungicide-rallis-india-500ml', 129.99, 'contaf plus fungicide rallis india (500ml).jpg', '2020-05-12', 1),
(14, 2, 'DR SOIL ARECA SPECIAL PLANT FOOD (5 LTR)', '<p>1) Product Type :- Micronutrient</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2) Brand :- Microbi Agrotech</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3) Usage :- Soil/Drip Application</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4) It helps inflorescence setting.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5) It enhances nut size.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6) It decreases nut dropping and gives better yield.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>7) Dosage :- 5-10 Ltr/acre/week.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>8) Dr. Soil is a revolutionary liquid, organic plant foods.</p>\r\n', 'dr-soil-areca-special-plant-food-5-ltr', 1399.99, 'dr soil areca special plant food (5 ltr).jpg', '2020-05-10', 13),
(15, 2, 'DR SOIL DECOMPOSER (MICROBI-1 LTR)', '<p>1) Dr. Soil Decomposer Microbi is a one-step solution for organic waste.<br />\r\n2) Dr. Soil Decomposer recycles them into organic compost.<br />\r\n3) It helps in decomposing organic matter quickly.<br />\r\n4) Diseases can be controlled.<br />\r\n5) Root Biomass will increase.<br />\r\n6) Dosage: 10ml/1 ltr of water<br />\r\n7) It helps in decomposing organic matter quickly.<br />\r\n8) Using Dr Soil decomposer to coco peat will increase its ability.</p>\r\n', 'dr-soil-decomposer-microbi-1-ltr', 395, 'dr soil decomposer (microbi-1 ltr).jpg', '2020-07-09', 1),
(16, 3, '2021 McCormick X5.45 110hp Tractor & Premium Loader', '<p>Engineered and built to handle all daily operations and property management activities, the X5.45 tractor is the perfect choice for farmers who need to carry out a variety of tasks both in the field and on the farm. This tractor is tireless, reliable and cost efficient and can be configured precisely to your requirements.</p>\r\n\r\n<p><strong>&bull; </strong>100% Italian Built &bull; 110hp</p>\r\n\r\n<p><strong>&bull;</strong> 4 Cylinder Turbo Engine</p>\r\n\r\n<p><strong>&bull;</strong> 48 x 16 Powershuttle Transmission</p>\r\n\r\n<p><strong>&bull;</strong> 4 Wheel Braking and Diff Lock</p>\r\n\r\n<p>&bull; Pivoting Front Fenders</p>\r\n\r\n<p>&bull; Electronic Linkage Control</p>\r\n\r\n<p>&bull; 3 Sets of Rear Hydraulic Outlets</p>\r\n\r\n<p>&bull; Large Radial Tyres</p>\r\n\r\n<p>&bull; Deluxe Air-Conditioned Cabin</p>\r\n\r\n<p>&bull; Air Suspension Seat</p>\r\n\r\n<p>&bull; Passenger Seat</p>\r\n\r\n<p>&bull; Premium Front End Loader</p>\r\n\r\n<p>&bull; 2 Years / 2400hrs Warranty</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our McCormick Tractors are compatible with a range of attachments and implements - add on a slasher , mower , auger , spreader , seeder , mulcher , ripper , grader blade , box blade , hay baler , spike , bale fork and much more today! Time for an UPGRADE? We want your TRADE!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trade in your old John Deere , Caterpillar , Fendt , Kubota , New Holland , Case IH or Massey Ferguson and upgrade to a NEW McCormick Tractor!</p>\r\n', '2021-mccormick-x5-45-110hp-tractor-premium-loader', 19284381.6, '2021 mccormick x5.45 110hp tractor & premium loader.jpg', '2021-01-28', 2),
(17, 3, '2015 New Holland T7.235 185HP 4WD', '<p>The next generation of our best-selling Fire tablet ever - now thinner, lighter, and with longer battery life and an improved display. More durable than the latest iPad</p>\r\n\r\n<p>Beautiful 7&quot; IPS display with higher contrast and sharper text, a 1.3 GHz quad-core processor, and up to 8 hours of battery life. 8 or 16 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', '2015 new holland t7.235 185hp 4wd', 11249222.6, '2015 new holland t7.235 185hp 4wd.jpg', '2020-05-12', 1),
(18, 3, 'Cotton Harvesting Machine HMP-1.8', '<p>Cotton-harvesting machine HMP-1,8 aggregated with tractor MTZ-80X designed to harvest upland seed cotton from opened boxes of sowing in drills of cotton plant on fields in areas of irrigated cotton growing with row spacing of 90 sm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cotton-harvesting machine is equipped with stalk crowders, which provide the best cut of cotton bush and introduce them into cotton picking device, where cotton separates from bushes. Then, with the help of airflow, cotton moves to bunker.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=1>\r\n	<tbody>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>PALESSE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bunker volume</td>\r\n			<td>14 m3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Service life</td>\r\n			<td>Up to 8 Years</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Coverage width</td>\r\n			<td>1.8 m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Height</td>\r\n			<td>4000 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Width</td>\r\n			<td>3270 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Horsepower demand</td>\r\n			<td>48 HP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of harvested rows&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n			<td>2 pcs</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Length</td>\r\n			<td>8360 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'cotton-harvesting-machine-hmp-1-8', 5400000, 'cotton harvesting machine hmp-1.8.jpg', '2020-05-12', 2),
(19, 3, 'Cow Dung Manure Spreader', '<h3><strong>Product Description</strong></h3>\r\n\r\n<p><strong>Cow Dung Manure Spreader</strong>&nbsp;has been designed in view of kishan&#39;s hard work. With this machine,Farmer can easily do five days of work in a day and workers do not even have to go. A single man can easily operate a machine and remove it, which will save both money and time</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Product Specification</strong></h3>\r\n\r\n<table border=1>\r\n	<tbody>\r\n		<tr>\r\n			<td>Model Name/Number&nbsp;&nbsp;</td>\r\n			<td>HS1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Haidra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Capacity</td>\r\n			<td>40 Feet Dung Spread Capacity</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>60&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Hard Core Iron</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Surface Finish</td>\r\n			<td>Powder Coated</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Machine Weight</td>\r\n			<td>350 Kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Country of Origin</td>\r\n			<td>Made in India</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Total Back Length</td>\r\n			<td>6 feet</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Plate Thickness</td>\r\n			<td>5 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'cow-dung-manure-spreader', 55000, 'cow dung manure spreader.jpg', '2020-05-10', 1),
(20, 3, 'Groundnut Digger', '<h3><strong>Product Description</strong></h3>\r\n\r\n<p><strong>Other Details:</strong></p>\r\n\r\n<p>We are ranked amongst the most trusted firms deeply engaged in offering a wide range of Groundnut Digger.</p>\r\n\r\n<p>Suitable To Harvest Ground Nut In Less Times</p>\r\n\r\n<p>Smooth Belt Drive Operation Allows Peanuts Plants To Flow Uninverrupted And Prevent Peanuts From Being Knocked Off.</p>\r\n\r\n<p>Broad Rattler Adjustment Bars Allow For Accepting Invertingin The Largest Of Plant Sizes.</p>\r\n\r\n<p>No Extensive, Time-consuming Daily Maintenance Required</p>\r\n\r\n<p>Less Downtime And Repair Expenses From Use Of High Quality Bearings,</p>\r\n\r\n<p>Sheaves, Sprockets And Other Drive Components</p>\r\n\r\n<p>Suitable For Medium Duty Tractors From 45 Hp To 85 Hp</p>\r\n\r\n<p>Disc Section Provided To Make Separation Of Congested Plant Growth</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Product Specification</strong></h3>\r\n\r\n<table border=1>\r\n	<tbody>\r\n		<tr>\r\n			<td>Usage/Application</td>\r\n			<td>Agriculture &amp; Farming</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Tiger</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Capacity</td>\r\n			<td>1 - 1.5 Acre/Hr</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model Name/Number</td>\r\n			<td>PD54</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power</td>\r\n			<td>35 hp to 70 hp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Mild Steel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>640 Kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Working Width</td>\r\n			<td>1655 MM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Conveyer Belt Length</td>\r\n			<td>720 MM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Length X Width X Height&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td>2250 X 1655 X 1320 MM</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'groundnut-digger', 135000, 'groundnut digger.jpg', '2020-05-12', 1),
(27, 1, 'NAGA RIDGE GOURD EAST-WEST SEED - 50 GM', '<p>1) Variety - Naga F1</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2) Excellent yield potential and keeping quality.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3) Fruits long, slender, compact, fleshy and green in color.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4) Plant :- Strong and vigorous.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&bull; Fruit :- Long with deep ridges.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&bull; Attractive green color, 35 - 45 cm long.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&bull; Fruit weight :- 200 - 220 gm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&bull; Harvesting :- 50 - 55 days after sowing</p>\r\n', 'naga-ridge-gourd-east-west-seed-50-gm', 490, 'naga ridge gourd east-west seed - 50 gm.jpg', '2021-01-28', 1),
(28, 4, 'Janta Series', '<p><strong>Specially designed thrust bearing ensures highest reliability</strong></p>\r\n\r\n<p><strong>High Grade Electrical Stamping CRNGO-M47 for higher efficiency</strong></p>\r\n\r\n<p><strong>Wide voltage operation from 250 -440V</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Kw/Hp</th>\r\n			<td>\r\n			<p>0.1 to 10,&nbsp;10.01 to 20</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Supply Phase</th>\r\n			<td>\r\n			<p>3 Ph</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Delivery Pipe</th>\r\n			<td>\r\n			<p>81 and Above</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>No. of Stages</th>\r\n			<td>\r\n			<p>0 to 10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ISI</th>\r\n			<td>\r\n			<p>Yes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MNRE</th>\r\n			<td>\r\n			<p>No</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Agricultural Pumps Type</th>\r\n			<td>\r\n			<p>Borewell Submersible</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'janta-series', 65050, 'janta series.jpg', '2021-01-28', 1),
(29, 4, 'Centrifugal Monoset Pumps', '<p><strong>Monoset Construction with High Quality Mechanical Seal</strong></p>\r\n\r\n<p><strong>High Grade Electrical Stamping CRNGO-M47 for higher efficiency</strong></p>\r\n\r\n<p><strong>Works in wide voltage band effectively</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Kw/Hp</th>\r\n			<td>\r\n			<p><a href=\"https://www.crompton.co.in/kw-hp/0-1-to-10/\">0.1 to 10</a>,&nbsp;<a href=\"https://www.crompton.co.in/kw-hp/10-01-to-20-20-01-to-30/\">10.01 to 20. 20.01 to 30</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Supply Phase</th>\r\n			<td>\r\n			<p><a href=\"https://www.crompton.co.in/supply-phase/1-ph/\">1 Ph</a>,&nbsp;<a href=\"https://www.crompton.co.in/supply-phase/3-ph/\">3 Ph</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Delivery Pipe</th>\r\n			<td>\r\n			<p><a href=\"https://www.crompton.co.in/delivery-pipe/21-to-40/\">21 to 40</a>,&nbsp;<a href=\"https://www.crompton.co.in/delivery-pipe/41-to-60/\">41 to 60</a>,&nbsp;<a href=\"https://www.crompton.co.in/delivery-pipe/61-to-80/\">61 to 80</a>,&nbsp;<a href=\"https://www.crompton.co.in/delivery-pipe/81-and-above/\">81 and Above</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>No. of Stages</th>\r\n			<td>\r\n			<p><a href=\"https://www.crompton.co.in/no-of-stages/0-to-10/\">0 to 10</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ISI</th>\r\n			<td>\r\n			<p><a href=\"https://www.crompton.co.in/isi/yes/\">Yes</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MNRE</th>\r\n			<td>\r\n			<p><a href=\"https://www.crompton.co.in/mnre/no/\">No</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Agricultural Pumps Type</th>\r\n			<td>\r\n			<p>Centrifugal Monoset</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'centrifugal-monoset-pumps', 4100, 'centrifugal monoset pumps.jpg', '2020-07-09', 3),
(30, 4, 'Horizontal Openwell', '<p><strong>High Grade Electrical Stamping CRNGO-M47 for higher efficiency</strong></p>\r\n\r\n<p><strong>CED Coated Parts Offers rust Free &amp; stuck free Operation</strong></p>\r\n\r\n<p><strong>Wide voltage operation from 250 -440V</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=1>\r\n	<tbody>\r\n		<tr>\r\n			<th>Kw/Hp</th>\r\n			<td>\r\n			<p>0.1 to 10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Supply Phase</th>\r\n			<td>\r\n			<p>1 Ph,&nbsp;3 Ph</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Delivery Pipe</th>\r\n			<td>\r\n			<p>21 to 40,&nbsp;41 to 60,&nbsp;61 to 80,&nbsp;81 and Above</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>No. of Stages</th>\r\n			<td>\r\n			<p>0 to 10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>ISI</th>\r\n			<td>\r\n			<p>Yes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>MNRE</th>\r\n			<td>\r\n			<p>No</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Agricultural Pumps Type</th>\r\n			<td>\r\n			<p>Openwell Submersible</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'horizontal-openwell', 14150, 'horizontal openwell.jpg', '2020-10-10', 0),
(31, 3, '2016 Amazone Pantera 4502', '<p>Priced to SELL! 2016 AMAZONE Pantera 4502 SP sprayer, 636 engine hours, 4500 lit tank capacity, 36m boom, AMASELECT, individual nozzle control, Hydraulic breakaway, Distance control with 4 sensors, 500 lit clean water rinse tank, Exterior wash down kit with hose reel, 3&quot; suction hose, Chemical induction bowl, 50kmh Hydrostatic transmission, Steering modes x 3 2WS 4WD &amp; crab steer, Carbon cab filter, Dual pumps- 260 lit /min spray pump- 260 lit/min agitator pump, Michelin 480/80R 46 all round, Front and rear cameras, AMAPAD ISOBUS &amp; GPS, Amapilot multi-function joy stick, Central lubrication system, Hydraulic park brake and Hydro Pneumatic braking system with Disc brakes. A very low hours machine ready to be put to work</p>\r\n', '2016-amazone-pantera-4502', 33747667.8, '2016 amazone pantera 4502.jpg', '2021-01-28', 1),
(32, 3, '2018 CASE IH 8240', '', '2018 case ih 8240', 42367202, '2018 case ih 8240.jpg', '2021-01-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', 'Admin', '', '', 'thanos1.jpg', 1, '', '', '2018-05-01'),
(2, 'Vivek@gmail.com', '$2y$10$0SqxDEcnawuBFxrsXewzBOUtdtFpchzgTKME9veQjQ6rZ5dCPMG72', 0, 'Vivek', 'Dussa', 'Karimnagar', '8919531044', 'vivek1.jpg', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
