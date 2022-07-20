--
-- Table structure for table `ccm_adv_aos_dm`
--

DROP TABLE IF EXISTS `ccm_adv_aos_dm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_adv_aos_dm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `rltm_rcv_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '실시간수신여부',
  `dm_ts_seqno` decimal(3,0) NOT NULL COMMENT '청구전송순번',
  `aos_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'AOS담보코드',
  `dm_tsdt` date DEFAULT NULL COMMENT '청구전송일자',
  `dm_ts_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구전송시간',
  `dmas_dt` date DEFAULT NULL COMMENT '손해사정일자',
  `dmas_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해사정시간',
  `wrk_memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업메모',
  `rpair_strdt` date DEFAULT NULL COMMENT '수리시작일자',
  `rpair_str_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리시작시간',
  `rpair_nd_prdt` date DEFAULT NULL COMMENT '수리종료예정일자',
  `rpair_nd_pr_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리종료예정시간',
  `xp_rpair_days` decimal(5,0) DEFAULT NULL COMMENT '예상수리일수',
  `inscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자명',
  `rpair_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리차량번호',
  `rpair_chsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리차대번호',
  `owrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유자명',
  `drvnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자명',
  `drv_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자전화번호',
  `drv_mail_adr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자이메일주소',
  `rpair_crcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리차량코드',
  `rpair_crnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리차량명',
  `rpair_car_mdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리차량모델명',
  `rpair_cramt` decimal(15,0) DEFAULT NULL COMMENT '수리차량가액',
  `rpair_car_trvl_dst` decimal(7,0) DEFAULT NULL COMMENT '수리차량주행거리',
  `rpair_car_schnd_amt` decimal(15,0) DEFAULT NULL COMMENT '수리차량중고금액',
  `rpair_cr_fr_rgtdt` date DEFAULT NULL COMMENT '수리차량최초등록일자',
  `rpair_car_ac_apdt` date DEFAULT NULL COMMENT '수리차량부품적용일자',
  `nrd_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험차량번호',
  `nrdps_cr_owrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자차량소유자명',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `ntgdt` date DEFAULT NULL COMMENT '입고일자',
  `tra_plc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '견인장소',
  `tra_dst` decimal(3,0) DEFAULT NULL COMMENT '견인거리',
  `tra_engnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '견인기사명',
  `ctp_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종용도코드',
  `aos_own_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS소유구분코드',
  `aos_ntg_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS입고경로코드',
  `aos_dl_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS처리방법코드',
  `aos_dm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS손해구분코드',
  `aos_ver_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS버전구분코드',
  `brow_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '브라우저종류코드',
  `dmbil_wrter_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구서작성자명',
  `cotg_wrkr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도장작업자명',
  `shtmt_wrkr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판금작업자명',
  `mcsm_wrkr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메커니즘작업자명',
  `aos_clm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS사고유형코드',
  `dmas_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해사정구분코드',
  `frst_stm_cv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선견적전환구분코드',
  `dm_tkatt_wkhms_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구탈부착작업시간종류코드',
  `as_tkatt_wkhms_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사정탈부착작업시간종류코드',
  `dm_cotg_wkhms_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구도장작업시간종류코드',
  `as_cotg_wkhms_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사정도장작업시간종류코드',
  `dm_cotg_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구도장분류코드',
  `as_cotg_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사정도장분류코드',
  `dm_cotg_colr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구도장컬러명',
  `as_cotg_colr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사정도장컬러명',
  `dm_cotgc_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구도장코트종류코드',
  `as_cotgc_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사정도장코트종류코드',
  `dm_tot_cotam` decimal(15,0) DEFAULT NULL COMMENT '청구전체도장금액',
  `as_tot_cotam` decimal(15,0) DEFAULT NULL COMMENT '사정전체도장금액',
  `dm_prev_cotg_aprt` decimal(5,2) DEFAULT NULL COMMENT '청구기존도장적용율',
  `as_prev_cotg_aprt` decimal(5,2) DEFAULT NULL COMMENT '사정기존도장적용율',
  `dm_tot_cotg_aprt` decimal(5,2) DEFAULT NULL COMMENT '청구전체도장적용율',
  `as_tot_cotg_aprt` decimal(5,2) DEFAULT NULL COMMENT '사정전체도장적용율',
  `dm_part_shtmt_aprt` decimal(5,2) DEFAULT NULL COMMENT '청구부분판금적용율',
  `as_part_shtmt_aprt` decimal(5,2) DEFAULT NULL COMMENT '사정부분판금적용율',
  `dm_matcs_aprt` decimal(5,2) DEFAULT NULL COMMENT '청구재료비적용율',
  `as_matcs_aprt` decimal(5,2) DEFAULT NULL COMMENT '사정재료비적용율',
  `mfgdt` date DEFAULT NULL COMMENT '출고일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_adv_aos_dm_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`rltm_rcv_yn`,`dm_ts_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='선진화AOS청구';
