--
-- Table structure for table `igd_cvr_csf`
--

DROP TABLE IF EXISTS `igd_cvr_csf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_cvr_csf` (
  `cvr_csf_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보분류용도코드',
  `cvr_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보분류코드',
  `ppr_cvr_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위담보분류코드',
  `cvr_csfnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담보분류명',
  `cvr_csf_lvl` decimal(1,0) NOT NULL COMMENT '담보분류레벨',
  `fnl_lvl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '최종레벨여부',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '유효종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cvr_csf_usecd`,`cvr_csfcd`),
  KEY `idx_igd_cvr_csf_10` (`cvr_csfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='담보분류';
