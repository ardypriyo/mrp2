-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 10:18 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `berat` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `qty2` int(11) NOT NULL,
  `satuan` varchar(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `use_status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bom`
--

INSERT INTO `bom` (`id`, `kode`, `material`, `berat`, `qty`, `qty2`, `satuan`, `status`, `use_status`) VALUES
(3, '6351-5296', '129', '56.30', 42, 0, '1', '1', NULL);

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
  `qtyBag` int(11) DEFAULT NULL,
  `other` varchar(1) DEFAULT NULL,
  `virgin` int(11) DEFAULT NULL,
  `mb` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `kode`, `kode_rm`, `nama`, `cust_nama`, `spesifikasi`, `tipe_material`, `satuan`, `project`, `status`, `customer`, `berat`, `qty`, `qtyBag`, `other`, `virgin`, `mb`) VALUES
(1, 'BAG-001', NULL, 'Sak Material PP dan PA', NULL, 'Sak Material PP dan PA', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(2, 'BAG-002', NULL, 'Plastic BAG', NULL, '', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(3, 'BAG-003', NULL, 'Kantong Merah', NULL, '', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(4, 'BAG-004', NULL, 'Kantong Abu-Abu', NULL, '', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(5, 'PB-001', NULL, 'Plastic  bag 300*500*0.06', NULL, '300*500*0.06', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(6, 'PB-002', NULL, 'Plastic  bag 1000*1000', NULL, '1000*1000', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(7, 'PB-003', NULL, 'Plastic  bag 500*800*0.06', NULL, '500*800*0.06', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(8, 'PB-004', NULL, 'Plastic  klip 300*200*0.06', NULL, 'Plastic  klip 30*20*0.06', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(9, 'PB-005', NULL, 'Plastic  klip 300*400*0.06', NULL, '300*400*0.06', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(10, 'PB-006', NULL, 'Plastic  bag 1000*700*0.03', NULL, '1000*700*0.03', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(11, 'PB-007', NULL, 'Plastic  bag 10*15', NULL, '10*15', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(12, 'PB-008', NULL, 'Plastic  bag NLD220*320', NULL, '220*320', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(13, 'PB-009', NULL, 'Plastic  Klip 10cm*15cm*0,06mm', NULL, '10cm*15cm*0,06mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(14, 'PB-010', NULL, 'Plastic Bag 600*700*0.03', NULL, '600mm*700mm*0.03mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(15, 'PB-011', NULL, 'Plastic Bag 30*50*0.03', NULL, '30cm*50cm*0.03mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(16, 'PB-012', NULL, 'Plastic Bag 20*35*0.03', NULL, '20cm*35cm*0.03mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(17, 'PB-013', NULL, 'Plastic Bag 250*350*0.06', NULL, '250mm*350mm*0.06mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(18, 'PB-014', NULL, 'Plastic Bag 300*550*0.06', NULL, '300mm*550mm*0.06mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(19, 'PB-015', NULL, 'Plastic Bag 200*300*0.03', NULL, '200mm*300mm*0.03mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(20, 'PB-016', NULL, 'Plastic Bag Klip 30*40*0.03', NULL, '30mm*40mm*0.03mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(21, 'PB-017', NULL, 'Plastic Bubble 58*124 ~d 3cm', NULL, '50*123 ~ d 3cm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(22, 'PB-018', NULL, 'Plastic Bag 600*400*0.05', NULL, '600mm * 400mm * 0.05mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(23, 'PB-019', NULL, 'Plastic Bag 1200*900*0.06', NULL, '1200mm * 900mm * 0.06mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(24, 'PB-020', NULL, 'Plastic Bag 600*400*0.06', NULL, '600mm * 400mm * 0.06mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(25, 'CTB-001', NULL, 'Carton Box B1', NULL, 'Carton Box 539mm x 374mm x 368mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(26, 'CTB-002', NULL, 'Carton Box 600*400*300-10', NULL, 'Carton Box 600mm x 400mm x 300mm - 10', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(27, 'CTB-003', NULL, 'Carton Box CB590*390', NULL, 'Carton Box CB590*390', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(28, 'CTB-004', NULL, 'Carton Box ZX600*400*300-SLM', NULL, 'Carton Box ZX600*400*300-SLM', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(29, 'CTB-005', NULL, 'Carton Box 539x374x68', NULL, '539x374x68', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(30, 'CTB-006', NULL, 'Carton Box B3', NULL, 'Carton Box 546mm x 381mm x 191mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(31, 'CTB-007', NULL, 'Carton Box SIWS', NULL, 'Carton Box 456mm x 326mm x 350mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(32, 'CTB-008', NULL, 'Carton Box B2', NULL, 'Carton Box 345mm x 255mm x 340mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(33, 'CTB-009', NULL, 'Carton Box B0', NULL, 'Carton Box 665mm x 435mm x 550mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(34, 'CTB-010', NULL, 'Carton Box B5', NULL, 'Carton Box 700mm x 365mm x 470mm (Inside), 710mm x 370mm x 480mm (Outside)', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(35, 'CP-001', NULL, 'Corner Protection 50*50*4*80', NULL, '50*50*4*80', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(36, 'CP-002', NULL, 'High/Low Corner Protection 50*50*4*1940', NULL, '50*50*4*1940', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(37, 'TRB-001', NULL, 'Turnover Box 660*460*355mm Blue', NULL, '660*460*355mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(38, 'TRB-002', NULL, 'Turnover Box 690*485*375mm Blue', NULL, 'BOX BLUE 690*485*375mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(39, 'TRB-003', NULL, 'Turnover Box 690*485*375mm Green', NULL, 'BOX GREEN 690*485*375mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(40, 'BOARD-001', NULL, 'Paperboard 530x365x2', NULL, 'Paper Board 530mm x 365mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(41, 'BOARD-002', NULL, 'Layer', NULL, 'Layer 575mm x 370mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(42, 'BOARD-003', NULL, 'Paperboard 530x355x2', NULL, 'Paperboard 530mm x 355mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(43, 'BOARD-004', NULL, 'Paperboard 450x320x2', NULL, 'Paperboard 450mm x 320mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(44, 'BOARD-005', NULL, 'Paperboard 640x415x2', NULL, 'Paperboard 640mm x 415mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(45, 'BOARD-006', NULL, 'Paperboard 336x246x2', NULL, 'Paperboard 336mm x 246mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(46, 'PRT-001', NULL, 'Partition (XC2B)', NULL, 'Carton 545mm x 365mm x 115mm, XC2B', '4', '1', '5', '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(47, 'PRT-002', NULL, 'Partition A', NULL, 'Carton, 540mm x 370mm x 195mm, t=2mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(48, 'PRT-003', NULL, 'Partition B', NULL, 'Carton, 470mm x 408mm x 470mm x 150mm, t=2mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(49, 'PRT-004', NULL, 'Partition', NULL, 'Carton, 120mm x 370mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(50, 'PRT-005', NULL, 'Partition', NULL, 'Carton, 90mm x 370mm x 2mm', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(51, 'PRT-006', NULL, 'Partition E', NULL, 'Carton, 540mm x 365mm x 115mm_2 Barrier', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(52, 'PRT-007', NULL, 'Partition C', NULL, 'Carton, 525mm x 362mm x 115mm_3 Barrier', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(53, 'PRT-008', NULL, 'Partition D', NULL, 'Carton, 525mm x 362mm x 80mm_4 Barrier', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(54, 'PRT-009', NULL, 'Partition BBM01', NULL, 'Carton, 640mm x 415mm x 235mm_3 Barrier', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(55, 'PRT-010', NULL, 'Partition F', NULL, 'Carton, 525mm x 362mm x 90mm_4 Barrier', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(56, 'PRT-011', NULL, 'Partition G', NULL, 'Carton, 525mm x 308mm x 85mm_4 Barrier', '4', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(57, 'PA66 A0210', NULL, 'Nylon Plastic Materials', NULL, 'BLACK,PA66 A0210', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(58, 'PA66+PPE A0230', NULL, 'Nylon Plastic Materials', NULL, 'BLACK,PA66+PPE A0230', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(59, 'PA66+TPE(TR161)-1', NULL, 'Nylon Plastic Materials', NULL, 'Black,PA66+TPE(TR161),230', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(60, 'PA66+TPE(TR161)-2', NULL, 'Nylon Plastic Materials', NULL, 'ORANGE,PA66+TPE(TR161)250', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(61, 'PA66103FHS', NULL, 'Nylon Material', NULL, 'BLACK,PPA66103FHS', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(62, 'PA66A3W', NULL, 'Nylon Plastic Materials', NULL, 'Black,PA66 A3W', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(63, 'PA66FR250', NULL, 'Nylon Plastic Materials', NULL, 'BLACK,PA66FR250', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(64, 'PA66GTX951W-7001', NULL, 'Nylon Plastic Materials', NULL, 'BLACK,PA66+PPE GTX951W-7001', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(65, 'PBT-1100-204B', NULL, 'Polybutylene Terephthalate', NULL, 'BLACK,PBT-1100-204B', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(66, 'PBT2002', NULL, 'Polybutylene Terephthalate', NULL, 'NAATURAL,PBT 2002', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(67, 'PBT-GF-1006', NULL, 'Polybutylene Terephthalate', NULL, 'WHITE,PBT-GF-1006-Natural', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(68, 'POM(NW-02)', NULL, 'Polyoxymethylene Plastic Material', NULL, 'Natural, POM(NW-02)', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(69, 'PP57MNK10', NULL, 'Polypropylene Plastic Materials', NULL, 'NATURAL,PP57MNK10', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(70, 'PP8726RT-TH', NULL, 'Polypropylene Plastic Materials', NULL, 'ORANGE,PPB8726RT TH', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(71, 'PPBF970A1', NULL, 'Polypropylene Plastic Materials', NULL, 'Natural, PPBF970A1', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(72, 'PPBJ500', NULL, 'Polypropylene Plastic Materials', NULL, 'NATURAL,PPBJ500', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(73, 'PPBJ550', NULL, 'Polypropylene Plastic Materials', NULL, 'Natural, PPBJ550', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(74, 'PPC606W', NULL, 'Polypropylene Plastic Materials', NULL, 'BLACK,PPC606W', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(75, 'PPC616WT', NULL, 'Polypropylene Plastic Materials', NULL, 'Black,PPC616WT', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(76, 'PPJ715M', NULL, 'Polypropylene Plastic Material', NULL, 'NATURAL,PPJ715M', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(77, 'PPTC426BT', NULL, 'Polypropylene Plastic Materials', NULL, 'Black,PPTC426BT', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(78, 'PPTD10', NULL, 'Polypropylene Plastic Materials', NULL, 'Black,PP TD10(3510H-10000)', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(79, 'RM', NULL, 'Polypropylene Plastic Materials', NULL, 'Natural Color,PA66 1300S', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(80, 'ZYLPPBF970AI', NULL, 'Polypropylene Plastic Materials', NULL, 'Natural Color,PP', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '3', 0, '0.00'),
(81, 'CM110', NULL, 'Master Batch', NULL, 'Black, Master Batch, cm110', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '4', 0, '0.00'),
(82, 'ECOMA_A-FR41', NULL, 'Master Batch', NULL, 'Black, Master Batch, ECOMA A-FR41', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '4', 0, '0.00'),
(83, 'ECOMA_A-FR46', NULL, 'Master Batch', NULL, 'Black, Master Batch, ECOMA A-FR46, Manufacturer : TEAMPLAST THAI CO.,LTD, Origin : Thailand', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '4', 0, '0.00'),
(84, 'EP-1991-20A', NULL, 'Master Batch', NULL, 'Orange,Master Batch,EP-1991-20A', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '4', 0, '0.00'),
(85, 'P1-1212-20', NULL, 'Master Batch', NULL, 'Black, Master Batch, P1-1212-20', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '4', 0, '0.00'),
(86, 'PE4005', NULL, 'Master Batch', NULL, 'Black,Master Batch,PE 4005', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '4', 0, '0.00'),
(87, 'PH-6728', NULL, 'Master Batch', NULL, 'Black, Master Batch, PH-6728', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '4', 0, '0.00'),
(88, 'PH-6728BK', NULL, 'Master Batch', NULL, 'Black, Master Batch, PH-6728BK', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '4', 0, '0.00'),
(89, 'PPM17N5998BK', NULL, 'Master Batch', NULL, 'Black, Master Batch, PPM17N5998', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '4', 0, '0.00'),
(90, 'SMTY', NULL, 'Master Batch', NULL, 'Black, Master Batch, SMTY', '2', '2', NULL, '1', NULL, NULL, NULL, 0, '4', 0, '0.00'),
(91, 'IAP7047-1215', NULL, 'Stud Clamp', NULL, '7047-1215', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(92, 'IAP7116-8190-02', NULL, 'Terminal', NULL, '7116-8190-02', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(93, 'IAP7117-5537-02', NULL, 'Busbar', NULL, '7117-5537-02', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(94, 'IAP7117-5725-02', NULL, 'Busbar A', NULL, '7117-5725-02', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(95, 'IAP7117-5726-02', NULL, 'Busbar B', NULL, '7117-5726-02', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(96, 'IAP7145-0039-0W', NULL, 'Metal collar ring', NULL, '7145-0039-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(97, 'IAP7145-0110-0W', NULL, 'Metal Collar Ring', NULL, '7145-0110-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(98, 'IAP7145-0120-0W', NULL, 'Metal collar ring', NULL, '7145-0120-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(99, 'IAP7145-0121-0W', NULL, 'Metal collar ring', NULL, '7145-0121-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(100, 'IAP7145-0125-0W', NULL, 'Metal collar ring', NULL, '7145-0125-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(101, 'IAP7145-0129-0W', NULL, 'Metal collar ring', NULL, '7145-0129-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(102, 'IAP7145-0143-0W', NULL, 'Metal Collar Ring', NULL, '7145-0143-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(103, 'IAP7145-0147-0W', NULL, 'Metal collar ring', NULL, '7145-0147-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(104, 'IAP7145-9263-0W', NULL, 'Metal Collar Ring', NULL, '7145-9263-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(105, 'IAP7145-9303-0W', NULL, 'Metal collar ring', NULL, '7145-9303-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(106, 'IAP7145-9331-0W', NULL, 'Metal collar ring', NULL, '7145-9331-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(107, 'IAP7145-9332-0W', NULL, 'Metal Collar Ring', NULL, '7145-9332-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(108, 'IAP7145-9340-0W', NULL, 'Metal Collar Ring', NULL, '7145-9340-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(109, 'IAP7145-9342-0W', NULL, 'Metal collar ring', NULL, '7145-9342-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(110, 'IAP7145-9434-0W', NULL, 'Metal Collar Ring', NULL, '7145-9434-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(111, 'IAP7145-9474-03', NULL, 'Metal collar ring', NULL, '7145-9474-03', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(112, 'IAP7145-9926-0W', NULL, 'Metal collar ring', NULL, '7145-9926-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(113, 'IAP7145-9952-0W', NULL, 'Metal Collar Ring', NULL, '7145-9952-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(114, 'IAP7145-9953-0W', NULL, 'Metal collar ring', NULL, '7145-9953-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(115, 'IAP7145-9954-0W', NULL, 'Metal collar ring', NULL, '7145-9954-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(116, 'IAP7145-9955-0W', NULL, 'Metal collar ring', NULL, '7145-9955-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(117, 'IAP7145-9956-0W', NULL, 'Metal collar ring', NULL, '7145-9956-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(118, 'IAP7145-9958-0W', NULL, 'Metal collar ring', NULL, '7145-9958-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(119, 'IAP7145-9962-0W', NULL, 'Metal collar ring', NULL, '7145-9962-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(120, 'IAP7150-3273-0W', NULL, 'Bolt M6', NULL, '7150-3273-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(121, 'IAP7151-1192-0W', NULL, 'Square Nut M6', NULL, '7151-1192-0W', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(122, 'IAP7152-1461-30', NULL, 'Stud Clamp', NULL, '7152-1461-30', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(123, 'IAP7154-9902-50', NULL, 'Jump Start', NULL, '7154-9902-50', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(124, 'IAP7158-9497', NULL, 'Clip', NULL, '7158-9497', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(125, 'IAP7171-3931-50', NULL, 'Terminal', NULL, '7171-3931-50', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(126, 'IAP7184-9059-50U', NULL, 'COT D22  Stopper', NULL, '7184-9059-50U', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(127, 'IAP7247-8768', NULL, 'Clip', NULL, '7247-8768', '3', '1', NULL, '1', NULL, NULL, NULL, 0, NULL, 0, '0.00'),
(128, 'TEST BERUBAH', NULL, 'Test', NULL, 'Test', '1', '1', '', '0', '', '0.0000', 0, 0, '', 0, '0.00'),
(129, '6351-5296', NULL, 'RB Cover', NULL, 'BLACK,PPBF970A1-6,D55L,D26A,SIWS', '1', '1', '13', '1', '2', '56.3000', 42, 0, '1', 0, '0.00'),
(130, '6910-8534', NULL, 'Bracket', NULL, 'NATURAL,PBT-2002,D26A,SIWS', '1', '1', '13', '1', '2', '11.8000', 100, 0, '1', 0, '0.00'),
(131, '6910-8535', NULL, 'Bracket', NULL, 'NATURAL,PBT-2002,D26A,SIWS', '1', '1', '13', '1', '2', '8.5000', 100, 0, '1', 0, '0.00'),
(132, '7142-6243-51', NULL, 'Protector', NULL, 'ORANGE,PPBJ550-3,T-PROJECT,PASI', '1', '1', '9', '1', '1', '3.4500', 1600, 0, '1', 0, '0.00'),
(133, '7142-6294-51', NULL, 'Protector', NULL, 'ORANGE,PPBJ550-2,T-PROJECT,PASI', '1', '1', '9', '1', '1', '4.2000', 1600, 0, '1', 0, '0.00'),
(134, '7152-5603-30', NULL, 'Connector Holder', NULL, 'BLACK,PPBF970AI-7,665B,PASI', '1', '1', '12', '1', '1', '15.2000', 455, 0, '1', 0, '0.00'),
(135, '7154-0826-30', NULL, 'RB Base', NULL, 'BLACK,PA66 A0210,T-Project,PASI', '1', '1', '9', '1', '1', '32.5000', 225, 0, '1', 0, '0.00'),
(136, '7154-7540-30', NULL, 'RB FRAME', NULL, 'BLACK,PPTC426BT,T-Project,PASI', '1', '1', '9', '1', '1', '80.5000', 48, 0, '1', 0, '0.00'),
(137, '7154-7542-30', NULL, 'RB Cover', NULL, 'BLACK,PPTC426BT,T-Project,PASI', '1', '1', '9', '1', '1', '77.3000', 30, 0, '1', 0, '0.00'),
(138, '7154-7618-30', NULL, 'RB Cover', NULL, 'BLACK,PPTC426BT,T-Project,PASI', '1', '1', '9', '1', '1', '82.9000', 30, 0, '1', 0, '0.00'),
(139, '7154-7873-30', NULL, 'R/B Cover', NULL, 'BLACK,57MNK10-1,T-PROJECT,PASI', '1', '1', '9', '1', '1', '9.3500', 800, 0, '1', 0, '0.00'),
(140, '7154-7874-30', NULL, 'R/B Cover', NULL, 'BLACK,57MNK10-1,T-PROJECT,PASI', '1', '1', '9', '1', '1', '3.7000', 800, 0, '1', 0, '0.00'),
(141, '7154-7940-30', NULL, 'R/B Cover', NULL, 'BLACK,PP57MNK10-1,T-Project,PASI', '1', '1', '9', '1', '1', '14.3000', 600, 0, '1', 0, '0.00'),
(142, '7171-1463-30', NULL, 'RB Frame', NULL, 'BLACK,PP C426BT,T-Project,PASI', '1', '1', '9', '1', '1', '230.9000', 10, 0, '1', 0, '0.00'),
(143, '7171-2116', NULL, 'Protector', NULL, 'NATURAL,PPBF970A1,D55L, PASI', '1', '1', '2', '1', '1', '38.6000', 150, 0, '1', 0, '0.00'),
(144, '7171-2188-30', NULL, 'R/B', NULL, 'BLACK,PA66GTX951W-7001,670B,PASI', '1', '1', '4', '1', '1', '21.0000', 1092, 0, '1', 0, '0.00'),
(145, '7171-5408-30', NULL, 'RB Cover', NULL, 'BLACK,PP C426BT,T-Project,PASI', '1', '1', '9', '1', '1', '131.3000', 18, 0, '1', 0, '0.00'),
(146, '7171-6047', NULL, 'RB Frame', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '125.0000', 40, 0, '1', 0, '0.00'),
(147, '7171-6048', NULL, 'RB Frame', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '124.3000', 40, 0, '1', 0, '0.00'),
(148, '7171-6330-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,400B,PASI', '1', '1', '3', '1', '1', '15.8000', 750, 0, '1', 0, '0.00'),
(149, '7171-6334-30', NULL, 'Protector', NULL, 'BLACK,PBT-1100-204B,400B,PASI', '1', '1', '3', '1', '1', '4.2000', 3600, 0, '1', 0, '0.00'),
(150, '7171-6335-30', NULL, 'Protector', NULL, 'BLACK,PBT-1100-204B,400B,PASI', '1', '1', '3', '1', '1', '3.9000', 4000, 0, '1', 0, '0.00'),
(151, '7171-6395-30', NULL, 'Protector', NULL, 'BLACK,PA66+TPE(TR161),775B,PASI', '1', '1', '7', '1', '1', '50.4000', 128, 0, '1', 0, '0.00'),
(152, '7171-6396-30', NULL, 'Protector', NULL, 'BLACK,PA66+TPE(TR161),775B,PASI', '1', '1', '7', '1', '1', '13.8000', 300, 0, '1', 0, '0.00'),
(153, '7171-6443', NULL, 'Protector', NULL, 'NATURAL,PPBF970A1,D55L,PASI', '1', '1', '2', '1', '1', '10.8000', 480, 0, '1', 0, '0.00'),
(154, '7171-6444', NULL, 'Protector', NULL, 'NATURAL,PPBF970A1,D55L,PASI', '1', '1', '2', '1', '1', '18.0000', 216, 0, '1', 0, '0.00'),
(155, '7171-7072-30', NULL, 'Protector', NULL, 'BLACK,PPJ715M-1,T-PROJECT,PASI', '1', '1', '9', '1', '1', '6.1000', 600, 0, '1', 0, '0.00'),
(156, '7171-8385', NULL, 'Protector', NULL, 'NATURAL,PPBF970A1,D55L,PASI', '1', '1', '2', '1', '1', '25.5000', 238, 0, '1', 0, '0.00'),
(157, '7171-8403-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '22.0000', 72, 0, '1', 0, '0.00'),
(158, '7171-9408-30', NULL, 'RB Cover', NULL, 'BLACK,PP C426BT,T-Project,PASI', '1', '1', '9', '1', '1', '0.0000', 1, 0, '1', 0, '0.00'),
(159, '7173-2669', NULL, 'Protector', NULL, 'NATURAL,PPBJ500,T-Project,PASI', '1', '1', '9', '1', '1', '5.7000', 1000, 0, '1', 0, '0.00'),
(160, '7173-2680', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-PROJECT,PASI', '1', '1', '9', '1', '1', '24.7000', 120, 0, '1', 0, '0.00'),
(161, '7173-2688', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '5.1000', 1600, 0, '1', 0, '0.00'),
(162, '7173-2786', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10-T-PROJECT,PASI', '1', '1', '9', '1', '1', '10.6500', 600, 0, '1', 0, '0.00'),
(163, '7173-3016-30', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '21.0000', 80, 0, '1', 0, '0.00'),
(164, '7173-3018-30', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '21.6000', 80, 0, '1', 0, '0.00'),
(165, '7173-4797-30', NULL, 'Protector', NULL, 'BLACK,PP BJ550,XC2B,PASI', '1', '1', '5', '1', '1', '23.6000', 300, 0, '1', 0, '0.00'),
(166, '7173-4799-30', NULL, 'Protector', NULL, 'BLACK,PP BJ550,XC2B,PASI', '1', '1', '5', '1', '1', '23.6000', 300, 0, '1', 0, '0.00'),
(167, '7176-0044-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '234.0000', 240, 0, '1', 0, '0.00'),
(168, '7176-0045-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '7.5000', 800, 0, '1', 0, '0.00'),
(169, '7176-0190-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '44.6000', 75, 0, '1', 0, '0.00'),
(170, '7176-0192-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '24.9000', 280, 0, '1', 0, '0.00'),
(171, '7176-0194-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '40.8000', 100, 0, '1', 0, '0.00'),
(172, '7176-0196-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '18.3000', 360, 0, '1', 0, '0.00'),
(173, '7176-0198-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '24.0000', 220, 0, '1', 0, '0.00'),
(174, '7176-0200-30', NULL, 'Protector', NULL, 'BLACK,PPC616WT,T-Project,PASI', '1', '1', '9', '1', '1', '47.7000', 80, 0, '1', 0, '0.00'),
(175, '7176-0202-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '24.8000', 224, 0, '1', 0, '0.00'),
(176, '7176-0205-30', NULL, 'Protector', NULL, 'BLACK,PPBF970AI-8,150B,PASI', '1', '1', '1', '1', '1', '45.4000', 48, 0, '1', 0, '0.00'),
(177, '7176-0206-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,150B,PASI', '1', '1', '1', '1', '1', '16.1500', 420, 0, '1', 0, '0.00'),
(178, '7176-0208-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '10.8000', 500, 0, '1', 0, '0.00'),
(179, '7176-0452-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '21.5000', 160, 0, '1', 0, '0.00'),
(180, '7176-0920-50', NULL, 'Protector', NULL, 'ORANGE,PA66+TPE(TR161)-2,T-PROJECT,PASI', '1', '1', '9', '1', '1', '48.6000', 144, 0, '1', 0, '0.00'),
(181, '7176-0922-50', NULL, 'Protector', NULL, 'ORANGE,PA66+TPE(TR161)-2,T-Project,PASI', '1', '1', '9', '1', '1', '17.6000', 200, 0, '1', 0, '0.00'),
(182, '7176-1180', NULL, 'Protector', NULL, 'NATURAL,PPBJ500,T-Project,PASI', '1', '1', '9', '1', '1', '22.8000', 200, 0, '1', 0, '0.00'),
(183, '7176-1716-30', NULL, 'Protector', NULL, 'BLACK,PA66 A0230,T-PROJECT,PASI', '1', '1', '9', '1', '1', '19.2000', 400, 0, '1', 0, '0.00'),
(184, '7176-1722-30', NULL, 'Protector', NULL, 'BLACK,PA66 A0230,T-Project,PASI', '1', '1', '9', '1', '1', '31.1000', 200, 0, '1', 0, '0.00'),
(185, '7176-2272-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '24.3500', 180, 0, '1', 0, '0.00'),
(186, '7176-2274-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '23.7000', 174, 0, '1', 0, '0.00'),
(187, '7176-2275-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '15.6000', 450, 0, '1', 0, '0.00'),
(188, '7176-2448-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '20.4000', 240, 0, '1', 0, '0.00'),
(189, '7176-2450-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,150B,PASI', '1', '1', '1', '1', '1', '14.4000', 350, 0, '1', 0, '0.00'),
(190, '7176-2452-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '32.7500', 200, 0, '1', 0, '0.00'),
(191, '7176-2454-30-A', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '63.1000', 120, 0, '1', 0, '0.00'),
(192, '7176-2469-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '35.7000', 120, 0, '1', 0, '0.00'),
(193, '7176-2470-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '6.1000', 1300, 0, '1', 0, '0.00'),
(194, '7176-2472-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '8.9000', 700, 0, '1', 0, '0.00'),
(195, '7176-2476-30', NULL, 'Protector', NULL, '\"BLACK,PPBF970A1-5,150B,PASI										\"', '1', '1', '1', '1', '2', '48.7000', 100, 0, '1', 0, '0.00'),
(196, '7176-2479-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '8.4000', 900, 0, '1', 0, '0.00'),
(197, '7176-2481-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '49.3000', 72, 0, '1', 0, '0.00'),
(198, '7176-2483-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '59.8000', 160, 0, '1', 0, '0.00'),
(199, '7176-2488-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '10.7500', 450, 0, '1', 0, '0.00'),
(200, '7176-3540-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,400B,PASI', '1', '1', '3', '1', '1', '9.2000', 840, 0, '1', 0, '0.00'),
(201, '7176-4122-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,400B,PASI', '1', '1', '3', '1', '1', '27.7000', 280, 0, '1', 0, '0.00'),
(202, '7176-4683-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,400B,PASI', '1', '1', '3', '1', '1', '12.5000', 960, 0, '1', 0, '0.00'),
(203, '7176-4684-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,400B,PASI', '1', '1', '3', '1', '1', '4.2000', 2000, 0, '1', 0, '0.00'),
(204, '7176-4735-30', NULL, 'Protector', NULL, 'BLACK,PA66+TPE(TR161),775B,PASI', '1', '1', '7', '1', '1', '18.0000', 200, 0, '1', 0, '0.00'),
(205, '7176-4736-30', NULL, 'Protector', NULL, 'BLACK,PA66+TPE(TR161),775B,PASI', '1', '1', '7', '1', '1', '8.4000', 450, 0, '1', 0, '0.00'),
(206, '7176-5263-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-2,3M0,PASI', '1', '1', '10', '1', '1', '15.2000', 550, 0, '1', 0, '0.00'),
(207, '7176-5264-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-2,3M0,PASI', '1', '1', '10', '1', '1', '20.8000', 352, 0, '1', 0, '0.00'),
(208, '7176-5265-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-2,3M0,PASI', '1', '1', '10', '1', '1', '7.6000', 900, 0, '1', 0, '0.00'),
(209, '7176-5399-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-7,D55L,PASI', '1', '1', '2', '1', '1', '26.5000', 150, 0, '1', 0, '0.00'),
(210, '7176-5458-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '22.0000', 110, 0, '1', 0, '0.00'),
(211, '7176-5459-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '26.9000', 168, 0, '1', 0, '0.00'),
(212, '7176-5460-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '9.9000', 600, 0, '1', 0, '0.00'),
(213, '7176-5464-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '36.0000', 48, 0, '1', 0, '0.00'),
(214, '7176-5466-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '14.0000', 78, 0, '1', 0, '0.00'),
(215, '7176-5468-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '22.0000', 110, 0, '1', 0, '0.00'),
(216, '7176-5558-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-7,D26A,PASI', '1', '1', '13', '1', '1', '18.0000', 156, 0, '1', 0, '0.00'),
(217, '7176-5558-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-7,D26A,PASI', '1', '1', '13', '1', '1', '18.0000', 156, 0, '1', 0, '0.00'),
(218, '7176-5559-30', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-7,D26A,PASI', '1', '1', '13', '1', '1', '10.8000', 660, 0, '1', 0, '0.00'),
(219, '7176-5594-99', NULL, 'Clamp Outer', NULL, 'BLACK,PPBF970A1-9,670B,PASI', '1', '1', '4', '1', '1', '68.8000', 40, 0, '1', 0, '0.00'),
(220, '7176-5595-99', NULL, 'Clamp Outer', NULL, 'BLACK,PPBF970A1-9,670B,PASI', '1', '1', '4', '1', '1', '68.8000', 40, 0, '1', 0, '0.00'),
(221, '7176-5598', NULL, 'Protector', NULL, 'NATURAL,POM(NW-02),670B,PASI', '1', '1', '4', '1', '1', '44.0000', 265, 0, '1', 0, '0.00'),
(222, '7176-5599', NULL, 'Protector', NULL, 'NATURAL,POM(NW-02),670B,PASI', '1', '1', '4', '1', '1', '44.0000', 265, 0, '1', 0, '0.00'),
(223, '7176-5600', NULL, 'Protector', NULL, 'NATURAL,PPBF970A1,670B,PASI', '1', '1', '4', '1', '1', '15.5000', 350, 0, '1', 0, '0.00'),
(224, '7176-5601', NULL, 'Protector', NULL, 'NATURAL,PPBF970A1,670B,PASI', '1', '1', '4', '1', '1', '15.9000', 350, 0, '1', 0, '0.00'),
(225, '7176-5602', NULL, 'Protector', NULL, 'NATURAL,POM(NW-02),670B,PASI', '1', '1', '4', '1', '1', '42.0000', 2440, 0, '1', 0, '0.00'),
(226, '7184-6031-30', NULL, 'Protector', NULL, 'BLACK,PPA66FR250,T-Project,PASI', '1', '1', '9', '1', '1', '28.8000', 200, 0, '1', 0, '0.00'),
(227, '7184-6033-30', NULL, 'Protector', NULL, 'BLACK,PPA66FR250,T-Project,PASI', '1', '1', '9', '1', '1', '12.8000', 500, 0, '1', 0, '0.00'),
(228, '7184-6336-30', NULL, 'Protector', NULL, 'BLACK,PPBJ550,T-Project,PASI', '1', '1', '9', '1', '1', '32.5000', 40, 0, '1', 0, '0.00'),
(229, '7184-6366-30', NULL, 'Protector', NULL, 'BLACK,PPC606W,T-PROJECT,PASI', '1', '1', '9', '1', '1', '33.0000', 100, 0, '1', 0, '0.00'),
(230, '7184-7952-30', NULL, 'Protector', NULL, 'BLACK,PPJ5715M-1,T-PROJECT,PASI', '1', '1', '9', '1', '1', '11.0000', 300, 0, '1', 0, '0.00'),
(231, '7184-9427', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '28.4000', 75, 0, '1', 0, '0.00'),
(232, '7184-9428', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '18.3000', 270, 0, '1', 0, '0.00'),
(233, '7184-9430', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '27.3000', 60, 0, '1', 0, '0.00'),
(234, '7184-9431', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '17.9000', 180, 0, '1', 0, '0.00'),
(235, '7184-9432', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-PROJECT,PASI', '1', '1', '9', '1', '1', '30.2000', 60, 0, '1', 0, '0.00'),
(236, '7184-9433', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-PROJECT,PASI', '1', '1', '9', '1', '1', '20.8000', 180, 0, '1', 0, '0.00'),
(237, '7184-9434', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '30.5000', 90, 0, '1', 0, '0.00'),
(238, '7184-9435', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-PROJECT,PASI', '1', '1', '9', '1', '1', '18.3000', 270, 0, '1', 0, '0.00'),
(239, '7184-9440', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '22.6000', 150, 0, '1', 0, '0.00'),
(240, '7184-9441', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-PROJECT,PASI', '1', '1', '9', '1', '1', '23.5000', 150, 0, '1', 0, '0.00'),
(241, '7184-9443-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-PROJECT,PASI', '1', '1', '9', '1', '1', '20.8000', 200, 0, '1', 0, '0.00'),
(242, '7184-9461-30', NULL, 'Protector', NULL, 'BLACK, PA66A3W,T-Project, PASI', '1', '1', '9', '1', '1', '15.1000', 400, 0, '1', 0, '0.00'),
(243, '7184-9462-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '8.2000', 600, 0, '1', 0, '0.00'),
(244, '7184-9473-30', NULL, 'Protector', NULL, 'BLACK,PPA66A3W,T-PROJECT,PASI', '1', '1', '9', '1', '1', '16.8000', 400, 0, '1', 0, '0.00'),
(245, '7184-9474-30', NULL, 'Protector', NULL, 'BLACK,PPA66A3W,T-PROJECT,PASI', '1', '1', '9', '1', '1', '7.8000', 600, 0, '1', 0, '0.00'),
(246, '7184-9603', NULL, 'Protector', NULL, 'NATURAL,PPBJ500,T-PROJECT,PASI', '1', '1', '9', '1', '1', '36.1000', 180, 0, '1', 0, '0.00'),
(247, '7184-9691', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-PROJECT,PASI', '1', '1', '9', '1', '1', '88.4000', 45, 0, '1', 0, '0.00'),
(248, '7184-9829-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '36.2000', 160, 0, '1', 0, '0.00'),
(249, '7184-9833-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '33.4000', 200, 0, '1', 0, '0.00'),
(250, '7184-9837-30', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '24.3000', 200, 0, '1', 0, '0.00'),
(251, '7184-9839-30', NULL, 'Protector\"', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '26.5000', 160, 0, '1', 0, '0.00'),
(252, '7185-0273-51', NULL, 'Protector', NULL, 'ORANGE,PPBJ550-3,T-PROJECT,PASI', '1', '1', '9', '1', '1', '3.4000', 1600, 0, '1', 0, '0.00'),
(253, '7242-6333-30', NULL, 'BBM', NULL, 'BLACK,PPBJ550-4,T-Project,PASI', '1', '1', '9', '1', '1', '51.5000', 40, 0, '1', 0, '0.00'),
(254, '7242-6334-30', NULL, 'BBM', NULL, 'BLACK,PPBJ550-4,T-Project,PASI', '1', '1', '9', '1', '1', '51.2000', 40, 0, '1', 0, '0.00'),
(255, '7242-6336-30', NULL, 'BBM', NULL, 'BLACK,PPBJ550-4,T-Project,PASI', '1', '1', '9', '1', '1', '90.2200', 40, 0, '1', 0, '0.00'),
(256, '7242-6339-30', NULL, 'BBM', NULL, 'BLACK,PPBJ550-4,T-Project,PASI', '1', '1', '9', '1', '1', '163.2800', 40, 0, '1', 0, '0.00'),
(257, '7242-6340-30', NULL, 'BBM', NULL, 'BLACK,PPBJ550-4,T-Project,PASI', '1', '1', '9', '1', '1', '163.2800', 40, 0, '1', 0, '0.00'),
(258, '7254-0955-30', NULL, 'RB Base', NULL, 'BLACK,PA66+PPE GTX951W,T-Project,PASI', '1', '1', '9', '1', '1', '33.0000', 150, 0, '1', 0, '0.00'),
(259, '7254-7988-3W', NULL, 'RB Cover', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '83.5000', 32, 0, '1', 0, '0.00'),
(260, '7271-1295-3W', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '208.2000', 18, 0, '1', 0, '0.00'),
(261, '7271-1296-3W', NULL, 'RB Base', NULL, 'BLACK,PA66+PPE GTX951W,T-Project,PASI', '1', '1', '9', '1', '1', '59.5000', 116, 0, '1', 0, '0.00'),
(262, '7271-1297-3W', NULL, 'RB FRAME', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '358.3000', 6, 0, '1', 0, '0.00'),
(263, '7271-1413-3W', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '279.8000', 12, 0, '1', 0, '0.00'),
(264, '7271-1414-3W', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '279.8000', 12, 0, '1', 0, '0.00'),
(265, '7271-1441-3W', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '590.6000', 8, 0, '1', 0, '0.00'),
(266, '7271-1596-3W', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '599.4000', 6, 0, '1', 0, '0.00'),
(267, '7271-1597-3W', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '611.4000', 6, 0, '1', 0, '0.00'),
(268, '7271-1884-3W', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,570B,PASI', '1', '1', '11', '1', '1', '276.2000', 10, 0, '1', 0, '0.00'),
(269, '7271-1888-3W', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,570B,PASI', '1', '1', '11', '1', '1', '285.8000', 10, 0, '1', 0, '0.00'),
(270, '7271-2146-3W', NULL, 'RB FRAME', NULL, 'BLACK,PPTD10,670B,PASI', '1', '1', '4', '1', '1', '475.0000', 4, 0, '1', 0, '0.00'),
(271, '7271-2185-3W', NULL, 'R/B Frame', NULL, 'BLACK,PPTD10,670B,PASI', '1', '1', '4', '1', '1', '610.0000', 4, 0, '1', 0, '0.00'),
(272, '7271-2304-3W', NULL, 'R/B Frame', NULL, 'BLACK,PPTD10,670B,PASI', '1', '1', '4', '1', '1', '610.0000', 4, 0, '1', 0, '0.00'),
(273, '7271-6331-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,400B,PASI', '1', '1', '3', '1', '1', '8.9000', 900, 0, '1', 0, '0.00'),
(274, '7271-6481-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '46.0000', 64, 0, '1', 0, '0.00'),
(275, '7271-7090-3W', NULL, 'RB Cover', NULL, 'BLACK,PPTD10,T-PROJECT,PASI', '1', '1', '9', '1', '1', '160.8000', 12, 0, '1', 0, '0.00'),
(276, '7271-7231-3W', NULL, 'Connector Holder', NULL, 'BLACK,PPTC426BT,MS2,PASI', '1', '1', '6', '1', '1', '295.0000', 8, 0, '1', 0, '0.00'),
(277, '7271-7257-3W', NULL, 'RB COVER', NULL, 'BLACK,PPTD10,670B,PASI', '1', '1', '4', '1', '1', '173.0000', 8, 0, '1', 0, '0.00'),
(278, '7271-7278-3W', NULL, 'R/B Cover', NULL, 'BLACK,PPTD10,670B,PASI', '1', '1', '4', '1', '1', '173.0000', 8, 0, '1', 0, '0.00'),
(279, '7271-8354-3W', NULL, 'RB COVER', NULL, 'BLACK,PPTD10,670B,PASI', '1', '1', '4', '1', '1', '148.7000', 12, 0, '1', 0, '0.00'),
(280, '7273-2679-0W', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '29.0000', 200, 0, '1', 0, '0.00'),
(281, '7273-2800-3W', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '42.9000', 40, 0, '1', 0, '0.00'),
(282, '7273-2801-3W', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '43.5000', 40, 0, '1', 0, '0.00'),
(283, '7273-3015-3W', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '56.2000', 40, 0, '1', 0, '0.00'),
(284, '7273-3017-3W', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '60.8000', 40, 0, '1', 0, '0.00'),
(285, '7273-3067-30', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '54.3000', 24, 0, '1', 0, '0.00'),
(286, '7273-3068-30', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '50.7000', 24, 0, '1', 0, '0.00'),
(287, '7273-4796-3W', NULL, 'Protector', NULL, 'BLACK,PP BJ550,XC2B,PASI', '1', '1', '5', '1', '1', '74.9000', 36, 0, '1', 0, '0.00'),
(288, '7273-4798-3W', NULL, 'Protector', NULL, 'BLACK,PP BJ550,XC2B,PASI', '1', '1', '5', '1', '1', '74.9000', 36, 0, '1', 0, '0.00'),
(289, '7276-0191-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '59.2000', 45, 0, '1', 0, '0.00'),
(290, '7276-0207-3W', NULL, 'Protector', NULL, '\"BLACK,PPBF970A1-8,150B,PASI	\"', '1', '1', '1', '1', '2', '19.8000', 306, 0, '1', 0, '0.00'),
(291, '7276-0236-5W', NULL, 'Protector', NULL, 'ORANGE,PP8726RT TH,T-PROJECT,PASI', '1', '1', '9', '1', '1', '28.4000', 140, 0, '1', 0, '0.00'),
(292, '7276-0242-5W', NULL, 'Protector', NULL, 'ORANGE,PP8726RT TH,T-Project,PASI', '1', '1', '9', '1', '1', '31.8000', 120, 0, '1', 0, '0.00'),
(293, '7276-0451-3W', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '92.8000', 40, 0, '1', 0, '0.00'),
(294, '7276-0615-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '104.1000', 16, 0, '1', 0, '0.00'),
(295, '7276-0616-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '78.1000', 32, 0, '1', 0, '0.00'),
(296, '7276-0617-3W', NULL, 'Protector', NULL, '\"BLACK,PPBF970AI-5,150B,PASI										\"', '1', '1', '1', '1', '2', '47.4000', 70, 0, '1', 0, '0.00'),
(297, '7276-0618-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '64.4000', 36, 0, '1', 0, '0.00'),
(298, '7276-0619-3W', NULL, 'Protector', NULL, 'NATURAL,PPC6162t,T-Project,PASI', '1', '1', '9', '1', '1', '99.8000', 28, 0, '1', 0, '0.00'),
(299, '7276-0620-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '57.0000', 48, 0, '1', 0, '0.00'),
(300, '7276-1715-3W', NULL, 'Protector', NULL, 'BLACK,PA66 A0230,T-PROJECT,PASI', '1', '1', '9', '1', '1', '98.2000', 30, 0, '1', 0, '0.00'),
(301, '7276-1721-3W', NULL, 'Protector', NULL, 'BLACK,PA66 A0230,T-Project,PASI', '1', '1', '9', '1', '1', '59.2000', 70, 0, '1', 0, '0.00'),
(302, '7276-2032-5W', NULL, 'Protector', NULL, 'ORANGE,PA66+TPE(TR161)-2,T-PROJECT,PASI', '1', '1', '9', '1', '1', '112.0000', 50, 0, '1', 0, '0.00'),
(303, '7276-2033-5W', NULL, 'Protector', NULL, 'ORANGE,PA66+TPE(TR161)-2,T-Project,PASI', '1', '1', '9', '1', '1', '87.9000', 64, 0, '1', 0, '0.00'),
(304, '7276-2271-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '58.4000', 26, 0, '1', 0, '0.00'),
(305, '7276-2273-3W', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '55.9000', 80, 0, '1', 0, '0.00'),
(306, '7276-2447-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '60.1000', 48, 0, '1', 0, '0.00'),
(307, '7276-2449-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '58.5000', 72, 0, '1', 0, '0.00'),
(308, '7276-2451-3W', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '103.8000', 24, 0, '1', 0, '0.00'),
(309, '7276-2453-3W-A', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '171.2000', 20, 0, '1', 0, '0.00'),
(310, '7276-2468-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '69.2000', 30, 0, '1', 0, '0.00'),
(311, '7276-2471-3W', NULL, 'Protector', NULL, 'BLACK,PPC616WT,150B,PASI', '1', '1', '1', '1', '1', '24.2000', 210, 0, '1', 0, '0.00'),
(312, '7276-2475-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '99.7000', 16, 0, '1', 0, '0.00'),
(313, '7276-2480-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '87.8000', 16, 0, '1', 0, '0.00'),
(314, '7276-2482-3W', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '144.0000', 16, 0, '1', 0, '0.00'),
(315, '7276-2484-3W', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '131.9000', 22, 0, '1', 0, '0.00'),
(316, '7276-2485-3W', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '63.8000', 42, 0, '1', 0, '0.00'),
(317, '7276-3732-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '25.8000', 218, 0, '1', 0, '0.00'),
(318, '7276-5262-3W', NULL, 'Protector\"', NULL, 'BLACK,PPBF970A1-2,3M0,PASI', '1', '1', '10', '1', '1', '67.3000', 40, 0, '1', 0, '0.00'),
(319, '7276-5457-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '80.3000', 42, 0, '1', 0, '0.00'),
(320, '7276-5461-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '73.0000', 20, 0, '1', 0, '0.00'),
(321, '7276-5463-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '75.8000', 36, 0, '1', 0, '0.00'),
(322, '7276-5465-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '48.3000', 12, 0, '1', 0, '0.00'),
(323, '7276-5467-3W', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,670B,PASI', '1', '1', '4', '1', '1', '53.8000', 74, 0, '1', 0, '0.00'),
(324, '7276-5592-0W', NULL, 'Protector', NULL, 'NATURAL,PPBF970A1,670B,PASI', '1', '1', '4', '1', '1', '43.2000', 140, 0, '1', 0, '0.00'),
(325, '7276-5593-0W', NULL, 'Protector', NULL, 'NATURAL,PPBF970A1,670B,PASI', '1', '1', '4', '1', '1', '44.5000', 140, 0, '1', 0, '0.00'),
(326, '7276-5596-99', NULL, 'Clamp Outer', NULL, 'BLACK,PPBF970A1-9,670B,PASI', '1', '1', '4', '1', '1', '68.8000', 72, 0, '1', 0, '0.00'),
(327, '7276-5597-99', NULL, 'Clamp Outer', NULL, 'BLACK,PPBF970A1-9,670B,PASI', '1', '1', '4', '1', '1', '68.8000', 72, 0, '1', 0, '0.00'),
(328, '7284-6030-3W', NULL, 'Protector', NULL, 'BLACK,PA66FR250,T-Project,PASI', '1', '1', '9', '1', '1', '60.0000', 50, 0, '1', 0, '0.00'),
(329, '7284-6032-3W', NULL, 'Protector', NULL, 'BLACK,PA66FR250,T-Project,PASI', '1', '1', '9', '1', '1', '32.2000', 200, 0, '1', 0, '0.00'),
(330, '7284-9442-3W', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-PROJECT,PASI', '1', '1', '9', '1', '1', '85.8000', 50, 0, '1', 0, '0.00'),
(331, '7284-9444-3W', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-PROJECT,PASI', '1', '1', '9', '1', '1', '85.5000', 50, 0, '1', 0, '0.00'),
(332, '7284-9830-3W', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '61.3000', 40, 0, '1', 0, '0.00'),
(333, '7284-9834-3W', NULL, 'Protector', NULL, 'BLACK,PPC606W,T-Project,PASI', '1', '1', '9', '1', '1', '60.0000', 45, 0, '1', 0, '0.00'),
(334, '7284-9835-3W', NULL, 'Protector', NULL, 'BLACK,PPC606W,T-PROJECT,PASI', '1', '1', '9', '1', '1', '27.4000', 90, 0, '1', 0, '0.00'),
(335, '7284-9836-3W', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '81.8000', 50, 0, '1', 0, '0.00'),
(336, '7284-9838-3W', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '67.3000', 40, 0, '1', 0, '0.00'),
(337, '7142-6294-51-C', NULL, 'Protector', NULL, 'ORANGE,PPBJ550-2,T-PROJECT,PASI', '1', '1', '9', '1', '1', '4.2000', 1600, 0, '2', 0, '0.00'),
(338, '7152-5603-30-C', NULL, 'Connector Holder', NULL, 'BLACK,PPBF970AI-7,665B,PASI', '1', '1', '12', '1', '1', '15.2000', 480, 0, '2', 0, '0.00'),
(339, '7154-0826-30-C', NULL, 'RB Base', NULL, 'BLACK,PA66 A0210,T-Project,PASI', '1', '1', '9', '1', '1', '32.5000', 150, 0, '2', 0, '0.00'),
(340, '7154-7540-30-C', NULL, 'RB FRAME', NULL, 'BLACK,PPTC426BT,T-Project,PASI', '1', '1', '9', '1', '1', '80.5000', 48, 0, '2', 0, '0.00'),
(341, '7154-7542-30-C', NULL, 'RB Cover', NULL, 'BLACK,PPTC426BT,T-Project,PASI', '1', '1', '9', '1', '1', '77.3000', 30, 0, '2', 0, '0.00'),
(342, '7154-7618-30-C', NULL, 'RB Cover', NULL, 'BLACK,PPTC426BT,T-Project,PASI', '1', '1', '9', '1', '1', '82.9000', 30, 0, '2', 0, '0.00'),
(343, '7154-7873-30-C', NULL, 'R/B Cover', NULL, 'BLACK,57MNK10-1,T-Project,PASI', '1', '1', '9', '1', '1', '9.3500', 800, 0, '2', 0, '0.00'),
(344, '7154-7874-30-C', NULL, 'R/B Cover', NULL, 'BLACK,57MNK10-1,T-Project,PASI', '1', '1', '9', '1', '1', '3.7000', 800, 0, '2', 0, '0.00'),
(345, '7154-7940-30-C', NULL, 'R/B Cover', NULL, 'BLACK,PP57MNK10-1,T-Project,PASI', '1', '1', '9', '1', '1', '14.3000', 600, 0, '2', 0, '0.00'),
(346, '7171-1463-30-C', NULL, 'RB Frame', NULL, 'BLACK,PP C426BT,T-Project,PASI', '1', '1', '9', '1', '1', '230.9000', 10, 0, '2', 0, '0.00'),
(347, '7171-5408-30-C', NULL, 'RB Cover', NULL, 'BLACK,PP C426BT,T-Project,PASI', '1', '1', '9', '1', '1', '131.3000', 18, 0, '2', 0, '0.00'),
(348, '7171-6047-C', NULL, 'RB Frame', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '125.0000', 40, 0, '2', 0, '0.00'),
(349, '7171-6048-C', NULL, 'RB Frame', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '124.3000', 40, 0, '2', 0, '0.00'),
(350, '7171-6330-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,400B,PASI', '1', '1', '3', '1', '1', '15.8000', 500, 0, '2', 0, '0.00'),
(351, '7171-6334-30-C', NULL, 'Protector', NULL, 'BLACK,PBT-1100-204B,400B,PASI', '1', '1', '3', '1', '1', '4.2000', 2000, 0, '2', 0, '0.00'),
(352, '7171-6335-30-C', NULL, 'Protector', NULL, 'BLACK,PBT-1100-204B,400B,PASI', '1', '1', '3', '1', '1', '3.9000', 2000, 0, '2', 0, '0.00'),
(353, '7171-6395-30-C', NULL, 'Protector', NULL, 'BLACK,PA66+TPE(TR161),775B,PASI', '1', '1', '7', '1', '1', '50.4000', 128, 0, '2', 0, '0.00'),
(354, '7171-6396-30-C', NULL, 'Protector', NULL, 'BLACK,PA66+TPE(TR161),775B,PASI', '1', '1', '7', '1', '1', '13.8000', 300, 0, '2', 0, '0.00'),
(355, '7171-7072-30-C', NULL, 'Protector	', NULL, 'BLACK,PPJ715M-1,T-Project,PASI', '1', '1', '9', '1', '1', '6.1000', 600, 0, '2', 0, '0.00'),
(356, '7173-2669-C', NULL, 'Protector', NULL, 'NATURAL,PPBJ500,T-Project,PASI', '1', '1', '9', '1', '1', '5.7000', 1000, 0, '2', 0, '0.00'),
(357, '7173-2680-C', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '24.7000', 120, 0, '2', 0, '0.00'),
(358, '7173-2786-C', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10-T-PROJECT,PASI', '1', '1', '9', '1', '1', '10.6500', 600, 0, '2', 0, '0.00'),
(359, '7173-3016-30-C', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '21.0000', 80, 0, '2', 0, '0.00'),
(360, '7173-3018-30-C', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '21.6000', 80, 0, '2', 0, '0.00'),
(361, '7176-0044-30-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '23.4000', 240, 0, '2', 0, '0.00'),
(362, '7176-0045-30-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '7.5000', 800, 0, '2', 0, '0.00'),
(363, '7176-0190-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '44.6000', 65, 0, '2', 0, '0.00');
INSERT INTO `material` (`id`, `kode`, `kode_rm`, `nama`, `cust_nama`, `spesifikasi`, `tipe_material`, `satuan`, `project`, `status`, `customer`, `berat`, `qty`, `qtyBag`, `other`, `virgin`, `mb`) VALUES
(364, '7176-0192-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '24.9000', 250, 0, '2', 0, '0.00'),
(365, '7176-0194-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '40.8000', 73, 0, '2', 0, '0.00'),
(366, '7176-0196-30-C', NULL, 'Protector	', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '18.3000', 260, 0, '2', 0, '0.00'),
(367, '7176-0198-30-C', NULL, 'Protector	', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '24.0000', 220, 0, '2', 0, '0.00'),
(368, '7176-0200-30-C', NULL, 'Protector', NULL, 'BLACK,PPC616WT,T-Project,PASI', '1', '1', '9', '1', '1', '47.7000', 80, 0, '2', 0, '0.00'),
(369, '7176-0202-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '24.8000', 224, 0, '2', 0, '0.00'),
(370, '7176-0205-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970AI-8,150B,PASI', '1', '1', '1', '1', '1', '45.4000', 40, 0, '2', 0, '0.00'),
(371, '7176-0206-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '16.1500', 400, 0, '2', 0, '0.00'),
(372, '7176-0208-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '10.8000', 450, 0, '2', 0, '0.00'),
(373, '7176-0452-30-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '21.5000', 160, 0, '2', 0, '0.00'),
(374, '7176-0920-50-C', NULL, 'Protector', NULL, 'ORANGE,PA66+TPE(TR161)-2,T-PROJECT,PASI', '1', '1', '9', '1', '1', '48.6000', 144, 0, '2', 0, '0.00'),
(375, '7176-0922-50-C', NULL, 'Protector', NULL, 'ORANGE,PA66+TPE(TR161)-2,T-Project,PASI', '1', '1', '9', '1', '1', '17.6000', 200, 0, '2', 0, '0.00'),
(376, '7176-1180-C', NULL, 'Protector', NULL, 'NATURAL,PPBJ500,T-Project,PASI', '1', '1', '9', '1', '1', '22.8000', 200, 0, '2', 0, '0.00'),
(377, '7176-1716-30-C', NULL, 'Protector', NULL, 'BLACK,PA66 A0230,T-Project,PASI', '1', '1', '9', '1', '1', '19.2000', 400, 0, '2', 0, '0.00'),
(378, '7176-1722-30-C', NULL, 'Protector', NULL, 'BLACK,PA66 A0230,T-Project,PASI', '1', '1', '9', '1', '1', '31.1000', 200, 0, '2', 0, '0.00'),
(379, '7176-2272-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '24.3500', 120, 0, '2', 0, '0.00'),
(380, '7176-2274-30-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '23.7000', 174, 0, '2', 0, '0.00'),
(381, '7176-2275-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970AI-5,150B,PASI', '1', '1', '1', '1', '1', '15.6000', 390, 0, '2', 0, '0.00'),
(382, '7176-2448-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '20.4000', 196, 0, '2', 0, '0.00'),
(383, '7176-2450-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '14.4000', 300, 0, '2', 0, '0.00'),
(384, '7176-2452-30-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '32.7500', 175, 0, '2', 0, '0.00'),
(385, '7176-2454-30-A-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '63.1000', 80, 0, '2', 0, '0.00'),
(386, '7176-2469-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '35.7000', 110, 0, '2', 0, '0.00'),
(387, '7176-2470-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '6.1000', 1200, 0, '2', 0, '0.00'),
(388, '7176-2472-30-C', NULL, 'Protector	', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '8.9000', 600, 0, '2', 0, '0.00'),
(389, '7176-2476-30-C', NULL, 'Protector	', NULL, 'BLACK,PPBF970A1-5,150B,PASI', '1', '1', '1', '1', '1', '48.7000', 100, 0, '2', 0, '0.00'),
(390, '7176-2479-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '8.4000', 800, 0, '2', 0, '0.00'),
(391, '7176-2481-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '49.3000', 48, 0, '2', 0, '0.00'),
(392, '7176-2483-30-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '59.8000', 160, 0, '2', 0, '0.00'),
(393, '7176-2488-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '10.7500', 400, 0, '2', 0, '0.00'),
(394, '7176-3540-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,400B,PASI', '1', '1', '3', '1', '1', '9.2000', 840, 0, '2', 0, '0.00'),
(395, '7176-4122-30-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,400B,PASI', '1', '1', '3', '1', '1', '27.7000', 280, 0, '2', 0, '0.00'),
(396, '7176-4683-30-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,400B,PASI', '1', '1', '3', '1', '1', '12.5000', 960, 0, '2', 0, '0.00'),
(397, '7176-4684-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,400B,PASI', '1', '1', '3', '1', '1', '4.2000', 1500, 0, '2', 0, '0.00'),
(398, '7176-4735-30-C', NULL, 'Protector', NULL, 'BLACK,PA66+TPE(TR161),775B,PASI', '1', '1', '7', '1', '1', '18.8000', 200, 0, '2', 0, '0.00'),
(399, '7176-4736-30-C', NULL, 'Protector', NULL, 'BLACK,PA66+TPE(TR161),775B,PASI', '1', '1', '7', '1', '1', '8.4000', 450, 0, '2', 0, '0.00'),
(400, '7176-5263-30-C', NULL, 'Protector	', NULL, 'BLACK,PPBF970A1-2,3M0,PASI', '1', '1', '10', '1', '1', '15.2000', 550, 0, '2', 0, '0.00'),
(401, '7176-5264-30-C', NULL, 'Protector	', NULL, 'BLACK,PPBF970A1-2,3M0,PASI', '1', '1', '10', '1', '1', '20.8000', 352, 0, '2', 0, '0.00'),
(402, '7176-5265-30-C', NULL, 'Protector	', NULL, 'BLACK,PPBF970A1-2,3M0,PASI', '1', '1', '10', '1', '1', '7.5000', 900, 0, '2', 0, '0.00'),
(403, '7176-5558-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-7,D26A,PASI', '1', '1', '13', '1', '1', '18.0000', 144, 0, '2', 0, '0.00'),
(404, '7176-5559-30-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-7,D26A,PASI', '1', '1', '13', '1', '1', '9.0000', 630, 0, '2', 0, '0.00'),
(405, '7184-6031-30-C', NULL, 'Protector', NULL, 'BLACK,PPA66FR250,T-Project,PASI', '1', '1', '9', '1', '1', '28.8000', 200, 0, '2', 0, '0.00'),
(406, '7184-6033-30-C', NULL, 'Protector', NULL, 'BLACK,PPA66FR250,T-Project,PASI', '1', '1', '9', '1', '1', '12.8000', 500, 0, '2', 0, '0.00'),
(407, '7184-6366-30-C', NULL, 'Protector', NULL, 'BLACK,PPC606W,T-PROJECT,PASI', '1', '1', '9', '1', '1', '33.0000', 100, 0, '2', 0, '0.00'),
(408, '7184-7952-30-C', NULL, 'Protector', NULL, 'BLACK,PPJ5715M-1,T-PROJECT,PASI', '1', '1', '9', '1', '1', '11.0000', 300, 0, '2', 0, '0.00'),
(409, '7184-9427-C', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '28.4000', 90, 0, '2', 0, '0.00'),
(410, '7184-9428-C', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '18.3000', 360, 0, '2', 0, '0.00'),
(411, '7184-9430-C', NULL, 'Protector	', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '27.3000', 60, 0, '2', 0, '0.00'),
(412, '7184-9431-C', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '17.9000', 240, 0, '2', 0, '0.00'),
(413, '7184-9432-C', NULL, 'Protector', NULL, 'BLACK,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '30.2000', 60, 0, '2', 0, '0.00'),
(414, '7184-9433-C', NULL, 'Protector', NULL, 'BLACK,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '20.7100', 240, 0, '2', 0, '0.00'),
(415, '7184-9434-C', NULL, 'Protector', NULL, 'BLACK,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '30.5000', 90, 0, '2', 0, '0.00'),
(416, '7184-9435-C', NULL, 'Protector', NULL, 'BLACK,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '18.3000', 360, 0, '2', 0, '0.00'),
(417, '7184-9440-C', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '22.6000', 150, 0, '2', 0, '0.00'),
(418, '7184-9441-C', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '23.5000', 150, 0, '2', 0, '0.00'),
(419, '7184-9443-30-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-PROJECT,PASI', '1', '1', '9', '1', '1', '20.8000', 200, 0, '2', 0, '0.00'),
(420, '7184-9461-30-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '15.1000', 400, 0, '2', 0, '0.00'),
(421, '7184-9462-30-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '8.2000', 600, 0, '2', 0, '0.00'),
(422, '7184-9473-30-C', NULL, 'Protector	', NULL, 'BLACK,PPA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '16.8000', 400, 0, '2', 0, '0.00'),
(423, '7184-9474-30-C', NULL, 'Protector	', NULL, 'BLACK,PPA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '7.8000', 600, 0, '2', 0, '0.00'),
(424, '7184-9603-C', NULL, 'Protector', NULL, 'NATURAL,PPBJ500,T-PROJECT,PASI', '1', '1', '9', '1', '1', '36.1000', 180, 0, '2', 0, '0.00'),
(425, '7184-9691-C', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-PROJECT,PASI', '1', '1', '9', '1', '1', '88.4000', 45, 0, '2', 0, '0.00'),
(426, '7185-0273-51-C', NULL, 'Protector', NULL, 'ORANGE,PPBJ550-3,T-PROJECT,PASI', '1', '1', '9', '1', '1', '3.4000', 1600, 0, '2', 0, '0.00'),
(427, '7254-0955-30-C', NULL, 'RB Base', NULL, 'BLACK,PA66+PPE GTX951W,T-Project,PASI', '1', '1', '9', '1', '1', '33.0000', 120, 0, '2', 0, '0.00'),
(428, '7254-7988-3W-C', NULL, 'RB Cover', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '83.5000', 32, 0, '2', 0, '0.00'),
(429, '7271-1295-3W-C', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '208.2000', 18, 0, '2', 0, '0.00'),
(430, '7271-1296-3W-C', NULL, 'RB Base', NULL, 'BLACK,PA66+PPE GTX951W,T-Project,PASI', '1', '1', '9', '1', '1', '59.5000', 116, 0, '2', 0, '0.00'),
(431, '7271-1297-3W-C', NULL, 'RB FRAME', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '358.3000', 6, 0, '2', 0, '0.00'),
(432, '7271-1413-3W-C', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '279.8000', 12, 0, '2', 0, '0.00'),
(433, '7271-1414-3W-C', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '279.8000', 12, 0, '2', 0, '0.00'),
(434, '7271-1441-3W-C', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '590.6000', 8, 0, '2', 0, '0.00'),
(435, '7271-1596-3W-C', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '599.4000', 6, 0, '2', 0, '0.00'),
(436, '7271-1597-3W-C', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,T-Project,PASI', '1', '1', '9', '1', '1', '611.4000', 6, 0, '2', 0, '0.00'),
(437, '7271-6331-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,400B,PASI', '1', '1', '3', '1', '1', '8.9000', 900, 0, '2', 0, '0.00'),
(438, '7271-7090-3W-C', NULL, 'RB Cover', NULL, 'BLACK,PPTD10,T-PROJECT,PASI', '1', '1', '9', '1', '1', '160.8000', 12, 0, '2', 0, '0.00'),
(439, '7273-2679-0W-C', NULL, 'Protector', NULL, 'NATURAL,PP57MNK10,T-Project,PASI', '1', '1', '9', '1', '1', '29.0000', 200, 0, '2', 0, '0.00'),
(440, '7273-2800-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '42.9000', 40, 0, '2', 0, '0.00'),
(441, '7273-2801-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '43.5000', 40, 0, '2', 0, '0.00'),
(442, '7273-3015-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '56.2000', 40, 0, '2', 0, '0.00'),
(443, '7273-3017-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '28.5000', 40, 0, '2', 0, '0.00'),
(444, '7273-3067-30-C', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '54.3000', 24, 0, '2', 0, '0.00'),
(445, '7273-3068-30-C', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI', '1', '1', '9', '1', '1', '50.7000', 24, 0, '2', 0, '0.00'),
(446, '7276-0191-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '59.2000', 35, 0, '2', 0, '0.00'),
(447, '7276-0207-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '19.8000', 255, 0, '2', 0, '0.00'),
(448, '7276-0242-5W-C', NULL, 'Protector', NULL, 'ORANGE,PP8726RT TH,T-Project,PASI', '1', '1', '9', '1', '1', '31.8000', 120, 0, '2', 0, '0.00'),
(449, '7276-0451-3W-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '92.8000', 40, 0, '2', 0, '0.00'),
(450, '7276-0615-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '104.1000', 16, 0, '2', 0, '0.00'),
(451, '7276-0616-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '78.1000', 20, 0, '2', 0, '0.00'),
(452, '7276-0617-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970AI-5,150B,PASI', '1', '1', '1', '1', '1', '47.4000', 60, 0, '2', 0, '0.00'),
(453, '7276-0618-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '64.4000', 30, 0, '2', 0, '0.00'),
(454, '7276-0619-3W-C', NULL, 'Protector', NULL, 'NATURAL,PPC6162t,T-Project,PASI', '1', '1', '9', '1', '1', '99.8000', 28, 0, '2', 0, '0.00'),
(455, '7276-0620-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '57.0000', 48, 0, '2', 0, '0.00'),
(456, '7276-1715-3W-C', NULL, 'Protector', NULL, 'BLACK,PA66 A0230,T-PROJECT,PASI', '1', '1', '9', '1', '1', '98.2000', 30, 0, '2', 0, '0.00'),
(457, '7276-1721-3W-C', NULL, 'Protector', NULL, 'BLACK,PA66 A0230,T-Project,PASI', '1', '1', '9', '1', '1', '59.2000', 70, 0, '2', 0, '0.00'),
(458, '7276-2032-5W-C', NULL, 'Protector', NULL, 'ORANGE,PA66+TPE(TR161)-2,T-PROJECT,PASI', '1', '1', '9', '1', '1', '112.0000', 50, 0, '2', 0, '0.00'),
(459, '7276-2033-5W-C', NULL, 'Protector', NULL, 'ORANGE,PA66+TPE(TR161)-2,T-Project,PASI', '1', '1', '9', '1', '1', '87.9000', 60, 0, '2', 0, '0.00'),
(460, '7276-2271-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '60.9000', 24, 0, '2', 0, '0.00'),
(461, '7276-2273-3W-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '55.9000', 80, 0, '2', 0, '0.00'),
(462, '7276-2447-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '60.1000', 48, 0, '2', 0, '0.00'),
(463, '7276-2449-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '58.5000', 55, 0, '2', 0, '0.00'),
(464, '7276-2451-3W-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '103.8000', 20, 0, '2', 0, '0.00'),
(465, '7276-2453-3W-A-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '171.2000', 12, 0, '2', 0, '0.00'),
(466, '7276-2468-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '69.2000', 18, 0, '2', 0, '0.00'),
(467, '7276-2471-3W-C', NULL, 'Protector', NULL, 'BLACK,PPC616WT,150B,PASI', '1', '1', '1', '1', '1', '24.2000', 210, 0, '2', 0, '0.00'),
(468, '7276-2475-3W-C', NULL, 'Protector	', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '99.7000', 12, 0, '2', 0, '0.00'),
(469, '7276-2480-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '87.8000', 16, 0, '2', 0, '0.00'),
(470, '7276-2482-3W-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '144.0000', 16, 0, '2', 0, '0.00'),
(471, '7276-2484-3W-C', NULL, 'Protector	', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '131.9000', 20, 0, '2', 0, '0.00'),
(472, '7276-2485-3W-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,PASI', '1', '1', '1', '1', '1', '63.8000', 42, 0, '2', 0, '0.00'),
(473, '7276-3732-3W-C', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,PASI', '1', '1', '1', '1', '1', '25.8000', 210, 0, '2', 0, '0.00'),
(474, '7276-5262-3W-C', NULL, 'Protector	', NULL, 'BLACK,PPBF970A1-2,3M0,PASI', '1', '1', '10', '1', '1', '66.0000', 40, 0, '2', 0, '0.00'),
(475, '7284-6030-3W-C', NULL, 'Protector', NULL, 'BLACK,PA66FR250,T-Project,PASI', '1', '1', '9', '1', '1', '60.0000', 50, 0, '2', 0, '0.00'),
(476, '7284-6032-3W-C', NULL, 'Protector', NULL, 'BLACK,PA66FR250,T-Project,PASI', '1', '1', '9', '1', '1', '32.2000', 200, 0, '2', 0, '0.00'),
(477, '7284-9442-3W-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-PROJECT,PASI', '1', '1', '9', '1', '1', '85.8000', 50, 0, '2', 0, '0.00'),
(478, '7284-9444-3W-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-PROJECT,PASI', '1', '1', '9', '1', '1', '84.9000', 50, 0, '2', 0, '0.00'),
(479, '7284-9830-3W-C', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '1', '61.3000', 40, 0, '2', 0, '0.00'),
(480, '6910-8534-SJP', NULL, 'Bracket', NULL, 'NATURAL,PBT-2002,D26A,SJP,EXP', '1', '1', '13', '1', '3', '11.8000', 200, 0, '2', 0, '0.00'),
(481, '6910-8535-SJP', NULL, 'Bracket', NULL, 'NATURAL,PBT-2002,D26A,SJP,EXP', '1', '1', '13', '1', '3', '8.5000', 200, 0, '2', 0, '0.00'),
(482, '7142-6243-51-SJP', NULL, 'Protector', NULL, 'ORANGE,PPBJ550-3,T-PROJECT,SJP,EXP', '1', '1', '9', '1', '3', '3.4500', 1600, 0, '2', 0, '0.00'),
(483, '7152-5603-30-SJP', NULL, 'Connector Holder', NULL, 'BLACK,PPBF970AI-7,665B,SJP,EXP', '1', '1', '12', '1', '3', '15.2000', 480, 0, '2', 0, '0.00'),
(484, '7154-7542-30-SJP', NULL, 'RB Cover', NULL, 'BLACK,PPTC426BT,T-Project,SJP,EXP', '1', '1', '9', '1', '3', '77.3000', 30, 0, '2', 0, '0.00'),
(485, '7154-7618-30-SJP', NULL, 'RB Cover', NULL, 'BLACK,PPTC426BT,T-Project,SJP,EXP', '1', '1', '9', '1', '3', '82.9000', 30, 0, '2', 0, '0.00'),
(486, '7171-6330-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,400B,SJP,EXP', '1', '1', '3', '1', '3', '15.8000', 500, 0, '2', 0, '0.00'),
(487, '7171-6334-30-SJP', NULL, 'Protector', NULL, 'BLACK,PBT-1100-204B,400B,SJP,EXP', '1', '1', '3', '1', '3', '4.2000', 2000, 0, '2', 0, '0.00'),
(488, '7171-6335-30-SJP', NULL, 'Protector', NULL, 'BLACK,PBT-1100-204B,400B,SJP,EXP', '1', '1', '3', '1', '3', '3.9000', 2000, 0, '2', 0, '0.00'),
(489, '7171-6395-30-SJP', NULL, 'Protector', NULL, 'BLACK,PA66+TPE(TR161),775B,SJP', '1', '1', '7', '1', '3', '50.4000', 128, 0, '2', 0, '0.00'),
(490, '7171-6396-30-SJP', NULL, 'Protector', NULL, 'BLACK,PA66+TPE(TR161),775B,SJP', '1', '1', '7', '1', '3', '13.8000', 300, 0, '2', 0, '0.00'),
(491, '7173-3016-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,SJP,EXP', '1', '1', '9', '1', '3', '21.0000', 80, 0, '2', 0, '0.00'),
(492, '7173-3018-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,SJP,EXP', '1', '1', '9', '1', '3', '21.6000', 80, 0, '2', 0, '0.00'),
(493, '7176-0190-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '44.6000', 65, 0, '2', 0, '0.00'),
(494, '7176-0192-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '24.9000', 250, 0, '2', 0, '0.00'),
(495, '7176-0194-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '40.8000', 73, 0, '2', 0, '0.00'),
(496, '7176-0196-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '18.3000', 260, 0, '2', 0, '0.00'),
(497, '7176-0198-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '24.0000', 220, 0, '2', 0, '0.00'),
(498, '7176-0202-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '24.8000', 224, 0, '2', 0, '0.00'),
(499, '7176-0205-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970AI-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '45.4000', 40, 0, '2', 0, '0.00'),
(500, '7176-0206-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '16.1500', 400, 0, '2', 0, '0.00'),
(501, '7176-0208-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '10.8000', 450, 0, '2', 0, '0.00'),
(502, '7176-0452-30-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,SJP,EXP', '1', '1', '9', '1', '3', '21.5000', 160, 0, '2', 0, '0.00'),
(503, '7176-2272-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '24.3500', 120, 0, '2', 0, '0.00'),
(504, '7176-2274-30-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,SJP,EXP', '1', '1', '1', '1', '3', '23.7000', 174, 0, '2', 0, '0.00'),
(505, '7176-2275-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '15.6000', 390, 0, '2', 0, '0.00'),
(506, '7176-2448-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '20.4000', 196, 0, '2', 0, '0.00'),
(507, '7176-2450-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '14.4000', 300, 0, '2', 0, '0.00'),
(508, '7176-2452-30-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,SJP,EXP', '1', '1', '1', '1', '3', '32.7500', 175, 0, '2', 0, '0.00'),
(509, '7176-2454-30-A-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,SJP,EXP', '1', '1', '1', '1', '3', '63.1000', 80, 0, '2', 0, '0.00'),
(510, '7176-2469-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '35.7000', 110, 0, '2', 0, '0.00'),
(511, '7176-2470-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '6.1000', 1200, 0, '2', 0, '0.00'),
(512, '7176-2472-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '8.9000', 600, 0, '2', 0, '0.00'),
(513, '7176-2476-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,150B,SJP,EXP', '1', '1', '1', '1', '3', '48.7000', 100, 0, '2', 0, '0.00'),
(514, '7176-2479-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '8.4000', 800, 0, '2', 0, '0.00'),
(515, '7176-2481-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '49.3000', 48, 0, '2', 0, '0.00'),
(516, '7176-2483-30-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,SJP,EXP', '1', '1', '1', '1', '3', '59.8000', 160, 0, '2', 0, '0.00'),
(517, '7176-2488-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '10.7500', 400, 0, '2', 0, '0.00'),
(518, '7176-3540-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,400B,SJP,EXP', '1', '1', '3', '1', '3', '9.2000', 840, 0, '2', 0, '0.00'),
(519, '7176-4122-30-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,400B,SJP,EXP', '1', '1', '3', '1', '3', '27.7000', 280, 0, '2', 0, '0.00'),
(520, '7176-4683-30-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,400B,SJP,EXP', '1', '1', '3', '1', '3', '12.5000', 960, 0, '2', 0, '0.00'),
(521, '7176-4684-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,400B,SJP,EXP', '1', '1', '3', '1', '3', '4.2000', 1500, 0, '2', 0, '0.00'),
(522, '7176-4735-30-SJP', NULL, 'Protector', NULL, 'BLACK,PA66+TPE(TR161),775B,SJP,EXP', '1', '1', '7', '1', '3', '18.8000', 200, 0, '2', 0, '0.00'),
(523, '7176-4736-30-SJP', NULL, 'Protector', NULL, 'BLACK,PA66+TPE(TR161),775B,SJP,EXP', '1', '1', '7', '1', '3', '8.4000', 450, 0, '2', 0, '0.00'),
(524, '7176-5558-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-7,D26A,SJP,EXP', '1', '1', '13', '1', '3', '18.0000', 144, 0, '2', 0, '0.00'),
(525, '7176-5559-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-7,D26A,SJP,EXP', '1', '1', '13', '1', '3', '9.0000', 630, 0, '2', 0, '0.00'),
(526, '7176-5598-SJP', NULL, 'Protector', NULL, 'NATURAL,PPBF970A1,670B,PASI', '1', '1', '4', '1', '3', '44.0000', 330, 0, '2', 0, '0.00'),
(527, '7176-5600-SJP', NULL, 'Protector', NULL, 'NATURAL,PPBF970A1,670B,PASI', '1', '1', '4', '1', '3', '15.8000', 390, 0, '2', 0, '0.00'),
(528, '7184-6031-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPA66FR250,T-Project,SJP,EXP', '1', '1', '9', '1', '3', '28.8000', 200, 0, '2', 0, '0.00'),
(529, '7184-6033-30-SJP', NULL, 'Protector', NULL, 'BLACK,PPA66FR250,T-Project,SJP,EXP', '1', '1', '9', '1', '3', '12.8000', 500, 0, '2', 0, '0.00'),
(530, '7184-9603-SJP', NULL, 'Protector', NULL, 'NATURAL,PPBJ500,T-PROJECT,SJP,EXP', '1', '1', '9', '1', '3', '36.1000', 180, 0, '2', 0, '0.00'),
(531, '7185-0273-51-SJP', NULL, 'Protector', NULL, 'ORANGE,PPBJ550-3,T-PROJECT,SJP,EXP', '1', '1', '9', '1', '3', '3.4000', 1600, 0, '2', 0, '0.00'),
(532, '7242-6339-30-SJP', NULL, 'BBM', NULL, 'BLACK,PPBJ550-4,T-Project,SJP,EXP', '1', '1', '9', '1', '3', '163.2800', 40, 0, '2', 0, '0.00'),
(533, '7242-6340-30-SJP', NULL, 'BBM', NULL, 'BLACK,PPBJ550-4,T-Project,SJP,EXP', '1', '1', '9', '1', '3', '163.2800', 40, 0, '2', 0, '0.00'),
(534, '7254-0955-30-SJP', NULL, 'RB Base', NULL, 'BLACK,PA66+PPE GTX951W,T-Project,PASI,EXP', '1', '1', '9', '1', '3', '33.0000', 120, 0, '2', 0, '0.00'),
(535, '7271-1884-3W-SJP', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,570B,SJP,EXP', '1', '1', '11', '1', '3', '276.2000', 10, 0, '2', 0, '0.00'),
(536, '7271-1888-3W-SJP', NULL, 'RB Frame', NULL, 'BLACK,PPTD10,570B,SJP,EXP', '1', '1', '11', '1', '3', '285.8000', 10, 0, '2', 0, '0.00'),
(537, '7271-2146-3W-SJP', NULL, 'RB FRAME', NULL, 'BLACK,PPTD10,670B,SJP,EXP', '1', '1', '4', '1', '3', '475.0000', 4, 0, '2', 0, '0.00'),
(538, '7271-6331-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-5,400B,SJP,EXP', '1', '1', '3', '1', '3', '8.9000', 900, 0, '2', 0, '0.00'),
(539, '7271-8354-3W-SJP', NULL, 'RB COVER', NULL, 'BLACK,PPTD10,670B,SJP,EXP', '1', '1', '4', '1', '3', '153.0000', 16, 0, '2', 0, '0.00'),
(540, '7273-3015-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,SJP,EXP', '1', '1', '9', '1', '3', '56.2000', 40, 0, '2', 0, '0.00'),
(541, '7273-3017-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBJ500-1,T-Project,PASI,EXP', '1', '1', '9', '1', '3', '28.5000', 40, 0, '2', 0, '0.00'),
(542, '7276-0191-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '59.2000', 35, 0, '2', 0, '0.00'),
(543, '7276-0207-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '19.8000', 255, 0, '2', 0, '0.00'),
(544, '7276-0615-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '104.1000', 16, 0, '2', 0, '0.00'),
(545, '7276-0616-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '78.1000', 20, 0, '2', 0, '0.00'),
(546, '7276-0617-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970AI-5,150B,SJP,EXP', '1', '1', '1', '1', '3', '47.4000', 60, 0, '2', 0, '0.00'),
(547, '7276-0618-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '64.4000', 30, 0, '2', 0, '0.00'),
(548, '7276-0620-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '57.0000', 48, 0, '2', 0, '0.00'),
(549, '7276-2271-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '60.9000', 24, 0, '2', 0, '0.00'),
(550, '7276-2273-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,SJP,EXP', '1', '1', '1', '1', '3', '55.9000', 80, 0, '2', 0, '0.00'),
(551, '7276-2447-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '60.1000', 48, 0, '2', 0, '0.00'),
(552, '7276-2449-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '58.5000', 55, 0, '2', 0, '0.00'),
(553, '7276-2451-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,SJP,EXP', '1', '1', '1', '1', '3', '103.8000', 20, 0, '2', 0, '0.00'),
(554, '7276-2453-3W-A-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,SJP,EXP', '1', '1', '1', '1', '3', '171.2000', 12, 0, '2', 0, '0.00'),
(555, '7276-2468-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '69.2000', 18, 0, '2', 0, '0.00'),
(556, '7276-2471-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPC616WT,150B,SJP,EXP', '1', '1', '1', '1', '3', '24.2000', 210, 0, '2', 0, '0.00'),
(557, '7276-2475-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '99.7000', 12, 0, '2', 0, '0.00'),
(558, '7276-2480-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '87.8000', 16, 0, '2', 0, '0.00'),
(559, '7276-2482-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,SJP,EXP', '1', '1', '1', '1', '3', '144.0000', 16, 0, '2', 0, '0.00'),
(560, '7276-2484-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,SJP,EXP', '1', '1', '1', '1', '3', '131.9000', 20, 0, '2', 0, '0.00'),
(561, '7276-2485-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,150B,SJP,EXP', '1', '1', '1', '1', '3', '63.8000', 42, 0, '2', 0, '0.00'),
(562, '7276-3732-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PPBF970A1-8,150B,SJP,EXP', '1', '1', '1', '1', '3', '25.8000', 210, 0, '2', 0, '0.00'),
(563, '7276-5592-0W-SJP', NULL, 'Protector', NULL, 'NATURAL,PPBF970A1,670B,PASI', '1', '1', '4', '1', '3', '43.2000', 168, 0, '2', 0, '0.00'),
(564, '7284-6030-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PA66FR250,T-Project,SJP,EXP', '1', '1', '9', '1', '3', '60.0000', 50, 0, '2', 0, '0.00'),
(565, '7284-6032-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PA66FR250,T-Project,PASI,EXP', '1', '1', '9', '1', '3', '32.2000', 200, 0, '2', 0, '0.00'),
(566, '7284-9830-3W-SJP', NULL, 'Protector', NULL, 'BLACK,PA66A3W,T-Project,PASI', '1', '1', '9', '1', '3', '61.3000', 40, 0, '2', 0, '0.00'),
(567, 'MMPA66103FHS', NULL, 'Mixed material', NULL, 'Black, Mixed Material, PA66103FHS', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 1, '1.00'),
(568, 'MMPA66A3W-1', NULL, 'Mixed material', NULL, 'Black,Mixed Material, PA66A3W 100:10', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '1.00'),
(569, 'MMPA66A3W-2', NULL, 'Mixed material', NULL, 'Black,Mixed Material,PA66A3W,100:20', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '20.00'),
(570, 'MMPBT-1100-204B', NULL, 'Mixed material', NULL, 'Black, Mixed Material, PBT-1100-204B (100:10)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '10.00'),
(571, 'MMPBT-1100-204B-1', NULL, 'Mixed material', NULL, 'Black, Mixed Material, PBT-1100-204B (100:20)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '20.00'),
(572, 'MMPBT-1100-204B-2', NULL, 'Mixed material', NULL, 'Black, Mixed Material, PBT-1100-204B (100:50)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '50.00'),
(573, 'MMPP57MNK10-1', NULL, 'Mixed material', NULL, 'Black, Mixed Material, PP57MNK10 (30) + MB PH-6728 (1)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 30, '1.00'),
(574, 'MMPPBF970A1-1', NULL, 'Mixed material', NULL, 'Black, Mixed Material, PPBF970A1 (100) + PPM17N5998BK (5)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '5.00'),
(575, 'MMPPBF970A1-2', NULL, 'Mixed material', NULL, 'Black, Mixed Material, PPBF970A1 (30) + PH-6728 (1)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 30, '1.00'),
(576, 'MMPPBF970A1-3', NULL, 'Mixed Material', NULL, 'Black, Mixed Material, PPBF970A1 (100) + SMTY (1.2)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '1.20'),
(577, 'MMPPBF970A1-4', NULL, 'Mixed Material', NULL, 'Black, Mixed Material, PPBF970A1 (100) + ECOMA A-FR41 (5)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '5.00'),
(578, 'MMPPBF970A1-5', NULL, 'Mixed material', NULL, 'Black, Mixed Material, PPBF970A1(100)+ECOMA  A-FR46(5)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '5.00'),
(579, 'MMPPBF970A1-6', NULL, 'Mixed material', NULL, 'Black, Mixed Material, PPBF970A1(100)+CM110(1.2)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '1.20'),
(580, 'MMPPBF970A1-7', NULL, 'Mixed Material', NULL, 'Black, Mixed Material, PPBF970A1(50) + PH-6728 (1)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 50, '1.00'),
(581, 'MMPPBF970A1-8', NULL, 'Mixed Material Regrind', NULL, 'Black,Mixed Regrirnd,PPBF970A1(100)+MBECOMA_A-FR46(5)+RGM(10)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '10.00'),
(582, 'MMPPBF970A1-9', NULL, 'Mixed material', NULL, 'BLack, Mixed Material, PPBF970A1(50) + PE4005(1)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 50, '1.00'),
(583, 'MMPPBJ500-1', NULL, 'Mixed material', NULL, 'BK,PPBJ500 (30) + MB PH-6728 (1)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 30, '1.00'),
(584, 'MMPPBJ550-1', NULL, 'Mixed material', NULL, 'Black, Mixed Material, PPBJ550 (100) + SMTY (1.2)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '1.20'),
(585, 'MMPPBJ550-2', NULL, 'Mixed material', NULL, 'BK,PPBJ550 (25) + MB EP-1991-20A (1)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 25, '1.00'),
(586, 'MMPPBJ550-3', NULL, 'Mixed material', NULL, 'BK,PPBJ550 (50) + MB EP-1991-20A (1)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 50, '1.00'),
(587, 'MMPPBJ550-4', NULL, 'Mixed material', NULL, 'BK,PPBJ550 (50) + MB PH-6728 (1)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 50, '1.00'),
(588, 'MMPPC616WT-2', NULL, 'Mixed Material', NULL, 'Black, Mixed Material, PPC616WT (100:10)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '10.00'),
(589, 'MMPPC616WT-3', NULL, 'Mixed Material', NULL, 'Black, Mixed Material, PPC616WT (100:25)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 100, '25.00'),
(590, 'MMPPJ715M-1', NULL, 'Mixed material', NULL, 'BK,PPJ715M (30) + MB PH-6728 (1)', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 30, '1.00'),
(591, 'ZYLBPA66103HSL-13', NULL, 'Mixed material', NULL, 'Black, Mixed material PA66', '2', '2', NULL, '1', NULL, NULL, NULL, NULL, '5', 1, '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `mixing`
--

CREATE TABLE `mixing` (
  `id` int(11) NOT NULL,
  `kode` varchar(25) NOT NULL,
  `material` varchar(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `satuan` varchar(11) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `use_status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mixing`
--

INSERT INTO `mixing` (`id`, `kode`, `material`, `qty`, `satuan`, `status`, `use_status`) VALUES
(1, 'MMPA66103FHS', '567', 2, '2', '1', NULL),
(2, 'MMPP57MNK10-1', '573', 31, '2', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mixing_child`
--

CREATE TABLE `mixing_child` (
  `id` int(11) NOT NULL,
  `material` varchar(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(11) NOT NULL,
  `transID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mixing_child`
--

INSERT INTO `mixing_child` (`id`, `material`, `qty`, `satuan`, `transID`) VALUES
(3, '69', 30, '2', '2'),
(4, '88', 1, '2', '2');

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
(9, 'T-PROJECT', 'T-Project', '1'),
(10, '3M0', '3M0', '1'),
(11, '570B', '570B', '1'),
(12, '665B', '665B', '1'),
(13, 'D26A', 'D26A', '1');

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
-- Indexes for table `mixing`
--
ALTER TABLE `mixing`
  ADD PRIMARY KEY (`id`,`kode`);

--
-- Indexes for table `mixing_child`
--
ALTER TABLE `mixing_child`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=592;

--
-- AUTO_INCREMENT for table `mixing`
--
ALTER TABLE `mixing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mixing_child`
--
ALTER TABLE `mixing_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
