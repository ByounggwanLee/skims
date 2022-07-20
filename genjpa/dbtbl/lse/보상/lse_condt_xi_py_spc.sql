--
-- Table structure for table `lse_condt_xi_py_spc`
--

DROP TABLE IF EXISTS `lse_condt_xi_py_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_condt_xi_py_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `ptccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참여사코드',
  `pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '지급금액',
  `woncr_cv_pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원화환산지급금액',
  `remn_xi_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '잔여추산금액',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '환율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_condt_xi_py_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`xi_py_spc_seqno`,`ptccd`)
) ENGINE=InnoDB AUTO_INCREMENT=1415 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공동인수추산지급내역';
