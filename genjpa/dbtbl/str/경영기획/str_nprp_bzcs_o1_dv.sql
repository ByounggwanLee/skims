--
-- Table structure for table `str_nprp_bzcs_o1_dv`
--

DROP TABLE IF EXISTS `str_nprp_bzcs_o1_dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_nprp_bzcs_o1_dv` (
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전표라인번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `bzcs_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비유형코드',
  `dv_rt` decimal(20,14) NOT NULL COMMENT '배분비율',
  `dvamt` decimal(15,0) NOT NULL COMMENT '배분금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`slpdt`,`slpno`,`slp_lnno`,`sno`,`dh_orgcd`,`bzcs_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비비례사업비1차배분';
