--
-- Table structure for table `lse_exec_blt_vl`
--

DROP TABLE IF EXISTS `lse_exec_blt_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_exec_blt_vl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `entp_vl_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업체평가종목코드',
  `vl_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '평가담당자직원번호',
  `vl_stdt` date DEFAULT NULL COMMENT '평가기준일자',
  `vl_tpoct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '평가총점',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_exec_blt_vl_00` (`rcp_yymm`,`rcp_nv_seqno`,`ctmno`,`cprt_entp_seqno`,`entp_vl_imcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수행능력평가';
