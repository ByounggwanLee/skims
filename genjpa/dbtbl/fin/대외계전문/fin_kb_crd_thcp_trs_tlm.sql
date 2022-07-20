--
-- Table structure for table `fin_kb_crd_thcp_trs_tlm`
--

DROP TABLE IF EXISTS `fin_kb_crd_thcp_trs_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_kb_crd_thcp_trs_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_crno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '전문발생번호',
  `wrtdt` date NOT NULL COMMENT '작성일자',
  `tlm_cop_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전문구성구분코드',
  `rec_seqno` decimal(5,0) NOT NULL COMMENT '레코드순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `rec_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '레코드구분코드',
  `kb_crd_head_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드HEAD구분코드',
  `tsdt` date DEFAULT NULL COMMENT '전송일자',
  `crdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드사코드',
  `rq_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청회사코드',
  `tlm_seq` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문회차',
  `kb_crd_data_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드DATA구분코드',
  `kb_crd_data_sno` decimal(9,0) DEFAULT NULL COMMENT 'KB카드DATA일련번호',
  `kb_crd_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드처리구분코드',
  `jnsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점번호',
  `crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드번호',
  `sldt` date DEFAULT NULL COMMENT '매출일자',
  `at_trm` decimal(2,0) DEFAULT NULL COMMENT '할부기간',
  `apno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인번호',
  `slamt` decimal(15,0) DEFAULT NULL COMMENT '매출액',
  `svcg` decimal(15,0) DEFAULT NULL COMMENT '봉사료',
  `tx` decimal(15,0) DEFAULT NULL COMMENT '세금',
  `ccldt` date DEFAULT NULL COMMENT '취소일자',
  `cnvcd` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통화코드',
  `endt` date DEFAULT NULL COMMENT '만기일자',
  `kb_crd_rt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드반송코드',
  `kb_crd_cost_py_prdt` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드대금지급예정일자',
  `jns_feamt` decimal(15,0) DEFAULT NULL COMMENT '가맹점수수료금액',
  `elec_sign_slp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자서명전표여부',
  `kb_crd_sl_slpno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드매출전표번호',
  `kb_crd_rt_slpno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드반송전표번호',
  `kb_crd_by_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드매입방법코드',
  `inp_jngnm_us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력가맹점명사용여부',
  `kb_crd_spcf_gd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드특정상품구분코드',
  `kb_crd_inp_jngnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드입력가맹점명',
  `kb_crd_vnc_us_domn_vl` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드VAN사사용영역값',
  `kb_crd_jns_cm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드가맹점수수료구분코드',
  `crd_chek_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용체크구분코드',
  `jns_cmrt` decimal(7,2) DEFAULT NULL COMMENT '가맹점수수료율',
  `kb_crd_trl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KB카드트레일러구분코드',
  `tct` decimal(10,0) DEFAULT NULL COMMENT '총건수',
  `tamt` decimal(15,0) DEFAULT NULL COMMENT '총금액',
  `t_dc_ct` decimal(9,0) DEFAULT NULL COMMENT '총할인건수',
  `t_dcamt` decimal(15,0) DEFAULT NULL COMMENT '총할인금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_kb_crd_thcp_trs_tlm_00` (`tlm_crno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='KB카드당사송신전문';
