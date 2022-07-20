--
-- Table structure for table `lse_ltrm_ibnr_rtx_ba`
--

DROP TABLE IF EXISTS `lse_ltrm_ibnr_rtx_ba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ltrm_ibnr_rtx_ba` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감년월',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `ltrm_ibnr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기IBNR마감구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) DEFAULT NULL COMMENT '산출회차',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약담보코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `rs_rlv_dt` date DEFAULT NULL COMMENT '사유해당일자',
  `ibnr_cvr_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IBNR담보종류코드',
  `trmt_seqno` decimal(20,0) DEFAULT NULL COMMENT '진료순번',
  `hagth_strdt` date DEFAULT NULL COMMENT '입통원시작일자',
  `hagth_nddt` date DEFAULT NULL COMMENT '입통원종료일자',
  `hsp_days` decimal(5,0) DEFAULT NULL COMMENT '입원일수',
  `llse_adm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대손사관리담보코드',
  `mlse_adm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중손사관리담보코드',
  `slse_adm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소손사관리담보코드',
  `dmdt` date DEFAULT NULL COMMENT '청구일자',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `ad_dmdt` date DEFAULT NULL COMMENT '추가청구일자',
  `an_fmlr_py_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연금식지급여부',
  `prvdt` date DEFAULT NULL COMMENT '결재일자',
  `rn_pibam` decimal(17,2) DEFAULT NULL COMMENT '원수지급보험금액',
  `rn_ex_ibamt` decimal(15,0) DEFAULT NULL COMMENT '원수환입보험금액',
  `ptrm_rn_xiamt` decimal(15,0) DEFAULT NULL COMMENT '전기원수추산보험금액',
  `lltm_rn_xiamt` decimal(17,2) DEFAULT NULL COMMENT '후기원수추산보험금액',
  `re_pibam` decimal(17,2) DEFAULT NULL COMMENT '출재지급보험금액',
  `ptrm_re_xiamt` decimal(17,2) DEFAULT NULL COMMENT '전기출재추산보험금액',
  `re_ex_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재환입보험금액',
  `lltm_re_xiamt` decimal(17,2) DEFAULT NULL COMMENT '후기출재추산보험금액',
  `xi_rv_prvdt` date DEFAULT NULL COMMENT '추산보정결재일자',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `rv_ad_dmdt` date DEFAULT NULL COMMENT '보정추가청구일자',
  `adm_clmdt` date DEFAULT NULL COMMENT '관리사고일자',
  `an_fmlr_cvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연금식담보여부',
  `fr_py_cls_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최초지급마감년월',
  `sep_ers_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분할삭제구분코드',
  `sep_mdf_rnibn` decimal(17,2) DEFAULT NULL COMMENT '분할수정원수보험금',
  `sep_mdf_xiamt` decimal(17,2) DEFAULT NULL COMMENT '분할수정추산보험금액',
  `ibnr_st_clmct` decimal(10,0) DEFAULT NULL COMMENT 'IBNR기준사고건수',
  `adm_cvrbs_clmct` decimal(10,0) DEFAULT NULL COMMENT '관리담보기준사고건수',
  `cvrcl_st_clmct` decimal(10,0) DEFAULT NULL COMMENT '담보별기준사고건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기IBNR영수증기초';