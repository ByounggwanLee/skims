--
-- Table structure for table `lse_bfntc_ss_bj`
--

DROP TABLE IF EXISTS `lse_bfntc_ss_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_bfntc_ss_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xpdm_cvr_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예상청구담보대분류코드',
  `xpdm_cvr_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예상청구담보소분류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_bfntc_ss_bj_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`xpdm_cvr_lclcd`,`xpdm_cvr_smccd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사전안내발행대상';
