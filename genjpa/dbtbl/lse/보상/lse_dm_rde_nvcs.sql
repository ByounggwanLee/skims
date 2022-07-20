--
-- Table structure for table `lse_dm_rde_nvcs`
--

DROP TABLE IF EXISTS `lse_dm_rde_nvcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dm_rde_nvcs` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `nv_org_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '조사기관고객번호',
  `sd` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '시군구',
  `lsetm_chrps_stfnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '손사담당자직원명',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `cs_sm` decimal(17,2) NOT NULL COMMENT '비용합계',
  `ba_rwfe` decimal(17,2) NOT NULL COMMENT '기본보수료',
  `daycs_rqamt` decimal(15,0) NOT NULL COMMENT '일비신청금액',
  `trfx_rqamt` decimal(17,2) NOT NULL COMMENT '교통비신청금액',
  `cnst_cs` decimal(17,2) NOT NULL COMMENT '자문비용',
  `inctv_csamt` decimal(17,2) NOT NULL COMMENT '인센티브비용금액',
  `et_cs_usamt` decimal(17,2) NOT NULL COMMENT '기타비용사용금액',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '등록직원번호',
  `rgt_stf_psgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '등록직원소속기관코드',
  `man_dlg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인위임구분코드',
  `quf_dlgdt` date DEFAULT NULL COMMENT '자격위임일자',
  `prsdt` date DEFAULT NULL COMMENT '제출일자',
  `rnd_days` decimal(5,0) DEFAULT NULL COMMENT '경과일수',
  `nv_rptg_fuldg_crccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사보고서충실도정도코드',
  `bsns_cprt_crccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무협력정도코드',
  `bsns_fuldg_crccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무충실도정도코드',
  `pln_nv_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '현장조사평가점수',
  `pln_nv_rptg_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '현장조사보고서평가점수',
  `end_rptg_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '종결보고서평가점수',
  `crct_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '정확평가점수',
  `rptg_cpmt_rq_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '보고서보완요청평가점수',
  `cnndc_adx_propt_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '관련서류첨부적정평가점수',
  `dlay_rsdoc_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '지연사유서평가점수',
  `xpnm_cn_yn_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '설명내용여부평가점수',
  `issu_slut_blt_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '문제해결능력평가점수',
  `fsvs_cvap_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '금감원민원평가점수',
  `ntt_clm_sjtdn_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '고의사고적발평가점수',
  `clm_nv_vlpoc_sm` decimal(15,0) DEFAULT NULL COMMENT '사고조사평가점수합계',
  `bsns_vlrt_cv_poct` decimal(17,2) DEFAULT NULL COMMENT '업무평가율환산점수',
  `cvap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원여부',
  `lsetm_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사담당자직원번호',
  `cvap_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원사유',
  `vl_dt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가상세내용',
  `pln_nv_vlcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현장조사평가내용',
  `pln_nv_rptg_vlcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현장조사보고서평가내용',
  `end_rptg_vlcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종결보고서평가내용',
  `crct_vlcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정확평가내용',
  `rptg_cpmt_rq_vlcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보고서보완요청평가내용',
  `cnndc_adx_propt_vlcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련서류첨부적정평가내용',
  `dlay_rsdoc_vlcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연사유서평가내용',
  `xpnm_cn_yn_vlcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설명내용여부평가내용',
  `issu_slut_blt_vlcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문제해결능력평가내용',
  `dcu_csamt` decimal(15,0) DEFAULT NULL COMMENT '서류비용금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dm_rde_nvcs_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해절감조사비용';
