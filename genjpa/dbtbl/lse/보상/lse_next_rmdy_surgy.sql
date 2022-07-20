--
-- Table structure for table `lse_next_rmdy_surgy`
--

DROP TABLE IF EXISTS `lse_next_rmdy_surgy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_next_rmdy_surgy` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `rmdy_hsp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '치료병원구분코드',
  `surgy_it_seqno` decimal(5,0) NOT NULL COMMENT '외과항목순번',
  `surgy_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외과항목명',
  `unprc` decimal(15,0) DEFAULT NULL COMMENT '단가',
  `qant` decimal(5,0) DEFAULT NULL COMMENT '수량',
  `ifamt` decimal(15,0) DEFAULT NULL COMMENT '추정금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_next_rmdy_surgy_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`rmdy_hsp_flgcd`,`surgy_it_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='향후치료외과';
