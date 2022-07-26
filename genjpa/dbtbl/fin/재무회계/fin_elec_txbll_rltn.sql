--
-- Table structure for table `fin_elec_txbll_rltn`
--

DROP TABLE IF EXISTS `fin_elec_txbll_rltn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_elec_txbll_rltn` (
  `intn_rltno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '대외연계번호',
  `dl_admit_1_vl` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '거래관리항목1값',
  `dl_admit_2_vl` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래관리항목2값',
  `dl_admit_3_vl` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래관리항목3값',
  `dl_admit_4_vl` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래관리항목4값',
  `dl_admit_5_vl` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래관리항목5값',
  `o1_xmn_iptdt` date DEFAULT NULL COMMENT '1차검토입력일자',
  `o2_xmn_iptdt` date DEFAULT NULL COMMENT '2차검토입력일자',
  `o3_xmn_iptdt` date DEFAULT NULL COMMENT '3차검토입력일자',
  `no1_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번항목명',
  `no2_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번항목명',
  `no3_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번항목명',
  `no4_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4번항목명',
  `no5_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5번항목명',
  `no6_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '6번항목명',
  `no7_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '7번항목명',
  `no8_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '8번항목명',
  `no9_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '9번항목명',
  `no10_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '10번항목명',
  `no11_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '11번항목명',
  `no12_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '12번항목명',
  `no13_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '13번항목명',
  `no14_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '14번항목명',
  `no15_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '15번항목명',
  `no16_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '16번항목명',
  `no17_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '17번항목명',
  `no18_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '18번항목명',
  `no19_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '19번항목명',
  `no20_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '20번항목명',
  `no21_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '21번항목명',
  `no22_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '22번항목명',
  `no23_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '23번항목명',
  `no24_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '24번항목명',
  `no25_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '25번항목명',
  `no26_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '26번항목명',
  `no27_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '27번항목명',
  `no28_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '28번항목명',
  `no29_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '29번항목명',
  `no30_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '30번항목명',
  `no31_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '31번항목명',
  `no32_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '32번항목명',
  `no33_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '33번항목명',
  `no34_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '34번항목명',
  `no35_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '35번항목명',
  `no36_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '36번항목명',
  `no37_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '37번항목명',
  `no38_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '38번항목명',
  `no39_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '39번항목명',
  `no40_itnm` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '40번항목명',
  `no41_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '41번항목명',
  `no42_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '42번항목명',
  `no43_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '43번항목명',
  `no44_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '44번항목명',
  `no45_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '45번항목명',
  `no46_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '46번항목명',
  `no47_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '47번항목명',
  `no48_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '48번항목명',
  `no49_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '49번항목명',
  `no50_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '50번항목명',
  `no51_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '51번항목명',
  `no52_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '52번항목명',
  `no53_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '53번항목명',
  `no54_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '54번항목명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`intn_rltno`,`dl_admit_1_vl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전자세금계산서연계';
