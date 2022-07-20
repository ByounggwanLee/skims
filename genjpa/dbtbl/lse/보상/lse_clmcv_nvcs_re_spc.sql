--
-- Table structure for table `lse_clmcv_nvcs_re_spc`
--

DROP TABLE IF EXISTS `lse_clmcv_nvcs_re_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmcv_nvcs_re_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `cs_spc_seqno` decimal(3,0) NOT NULL COMMENT '비용내역순번',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약담보코드',
  `cvr_seqno` decimal(5,0) DEFAULT NULL COMMENT '담보순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `ltrm_rert` decimal(12,6) DEFAULT NULL COMMENT '장기출재율',
  `ltrm_re_nv_cs` decimal(17,2) DEFAULT NULL COMMENT '장기출재조사비용',
  `ltrm_re_remn_xiamt` decimal(17,2) DEFAULT NULL COMMENT '장기출재잔여추산금액',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '브로커재보험자코드',
  `crano` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약번호',
  `gd_cvr_re_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품담보출재구분코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clmcv_nvcs_re_spc_00` (`cls_yymm`,`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`cs_spc_seqno`,`xi_py_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고담보조사비용출재내역';
