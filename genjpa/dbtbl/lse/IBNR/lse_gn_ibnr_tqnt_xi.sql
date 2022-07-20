--
-- Table structure for table `lse_gn_ibnr_tqnt_xi`
--

DROP TABLE IF EXISTS `lse_gn_ibnr_tqnt_xi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_gn_ibnr_tqnt_xi` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ibnr_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR담보구분코드',
  `ibnr_cc_cyccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR산출주기코드',
  `ibnr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감구분코드',
  `ibnr_avg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR평균구분코드',
  `ibnr_wgt_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR가중치유형코드',
  `apyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적용여부',
  `vl_bj_rfd` decimal(17,2) DEFAULT NULL COMMENT '평가대상준비금',
  `rn_ndv_xiamt` decimal(17,2) DEFAULT NULL COMMENT '원수개별추산금액',
  `rn_dtlr_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '원수세칙IBNR금액',
  `rn_dtlr_ibnr_cu_rate` decimal(13,10) DEFAULT NULL COMMENT '원수세칙IBNR적립률',
  `rn_idm_avamt` decimal(17,2) DEFAULT NULL COMMENT '원수구상가능금액',
  `rn_idm_bnamt` decimal(15,0) DEFAULT NULL COMMENT '원수구상채권금액',
  `larg_clm_xi_rv_amt` decimal(17,2) DEFAULT NULL COMMENT '대사고추산보정금액',
  `pool_xiamt` decimal(17,2) DEFAULT NULL COMMENT 'POOL추산금액',
  `rn_tqnt_xiamt` decimal(17,2) DEFAULT NULL COMMENT '원수총량추산금액',
  `lclmxcp_rn_tqnt_xiamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외원수총량추산금액',
  `rn_rv_af_tqnt_xiamt` decimal(17,2) DEFAULT NULL COMMENT '원수보정후총량추산금액',
  `lclmxcp_rn_pldm_amt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외원수PLDM금액',
  `rn_pldm_amt` decimal(17,2) DEFAULT NULL COMMENT '원수PLDM금액',
  `rn_pldm_xi_rv_af_amt` decimal(17,2) DEFAULT NULL COMMENT '원수PLDM추산보정후금액',
  `lclmxcp_rn_ildm_amt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외원수ILDM금액',
  `rn_ildm_amt` decimal(17,2) DEFAULT NULL COMMENT '원수ILDM금액',
  `rn_ildm_xi_rv_af_amt` decimal(17,2) DEFAULT NULL COMMENT '원수ILDM추산보정후금액',
  `rn_bfmpl_amt` decimal(17,2) DEFAULT NULL COMMENT '원수BFMPL금액',
  `lclmxcp_rn_bfmpl_amt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외원수BFMPL금액',
  `rn_bfmpl_xi_rv_af_amt` decimal(17,2) DEFAULT NULL COMMENT '원수BFMPL추산보정후금액',
  `rn_bfmil_amt` decimal(17,2) DEFAULT NULL COMMENT '원수BFMIL금액',
  `lclmxcp_rn_bfmil_amt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외원수BFMIL금액',
  `rn_bfmil_xi_rv_af_amt` decimal(17,2) DEFAULT NULL COMMENT '원수BFMIL추산보정후금액',
  `rn_ibnr_ad_cuamt` decimal(17,2) DEFAULT NULL COMMENT '원수IBNR추가적립금액',
  `cm_rn_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '당월원수IBNR금액',
  `cm_ibnr_cu_rate` decimal(13,10) DEFAULT NULL COMMENT '당월IBNR적립률',
  `rn_py_rfamt` decimal(15,0) DEFAULT NULL COMMENT '원수지급준비금액',
  `bf1yr_rn_rnprm` decimal(17,2) DEFAULT NULL COMMENT '직전1년원수경과보험료',
  `bf1yr_rtro_rnprm` decimal(17,2) DEFAULT NULL COMMENT '직전1년수재경과보험료',
  `bf1yr_ps_rnprm` decimal(17,2) DEFAULT NULL COMMENT '직전1년보유경과보험료',
  `bf1yr_re_rnprm` decimal(17,2) DEFAULT NULL COMMENT '직전1년출재경과보험료',
  `rtro_vl_bj_rfamt` decimal(17,2) DEFAULT NULL COMMENT '수재평가대상준비금액',
  `rtro_ndv_xiamt` decimal(17,2) DEFAULT NULL COMMENT '수재개별추산금액',
  `rtro_ibnr_cuamt` decimal(17,2) DEFAULT NULL COMMENT '수재IBNR적립금액',
  `cm_rtro_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '당월수재IBNR금액',
  `rtro_py_rfamt` decimal(15,0) DEFAULT NULL COMMENT '수재지급준비금액',
  `re_vl_bj_rfamt` decimal(17,2) DEFAULT NULL COMMENT '출재평가대상준비금액',
  `re_ndv_xiamt` decimal(17,2) DEFAULT NULL COMMENT '출재개별추산금액',
  `re_dtlr_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '출재세칙IBNR금액',
  `re_dtlr_ibnr_cu_rate` decimal(13,10) DEFAULT NULL COMMENT '출재세칙IBNR적립률',
  `re_idm_avamt` decimal(17,2) DEFAULT NULL COMMENT '출재구상가능금액',
  `re_idm_bnamt` decimal(15,0) DEFAULT NULL COMMENT '출재구상채권금액',
  `larg_clm_rexi_rv_amt` decimal(17,2) DEFAULT NULL COMMENT '대사고출재추산보정금액',
  `re_pool_xiamt` decimal(17,2) DEFAULT NULL COMMENT '출재POOL추산금액',
  `re_tqnt_xiamt` decimal(17,2) DEFAULT NULL COMMENT '출재총량추산금액',
  `lclmxcp_re_tqnt_xiamt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외출재총량추산금액',
  `re_tqnt_xi_rv_af_amt` decimal(17,2) DEFAULT NULL COMMENT '출재총량추산보정후금액',
  `re_pldm_amt` decimal(17,2) DEFAULT NULL COMMENT '출재PLDM금액',
  `lclmxcp_re_pldm_amt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외출재PLDM금액',
  `re_pldm_xi_rv_af_amt` decimal(17,2) DEFAULT NULL COMMENT '출재PLDM추산보정후금액',
  `re_ildm_amt` decimal(17,2) DEFAULT NULL COMMENT '출재ILDM금액',
  `lclmxcp_re_ildm_amt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외출재ILDM금액',
  `re_ildm_xi_rv_af_amt` decimal(17,2) DEFAULT NULL COMMENT '출재ILDM추산보정후금액',
  `re_bfmpl_amt` decimal(17,2) DEFAULT NULL COMMENT '출재BFMPL금액',
  `lclmxcp_re_bfmpl_amt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외출재BFMPL금액',
  `re_bfmpl_xi_rv_af_amt` decimal(17,2) DEFAULT NULL COMMENT '출재BFMPL추산보정후금액',
  `re_bfmil_amt` decimal(17,2) DEFAULT NULL COMMENT '출재BFMIL금액',
  `lclmxcp_re_bfmil_amt` decimal(17,2) DEFAULT NULL COMMENT '대사고제외출재BFMIL금액',
  `re_bfmil_xi_rv_af_amt` decimal(17,2) DEFAULT NULL COMMENT '출재BFMIL추산보정후금액',
  `re_ibnr_ad_cuamt` decimal(17,2) DEFAULT NULL COMMENT '출재IBNR추가적립금액',
  `cm_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '당월IBNR금액',
  `re_py_rfamt` decimal(15,0) DEFAULT NULL COMMENT '출재지급준비금액',
  `net_ndv_xiamt` decimal(17,2) DEFAULT NULL COMMENT '정미개별추산금액',
  `net_cm_ibnr_amt` decimal(17,2) DEFAULT NULL COMMENT '정미당월IBNR금액',
  `net_py_rfamt` decimal(17,2) DEFAULT NULL COMMENT '정미지급준비금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_gn_ibnr_tqnt_xi_00` (`cls_yymm`,`ibnr_cvr_flgcd`,`ibnr_cc_cyccd`,`ibnr_cls_flgcd`,`ibnr_avg_flgcd`,`ibnr_wgt_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반IBNR총량추산';
