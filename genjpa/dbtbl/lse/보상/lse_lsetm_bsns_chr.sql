--
-- Table structure for table `lse_lsetm_bsns_chr`
--

DROP TABLE IF EXISTS `lse_lsetm_bsns_chr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_bsns_chr` (
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `auth_admr_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '권한관리자여부',
  `prio_dv_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '우선배분여부',
  `praff_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실무여부',
  `trst_crp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위탁법인여부',
  `mdud_revs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사역여부',
  `lsetm_dpch_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사파견여부',
  `siu_dpch_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU파견여부',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `stf_rle_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원역할내용',
  `lsetm_ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사보험종목코드',
  `as_rq_dthms` datetime DEFAULT NULL COMMENT '배정요청일시',
  `dv_xcpt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당제외구분코드',
  `dv_xcpt_strdt` date DEFAULT NULL COMMENT '배당제외시작일자',
  `dv_xcpt_enddt` date DEFAULT NULL COMMENT '배당제외종결일자',
  `lsetm_stf_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사직원구분코드',
  `lsetm_dv_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사배당업무구분코드',
  `nw_dvmrt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규배당율코드',
  `ad_dvmrt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가배당율코드',
  `ad_wrsps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가전담자여부',
  `ad_wrsp_strdt` date DEFAULT NULL COMMENT '추가전담시작일자',
  `ad_wrsp_nddt` date DEFAULT NULL COMMENT '추가전담종료일자',
  `cntn_dv_ct` decimal(3,0) NOT NULL COMMENT '연속배당횟수',
  `fnl_dv_dthms` datetime DEFAULT NULL COMMENT '최종배당일시',
  `admr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리자여부',
  `hamt_chrps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고액담당자여부',
  `slobs_befo_admr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후유장해사전관리자여부',
  `srde_admr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중증질환관리자여부',
  `chnmd_nsly_admr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한방비급여관리자여부',
  `smtcl_chrps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMARTCLAIM담당자여부',
  `trpa_dt_udwr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료비세부심사자여부',
  `dv_lmict` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '배당제한건수',
  `nw_dvct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '신규배당건수',
  `ad_dvct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '추가배당건수',
  `ga_hsp_wrpd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'GA입원일당전담자여부',
  `cancr_wrpd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '암일당전담자여부',
  `prv_xcpt_strdt` date DEFAULT NULL COMMENT '결재제외시작일자',
  `prv_xcpt_nddt` date DEFAULT NULL COMMENT '결재제외종료일자',
  `dvpns_icps_inq_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원ICPS조회ID',
  `lsetm_dv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사배당유형코드',
  `lsetm_paff_chrps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사인사담당자여부',
  `info_inp_tm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정보입력팀구분코드',
  `clm_rcp_chr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고접수담당여부',
  `info_inp_chr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정보입력담당여부',
  `smat_ud_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반자동심사여부',
  `grin_chr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체보험담당여부',
  `md_udrl_trpa_chr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사역진료비담당여부',
  `md_udrl_opccs_chr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사역수술비담당여부',
  `md_udrl_acrc_md_chr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사역정밀의료담당여부',
  `osrcg_adm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '아웃소싱관리여부',
  `ta_chr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관담당여부',
  `cmpu_adm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산관리여부',
  `trpa_ud_fnl_dv_dthms` datetime DEFAULT NULL COMMENT '진료비심사최종배당일시',
  `opccs_ud_fnl_dv_dthms` datetime DEFAULT NULL COMMENT '수술비심사최종배당일시',
  `bsns_crrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무경력코드',
  `bsns_grd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무등급',
  `dv_sctcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당구간코드',
  `st_chdt` date DEFAULT NULL COMMENT '상태변경일자',
  `ta_dvmrt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관배당율코드',
  `ta_dvct` decimal(7,0) DEFAULT NULL COMMENT '이관배당건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업무담당자';
