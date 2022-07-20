--
-- Table structure for table `fin_bzcs_rcapm_cr`
--

DROP TABLE IF EXISTS `fin_bzcs_rcapm_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bzcs_rcapm_cr` (
  `bdg_crtdt` date NOT NULL COMMENT '예산생성일자',
  `bdg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예산구분코드',
  `bdg_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '예산일련번호',
  `bdg_dt_sno` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '예산상세일련번호',
  `bdg_lnno` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '예산라인번호',
  `act_cls_rflt_dt` date DEFAULT NULL COMMENT '회계마감반영일자',
  `wrt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작성기관코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `usr_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용자ID',
  `bdg_rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산귀속기관코드',
  `lm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한도직원번호',
  `bzndp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업부기관코드',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당직원번호',
  `xc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산기관코드',
  `xcdt` date DEFAULT NULL COMMENT '정산일자',
  `xc_sno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산일련번호',
  `xc_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산발생구분코드',
  `tpamt_wrt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가지급금작성기관코드',
  `cmp_payad_amt_rqdt` date DEFAULT NULL COMMENT '보상전도금신청일자',
  `cmp_payad_amt_sno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상전도금일련번호',
  `bzcs_pypl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비지급처구분코드',
  `bzcs_pylno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비지급처번호',
  `pylnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처명',
  `bzcs_rq_py_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비요청지급형태코드',
  `py_prdt` date DEFAULT NULL COMMENT '지급예정일자',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `dpsr_cnfyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주확인여부',
  `crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드번호',
  `owrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유자명',
  `us_spc` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용내역',
  `amt` decimal(17,2) DEFAULT NULL COMMENT '금액',
  `bzcs_sbamt` decimal(15,0) DEFAULT NULL COMMENT '사업비차감금액',
  `sb_acc_sbjcd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차감계정과목코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `fcamt` decimal(17,2) DEFAULT NULL COMMENT '외화금액',
  `slp_out_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표출력구분코드',
  `bzcs_evd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비증빙구분코드',
  `evd_da_dsc_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙자료식별값',
  `need_wrte_mtt_cplyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '필요기재사항완료여부',
  `rq_city_rlt_acc_sbjcd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청시상대계정과목코드',
  `bzcs_dp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비입금구분코드',
  `bsns_rltn_sml_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무연계소구분코드',
  `bzcs_ctl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비통제구분코드',
  `bzcs_ctl_orgn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비통제조직구분코드',
  `qtr_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분기년월',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `py_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급기관코드',
  `bzcs_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비지급구분코드',
  `pyno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급번호',
  `py_ppr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급상위기관코드',
  `py_act_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급회계기관코드',
  `py_dl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처리직원번호',
  `py_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급형태코드',
  `py_dldt` date DEFAULT NULL COMMENT '지급처리일자',
  `rm_dt` date DEFAULT NULL COMMENT '송금일자',
  `anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답코드',
  `rm_dl_hms` datetime DEFAULT NULL COMMENT '송금처리시간',
  `no2_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번은행코드',
  `no2_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번계좌번호',
  `no2_dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번예금주명',
  `pyamt` decimal(17,2) DEFAULT NULL COMMENT '지급금액',
  `inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력직원번호',
  `bzcs_dlplc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비거래처구분코드',
  `bzcs_dlpno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비거래처번호',
  `dlpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처명',
  `cr_slpdt` date DEFAULT NULL COMMENT '발생전표일자',
  `cr_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생전표번호',
  `dl_slpdt` date DEFAULT NULL COMMENT '처리전표일자',
  `dl_slpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리전표번호',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분코드',
  `bzcs_stm_rkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비결제단계코드',
  `ud_stm_rkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사결제단계코드',
  `no1_bzcs_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번사업비결재직원번호',
  `no1_bzcs_prv_hms` datetime DEFAULT NULL COMMENT '1번사업비결재시간',
  `no2_bzcs_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번사업비결재직원번호',
  `no2_bzcs_prv_hms` datetime DEFAULT NULL COMMENT '2번사업비결재시간',
  `no3_bzcs_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번사업비결재직원번호',
  `no3_bzcs_prv_hms` datetime DEFAULT NULL COMMENT '3번사업비결재시간',
  `no4_bzcs_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4번사업비결재직원번호',
  `no4_bzcs_prv_hms` datetime DEFAULT NULL COMMENT '4번사업비결재시간',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bdg_crtdt`,`bdg_flgcd`,`bdg_sno`,`bdg_dt_sno`,`bdg_lnno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비출납발생';
