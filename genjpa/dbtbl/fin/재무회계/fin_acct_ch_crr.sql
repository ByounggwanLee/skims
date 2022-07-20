--
-- Table structure for table `fin_acct_ch_crr`
--

DROP TABLE IF EXISTS `fin_acct_ch_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_acct_ch_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dfpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예금상대처코드',
  `ch_crr_seqno` decimal(5,0) NOT NULL COMMENT '변경이력순번',
  `actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌번호',
  `acct_scrno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '통장비밀번호',
  `acct_stbdt` date NOT NULL COMMENT '통장개설일자',
  `dp_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예금종류코드',
  `acct_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통장구분코드',
  `acct_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통장상세구분코드',
  `frbn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '펌뱅킹여부',
  `dl_ts_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래전송코드',
  `fd_mnclt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '자금집금여부',
  `intr_bnkg_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '인터넷뱅킹여부',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `brnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '지점명',
  `pstno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상세주소',
  `tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호',
  `us_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '사용기관코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `acc_cv_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정전환대상여부',
  `cndt` date DEFAULT NULL COMMENT '해약일자',
  `cn_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해약사유',
  `prs_dp_dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표예금상대처코드',
  `acct_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통장상태코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `wdrc_act_rgt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금계좌등록여부',
  `cract_mmthr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당좌차월여부',
  `cract_mmthr_amt` decimal(15,0) DEFAULT '0' COMMENT '당좌차월금액',
  `dl_spc_crt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래내역생성여부',
  `rltn_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연계은행코드',
  `rltn_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연계계좌번호',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `lq_cnn_act_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '청산관련계좌여부',
  `fd_mnclt_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자금집금방법코드',
  `acct_inq_scl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통장조회범위구분코드',
  `main_mnclt_act_a_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주요집금계좌A여부',
  `main_mnclt_act_b_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주요집금계좌B여부',
  `main_mnclt_act_c_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주요집금계좌C여부',
  `main_mnclt_act_d_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주요집금계좌D여부',
  `main_mnclt_act_e_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주요집금계좌E여부',
  `befo_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전계좌번호',
  `bk_mnclt_mtact_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행집금모계좌여부',
  `act_nick_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌별칭명',
  `tblam_mnamt` decimal(17,2) DEFAULT NULL COMMENT '잔액유지금액',
  `bk_act_ch_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행계좌변경구분코드',
  `fn_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융기관코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `acct_use_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통장용도구분코드',
  `bnc_agycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방카대리점코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_acct_ch_crr_00` (`dfpcd`,`ch_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통장변경이력';
