--
-- Table structure for table `ins_rins_xc_bj`
--

DROP TABLE IF EXISTS `ins_rins_xc_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_xc_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `xc_bjno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '정산대상번호',
  `amt_cr_untno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금액발생단위번호',
  `cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약구분코드',
  `xc_bj_stno_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산대상기준번호유형코드',
  `xc_bj_stno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산대상기준번호',
  `dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처코드',
  `ovsqt_amt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '해외분금액구분코드',
  `rtro_pvl_seqno` decimal(5,0) DEFAULT NULL COMMENT '수재계상순번',
  `rincd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험자코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `re_dlno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재처리번호',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분코드',
  `re_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재유형코드',
  `re_pstrp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재경유처구분코드',
  `xc_amt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산금액구분코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `optn_trt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임의특약구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `clm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `rest_no` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재기준번호',
  `fltno` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선단번호',
  `crt_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자식별번호',
  `crt_kornm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자한글명',
  `woncv_xc_net_amt` decimal(15,0) NOT NULL COMMENT '원화환산정산정미금액',
  `uc_np_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미수미지급구분코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `rn_ppdt` date DEFAULT NULL COMMENT '원수계상일자',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `op_crano` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'OP계약번호',
  `trt_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약년월',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `dcu_prv_no` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서류결재번호',
  `cscl_tot_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '01' COMMENT '건별집계구분코드',
  `tot_tf_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '집계이체유형코드',
  `re_prg_admno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재진행관리번호',
  `xol_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL구분코드',
  `xc_cplt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산완료여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_xc_bj_00` (`xc_bjno`),
  KEY `idx_ins_rins_xc_bj_10` (`plyno`)
) ENGINE=InnoDB AUTO_INCREMENT=1198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험정산대상';
