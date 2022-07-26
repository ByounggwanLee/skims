--
-- Table structure for table `ccm_depst`
--

DROP TABLE IF EXISTS `ccm_depst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_depst` (
  `depst_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '공탁접수년도',
  `depst_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '공탁접수일련번호',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `depst_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁업무구분코드',
  `depst_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁종류코드',
  `dpd_crtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁서법원코드',
  `dpd_rcp_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁서접수년도',
  `dpd_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁서분류코드',
  `dpdno_seqno` decimal(5,0) DEFAULT NULL COMMENT '공탁서번호순번',
  `acdno_crtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건번호법원코드',
  `acdno_rcp_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건번호접수년도',
  `acdno_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건번호분류코드',
  `acdno_seqno` decimal(7,0) DEFAULT NULL COMMENT '사건번호순번',
  `dpst_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁자고객번호',
  `dpst_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁자명',
  `cdpst_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피공탁자고객번호',
  `cdpst_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피공탁자명',
  `dcscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁원인코드',
  `osamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공탁금액',
  `depst_ntamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공탁이자금액',
  `dpidt` date DEFAULT NULL COMMENT '공탁일자',
  `dpst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁자구분코드',
  `dpd_ogcy_dpscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁서원본보관처코드',
  `depst_lwr_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁변호사고객번호',
  `depst_lwr_cpent_seqno` decimal(3,0) DEFAULT NULL COMMENT '공탁변호사협력업체순번',
  `prsc_rckdt` date DEFAULT NULL COMMENT '시효기산일자',
  `prsc_trm_yyct` decimal(2,0) DEFAULT NULL COMMENT '시효기간년수',
  `prsc_cmpdt` date DEFAULT NULL COMMENT '시효완성일자',
  `depst_ry_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁회수여부',
  `depst_ry_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁회수사유코드',
  `depst_ry_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁회수구분코드',
  `depst_ry_lwr_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁회수변호사고객번호',
  `depry_lwr_cpent_seqno` decimal(3,0) DEFAULT NULL COMMENT '공탁회수변호사협력업체순번',
  `depst_ry_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁회수직원번호',
  `depst_rydt` date DEFAULT NULL COMMENT '공탁회수일자',
  `ry_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회수방법코드',
  `ry_acd_crtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회수사건법원코드',
  `ryacd_crt_rcp_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회수사건법원접수년도',
  `ry_acd_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회수사건분류코드',
  `ry_acdno_seqno` decimal(7,0) DEFAULT NULL COMMENT '회수사건번호순번',
  `depst_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁팀기관코드',
  `depst_adm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공탁관리직원번호',
  `idm_prg_sno` decimal(10,0) DEFAULT NULL COMMENT '구상진행일련번호',
  `lw_rcp_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송접수년도',
  `lw_sno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송일련번호',
  `lwjd` decimal(2,0) DEFAULT NULL COMMENT '심급',
  `siu_admno_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU관리번호년도',
  `siu_admno_seqno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU관리번호순번',
  `lw_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송업무구분코드',
  `lw_clm_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송사고접수번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`depst_rcp_yr`,`depst_rcp_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공탁';
