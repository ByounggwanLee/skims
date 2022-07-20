--
-- Table structure for table `ins_whpy_rq`
--

DROP TABLE IF EXISTS `ins_whpy_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_whpy_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `whpy_rqdt` date NOT NULL COMMENT '제지급신청일자',
  `ssno` decimal(5,0) NOT NULL COMMENT '발행번호',
  `ss_dtno` decimal(3,0) NOT NULL COMMENT '발행세부번호',
  `crt_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계약자주민번호',
  `crt_name` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '계약자이름',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `ssdt` date NOT NULL COMMENT '발행일자',
  `rqor_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청기관코드',
  `whpy_rq_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제지급신청처리상태코드',
  `rq_vald_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청유효여부',
  `oldss_no` decimal(5,0) DEFAULT NULL COMMENT '구발행번호',
  `frc_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '강제신청여부',
  `py_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처리상태코드',
  `py_rcp_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급접수방법코드',
  `py_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급방법코드',
  `pfb_rcps_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자수령인관계코드',
  `rqaps_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자주민번호',
  `rqaps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자명',
  `dlg_py_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위임지급사유코드',
  `py_bjnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급대상명',
  `py_bj_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급대상주민사업자번호',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `dpsr_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주주민사업자번호',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `py_bj_dpsr_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급대상예금주관계코드',
  `rcapm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출납기관코드',
  `cnv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통화여부',
  `cnvps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통화자성명',
  `rqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '신청금액',
  `uiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '공제금액',
  `sb_pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '차감지급금액',
  `rsv_dl_rst_ercd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예약처리결과오류코드',
  `cla_ln_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약관대출승인여부',
  `ln_fd_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출자금용도코드',
  `clnrf_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약대상환은행코드',
  `clnrf_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약대상환계좌번호',
  `clnrf_dpsr_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약대상환예금주주민사업자번호',
  `clnrf_dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약대상환예금주명',
  `clnrf_tf_hpdy_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약대상환이체희망일코드',
  `clnrf_crt_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약대상환계약자관계코드',
  `py_cr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급발생유형코드',
  `py_rs_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급사유원인코드',
  `py_rs_mdccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급사유중분류코드',
  `py_rs_smccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급사유소분류코드',
  `an_tfact_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연금이체계좌유형코드',
  `an_tfact_isdy_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연금이체계좌가입일구분코드',
  `evd_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙자료구분코드',
  `evd_da_dsc_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙자료식별값',
  `evd_da_save_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙자료저장경로코드',
  `auto_py_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동지급구분코드',
  `py_nt` decimal(15,0) DEFAULT NULL COMMENT '지급이자',
  `rl_dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실예금주명',
  `befo_chek_rstcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사전체크결과코드',
  `dl_org_anscd` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래기관응답코드',
  `dpsr_inq_anscd` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주조회응답코드',
  `py_rs_crdt` date DEFAULT NULL COMMENT '지급사유발생일자',
  `cmp_rcgnt_dt` date DEFAULT NULL COMMENT '회사인식일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_whpy_rq_00` (`whpy_rqdt`,`ssno`,`ss_dtno`),
  KEY `idx_ins_whpy_rq_10` (`plyno`)
) ENGINE=InnoDB AUTO_INCREMENT=3972 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='제지급신청';
