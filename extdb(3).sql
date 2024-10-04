-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2022 at 03:05 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `extdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_general_mst`
--

CREATE TABLE `ad_general_mst` (
  `adgm_gen_id` varchar(8) NOT NULL,
  `adgm_code` varchar(5) DEFAULT NULL,
  `adgm_defunct` varchar(1) DEFAULT NULL,
  `adgm_desc` varchar(300) DEFAULT NULL,
  `adgm_type_id` varchar(3) DEFAULT NULL,
  `adgm_value` varchar(60) DEFAULT NULL COMMENT 'Value to store code for some records'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ad_general_mst`
--

INSERT INTO `ad_general_mst` (`adgm_gen_id`, `adgm_code`, `adgm_defunct`, `adgm_desc`, `adgm_type_id`, `adgm_value`) VALUES
('1000', '1000', 'N', NULL, NULL, 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `ad_oprunit_mst`
--

CREATE TABLE `ad_oprunit_mst` (
  `adoum_opr_id` decimal(20,0) NOT NULL,
  `adoum_org_id` decimal(20,0) NOT NULL,
  `adoum_add1` varchar(200) DEFAULT NULL,
  `adoum_add2` varchar(200) DEFAULT NULL,
  `adoum_admin_mail` varchar(100) DEFAULT NULL,
  `adoum_admin_name` varchar(100) DEFAULT NULL,
  `adoum_admin_phno` varchar(20) DEFAULT NULL,
  `adoum_cecoll` varchar(500) DEFAULT NULL,
  `adoum_cediv` varchar(100) DEFAULT NULL,
  `adoum_ceeccno` varchar(100) DEFAULT NULL,
  `adoum_ceno` varchar(100) DEFAULT NULL,
  `adoum_cerange` varchar(500) DEFAULT NULL,
  `adoum_cfield1` varchar(50) DEFAULT NULL,
  `adoum_cfield2` varchar(50) DEFAULT NULL,
  `adoum_cfield3` varchar(50) DEFAULT NULL,
  `adoum_cfield4` varchar(50) DEFAULT NULL,
  `adoum_chairmain_mail` varchar(100) DEFAULT NULL,
  `adoum_chairmain_name` varchar(100) DEFAULT NULL,
  `adoum_chairmain_phno` varchar(100) DEFAULT NULL,
  `adoum_city` varchar(100) DEFAULT NULL,
  `adoum_code` varchar(20) DEFAULT NULL,
  `adoum_condt` date DEFAULT NULL,
  `adoum_conno` varchar(200) DEFAULT NULL,
  `adoum_conval` decimal(19,2) DEFAULT NULL,
  `adoum_cstbst` varchar(20) DEFAULT NULL,
  `adoum_currid` decimal(19,2) DEFAULT NULL,
  `adoum_defunct` varchar(1) DEFAULT NULL,
  `adoum_dfield2` date DEFAULT NULL,
  `adoum_dfiled1` date DEFAULT NULL,
  `adoum_district_id` decimal(19,2) DEFAULT NULL,
  `adoum_district_name` varchar(100) DEFAULT NULL,
  `adoum_email` varchar(100) DEFAULT NULL,
  `adoum_language` varchar(10) DEFAULT NULL,
  `adoum_lbtno` varchar(50) DEFAULT NULL,
  `adoum_main_ou` decimal(20,0) DEFAULT NULL,
  `adoum_oprcd` varchar(20) DEFAULT NULL,
  `adoum_oprname` varchar(100) NOT NULL,
  `adoum_other_mail` varchar(100) DEFAULT NULL,
  `adoum_other_name` varchar(100) DEFAULT NULL,
  `adoum_other_phno` varchar(20) DEFAULT NULL,
  `adoum_ou_type` varchar(5) DEFAULT NULL,
  `adoum_panno` varchar(20) DEFAULT NULL,
  `adoum_parea` varchar(50) DEFAULT NULL,
  `adoum_payment_enabled` varchar(1) DEFAULT NULL,
  `adoum_pcity` varchar(50) DEFAULT NULL,
  `adoum_pdesg` varchar(60) DEFAULT NULL,
  `adoum_pemail` varchar(100) DEFAULT NULL,
  `adoum_pername` varchar(60) DEFAULT NULL,
  `adoum_pflatno` varchar(50) DEFAULT NULL,
  `adoum_phno` varchar(20) DEFAULT NULL,
  `adoum_pin` varchar(20) DEFAULT NULL,
  `adoum_place` varchar(20) DEFAULT NULL,
  `adoum_plano` varchar(50) DEFAULT NULL,
  `adoum_pphno` varchar(20) DEFAULT NULL,
  `adoum_ppin` varchar(20) DEFAULT NULL,
  `adoum_ppre` varchar(50) DEFAULT NULL,
  `adoum_proad` varchar(50) DEFAULT NULL,
  `adoum_pstate` varchar(50) DEFAULT NULL,
  `adoum_ptaxno` varchar(20) DEFAULT NULL,
  `adoum_sd_per` decimal(4,2) DEFAULT NULL,
  `adoum_sec` varchar(8) DEFAULT NULL,
  `adoum_sertaxcat` varchar(50) DEFAULT NULL,
  `adoum_simulation` varchar(1) DEFAULT NULL,
  `adoum_ssi` varchar(20) DEFAULT NULL,
  `adoum_state_id` decimal(19,2) DEFAULT NULL,
  `adoum_status` varchar(1) DEFAULT NULL,
  `adoum_staxno` varchar(20) DEFAULT NULL,
  `adoum_system_value` varchar(1) DEFAULT NULL,
  `adoum_tanno` varchar(20) DEFAULT NULL,
  `adoum_tcan` varchar(20) DEFAULT NULL,
  `adoum_tdcan` varchar(20) DEFAULT NULL,
  `adoum_tdscircle` varchar(20) DEFAULT NULL,
  `adoum_timezone` varchar(20) DEFAULT NULL,
  `adoum_vat` varchar(20) DEFAULT NULL,
  `adoum_gst` varchar(30) DEFAULT NULL,
  `adoum_hsnsac` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ad_organization_mst`
--

CREATE TABLE `ad_organization_mst` (
  `adom_org_id` decimal(20,0) NOT NULL,
  `adom_ac_grp_no` varchar(20) DEFAULT NULL,
  `adom_add1` varchar(200) DEFAULT NULL,
  `adom_add2` varchar(200) DEFAULT NULL,
  `adom_admin_email_as_login` varchar(1) DEFAULT NULL,
  `adom_admin_mail` varchar(100) DEFAULT NULL,
  `adom_admin_name` varchar(100) DEFAULT NULL,
  `adom_admin_phno` varchar(20) DEFAULT NULL,
  `adom_busdom` varchar(8) DEFAULT NULL,
  `adom_cecoll` varchar(500) DEFAULT NULL,
  `adom_cediv` varchar(100) DEFAULT NULL,
  `adom_ceeccno` varchar(100) DEFAULT NULL,
  `adom_ceno` varchar(100) DEFAULT NULL,
  `adom_cerange` varchar(500) DEFAULT NULL,
  `adom_cfield1` varchar(50) DEFAULT NULL,
  `adom_cfield2` varchar(50) DEFAULT NULL,
  `adom_cfield3` varchar(50) DEFAULT NULL,
  `adom_cfield4` varchar(50) DEFAULT NULL,
  `adom_chairman_mail` varchar(100) DEFAULT NULL,
  `adom_chairman_name` varchar(50) DEFAULT NULL,
  `adom_chairman_phno` varchar(20) DEFAULT NULL,
  `adom_city` varchar(100) DEFAULT NULL,
  `adom_comtp` varchar(8) DEFAULT NULL,
  `adom_cstbst` varchar(20) DEFAULT NULL,
  `adom_currid` decimal(20,0) DEFAULT NULL,
  `adom_defunct` varchar(1) DEFAULT NULL,
  `adom_dfield1` date DEFAULT NULL,
  `adom_dfield2` date DEFAULT NULL,
  `adom_email` varchar(100) DEFAULT NULL,
  `adom_estb_cd` varchar(20) DEFAULT NULL,
  `adom_imagefile` varchar(500) DEFAULT NULL,
  `adom_orgcd` varchar(3) DEFAULT NULL,
  `adom_orgname` varchar(100) NOT NULL,
  `adom_orgtp` varchar(8) DEFAULT NULL,
  `adom_other_mail` varchar(100) DEFAULT NULL,
  `adom_other_name` varchar(100) DEFAULT NULL,
  `adom_other_phno` varchar(20) DEFAULT NULL,
  `adom_panno` varchar(20) DEFAULT NULL,
  `adom_parea` varchar(50) DEFAULT NULL,
  `adom_pcity` varchar(50) DEFAULT NULL,
  `adom_pdesg` varchar(60) DEFAULT NULL,
  `adom_pemail` varchar(100) DEFAULT NULL,
  `adom_pername` varchar(60) DEFAULT NULL,
  `adom_pflatno` varchar(50) DEFAULT NULL,
  `adom_phno` varchar(20) DEFAULT NULL,
  `adom_pin` varchar(20) DEFAULT NULL,
  `adom_pkg_mode_of_pay` varchar(1) DEFAULT NULL,
  `adom_pkg_pay_freq` varchar(1) DEFAULT NULL,
  `adom_place` varchar(20) DEFAULT NULL,
  `adom_plano` varchar(50) DEFAULT NULL,
  `adom_pphno` varchar(20) DEFAULT NULL,
  `adom_ppin` varchar(20) DEFAULT NULL,
  `adom_ppre` varchar(50) DEFAULT NULL,
  `adom_proad` varchar(50) DEFAULT NULL,
  `adom_pstate` varchar(50) DEFAULT NULL,
  `adom_system_value` varchar(1) DEFAULT NULL,
  `adom_tan` varchar(20) DEFAULT NULL,
  `adom_tcan` varchar(20) DEFAULT NULL,
  `adom_tdcan` varchar(20) DEFAULT NULL,
  `adom_tdscircle` varchar(20) DEFAULT NULL,
  `adom_vat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ad_role_assign_hdr`
--

CREATE TABLE `ad_role_assign_hdr` (
  `adrh_org_id` decimal(20,0) NOT NULL,
  `adrh_role_id` decimal(20,0) NOT NULL,
  `adrh_defunct` varchar(1) DEFAULT NULL,
  `adrh_module_id` decimal(20,0) DEFAULT NULL,
  `adrh_name` varchar(100) DEFAULT NULL,
  `adrh_system` varchar(1) DEFAULT NULL,
  `adrh_user_type` varchar(1) DEFAULT NULL,
  `adrh_createdby` decimal(20,0) DEFAULT NULL,
  `adrh_createddt` date DEFAULT NULL,
  `adrh_createdip` varchar(30) DEFAULT NULL,
  `adrh_createdmac` varchar(500) DEFAULT NULL,
  `adrh_updatedby` decimal(20,0) DEFAULT NULL,
  `adrh_updateddt` date DEFAULT NULL,
  `adrh_updatedip` varchar(30) DEFAULT NULL,
  `adrh_updatedmac` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ad_user_mst`
--

CREATE TABLE `ad_user_mst` (
  `adum_org_id` decimal(20,0) NOT NULL,
  `adum_opr_id` decimal(20,0) NOT NULL,
  `adum_user_id` decimal(20,0) NOT NULL,
  `adum_fname` varchar(100) NOT NULL,
  `adum_mname` varchar(50) DEFAULT NULL,
  `adum_lname` varchar(100) NOT NULL,
  `adum_emailid` varchar(100) DEFAULT NULL,
  `adum_phoneno` varchar(20) DEFAULT NULL,
  `adum_global` char(1) DEFAULT NULL,
  `adum_login_id` varchar(100) DEFAULT NULL,
  `adum_password` varchar(250) DEFAULT NULL,
  `adum_empcode` varchar(30) NOT NULL,
  `adum_deptid` decimal(10,0) NOT NULL,
  `adum_desgid` decimal(10,0) NOT NULL,
  `adum_dob` date DEFAULT NULL,
  `adum_doj` date DEFAULT NULL,
  `adum_dor` date DEFAULT NULL,
  `adum_bloodgroup` varchar(8) DEFAULT NULL,
  `adum_paysheetno` varchar(20) DEFAULT NULL,
  `adum_filepath` varchar(100) DEFAULT NULL,
  `adum_filename` varchar(100) DEFAULT NULL,
  `adum_active` char(1) DEFAULT 'A' COMMENT 'Status of User [A-Active, B-Block, T-Transferred]',
  `adum_defunct` char(1) DEFAULT 'N',
  `adum_active_from` date DEFAULT NULL,
  `adum_active_upto` date DEFAULT NULL,
  `adum_password1` varchar(250) DEFAULT NULL,
  `adum_password2` varchar(250) DEFAULT NULL,
  `adum_password3` varchar(250) DEFAULT NULL,
  `adum_passrestdt` date DEFAULT NULL,
  `adum_question` varchar(250) DEFAULT NULL,
  `adum_answer` varchar(250) DEFAULT NULL,
  `adum_def_lnf` varchar(8) DEFAULT NULL,
  `adum_def_lan` varchar(8) DEFAULT NULL,
  `adum_sup_id` varchar(20) DEFAULT NULL,
  `adum_mrdatechng` char(1) DEFAULT NULL,
  `adum_noofdays` decimal(10,0) DEFAULT NULL,
  `adum_allmod` char(1) DEFAULT NULL,
  `adum_time_zone` varchar(300) DEFAULT NULL,
  `adum_user_type` char(1) DEFAULT NULL,
  `adum_system_value` char(1) DEFAULT NULL,
  `adum_created_in_opr` decimal(20,0) DEFAULT NULL,
  `adum_starttime` date DEFAULT NULL,
  `adum_endtime` date DEFAULT NULL,
  `adum_link_hash` varchar(100) DEFAULT NULL,
  `createdby` decimal(20,0) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  `modifiedby` decimal(20,0) DEFAULT NULL,
  `modifiedon` date DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `mac_info` varchar(4000) DEFAULT NULL,
  `adum_maker_id` decimal(20,0) DEFAULT NULL,
  `adum_allowtosee` char(1) DEFAULT 'S',
  `adum_counterflg` char(1) DEFAULT 'N',
  `adum_shiftflg` char(1) DEFAULT 'N',
  `adum_pass_change_form` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `login_count` varchar(1) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `createdip` varchar(30) DEFAULT NULL,
  `updatedip` varchar(30) DEFAULT NULL,
  `updatedmac` varchar(500) DEFAULT NULL,
  `imieno` varchar(50) DEFAULT NULL,
  `adum_image` blob,
  `adum_location` varchar(20) DEFAULT NULL,
  `adum_section_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bussinessformdtl`
--

CREATE TABLE `bussinessformdtl` (
  `company_id` bigint(20) NOT NULL,
  `company_emailid` varchar(255) DEFAULT NULL,
  `company_mobileno` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_password` varchar(255) DEFAULT NULL,
  `company_type` varchar(15) DEFAULT NULL COMMENT 'K-KYC,A-Audit,I-Individual',
  `company_user_type` varchar(50) DEFAULT NULL COMMENT 'SA-Super Admin,SB-Sub Admin',
  `company_created_by` varchar(10) DEFAULT NULL,
  `company_updated_by` varchar(10) DEFAULT NULL,
  `company_pwd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bussinessformdtl`
--

INSERT INTO `bussinessformdtl` (`company_id`, `company_emailid`, `company_mobileno`, `company_name`, `company_password`, `company_type`, `company_user_type`, `company_created_by`, `company_updated_by`, `company_pwd`) VALUES
(12, 'c@gmail.com', '9988771212', 'Test Company', '$2a$10$Xsth6K4zHPh7uomwltwxPuyIwMBAvfqZdB03MNAgCnZKpqAtGpTAS', 'A', '', NULL, NULL, NULL),
(40, 'tst@gmail.com', '9988776655', 'Test Com 221', '$2a$10$w0Hqbq3ZxzopiGRozE25HeaqkcmD6L44SDofumeJNfFKpxI/f2CN6', 'A', 'SB', '12', NULL, '$2a$10$w0Hqbq3ZxzopiGRozE25HeaqkcmD6L44SDofumeJNfFKpxI/f2CN6'),
(50, 'xyz@b.com', '9999999999', 'xyz', '$2a$10$u0n6gKXD/U/27n3ZNlhve.Vn1GTuAov.IrfNIMdh0I5K3hVOIug4G', 'K', 'SB', '12', NULL, 'Swapnil@9');

-- --------------------------------------------------------

--
-- Table structure for table `enquirydtl`
--

CREATE TABLE `enquirydtl` (
  `enq_id` bigint(20) NOT NULL,
  `enq_created_dt` date DEFAULT NULL,
  `enq_email_id` varchar(255) DEFAULT NULL,
  `enq_mobileno` varchar(255) DEFAULT NULL,
  `enq_msg` varchar(255) DEFAULT NULL,
  `enq_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquirydtl`
--

INSERT INTO `enquirydtl` (`enq_id`, `enq_created_dt`, `enq_email_id`, `enq_mobileno`, `enq_msg`, `enq_name`) VALUES
(4, '2022-12-11', 'a@b.com', '9988454512', 'it is a test message', 'Test User33');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(56);

-- --------------------------------------------------------

--
-- Table structure for table `officeadminmst`
--

CREATE TABLE `officeadminmst` (
  `oam_id` bigint(100) NOT NULL,
  `oam_created_dt` date DEFAULT NULL,
  `oam_dob` date DEFAULT NULL,
  `oam_emailid` varchar(255) DEFAULT NULL,
  `oam_mobileno` varchar(255) DEFAULT NULL,
  `oam_name` varchar(255) DEFAULT NULL,
  `oam_password` varchar(255) DEFAULT NULL,
  `oam_type` varchar(15) DEFAULT NULL COMMENT 'K-KYC,A-Audit,I-Individual ',
  `oam_updated_dt` date DEFAULT NULL,
  `oam_user_type` varchar(255) DEFAULT NULL COMMENT 'SA-Super Admin,SB-Sub Admin ',
  `oam_created_by` varchar(20) DEFAULT NULL,
  `oam_updated_by` varchar(20) DEFAULT NULL,
  `oam_user_role` varchar(10) DEFAULT NULL COMMENT '0-sup,1-sub,2-emp',
  `oam_Profilepic` varchar(500) DEFAULT NULL,
  `oam_pwd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officeadminmst`
--

INSERT INTO `officeadminmst` (`oam_id`, `oam_created_dt`, `oam_dob`, `oam_emailid`, `oam_mobileno`, `oam_name`, `oam_password`, `oam_type`, `oam_updated_dt`, `oam_user_type`, `oam_created_by`, `oam_updated_by`, `oam_user_role`, `oam_Profilepic`, `oam_pwd`) VALUES
(39, '2022-12-27', NULL, 's@gmail.com', '9420846657', 'Swapnil', '$2a$10$DT4iWnmAJMVhg3GYdpVVX.hdZosZsJ07K.kHTvgQDXZ3rIGDh/Api', '', '2022-12-29', 'SB', '12', '12', '2', NULL, '@dmin123'),
(41, '2022-12-28', '2022-04-01', 'abc@g.com', '9988888888', 'abcd', '$2a$10$LU6CTdsXJg8Hm8KmQIDjAeu0Wq3B/.6GWJkOPfAJ07m9y2LkEKdzm', 'K', '2022-12-28', 'SB', '40', '40', '2', NULL, NULL),
(42, '2022-12-28', '1989-11-01', 'h@g.com', '9988776655', 'Harish', '$2a$10$Y6G.Vkw6yRLHbsCCa.aeJ.Rfp2O6XK1tC1LCcfcgTxAtHjf/dJuRu', 'A', '2022-12-28', 'SB', '40', '40', '2', 'D:\\ext_img_ipload\\Hydrangeas.jpg', NULL),
(43, '2022-12-28', '1990-01-01', 'kvl@g.com', '9988776655', 'Kavil', '$2a$10$qyg6VHTyq/IF2H/5Rb3cke/lz4yBXkrZfivfEc8ghACDw8cdTOtKS', 'A', NULL, 'SB', '40', NULL, '1', 'D:\\ext_img_ipload\\Chrysanthemum.jpg', NULL),
(47, '2022-12-28', NULL, 's@b.com', '9988776655', 'Ritik', '@dmin123', '', NULL, 'SA', '12', NULL, '0', NULL, NULL),
(48, '2022-12-28', NULL, 'wk@gmail.com', '9988777777', 'Wiki', '$2a$10$n.IITPLS3pBDo726vasOGO3wEh.OMPrgZB3LOm6aarrz01GckR3bS', '', '2022-12-29', 'SB', '12', '40', '2', 'D:\\ext_img_ipload\\Chrysanthemum.jpg', '@dmin123');

-- --------------------------------------------------------

--
-- Table structure for table `processformautiddtl`
--

CREATE TABLE `processformautiddtl` (
  `pfd_id` bigint(20) NOT NULL,
  `pfd_clnt_cmpn_name` varchar(255) DEFAULT NULL,
  `pfd_clnt_cmpn_website` varchar(255) DEFAULT NULL,
  `pfd_clnt_created_dt` date DEFAULT NULL,
  `pfd_clnt_proj_audited_by` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_audited_reports_link` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_auditing_date` date DEFAULT NULL,
  `pfd_clnt_proj_circulatingsupply` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_clas_of_bl_chn` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_typ_of_tkn` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_coin_ranking` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_market_cap` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_name` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_name_of_contracts` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_no_of_contracts` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_sourcelink` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_token_launched` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_total_volume` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_trust_score` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_type` varchar(255) DEFAULT NULL,
  `pfd_clnt_updated_dt` date DEFAULT NULL,
  `pfd_clnt_proj_tkn_standrd` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_utility_of_coin` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_backed_by_bcoin` varchar(255) DEFAULT NULL,
  `pfd_clnt_proj_tech_used` varchar(255) DEFAULT NULL,
  `pfd_created_by` varchar(20) DEFAULT NULL,
  `pfd_updated_by` varchar(20) DEFAULT NULL,
  `pfd_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `processformautiddtl`
--

INSERT INTO `processformautiddtl` (`pfd_id`, `pfd_clnt_cmpn_name`, `pfd_clnt_cmpn_website`, `pfd_clnt_created_dt`, `pfd_clnt_proj_audited_by`, `pfd_clnt_proj_audited_reports_link`, `pfd_clnt_proj_auditing_date`, `pfd_clnt_proj_circulatingsupply`, `pfd_clnt_proj_clas_of_bl_chn`, `pfd_clnt_proj_typ_of_tkn`, `pfd_clnt_proj_coin_ranking`, `pfd_clnt_proj_market_cap`, `pfd_clnt_proj_name`, `pfd_clnt_proj_name_of_contracts`, `pfd_clnt_proj_no_of_contracts`, `pfd_clnt_proj_sourcelink`, `pfd_clnt_proj_token_launched`, `pfd_clnt_proj_total_volume`, `pfd_clnt_proj_trust_score`, `pfd_clnt_proj_type`, `pfd_clnt_updated_dt`, `pfd_clnt_proj_tkn_standrd`, `pfd_clnt_proj_utility_of_coin`, `pfd_clnt_proj_backed_by_bcoin`, `pfd_clnt_proj_tech_used`, `pfd_created_by`, `pfd_updated_by`, `pfd_status`) VALUES
(9, 'abcd update', 'abcd.com', '2022-12-11', '1', 'a@b.com', '2022-01-01', '67', '66', '1', '66', '66', 'extension', 'a,b,c', '3', 'aa@bb.xom/1', '66', '56', '5', '1', '2022-12-28', NULL, NULL, NULL, NULL, NULL, '', ''),
(51, 'abcd', 'ww.zbc.com', '2022-12-28', '11', 'www.abc.com', '2022-12-01', '11', '11', '11', '11', '11', 'abcd', '', '11', 'www.xyz.com', '11', '11', '11', '121', NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(54, 'Client Company Name1', '', '2022-12-29', 'rakesj', 'www.replink.com', '2022-12-29', '100', 'Infrastructure', 'Payment', '111', '100', 'clntprojname', 'a1,a2', '10', '', '22', '101', '10', '1', '2022-12-29', 'ERC-20', 'gen', 'block coin', '', '40', '12', 'A'),
(55, 'Client Company Name', 'www.comwb.com', '2022-12-29', 'rakesh', 'auditedlink', '2021-01-01', 'clntcirsupply', 'Defi', 'utility', '50', '40', 'clntprojname', 'a1,a2', '10', 'clnsourcelink', 'bizztoken', '30', '20', 'clntprojtype', '2022-12-29', 'ERC-20', 'defiutil', 'Client Project Backed by blockchain / coin', '', '40', '12', 'R');

-- --------------------------------------------------------

--
-- Table structure for table `processformkycdtl`
--

CREATE TABLE `processformkycdtl` (
  `pfkd_id` bigint(20) NOT NULL,
  `pfkd_clnt_cmpn_name` varchar(255) DEFAULT NULL,
  `pfkd_clnt_cmpn_website` varchar(255) DEFAULT NULL,
  `pfkd_clnt_proj_name` varchar(255) DEFAULT NULL,
  `pfkd_clnt_proj_status` varchar(255) DEFAULT NULL,
  `pfkd_created_date` date DEFAULT NULL,
  `pfkd_updated_dt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `processformkycdtl`
--

INSERT INTO `processformkycdtl` (`pfkd_id`, `pfkd_clnt_cmpn_name`, `pfkd_clnt_cmpn_website`, `pfkd_clnt_proj_name`, `pfkd_clnt_proj_status`, `pfkd_created_date`, `pfkd_updated_dt`) VALUES
(1, 'abc updated', 'abcd.com', 'abcproj', 'A', '2022-12-11', '2022-12-29'),
(2, 'MatroPolise1', 'mpolo@mp.com', 'AgroVision', 'R', '2022-12-28', '2022-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `pt_department_master`
--

CREATE TABLE `pt_department_master` (
  `ptdpm_org_id` decimal(20,0) NOT NULL,
  `ptdpm_opr_id` decimal(20,0) NOT NULL,
  `ptdpm_id` decimal(10,0) NOT NULL,
  `ptdpm_name` varchar(100) NOT NULL,
  `ptdpm_defunct` char(1) DEFAULT 'N',
  `ptdpm_makerid` decimal(10,0) DEFAULT NULL,
  `ptdpm_olddeptid` decimal(5,0) DEFAULT NULL,
  `ptdpm_deptcode` varchar(8) DEFAULT NULL,
  `ptdpm_pdeptname` varchar(50) DEFAULT NULL,
  `ptdpm_abbreviation` varchar(10) DEFAULT NULL,
  `ptdpm_createdby` decimal(20,0) DEFAULT NULL,
  `ptdpm_createddt` date DEFAULT NULL,
  `ptdpm_createdip` varchar(30) DEFAULT NULL,
  `ptdpm_createdmac` varchar(500) DEFAULT NULL,
  `ptdpm_updatedby` decimal(20,0) DEFAULT NULL,
  `ptdpm_updateddt` date DEFAULT NULL,
  `ptdpm_updatedip` varchar(30) DEFAULT NULL,
  `ptdpm_updatedmac` varchar(500) DEFAULT NULL,
  `ptdpm_isuser_form` char(1) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pt_designation_master`
--

CREATE TABLE `pt_designation_master` (
  `ptdgm_org_id` decimal(20,0) NOT NULL,
  `ptdgm_opr_id` decimal(20,0) NOT NULL,
  `ptdgm_id` decimal(10,0) NOT NULL,
  `ptdgm_name` varchar(50) NOT NULL,
  `ptdgm_defunct` char(1) DEFAULT 'N',
  `ptdgm_makerid` decimal(10,0) DEFAULT NULL,
  `ptdgm_createdby` decimal(20,0) DEFAULT NULL,
  `ptdgm_createddt` date DEFAULT NULL,
  `ptdgm_createdip` varchar(30) DEFAULT NULL,
  `ptdgm_createdmac` varchar(500) DEFAULT NULL,
  `ptdgm_updatedby` decimal(20,0) DEFAULT NULL,
  `ptdgm_updateddt` date DEFAULT NULL,
  `ptdgm_updatedip` varchar(30) DEFAULT NULL,
  `ptdgm_updatedmac` varchar(500) DEFAULT NULL,
  `ptdgm_isuser_form` char(1) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticketdtl`
--

CREATE TABLE `ticketdtl` (
  `tkt_id` bigint(20) NOT NULL,
  `tkt_created_dt` date DEFAULT NULL,
  `tkt_massage` varchar(255) DEFAULT NULL,
  `tkt_priority` varchar(255) DEFAULT NULL,
  `tkt_status` varchar(255) DEFAULT NULL,
  `tkt_subject` varchar(255) DEFAULT NULL,
  `tkt_updated_dt` date DEFAULT NULL,
  `tkt_user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticketdtl`
--

INSERT INTO `ticketdtl` (`tkt_id`, `tkt_created_dt`, `tkt_massage`, `tkt_priority`, `tkt_status`, `tkt_subject`, `tkt_updated_dt`, `tkt_user_id`) VALUES
(10, '2022-12-11', 'it is test ticket msg', 'O', 'O', 'Test ticket open updated', '2022-12-11', '2'),
(44, '2022-12-28', 'Test ticket lllllllllllllllllllllllllllllllllllllll', 'L', 'O', 'Test tkt 2812', NULL, '40'),
(45, '2022-12-28', 'efghbbbbbbbbbbbbbbbbbbbb', 'L', 'O', 'abcd', NULL, '40'),
(46, '2022-12-28', 'aabbbbbbbbbbbbbbbbbbbxxxxxxxxxx', 'L', 'O', 'abcd', NULL, '40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `type` varchar(10) NOT NULL COMMENT 'K-KYC,A-Audit,I-Individual',
  `refid` bigint(20) NOT NULL,
  `orgname` varchar(255) NOT NULL,
  `fromtbl` varchar(255) NOT NULL,
  `user_type` varchar(50) DEFAULT NULL COMMENT 'SA-Super,SB-Sub',
  `user_role` varchar(10) DEFAULT NULL COMMENT '0-sup,1-sub,2-emp',
  `profilepic` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `refid`, `orgname`, `fromtbl`, `user_type`, `user_role`, `profilepic`) VALUES
(1, 'c@gmail.com', '$2a$10$Xsth6K4zHPh7uomwltwxPuyIwMBAvfqZdB03MNAgCnZKpqAtGpTAS', '', 12, 'Test Company', 'bussinessformdtl', 'SA', '0', NULL),
(17, 's@gmail.com', '$2a$10$DT4iWnmAJMVhg3GYdpVVX.hdZosZsJ07K.kHTvgQDXZ3rIGDh/Api', '', 39, 'Swapnil', 'officeadminmst', 'SB', '2', ''),
(18, 'tst@gmail.com', '$2a$10$w0Hqbq3ZxzopiGRozE25HeaqkcmD6L44SDofumeJNfFKpxI/f2CN6', 'A', 40, 'Test Com 221', 'bussinessformdtl', 'SB', '1', NULL),
(19, 'abc@g.com', '$2a$10$LU6CTdsXJg8Hm8KmQIDjAeu0Wq3B/.6GWJkOPfAJ07m9y2LkEKdzm', 'K', 41, 'abcd', 'officeadminmst', 'SB', '1', NULL),
(20, 'h@g.com', '$2a$10$Y6G.Vkw6yRLHbsCCa.aeJ.Rfp2O6XK1tC1LCcfcgTxAtHjf/dJuRu', 'A', 42, 'Harish', 'officeadminmst', 'SB', '1', NULL),
(21, 'kvl@g.com', '$2a$10$qyg6VHTyq/IF2H/5Rb3cke/lz4yBXkrZfivfEc8ghACDw8cdTOtKS', 'A', 43, 'Kavil', 'officeadminmst', 'SB', '1', NULL),
(22, 's@b.com', '@dmin123', '', 47, 'Ritik', 'officeadminmst', 'SA', '0', NULL),
(23, 'wk@gmail.com', '$2a$10$n.IITPLS3pBDo726vasOGO3wEh.OMPrgZB3LOm6aarrz01GckR3bS', '', 48, 'Wiki', 'officeadminmst', 'SB', '2', 'D:\\ext_img_ipload\\Chrysanthemum.jpg'),
(25, 'xyz@b.com', '$2a$10$u0n6gKXD/U/27n3ZNlhve.Vn1GTuAov.IrfNIMdh0I5K3hVOIug4G', 'K', 50, 'xyz', 'bussinessformdtl', 'SB', '1', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_general_mst`
--
ALTER TABLE `ad_general_mst`
  ADD PRIMARY KEY (`adgm_gen_id`);

--
-- Indexes for table `ad_role_assign_hdr`
--
ALTER TABLE `ad_role_assign_hdr`
  ADD PRIMARY KEY (`adrh_org_id`,`adrh_role_id`);

--
-- Indexes for table `ad_user_mst`
--
ALTER TABLE `ad_user_mst`
  ADD PRIMARY KEY (`adum_org_id`,`adum_opr_id`,`adum_user_id`);

--
-- Indexes for table `bussinessformdtl`
--
ALTER TABLE `bussinessformdtl`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `enquirydtl`
--
ALTER TABLE `enquirydtl`
  ADD PRIMARY KEY (`enq_id`);

--
-- Indexes for table `officeadminmst`
--
ALTER TABLE `officeadminmst`
  ADD PRIMARY KEY (`oam_id`);

--
-- Indexes for table `processformautiddtl`
--
ALTER TABLE `processformautiddtl`
  ADD PRIMARY KEY (`pfd_id`);

--
-- Indexes for table `processformkycdtl`
--
ALTER TABLE `processformkycdtl`
  ADD PRIMARY KEY (`pfkd_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`);

--
-- Indexes for table `ticketdtl`
--
ALTER TABLE `ticketdtl`
  ADD PRIMARY KEY (`tkt_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bussinessformdtl`
--
ALTER TABLE `bussinessformdtl`
  MODIFY `company_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `enquirydtl`
--
ALTER TABLE `enquirydtl`
  MODIFY `enq_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `officeadminmst`
--
ALTER TABLE `officeadminmst`
  MODIFY `oam_id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `processformautiddtl`
--
ALTER TABLE `processformautiddtl`
  MODIFY `pfd_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `processformkycdtl`
--
ALTER TABLE `processformkycdtl`
  MODIFY `pfkd_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
