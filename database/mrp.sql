-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 07:38 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bom`
--

CREATE TABLE `bom` (
  `id` int(11) NOT NULL,
  `kode` varchar(25) NOT NULL,
  `material` varchar(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(11) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bom_child`
--

CREATE TABLE `bom_child` (
  `id` int(11) NOT NULL,
  `bom_id` varchar(11) NOT NULL,
  `material` varchar(11) NOT NULL,
  `qty_usage` int(11) NOT NULL,
  `satuan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `kode` varchar(25) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `kode`, `nama`, `status`) VALUES
(1, 'PASI', 'PT. Autocomp System Indonesia', '1'),
(2, 'SIWS', 'PT. Sumitomo Indo Wiring System', '1'),
(4, 'SJP', 'Schlemmer Japan Co., Ltd', '1');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `kode` varchar(25) NOT NULL,
  `kode_rm` varchar(50) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `cust_nama` varchar(255) DEFAULT NULL,
  `spesifikasi` varchar(255) DEFAULT NULL,
  `tipe_material` varchar(2) DEFAULT NULL,
  `satuan` varchar(11) DEFAULT NULL,
  `project` varchar(11) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `customer` varchar(11) DEFAULT NULL,
  `berat` decimal(11,4) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `other` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `kode`, `kode_rm`, `nama`, `cust_nama`, `spesifikasi`, `tipe_material`, `satuan`, `project`, `status`, `customer`, `berat`, `qty`, `other`) VALUES
(1, 'BAG-001', NULL, 'Sak Material PP dan PA', NULL, 'Sak Material PP dan PA', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(2, 'BAG-002', NULL, 'Plastic BAG', NULL, '', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(3, 'BAG-003', NULL, 'Kantong Merah', NULL, '', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(4, 'BAG-004', NULL, 'Kantong Abu-Abu', NULL, '', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(5, 'PB-001', NULL, 'Plastic  bag 300*500*0.06', NULL, '300*500*0.06', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(6, 'PB-002', NULL, 'Plastic  bag 1000*1000', NULL, '1000*1000', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(7, 'PB-003', NULL, 'Plastic  bag 500*800*0.06', NULL, '500*800*0.06', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(8, 'PB-004', NULL, 'Plastic  klip 300*200*0.06', NULL, 'Plastic  klip 30*20*0.06', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(9, 'PB-005', NULL, 'Plastic  klip 300*400*0.06', NULL, '300*400*0.06', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(10, 'PB-006', NULL, 'Plastic  bag 1000*700*0.03', NULL, '1000*700*0.03', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(11, 'PB-007', NULL, 'Plastic  bag 10*15', NULL, '10*15', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(12, 'PB-008', NULL, 'Plastic  bag NLD220*320', NULL, '220*320', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(13, 'PB-009', NULL, 'Plastic  Klip 10cm*15cm*0,06mm', NULL, '10cm*15cm*0,06mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(14, 'PB-010', NULL, 'Plastic Bag 600*700*0.03', NULL, '600mm*700mm*0.03mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(15, 'PB-011', NULL, 'Plastic Bag 30*50*0.03', NULL, '30cm*50cm*0.03mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(16, 'PB-012', NULL, 'Plastic Bag 20*35*0.03', NULL, '20cm*35cm*0.03mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(17, 'PB-013', NULL, 'Plastic Bag 250*350*0.06', NULL, '250mm*350mm*0.06mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(18, 'PB-014', NULL, 'Plastic Bag 300*550*0.06', NULL, '300mm*550mm*0.06mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(19, 'PB-015', NULL, 'Plastic Bag 200*300*0.03', NULL, '200mm*300mm*0.03mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(20, 'PB-016', NULL, 'Plastic Bag Klip 30*40*0.03', NULL, '30mm*40mm*0.03mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(21, 'PB-017', NULL, 'Plastic Bubble 58*124 ~d 3cm', NULL, '50*123 ~ d 3cm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(22, 'PB-018', NULL, 'Plastic Bag 600*400*0.05', NULL, '600mm * 400mm * 0.05mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(23, 'PB-019', NULL, 'Plastic Bag 1200*900*0.06', NULL, '1200mm * 900mm * 0.06mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(24, 'PB-020', NULL, 'Plastic Bag 600*400*0.06', NULL, '600mm * 400mm * 0.06mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(25, 'CTB-001', NULL, 'Carton Box B1', NULL, 'Carton Box 539mm x 374mm x 368mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(26, 'CTB-002', NULL, 'Carton Box 600*400*300-10', NULL, 'Carton Box 600mm x 400mm x 300mm - 10', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(27, 'CTB-003', NULL, 'Carton Box CB590*390', NULL, 'Carton Box CB590*390', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(28, 'CTB-004', NULL, 'Carton Box ZX600*400*300-SLM', NULL, 'Carton Box ZX600*400*300-SLM', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(29, 'CTB-005', NULL, 'Carton Box 539x374x68', NULL, '539x374x68', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(30, 'CTB-006', NULL, 'Carton Box B3', NULL, 'Carton Box 546mm x 381mm x 191mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(31, 'CTB-007', NULL, 'Carton Box SIWS', NULL, 'Carton Box 456mm x 326mm x 350mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(32, 'CTB-008', NULL, 'Carton Box B2', NULL, 'Carton Box 345mm x 255mm x 340mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(33, 'CTB-009', NULL, 'Carton Box B0', NULL, 'Carton Box 665mm x 435mm x 550mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(34, 'CTB-010', NULL, 'Carton Box B5', NULL, 'Carton Box 700mm x 365mm x 470mm (Inside), 710mm x 370mm x 480mm (Outside)', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(35, 'CP-001', NULL, 'Corner Protection 50*50*4*80', NULL, '50*50*4*80', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(36, 'CP-002', NULL, 'High/Low Corner Protection 50*50*4*1940', NULL, '50*50*4*1940', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(37, 'TRB-001', NULL, 'Turnover Box 660*460*355mm Blue', NULL, '660*460*355mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(38, 'TRB-002', NULL, 'Turnover Box 690*485*375mm Blue', NULL, 'BOX BLUE 690*485*375mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(39, 'TRB-003', NULL, 'Turnover Box 690*485*375mm Green', NULL, 'BOX GREEN 690*485*375mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(40, 'BOARD-001', NULL, 'Paperboard 530x365x2', NULL, 'Paper Board 530mm x 365mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(41, 'BOARD-002', NULL, 'Layer', NULL, 'Layer 575mm x 370mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(42, 'BOARD-003', NULL, 'Paperboard 530x355x2', NULL, 'Paperboard 530mm x 355mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(43, 'BOARD-004', NULL, 'Paperboard 450x320x2', NULL, 'Paperboard 450mm x 320mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(44, 'BOARD-005', NULL, 'Paperboard 640x415x2', NULL, 'Paperboard 640mm x 415mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(45, 'BOARD-006', NULL, 'Paperboard 336x246x2', NULL, 'Paperboard 336mm x 246mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(46, 'PRT-001', NULL, 'Partition (XC2B)', NULL, 'Carton 545mm x 365mm x 115mm, XC2B', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(47, 'PRT-002', NULL, 'Partition A', NULL, 'Carton, 540mm x 370mm x 195mm, t=2mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(48, 'PRT-003', NULL, 'Partition B', NULL, 'Carton, 470mm x 408mm x 470mm x 150mm, t=2mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(49, 'PRT-004', NULL, 'Partition', NULL, 'Carton, 120mm x 370mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(50, 'PRT-005', NULL, 'Partition', NULL, 'Carton, 90mm x 370mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(51, 'PRT-006', NULL, 'Partition E', NULL, 'Carton, 540mm x 365mm x 115mm_2 Barrier', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(52, 'PRT-007', NULL, 'Partition C', NULL, 'Carton, 525mm x 362mm x 115mm_3 Barrier', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(53, 'PRT-008', NULL, 'Partition D', NULL, 'Carton, 525mm x 362mm x 80mm_4 Barrier', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(54, 'PRT-009', NULL, 'Partition BBM01', NULL, 'Carton, 640mm x 415mm x 235mm_3 Barrier', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(55, 'PRT-010', NULL, 'Partition F', NULL, 'Carton, 525mm x 362mm x 90mm_4 Barrier', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(56, 'PRT-011', NULL, 'Partition G', NULL, 'Carton, 525mm x 308mm x 85mm_4 Barrier', '4', '1', NULL, '1', NULL, NULL, NULL, NULL),
(57, 'PA66 A0210', NULL, 'Nylon Plastic Materials', NULL, 'BLACK,PA66 A0210', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(58, 'PA66+PPE A0230', NULL, 'Nylon Plastic Materials', NULL, 'BLACK,PA66+PPE A0230', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(59, 'PA66+TPE(TR161)-1', NULL, 'Nylon Plastic Materials', NULL, 'Black,PA66+TPE(TR161),230', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(60, 'PA66+TPE(TR161)-2', NULL, 'Nylon Plastic Materials', NULL, 'ORANGE,PA66+TPE(TR161)250', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(61, 'PA66103FHS', NULL, 'Nylon Material', NULL, 'BLACK,PPA66103FHS', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(62, 'PA66A3W', NULL, 'Nylon Plastic Materials', NULL, 'Black,PA66 A3W', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(63, 'PA66FR250', NULL, 'Nylon Plastic Materials', NULL, 'BLACK,PA66FR250', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(64, 'PA66GTX951W-7001', NULL, 'Nylon Plastic Materials', NULL, 'BLACK,PA66+PPE GTX951W-7001', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(65, 'PBT-1100-204B', NULL, 'Polybutylene Terephthalate', NULL, 'BLACK,PBT-1100-204B', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(66, 'PBT2002', NULL, 'Polybutylene Terephthalate', NULL, 'NAATURAL,PBT 2002', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(67, 'PBT-GF-1006', NULL, 'Polybutylene Terephthalate', NULL, 'WHITE,PBT-GF-1006-Natural', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(68, 'POM(NW-02)', NULL, 'Polyoxymethylene Plastic Material', NULL, 'Natural, POM(NW-02)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(69, 'PP57MNK10', NULL, 'Polypropylene Plastic Materials', NULL, 'NATURAL,PP57MNK10', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(70, 'PP8726RT-TH', NULL, 'Polypropylene Plastic Materials', NULL, 'ORANGE,PPB8726RT TH', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(71, 'PPBF970A1', NULL, 'Polypropylene Plastic Materials', NULL, 'Natural, PPBF970A1', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(72, 'PPBJ500', NULL, 'Polypropylene Plastic Materials', NULL, 'NATURAL,PPBJ500', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(73, 'PPBJ550', NULL, 'Polypropylene Plastic Materials', NULL, 'Natural, PPBJ550', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(74, 'PPC606W', NULL, 'Polypropylene Plastic Materials', NULL, 'BLACK,PPC606W', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(75, 'PPC616WT', NULL, 'Polypropylene Plastic Materials', NULL, 'Black,PPC616WT', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(76, 'PPJ715M', NULL, 'Polypropylene Plastic Material', NULL, 'NATURAL,PPJ715M', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(77, 'PPTC426BT', NULL, 'Polypropylene Plastic Materials', NULL, 'Black,PPTC426BT', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(78, 'PPTD10', NULL, 'Polypropylene Plastic Materials', NULL, 'Black,PP TD10(3510H-10000)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(79, 'RM', NULL, 'Polypropylene Plastic Materials', NULL, 'Natural Color,PA66 1300S', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(80, 'ZYLPPBF970AI', NULL, 'Polypropylene Plastic Materials', NULL, 'Natural Color,PP', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(81, 'CM110', NULL, 'Master Batch', NULL, 'Black, Master Batch, cm110', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(82, 'ECOMA_A-FR41', NULL, 'Master Batch', NULL, 'Black, Master Batch, ECOMA A-FR41', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(83, 'ECOMA_A-FR46', NULL, 'Master Batch', NULL, 'Black, Master Batch, ECOMA A-FR46, Manufacturer : TEAMPLAST THAI CO.,LTD, Origin : Thailand', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(84, 'EP-1991-20A', NULL, 'Master Batch', NULL, 'Orange,Master Batch,EP-1991-20A', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(85, 'P1-1212-20', NULL, 'Master Batch', NULL, 'Black, Master Batch, P1-1212-20', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(86, 'PE4005', NULL, 'Master Batch', NULL, 'Black,Master Batch,PE 4005', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(87, 'PH-6728', NULL, 'Master Batch', NULL, 'Black, Master Batch, PH-6728', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(88, 'PH-6728BK', NULL, 'Master Batch', NULL, 'Black, Master Batch, PH-6728BK', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(89, 'PPM17N5998BK', NULL, 'Master Batch', NULL, 'Black, Master Batch, PPM17N5998', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(90, 'SMTY', NULL, 'Master Batch', NULL, 'Black, Master Batch, SMTY', '2', '2', NULL, '1', NULL, NULL, NULL, NULL),
(91, 'IAP7047-1215', NULL, 'Stud Clamp', NULL, '7047-1215', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(92, 'IAP7116-8190-02', NULL, 'Terminal', NULL, '7116-8190-02', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(93, 'IAP7117-5537-02', NULL, 'Busbar', NULL, '7117-5537-02', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(94, 'IAP7117-5725-02', NULL, 'Busbar A', NULL, '7117-5725-02', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(95, 'IAP7117-5726-02', NULL, 'Busbar B', NULL, '7117-5726-02', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(96, 'IAP7145-0039-0W', NULL, 'Metal collar ring', NULL, '7145-0039-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(97, 'IAP7145-0110-0W', NULL, 'Metal Collar Ring', NULL, '7145-0110-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(98, 'IAP7145-0120-0W', NULL, 'Metal collar ring', NULL, '7145-0120-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(99, 'IAP7145-0121-0W', NULL, 'Metal collar ring', NULL, '7145-0121-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(100, 'IAP7145-0125-0W', NULL, 'Metal collar ring', NULL, '7145-0125-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(101, 'IAP7145-0129-0W', NULL, 'Metal collar ring', NULL, '7145-0129-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(102, 'IAP7145-0143-0W', NULL, 'Metal Collar Ring', NULL, '7145-0143-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(103, 'IAP7145-0147-0W', NULL, 'Metal collar ring', NULL, '7145-0147-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(104, 'IAP7145-9263-0W', NULL, 'Metal Collar Ring', NULL, '7145-9263-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(105, 'IAP7145-9303-0W', NULL, 'Metal collar ring', NULL, '7145-9303-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(106, 'IAP7145-9331-0W', NULL, 'Metal collar ring', NULL, '7145-9331-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(107, 'IAP7145-9332-0W', NULL, 'Metal Collar Ring', NULL, '7145-9332-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(108, 'IAP7145-9340-0W', NULL, 'Metal Collar Ring', NULL, '7145-9340-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(109, 'IAP7145-9342-0W', NULL, 'Metal collar ring', NULL, '7145-9342-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(110, 'IAP7145-9434-0W', NULL, 'Metal Collar Ring', NULL, '7145-9434-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(111, 'IAP7145-9474-03', NULL, 'Metal collar ring', NULL, '7145-9474-03', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(112, 'IAP7145-9926-0W', NULL, 'Metal collar ring', NULL, '7145-9926-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(113, 'IAP7145-9952-0W', NULL, 'Metal Collar Ring', NULL, '7145-9952-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(114, 'IAP7145-9953-0W', NULL, 'Metal collar ring', NULL, '7145-9953-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(115, 'IAP7145-9954-0W', NULL, 'Metal collar ring', NULL, '7145-9954-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(116, 'IAP7145-9955-0W', NULL, 'Metal collar ring', NULL, '7145-9955-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(117, 'IAP7145-9956-0W', NULL, 'Metal collar ring', NULL, '7145-9956-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(118, 'IAP7145-9958-0W', NULL, 'Metal collar ring', NULL, '7145-9958-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(119, 'IAP7145-9962-0W', NULL, 'Metal collar ring', NULL, '7145-9962-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(120, 'IAP7150-3273-0W', NULL, 'Bolt M6', NULL, '7150-3273-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(121, 'IAP7151-1192-0W', NULL, 'Square Nut M6', NULL, '7151-1192-0W', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(122, 'IAP7152-1461-30', NULL, 'Stud Clamp', NULL, '7152-1461-30', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(123, 'IAP7154-9902-50', NULL, 'Jump Start', NULL, '7154-9902-50', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(124, 'IAP7158-9497', NULL, 'Clip', NULL, '7158-9497', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(125, 'IAP7171-3931-50', NULL, 'Terminal', NULL, '7171-3931-50', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(126, 'IAP7184-9059-50U', NULL, 'COT D22  Stopper', NULL, '7184-9059-50U', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(127, 'IAP7247-8768', NULL, 'Clip', NULL, '7247-8768', '3', '1', NULL, '1', NULL, NULL, NULL, NULL),
(128, 'TEST BERUBAH', NULL, 'Test', NULL, 'Test', '1', '1', '', '0', '', '0.0000', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `kode` varchar(25) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `kode`, `nama`, `status`) VALUES
(1, '150B', '150B', '1'),
(2, 'D55L', 'D55L', '1'),
(3, '400B', '400B', '1'),
(4, '670B', '670B', '1'),
(5, 'XC2B', 'XC2B', '1'),
(6, 'MS2', 'MS2', '1'),
(7, '775B', '775B', '1'),
(8, '600B', '600B', '1'),
(9, 'T-PROJECT', 'T-Project', '1');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `id` int(11) NOT NULL,
  `kode` varchar(15) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id`, `kode`, `nama`, `status`) VALUES
(1, 'PCS', 'Pcs', '1'),
(2, 'KG', 'Kg', '1'),
(3, 'M', 'Meter', '1'),
(4, 'UNIT(S)', 'Unit', '1'),
(5, 'BOX', 'Box', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bom`
--
ALTER TABLE `bom`
  ADD PRIMARY KEY (`id`,`kode`);

--
-- Indexes for table `bom_child`
--
ALTER TABLE `bom_child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`,`kode`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`,`kode`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`,`kode`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`,`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bom`
--
ALTER TABLE `bom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bom_child`
--
ALTER TABLE `bom_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
