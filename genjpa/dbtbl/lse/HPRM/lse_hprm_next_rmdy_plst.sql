--
-- Table structure for table `lse_hprm_next_rmdy_plst`
--

DROP TABLE IF EXISTS `lse_hprm_next_rmdy_plst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_next_rmdy_plst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `lb_dt_seqno` decimal(3,0) NOT NULL COMMENT '배상상세순번',
  `rmdy_hsp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '치료병원구분코드',
  `plst_it_seqno` decimal(5,0) NOT NULL COMMENT '성형항목순번',
  `plst_parcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성형부위코드',
  `cm_unprc` decimal(15,0) DEFAULT NULL COMMENT 'CM단가',
  `appr_cnmtr` decimal(3,0) DEFAULT NULL COMMENT '인정센티미터',
  `ifamt` decimal(15,0) DEFAULT NULL COMMENT '추정금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_next_rmdy_plst_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`lb_dt_seqno`,`rmdy_hsp_flgcd`,`plst_it_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM향후치료성형';
