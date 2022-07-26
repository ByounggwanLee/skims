--
-- Table structure for table `com_inr_ctm_cntrt_spc`
--

DROP TABLE IF EXISTS `com_inr_ctm_cntrt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_inr_ctm_cntrt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ntclt_ss_admno` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '안내장발행관리번호',
  `ntclt_ss_seqno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '안내장발행순번',
  `ntclt_ss_dthms` datetime DEFAULT NULL COMMENT '안내장발행일시',
  `rq_sys_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청시스템ID',
  `itmcd` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목코드',
  `ntclt_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내장명',
  `ntclt_snd_mdmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내장발송매체코드',
  `cr_lnno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약대출번호',
  `cr_lndt` date DEFAULT NULL COMMENT '계약대출일자',
  `ss_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발행기관코드',
  `ss_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발행직원번호',
  `rcv_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신전화지역번호',
  `rcv_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신전화국번',
  `rcv_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신전화일련번호',
  `rcv_mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신이메일아이디',
  `rcv_mail_domn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신이메일도메인',
  `fax_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스지역번호',
  `fax_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스국번',
  `fax_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스일련번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `sndr_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송자전화지역번호',
  `sndr_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송자전화국번',
  `sndr_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송자전화일련번호',
  `dpc_mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발신이메일아이디',
  `dpc_mail_domn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발신이메일도메인',
  `isno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급번호',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '발행후변경순번',
  `ts_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송결과코드',
  `msg_ts_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지전송내용',
  `wrk_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업방법코드',
  `rsv_snd_dthms` datetime DEFAULT NULL COMMENT '예약발송일시',
  `ums_ts_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'UMS전송결과코드',
  `ums_ts_rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'UMS전송결과내용',
  `inr_prnot_ccl_rq_dthms` datetime DEFAULT NULL COMMENT '통합출력물취소요청일시',
  `inr_prnot_ts_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통합출력물전송상태구분코드',
  `doc_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'DOCID',
  `whol_bsns_dl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사업무처리유형코드',
  `whol_bsns_dl_tpnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사업무처리유형명',
  `whol_bsns_dl_tp_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사업무처리유형상세코드',
  `whol_bsns_dl_tp_dtnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사업무처리유형상세명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_inr_ctm_cntrt_spc_00` (`ntclt_ss_admno`,`ntclt_ss_seqno`),
  KEY `idx_com_inr_ctm_cntrt_spc_10` (`ctmno`,`ntclt_ss_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=38605 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통합고객접촉내역';
