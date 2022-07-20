--
-- Table structure for table `str_dm_nvcs_lwrk_av`
--

DROP TABLE IF EXISTS `str_dm_nvcs_lwrk_av`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_dm_nvcs_lwrk_av` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관실체구분코드',
  `bsns_qnty` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '업무량',
  `prp_lwrk` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '고유업무량',
  `dm_nv_bsns_lwrk` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '손해조사업무업무량',
  `pa` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '임금',
  `prp_pa` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '고유임금',
  `dm_nv_bsns_pa` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '손해조사업무임금',
  `tot_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '집계여부',
  `rk_num` decimal(3,0) DEFAULT NULL COMMENT '단계수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_dm_nvcs_lwrk_av_00` (`st_yymm`,`orgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해조사비업무량실적';
