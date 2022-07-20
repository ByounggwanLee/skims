--
-- Table structure for table `ins_pl_prm_pym_pr`
--

DROP TABLE IF EXISTS `ins_pl_prm_pym_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_prm_pym_pr` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '발행후변경순번',
  `pym_seq` decimal(5,0) NOT NULL COMMENT '납입회차',
  `crt_relpc_seqno` decimal(10,0) NOT NULL COMMENT '계약자관계자순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `seq_db_seqno` decimal(5,0) NOT NULL COMMENT '회차중복순번',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ba_cvr_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기본담보보험료',
  `trt_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '특약보험료',
  `cu_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '적립보험료',
  `flpy_cvr_trt_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일시납담보특약보험료',
  `dcbf_cu_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '할인전적립보험료',
  `dcbf_flpy_cvrtr_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '할인전일시납담보특약보험료',
  `t1_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '1회보험료',
  `cumny_sb_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '적립금대체보험료',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `dcbf_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '할인전보험료',
  `woncr_cv_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산적용보험료',
  `condt_t_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공동인수총보험료',
  `woncv_condt_t_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산공동인수총보험료',
  `thcpq_ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당사분적용보험료',
  `thcpq_woncv_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사분원화환산적용보험료',
  `nds_ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배서적용보험료',
  `woncv_nds_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산배서적용보험료',
  `pym_prdt` date DEFAULT NULL COMMENT '납입예정일자',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `dcndt` date DEFAULT NULL COMMENT '확정일자',
  `hg_pym_perd` date DEFAULT NULL COMMENT '최고납입기한',
  `pyp_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '분납비율',
  `incm_prm_cr_seqno` decimal(5,0) DEFAULT NULL COMMENT '수입보험료발생순번',
  `prm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료구분코드',
  `nds_prm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서보험료여부',
  `xwpy_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '과오납금액',
  `pym_pr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입예정상태코드',
  `cu_nprm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '적립순보험료',
  `prm_dcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '보험료할인금액',
  `xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '환율',
  `dmpdt` date DEFAULT NULL COMMENT '최고일자',
  `npy_cnldt` date DEFAULT NULL COMMENT '미납해지일자',
  `wrdmp_snddt` date DEFAULT NULL COMMENT '최고문발송일자',
  `cv_prm` decimal(17,2) DEFAULT '0.00' COMMENT '환산보험료',
  `gnte_cv_prm` decimal(15,0) DEFAULT NULL COMMENT '보장성환산보험료',
  `cumt_cv_prm` decimal(15,0) DEFAULT NULL COMMENT '적립성환산보험료',
  `mn_rec_prm` decimal(15,0) DEFAULT NULL COMMENT '최소추천보험료',
  `mx_rec_prm` decimal(15,0) DEFAULT NULL COMMENT '최대추천보험료',
  `t_pym_prm` decimal(15,0) DEFAULT NULL COMMENT '총납입보험료',
  `nd_rtamt` decimal(15,0) DEFAULT NULL COMMENT '만기환급금액',
  `mw_rtamt` decimal(17,2) DEFAULT NULL COMMENT '중도환급금액',
  `nd_rtrt` decimal(5,2) DEFAULT NULL COMMENT '만기환급율',
  `gn_nelp_mitrm_rfamt` decimal(15,0) DEFAULT NULL COMMENT '보장미경과월기간내준비금액',
  `pf_prm` decimal(15,0) DEFAULT NULL COMMENT '우대보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`pym_seq`,`crt_relpc_seqno`,`mncd`,`seq_db_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계보험료납입예정';
