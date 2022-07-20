--
-- Table structure for table `ins_accpb_cls_cr`
--

DROP TABLE IF EXISTS `ins_accpb_cls_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_accpb_cls_cr` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `accpb_cls_flgcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '계리마감구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime DEFAULT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime DEFAULT NULL COMMENT '배서승인종료일시',
  `fnl_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종계약상태코드',
  `fnl_cr_dt_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종계약세부상태코드',
  `fnl_cr_st_chdt` date DEFAULT NULL COMMENT '최종계약상태변경일자',
  `cnrdt` date DEFAULT NULL COMMENT '계약일자',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `fnl_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '최종납입회차',
  `fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종납입년월',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `nw_rnw_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규갱신구분코드',
  `trm_sct_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간구간구분코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `gr_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체계약여부',
  `cr_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약채널코드',
  `crycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약형태코드',
  `rv_ccldt` date DEFAULT NULL COMMENT '수납취소일자',
  `pym_trm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입기간구분코드',
  `pym_trm` decimal(3,0) DEFAULT NULL COMMENT '납입기간',
  `pym_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입기간코드',
  `rl_pym_trm` decimal(3,0) DEFAULT NULL COMMENT '실납입기간',
  `nd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기구분코드',
  `nd` decimal(3,0) DEFAULT NULL COMMENT '만기',
  `ndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기코드',
  `rl_nd_trm` decimal(3,0) DEFAULT NULL COMMENT '실만기기간',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `gr_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체계약구분코드',
  `gr_dscrt` decimal(12,6) DEFAULT NULL COMMENT '단체할인율',
  `pym_xmp_stdt` date DEFAULT NULL COMMENT '납입면제시기일자',
  `sb_pym_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대체납입신청여부',
  `gr_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체고객번호',
  `apl_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청약형태코드',
  `ibnf_sb_pym_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금대체납입여부',
  `ibnf_sb_pym_st` date DEFAULT NULL COMMENT '보험금대체납입시기',
  `rnw_nddt` date DEFAULT NULL COMMENT '갱신종료일자',
  `crt_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자고객번호',
  `crt_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자성명',
  `crt_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자식별번호구분코드',
  `crt_ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자고객식별번호',
  `pym_xmp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입면제여부',
  `ba_prm` decimal(15,0) DEFAULT NULL COMMENT '기본보험료',
  `ap_prm` decimal(17,2) DEFAULT NULL COMMENT '적용보험료',
  `t_pym_prm` decimal(15,0) DEFAULT NULL COMMENT '총납입보험료',
  `ce_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dcl_rato_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시이율구분코드',
  `cu_rato_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적립이율구분코드',
  `nd_aprat` decimal(7,4) DEFAULT NULL COMMENT '만기적용이율',
  `ap_rato` decimal(12,6) DEFAULT NULL COMMENT '적용이율',
  `pr_rato` decimal(12,6) DEFAULT NULL COMMENT '예정이율',
  `lowt_gu_rato` decimal(12,6) DEFAULT NULL COMMENT '최저보증이율',
  `y1wi_lap_rato` decimal(12,6) DEFAULT NULL COMMENT '1년이내실효이율',
  `y1_aft_lap_rato` decimal(12,5) DEFAULT NULL COMMENT '1년이후실효이율',
  `mw_rtamt_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중도환급금액발생구분코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `sb_pym_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대체납입구분코드',
  `cu_prm_ocpym_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적립보험료수시납입여부',
  `lowt_rato_chc_yyct` decimal(6,0) DEFAULT NULL COMMENT '최저이율변동년수',
  `bz_mtdrp_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업방법서분류코드',
  `cu_pyspc_crt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적립지급내역생성코드',
  `dp_trm` decimal(5,0) DEFAULT NULL COMMENT '상각기간',
  `dv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당유형코드',
  `avg_dcl_rato` decimal(12,6) DEFAULT NULL COMMENT '평균공시이율',
  `cc_xcpt_dlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산출예외처리코드',
  `prmpy_stop_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료납입중지코드',
  `cu_rnw_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적립갱신주기코드',
  `prm_str_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료구조구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`accpb_cls_flgcd`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계리마감계약';
