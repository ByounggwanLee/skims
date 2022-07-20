--
-- Table structure for table `cmp_etcs_mgm_bjps_crst`
--

DROP TABLE IF EXISTS `cmp_etcs_mgm_bjps_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_etcs_mgm_bjps_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bj_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '대상년월',
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관코드',
  `ans_dt` date DEFAULT NULL COMMENT '응답일자',
  `ans_hhmm` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답시분',
  `ans_1_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답1값',
  `ans_2_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답2값',
  `ans_3_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답3값',
  `ans_4_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답4값',
  `ans_5_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답5값',
  `ans_6_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답6값',
  `ans_7_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답7값',
  `ans_8_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답8값',
  `ans_9_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답9값',
  `ans_10_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답10값',
  `ans_11_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답11값',
  `ans_12_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답12값',
  `ans_13_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답13값',
  `ans_14_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답14값',
  `ans_15_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답15값',
  `ans_16_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답16값',
  `ans_17_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답17값',
  `ans_18_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답18값',
  `ans_19_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답19값',
  `ans_20_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답20값',
  `ans_21_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답21값',
  `ans_22_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답22값',
  `ans_23_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답23값',
  `ans_24_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답24값',
  `ans_25_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답25값',
  `ans_26_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답26값',
  `ans_27_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답27값',
  `ans_28_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답28값',
  `ans_29_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답29값',
  `ans_30_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답30값',
  `ans_31_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답31값',
  `ans_32_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답32값',
  `ans_33_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답33값',
  `ans_34_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답34값',
  `ans_35_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답35값',
  `ans_36_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답36값',
  `ans_37_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답37값',
  `ans_38_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답38값',
  `ans_39_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답39값',
  `ans_40_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답40값',
  `ans_41_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답41값',
  `ans_42_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답42값',
  `ans_43_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답43값',
  `ans_44_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답44값',
  `ans_45_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답45값',
  `ans_46_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답46값',
  `ans_47_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답47값',
  `ans_48_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답48값',
  `ans_49_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답49값',
  `ans_50_vl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답50값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cmp_etcs_mgm_bjps_crst_00` (`bj_yymm`,`seq`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='윤리경영대상자현황';
