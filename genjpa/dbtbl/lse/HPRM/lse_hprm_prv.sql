--
-- Table structure for table `lse_hprm_prv`
--

DROP TABLE IF EXISTS `lse_hprm_prv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_prv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `rptg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보고서종류코드',
  `prv_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재상태구분코드',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) DEFAULT NULL COMMENT '보상키순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_prv_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`prv_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM결재';
