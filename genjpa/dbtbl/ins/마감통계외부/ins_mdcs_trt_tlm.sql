--
-- Table structure for table `ins_mdcs_trt_tlm`
--

DROP TABLE IF EXISTS `ins_mdcs_trt_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_mdcs_trt_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mdcs_tlm_opndt` date NOT NULL COMMENT '의료비전문개시일자',
  `mdcs_tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비전문관리번호',
  `mdcs_tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '의료비전문전송순번',
  `mdcs_tlm_specd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비전문종별코드',
  `mdcs_tlm_spe_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비전문종별세부코드',
  `trscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'TRANSACTION코드',
  `knia` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KNIA',
  `mdcs_tlm_opn_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비전문개시시분초',
  `trs_org` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송신기관',
  `rcv_org` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신기관',
  `dat_lngth` decimal(4,0) DEFAULT NULL COMMENT '데이터길이',
  `sndr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송신자직원번호',
  `anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답코드',
  `nrdps_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자주민번호',
  `nrdps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자성명',
  `nrdps_ins_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자보험회사코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `mdcs_tlm_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비전문업무구분코드',
  `ins_gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험상품명',
  `mdcs_cvr_instr` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비담보보험기간',
  `pfb_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자주민번호',
  `pfbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자명',
  `crt_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자주민사업자번호',
  `ins_crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험계약자명',
  `mdcs_trtct` decimal(7,0) DEFAULT NULL COMMENT '의료비특약건수',
  `ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서번호',
  `nds_stdt` date DEFAULT NULL COMMENT '배서기준일자',
  `nds_apdt` date DEFAULT NULL COMMENT '배서승인일자',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상태코드',
  `cr_st_chdt` date DEFAULT NULL COMMENT '계약상태변경일자',
  `rvidt` date DEFAULT NULL COMMENT '부활일자',
  `bsns_flg_er_1` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류1',
  `bsns_flg_er_2` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류2',
  `bsns_flg_er_3` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류3',
  `bsns_flg_er_4` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류4',
  `bsns_flg_er_5` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류5',
  `bsns_flg_er_6` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류6',
  `bsns_flg_er_7` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류7',
  `bsns_flg_er_8` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류8',
  `bsns_flg_er_9` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류9',
  `bsns_flg_er_10` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류10',
  `bsns_flg_er_11` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류11',
  `bsns_flg_er_12` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류12',
  `bsns_flg_er_13` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류13',
  `bsns_flg_er_14` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류14',
  `bsns_flg_er_15` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류15',
  `bsns_flg_er_16` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분오류16',
  `mdcs_tlm_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비전문처리상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_mdcs_trt_tlm_00` (`mdcs_tlm_opndt`,`mdcs_tlm_admno`,`mdcs_tlm_ts_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료비특약전문';
