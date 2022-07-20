--
-- Table structure for table `lse_gn_ibnr_ba_dat_bz_avtb`
--

DROP TABLE IF EXISTS `lse_gn_ibnr_ba_dat_bz_avtb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_gn_ibnr_ba_dat_bz_avtb` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ikdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종코드',
  `rn_prm` decimal(17,2) DEFAULT NULL COMMENT '원수보험료',
  `ibnr_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IBNR담보구분코드',
  `rn_cn_rtamt` decimal(17,2) DEFAULT NULL COMMENT '원수해약환급금액',
  `rn_ptcf_nrnpr` decimal(17,2) DEFAULT NULL COMMENT '원수전기이월미경과보험료',
  `rn_nxtcf_nrnpr` decimal(17,2) DEFAULT NULL COMMENT '원수차기이월미경과보험료',
  `rn_rnd_prm` decimal(15,0) DEFAULT NULL COMMENT '원수경과보험료',
  `rtro_prm` decimal(17,2) DEFAULT NULL COMMENT '수재보험료',
  `rtro_cn_rtamt` decimal(15,0) DEFAULT NULL COMMENT '수재해약환급금액',
  `rtro_ptcf_nrnpr` decimal(17,2) DEFAULT NULL COMMENT '수재전기이월미경과보험료',
  `rtro_nxtcf_nrnpr` decimal(17,2) DEFAULT NULL COMMENT '수재차기이월미경과보험료',
  `rtro_rnprm` decimal(17,2) DEFAULT NULL COMMENT '수재경과보험료',
  `re_prm` decimal(17,2) DEFAULT NULL COMMENT '출재보험료',
  `re_cn_rtamt_examt` decimal(15,0) DEFAULT NULL COMMENT '출재해약환급금환입금액',
  `re_rins_ase_ptrm_prm` decimal(17,2) DEFAULT NULL COMMENT '출재재보험자산전기보험료',
  `re_rins_ase_nxt_prm` decimal(17,2) DEFAULT NULL COMMENT '출재재보험자산차기보험료',
  `re_rnd_prm` decimal(15,0) DEFAULT NULL COMMENT '출재경과보험료',
  `ps_rnprm` decimal(17,2) DEFAULT NULL COMMENT '보유경과보험료',
  `rn_ibnf_ex` decimal(15,0) DEFAULT NULL COMMENT '원수보험금환입',
  `rn_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수보험금액',
  `rn_idm_pfamt` decimal(15,0) DEFAULT NULL COMMENT '원수구상이익금액',
  `rn_ltrm_nd_rtamt` decimal(17,2) DEFAULT NULL COMMENT '원수장기만기환급금액',
  `rn_ltrm_cn_rtamt` decimal(17,2) DEFAULT NULL COMMENT '원수장기해약환급금액',
  `rn_dv_pyamt` decimal(17,2) DEFAULT NULL COMMENT '원수배당지급금액',
  `rn_pyrfd_examt` decimal(17,2) DEFAULT NULL COMMENT '원수지급준비금환입금액',
  `rn_dm_nv_rfd_examt` decimal(17,2) DEFAULT NULL COMMENT '원수손해조사준비금환입금액',
  `rn_ex_smamt` decimal(17,2) DEFAULT NULL COMMENT '원수환입합계금액',
  `rn_pyrfd_cuamt` decimal(17,2) DEFAULT NULL COMMENT '원수지급준비금적립금액',
  `rn_dm_nv_rfd_cuamt` decimal(17,2) DEFAULT NULL COMMENT '원수손해조사준비금적립금액',
  `rn_sm_cuamt` decimal(17,2) DEFAULT NULL COMMENT '원수합계적립금액',
  `rnprm_cuamt` decimal(17,2) DEFAULT NULL COMMENT '원수보험료적립금액',
  `rn_ex_prm_cuamt` decimal(17,2) DEFAULT NULL COMMENT '원수환입보험료적립금액',
  `rn_cdrfd_examt` decimal(17,2) DEFAULT NULL COMMENT '원수계약자배당준비금환입금액',
  `rn_cdrfd_cuamt` decimal(17,2) DEFAULT NULL COMMENT '원수계약자배당준비금적립금액',
  `rn_lowt_an_cumny_gu_rfd_cuamt` decimal(17,2) DEFAULT NULL COMMENT '원수최저연금적립금보증준비금적립금액',
  `rn_lowt_an_cumny_gu_rfd_examt` decimal(17,2) DEFAULT NULL COMMENT '원수최저연금적립금보증준비금환입금액',
  `rn_py_dm_nv_amt` decimal(17,2) DEFAULT NULL COMMENT '원수지급손해조사금액',
  `rn_cr_dmamt` decimal(17,2) DEFAULT NULL COMMENT '원수발생손해액',
  `rtro_ibamt` decimal(17,2) DEFAULT NULL COMMENT '수재보험금액',
  `rtro_ex_ibamt` decimal(17,2) DEFAULT NULL COMMENT '수재환입보험금액',
  `rtro_idm_pfamt` decimal(15,0) DEFAULT NULL COMMENT '수재구상이익금액',
  `rtro_pyrfd_examt` decimal(17,2) DEFAULT NULL COMMENT '수재지급준비금환입금액',
  `rtro_dm_nv_rfd_examt` decimal(17,2) DEFAULT NULL COMMENT '수재손해조사준비금환입금액',
  `rtro_ex_smamt` decimal(17,2) DEFAULT NULL COMMENT '수재환입합계금액',
  `rtro_pyrfd_cuamt` decimal(17,2) DEFAULT NULL COMMENT '수재지급준비금적립금액',
  `rtro_dm_nv_rfd_cuamt` decimal(17,2) DEFAULT NULL COMMENT '수재손해조사준비금적립금액',
  `rtro_cu_smamt` decimal(17,2) DEFAULT NULL COMMENT '수재적립합계금액',
  `rtro_py_dmncs` decimal(17,2) DEFAULT NULL COMMENT '수재지급손해조사비',
  `rtro_cdmam` decimal(17,2) DEFAULT NULL COMMENT '수재발생손해액',
  `re_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재보험금액',
  `re_idm_pfamt` decimal(15,0) DEFAULT NULL COMMENT '출재구상이익금액',
  `re_ex_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재환입보험금액',
  `re_rins_ase_examt` decimal(17,2) DEFAULT NULL COMMENT '출재재보험자산환입금액',
  `re_dm_nv_rfd_examt` decimal(17,2) DEFAULT NULL COMMENT '출재손해조사준비금환입금액',
  `re_ex_smamt` decimal(17,2) DEFAULT NULL COMMENT '출재환입합계금액',
  `re_rins_ase_cuamt` decimal(17,2) DEFAULT NULL COMMENT '출재재보험자산적립금액',
  `re_dm_nv_rfd_cuamt` decimal(17,2) DEFAULT NULL COMMENT '출재손해조사준비금적립금액',
  `re_cu_smamt` decimal(17,2) DEFAULT NULL COMMENT '출재적립합계금액',
  `re_incm_dmncs` decimal(17,2) DEFAULT NULL COMMENT '출재수입손해조사비',
  `re_cr_dmamt` decimal(15,0) DEFAULT NULL COMMENT '출재발생손해액',
  `ps_cdmam` decimal(17,2) DEFAULT NULL COMMENT '보유발생손해액',
  `ps_rnd_dmgrt` decimal(17,2) DEFAULT NULL COMMENT '보유경과손해율',
  `idmrt` decimal(12,6) DEFAULT NULL COMMENT '구상율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_gn_ibnr_ba_dat_bz_avtb_00` (`cls_yymm`,`ikdcd`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반IBNR기초데이터사업실적표';
