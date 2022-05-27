-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 11:18 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yottol`
--

-- --------------------------------------------------------

--
-- Table structure for table `fund_commissions`
--

CREATE TABLE `fund_commissions` (
  `ISIN` varchar(12) NOT NULL,
  `fund_name` varchar(100) DEFAULT NULL,
  `Aug2020` smallint(6) DEFAULT NULL,
  `Sep2020` smallint(6) DEFAULT NULL,
  `Oct2020` smallint(6) DEFAULT NULL,
  `Nov2020` smallint(6) DEFAULT NULL,
  `Dec2020` smallint(6) DEFAULT NULL,
  `Jan2021` smallint(6) DEFAULT NULL,
  `Feb2021` smallint(6) DEFAULT NULL,
  `Mar2021` smallint(6) DEFAULT NULL,
  `Apr2021` smallint(6) DEFAULT NULL,
  `May2021` smallint(6) DEFAULT NULL,
  `Jun2021` smallint(6) DEFAULT NULL,
  `Jul2021` smallint(6) DEFAULT NULL,
  `Aug2021` smallint(6) DEFAULT NULL,
  `Sep2021` smallint(6) DEFAULT NULL,
  `Oct2021` smallint(6) DEFAULT NULL,
  `Nov2021` smallint(6) DEFAULT NULL,
  `Dec2021` smallint(6) DEFAULT NULL,
  `Jan2022` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fund_commissions`
--

INSERT INTO `fund_commissions` (`ISIN`, `fund_name`, `Aug2020`, `Sep2020`, `Oct2020`, `Nov2020`, `Dec2020`, `Jan2021`, `Feb2021`, `Mar2021`, `Apr2021`, `May2021`, `Jun2021`, `Jul2021`, `Aug2021`, `Sep2021`, `Oct2021`, `Nov2021`, `Dec2021`, `Jan2022`) VALUES
('INF109K01BL4', 'vICICI Prudential Bluechip Fund - Growth', 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 50, 50, 50, 50, 50, 50, 50),
('INF109K01E35', 'ICICI Prudential US Bluechip Equity Fund - Growth', 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50),
('INF109K01GU4', 'ICICI Prudential Credit Risk Fund - Growth', 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 45, 45, 45, 45, 45, 45, 45),
('INF174K01153', 'Kotak Bluechip Fund - Growth', 110, 110, 110, 110, 110, 65, 65, 65, 65, 65, 65, 110, 110, 110, 70, 70, 70, 70),
('INF174K01AT3', 'Kotak Gold Fund Growth', 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35),
('INF174KA1186', 'Kotak Balanced Advantage Fund -Regular Plan - Growth Option', 110, 110, 110, 110, 110, 70, 70, 70, 70, 70, 70, 100, 100, 100, 65, 65, 65, 65),
('INF174KA1FF0', 'Kotak ESG Opportunities Fund - Regular Plan - Growth Option', 135, 135, 135, 135, 135, 105, 105, 105, 105, 105, 105, 120, 120, 120, 105, 105, 105, 105),
('INF179K01BE2', 'HDFC Top 100 Fund - Growth Option', 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 60, 60, 60, 60, 60, 60, 60),
('INF179KA1JC4', 'HDFC Banking and PSU Debt Fund - Regular Plan - Growth Option', 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30),
('INF200K01180', 'SBI BLUE CHIP FUND-REGULAR PLAN GROWTH', 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60),
('INF200K01305', 'SBI LARGE & MIDCAP FUND- REGULAR PLAN -Growth', 120, 120, 120, 120, 120, 120, 120, 120, 120, 70, 70, 70, 70, 70, 70, 70, 70, 70),
('INF200K01HA1', 'SBI GOLD FUND REGULAR PLAN - GROWTH', 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20),
('INF204K01GB3', 'Nippon India Value Fund- Growth Plan', 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 95, 95, 95, 95, 95, 95, 95, 95),
('INF205K01247', 'Invesco India Growth Opportunities Fund - Growth', 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60),
('INF205K01304', 'Invesco India Largecap Fund - Growth', 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75),
('INF209K01793', 'Aditya Birla Sun Life Dynamic Bond Fund - Growth - Regular Plan', 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 55, 55, 55, 55, 55, 55, 55, 55),
('INF209K01942', 'Aditya Birla Sun Life Short Term Fund - Growth - Regular Plan', 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 45, 45, 45, 45, 45, 45, 45, 45),
('INF209K01BR9', 'Aditya Birla Sun Life Frontline Equity Fund-Growth', 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 75, 75, 75, 75, 75, 75, 75, 75),
('INF209K01LV0', 'Aditya Birla Sun Life Banking & PSU Debt Fund - Regular Plan-Growth', 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25),
('INF223J01AU8', 'PGIM India Global Equity Opportunities Fund - Growth', 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 90, 90, 90, 90, 90, 90, 90, 90),
('INF247L01700', 'Motilal Oswal Nasdaq 100 Fund of Fund- Regular Plan Growth', 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40),
('INF277K016A9', 'Tata India Pharma & Healthcare Fund-Regular Plan-Growth', 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 105, 105, 105, 105, 105, 105, 105),
('INF740K01128', 'DSP Midcap Fund - Regular Plan - Growth', 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80),
('INF740K01656', 'DSP Short Term Fund - Regular Plan - Growth', 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55),
('INF760K01167', 'Canara Robeco Emerging Equities - Regular Plan - GROWTH', 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90),
('INF760K01AR3', 'Canara Robeco Bluechip Equity Fund - Regular Plan - Growth', 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 100, 100, 100, 100, 100, 100, 100, 100),
('INF769K01010', 'Mirae Asset Large Cap Fund - Growth Plan', 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 70, 70, 70, 70, 70, 70, 70, 70),
('INF769K01DK3', 'Mirae Asset Tax Saver Fund-Regular Plan-Growth', 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 50, 50, 50, 50, 50, 50, 50, 50),
('INF846K01131', 'Axis Long Term Equity Fund - Regular Plan - Growth', 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50),
('INF846K01B51', 'Axis Flexi Cap Fund - Regular Plan - Growth', 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60),
('INF846K01Y05', 'Axis Special Situations Fund - Regular Plan - Growth Option', 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 60, 60, 60, 60, 60, 60, 60, 60),
('INF955L01153', 'Baroda Short Term Bond Fund - Plan A - Growth Option', 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 50, 50, 50, 50, 50, 50, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fund_commissions`
--
ALTER TABLE `fund_commissions`
  ADD PRIMARY KEY (`ISIN`),
  ADD UNIQUE KEY `ISIN` (`ISIN`),
  ADD UNIQUE KEY `ISIN_2` (`ISIN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
