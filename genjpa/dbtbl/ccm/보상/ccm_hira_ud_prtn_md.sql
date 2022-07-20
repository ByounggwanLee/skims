--
-- Table structure for table `ccm_hira_ud_prtn_md`
--

DROP TABLE IF EXISTS `ccm_hira_ud_prtn_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_ud_prtn_md` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `hira_ud_dgre` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원심사차수',
  `dlnbf_isno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '처방전발급번호',
  `dlnbf_sno` decimal(3,0) NOT NULL COMMENT '처방전일련번호',
  `line_no` decimal(4,0) NOT NULL COMMENT '라인번호',
  `mdorg_dmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료기관청구번호',
  `md_ct` decimal(10,5) DEFAULT NULL COMMENT '조정횟수',
  `hira_prtn_md_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원처방조정사유코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_ud_prtn_md_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_spcft_sno`,`hira_ud_dgre`,`dlnbf_isno`,`dlnbf_sno`,`line_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원심사처방조정';
