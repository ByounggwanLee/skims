--
-- Table structure for table `lse_xi_py`
--

DROP TABLE IF EXISTS `lse_xi_py`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_xi_py` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자기관코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수형태코드',
  `ibnf_cs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험금비용구분코드',
  `clm_nv_seqno` decimal(3,0) DEFAULT NULL COMMENT '사고조사순번',
  `prv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재구분코드',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) DEFAULT NULL COMMENT '보상키순번',
  `prvdt` date DEFAULT NULL COMMENT '결재일자',
  `cs_seqno` decimal(3,0) NOT NULL COMMENT '비용순번',
  `end_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '종결여부',
  `payao_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '즉시불여부',
  `ppdt` date NOT NULL COMMENT '계상일자',
  `ltrm_rert` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '장기출재율',
  `ltrm_re_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기출재보험금액',
  `ltrm_re_remn_xiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기출재잔여추산금액',
  `gu_xi_pyno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구추산지급번호',
  `pyaf_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급후상태코드',
  `ccl_cc_seq` decimal(3,0) DEFAULT NULL COMMENT '취소산출회차',
  `cmp_py_rltno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상지급연계번호',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `sep_py_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분할지급여부',
  `ltrm_re_ac_tfdt` date DEFAULT NULL COMMENT '장기출재경리이체일자',
  `otcm_ppdt` date DEFAULT NULL COMMENT '타사계상일자',
  `fnl_dcu_rcpdt` date DEFAULT NULL COMMENT '최종서류접수일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서번호',
  `prpn_cmp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비례보상여부',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '환율',
  `xcrt_apdt` date DEFAULT NULL COMMENT '환율적용일자',
  `pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '지급금액',
  `woncr_cv_pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원화환산지급금액',
  `remn_xi_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔여추산화폐코드',
  `remn_xi_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '잔여추산금액',
  `cs_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비용화폐코드',
  `cs_amt` decimal(17,2) DEFAULT NULL COMMENT '비용금액',
  `re_nvcs` decimal(17,2) DEFAULT NULL COMMENT '출재조사비',
  `woncr_cv_csamt` decimal(17,2) DEFAULT NULL COMMENT '원화환산비용금액',
  `condt_csamt` decimal(17,2) DEFAULT NULL COMMENT '공동인수비용금액',
  `condt_woncv_csamt` decimal(17,2) DEFAULT NULL COMMENT '공동인수원화환산비용금액',
  `condt_remn_xi_csamt` decimal(17,2) DEFAULT NULL COMMENT '공동인수잔여추산비용금액',
  `remn_xi_cs_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔여추산비용화폐코드',
  `remn_xi_csamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '잔여추산비용금액',
  `fr_cc_xiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '최초산출추산금액',
  `condt_pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '공동인수지급금액',
  `condt_woncr_cv_pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '공동인수원화환산지급금액',
  `condt_remn_xiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '공동인수잔여추산금액',
  `xi_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급구분코드',
  `xi_py_flg_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급구분사유코드',
  `xi_py_dt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급세부사유코드',
  `stdt` date DEFAULT NULL COMMENT '기준일자',
  `py_prdt` date DEFAULT NULL COMMENT '지급예정일자',
  `dlay_ntrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '지연이자율',
  `dlay_nt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '지연이자',
  `dlay_nt_py_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연이자지급여부',
  `dlay_nt_np_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연이자미지급사유코드',
  `dlay_nt_cal_metcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연이자계산방식코드',
  `dlay_nt_pout_mtt` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연이자특이사항',
  `woncv_ibnf_dlay_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산보험금지연이자',
  `py_ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급취소여부',
  `bnd_sz_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채권압류여부',
  `cla_ln_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약관대출여부',
  `gn_ln_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반대출여부',
  `pr_es_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질권설정여부',
  `uc_prm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미수보험료여부',
  `nv_lw_cs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사소송비용여부',
  `idm_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상대상여부',
  `bsns_dl_alarm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무처리알람여부',
  `chrps_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자의견',
  `condt_payao_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공동인수즉시불여부',
  `clc_spc` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산정내역',
  `opccs_ud_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수술비심사요청여부',
  `trpa_ud_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료비심사요청여부',
  `cla_ln_ar_nt` decimal(15,0) DEFAULT NULL COMMENT '약관대출연체이자',
  `cla_lnamt` decimal(15,0) DEFAULT NULL COMMENT '약관대출금액',
  `cdamt` decimal(17,2) DEFAULT NULL COMMENT '발생손해금액',
  `dm_dmamt` decimal(17,2) DEFAULT NULL COMMENT '청구손해액',
  `imu_rd_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책삭감사유코드',
  `imu_rd_rs_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책삭감사유상세코드',
  `imu_rd_dt_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책삭감상세의견',
  `imu_rprdt` date DEFAULT NULL COMMENT '면책통보일자',
  `soc_auto_snd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SOC자동발송여부',
  `re_xi_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재추산보험금액',
  `lms_snd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'LMS발송여부',
  `auto_cc_dgre` decimal(5,0) DEFAULT NULL COMMENT '자동산출차수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_xi_py_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`),
  KEY `idx_lse_xi_py_10` (`cmp_py_rltno`),
  KEY `idx_lse_xi_py_11` (`plyno`),
  KEY `idx_lse_xi_py_12` (`cmp_ky_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=911 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='추산지급';
