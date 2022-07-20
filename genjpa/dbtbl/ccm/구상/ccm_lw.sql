--
-- Table structure for table `ccm_lw`
--

DROP TABLE IF EXISTS `ccm_lw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lw` (
  `lw_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '소송접수년도',
  `lw_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '소송일련번호',
  `cmp_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상접수년월',
  `cmp_rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상접수조사순번',
  `lsetm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사접수년월',
  `lsetm_rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사접수조사순번',
  `lnno` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출번호',
  `smamt_lw_rcp_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소액소송접수년도',
  `smamt_lw_sno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소액소송일련번호',
  `smamt_lw_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '소액소송여부',
  `lw_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송종류코드',
  `crt_rcpdt` date NOT NULL COMMENT '법원접수일자',
  `thcp_rcpdt` date NOT NULL COMMENT '당사접수일자',
  `aclgs_rptdt` date DEFAULT NULL COMMENT '응소보고일자',
  `lwr_vl_stdt` date DEFAULT NULL COMMENT '변호사평가기준일자',
  `lw_prp_anal_dt` date DEFAULT NULL COMMENT '소송제기분석일자',
  `thcp_rle_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '당사역할구분코드',
  `prs_plat_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표원고고객번호',
  `prs_planm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표원고명',
  `plat_xcpt_psct` decimal(5,0) DEFAULT NULL COMMENT '원고이외인원수',
  `prs_deft_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표피고고객번호',
  `prs_defnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표피고명',
  `deft_xcpt_psct` decimal(5,0) DEFAULT NULL COMMENT '피고이외인원수',
  `lw_prp_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송제기사유코드',
  `clm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고내용',
  `fnl_enddt` date DEFAULT NULL COMMENT '최종종결일자',
  `lw_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송상태코드',
  `lw_ersdt` date DEFAULT NULL COMMENT '소송삭제일자',
  `lw_t_pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '소송총지급액',
  `lw_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송지급구분코드',
  `lw_cs_ry_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송비용회수구분코드',
  `crnt_lawbs_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '현재송무담당자직원번호',
  `lw_trne_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송수행자직원번호',
  `cmp_chr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상담당기관코드',
  `cmp_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상담당자직원번호',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `bsns_cnnno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무관련번호구분코드',
  `bsns_cnnno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무관련번호',
  `lwprp_idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소제기구상접수년월',
  `lwprp_idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소제기구상접수일련번호',
  `lwprp_sno` decimal(5,0) DEFAULT NULL COMMENT '소제기일련번호',
  `jdaf_tadt` date DEFAULT NULL COMMENT '법무이관일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`lw_rcp_yr`,`lw_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소송';
