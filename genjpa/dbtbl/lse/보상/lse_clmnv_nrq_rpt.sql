--
-- Table structure for table `lse_clmnv_nrq_rpt`
--

DROP TABLE IF EXISTS `lse_clmnv_nrq_rpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmnv_nrq_rpt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `rptg_seqno` decimal(3,0) NOT NULL COMMENT '보고서순번',
  `rptg_titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보고서제목',
  `rptg_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보고서내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clmnv_nrq_rpt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`rptg_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사미의뢰보고';
