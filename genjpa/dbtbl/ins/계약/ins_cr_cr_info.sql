--
-- Table structure for table `ins_cr_cr_info`
--

DROP TABLE IF EXISTS `ins_cr_cr_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_cr_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `oj_seqno` decimal(5,0) NOT NULL COMMENT '목적물순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `crncd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호코드',
  `carno_hngl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호한글',
  `crgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량관코드',
  `carno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호구분코드',
  `chsno_or_tmpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차대번호/임시번호',
  `cr_inqno` decimal(4,0) DEFAULT NULL COMMENT '차량조회번호',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `yytp` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연식',
  `nwcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신차구분코드',
  `usdcr_rt` decimal(15,7) NOT NULL DEFAULT '0.0000000' COMMENT '중고차요율',
  `carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명',
  `rgsct` decimal(5,0) DEFAULT NULL COMMENT '정원수',
  `load_fxqtt` decimal(10,0) DEFAULT NULL COMMENT '적재정량',
  `cr_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차형태코드',
  `cr_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량용도코드',
  `cr_us_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량사용용도코드',
  `cr_oper_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량운행형태코드',
  `cramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '차량가액',
  `cr_vlamt_sm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '차량가액합계',
  `dspl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배기량구분코드',
  `dspl` decimal(4,0) DEFAULT NULL COMMENT '배기량',
  `airb_bag_pstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '에어백장착위치코드',
  `fr_cr_crsdt` date DEFAULT NULL COMMENT '최초차차량등록일자',
  `foma_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외산여부',
  `nwc_schnd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신조중고구분코드',
  `sofa_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SOFA차량여부',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명코드',
  `use_ch_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '용도변경여부',
  `cmps_tr_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유상운송형태코드',
  `cr_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량등급코드',
  `cr_sb_ap_dthms` datetime DEFAULT NULL COMMENT '차량대체적용일시',
  `cr_ownr_dscrd_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량소유자불일치사유코드',
  `drve_lessn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전교습여부',
  `cr_stamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량기준금액구분코드',
  `cr_stamt` decimal(15,0) DEFAULT NULL COMMENT '차량기준금액',
  `rnd_yyct` decimal(5,0) DEFAULT NULL COMMENT '경과년수',
  `rnd_mntct` decimal(5,0) DEFAULT NULL COMMENT '경과개월수',
  `cn_yyct_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내용년수구분코드',
  `su_rt` decimal(12,6) DEFAULT NULL COMMENT '잔존율',
  `istm_avg_trvl_dst` decimal(10,0) DEFAULT NULL COMMENT '가입시평균주행거리',
  `istm_dabrd_cnf_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입시계기판확인대상여부',
  `istm_dabrd_cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입시계기판확인여부',
  `istm_dabrd_trvl_dst` decimal(10,0) DEFAULT NULL COMMENT '가입시계기판주행거리',
  `xctm_dabrd_trvl_dst` decimal(10,0) DEFAULT NULL COMMENT '정산시계기판주행거리',
  `oper_dst` decimal(7,0) DEFAULT NULL COMMENT '운행거리',
  `schnd_yyct` decimal(3,0) DEFAULT NULL COMMENT '중고년수',
  `fire_ctp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화특차종구분코드',
  `mfg_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출고차여부',
  `elcr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전기차여부',
  `mot_out_qnty` decimal(15,0) DEFAULT NULL COMMENT '모터출력량',
  `ctp_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종세부코드',
  `cr_fuel_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량연료구분코드',
  `prc_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구매형태코드',
  `opedt` date DEFAULT NULL COMMENT '시행일자',
  `cr_rpcrg_spcrt_sctcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량수리비특별요율구간코드',
  `ldws_apdt` date DEFAULT NULL COMMENT '차선이탈경고장치적용일자',
  `ldws_bag_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차선이탈경고장치장착구분코드',
  `lkas_bag_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차선유지장치장착구분코드',
  `tpms_bag_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타이어압력경고장치장착구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_cr_info_00` (`plyno`,`oj_seqno`,`ap_nddt`,`ap_strdt`,`ndsno`),
  KEY `idx_ins_cr_cr_info_03` (`carno_hngl`,`oj_seqno`,`ap_nddt`,`ap_strdt`,`vald_nds_yn`,`plyno`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약자동차정보';
