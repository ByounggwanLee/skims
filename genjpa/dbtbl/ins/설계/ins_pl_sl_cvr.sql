--
-- Table structure for table `ins_pl_sl_cvr`
--

DROP TABLE IF EXISTS `ins_pl_sl_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_sl_cvr` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `sl_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보코드',
  `sl_cvrsn` decimal(5,0) NOT NULL COMMENT '판매담보순번',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `cvr_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보대상구분코드',
  `relpc_oj_seqno` decimal(10,0) DEFAULT NULL COMMENT '관계자목적물순번',
  `cvr_ba_trt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보기본특약구분코드',
  `cvr_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보상태코드',
  `cvr_st_chdt` date DEFAULT NULL COMMENT '담보상태변경일자',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `nds_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배서가입금액',
  `ba_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기본보험료',
  `nds_ba_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배서기본보험료',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `nds_ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배서적용보험료',
  `scd_ins_trm_apprm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '제2보험기간적용보험료',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_st_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험시기시각',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `ins_clstr_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종기시각',
  `self_chamt_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자기부담금화폐코드',
  `self_chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자기부담금액',
  `agmt_aqr_rt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협정구득요율구분코드',
  `nrdps_lvlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자레벨코드',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형코드',
  `rnw_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '갱신유형코드',
  `chbf_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경전적용보험료',
  `chaf_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경후적용보험료',
  `dscrt` decimal(12,6) DEFAULT NULL COMMENT '할인율',
  `dcbf_prm` decimal(15,0) DEFAULT NULL COMMENT '할인전보험료',
  `nrdps_dcamt` decimal(15,0) DEFAULT NULL COMMENT '피보험자할인금액',
  `scc_kds_spc_dcamt` decimal(15,0) DEFAULT NULL COMMENT '성공키즈특별할인금액',
  `fsti_prm_dcamt` decimal(15,0) DEFAULT NULL COMMENT '초회보험료할인금액',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `pym_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입기간코드',
  `cvr_st_st_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보시기기준년월',
  `pym_xmp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입면제여부',
  `pym_xmp_str_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입면제시작년월',
  `rfamt_clc_ins_st` date DEFAULT NULL COMMENT '준비금액산정보험시기',
  `rfamt_clc_ins_clstr` date DEFAULT NULL COMMENT '준비금액산정보험종기',
  `auto_rnw_av_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동갱신가능여부',
  `auto_rnw_cvr_cnldt` date DEFAULT NULL COMMENT '자동갱신담보해지일자',
  `cvr_fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보최종납입년월',
  `cvr_fnl_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '담보최종납입회차',
  `nd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기구분코드',
  `nd` decimal(3,0) DEFAULT NULL COMMENT '만기',
  `ndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기코드',
  `rl_nd_trm` decimal(3,0) DEFAULT NULL COMMENT '실만기기간',
  `pym_trm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입기간구분코드',
  `pym_trm` decimal(3,0) DEFAULT NULL COMMENT '납입기간',
  `rl_pym_trm` decimal(3,0) DEFAULT NULL COMMENT '실납입기간',
  `nrdps_ap_age` decimal(3,0) DEFAULT NULL COMMENT '피보험자적용연령',
  `bfrnw_cvrsn` decimal(5,0) DEFAULT NULL COMMENT '갱신전담보순번',
  `bfrnw_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '갱신전담보코드',
  `trt_preg_rnd_wkct` decimal(2,0) DEFAULT NULL COMMENT '특약임신경과주수',
  `db_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중복담보구분코드',
  `cvr_is_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보가입유형코드',
  `afgst_prm_ccbj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보장시기이후보험료산출대상여부',
  `sep_cr_cn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분리계약해약여부',
  `flpy_cvrfs_sb_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일시납담보초회대체여부',
  `rnw_nddt` date DEFAULT NULL COMMENT '갱신종료일자',
  `rnw_cvr_nclm_dcamt` decimal(15,0) DEFAULT '0' COMMENT '갱신담보무사고할인금액',
  `rwcvr_nclm_ad_dcamt` decimal(15,0) DEFAULT NULL COMMENT '갱신담보무사고추가할인금액',
  `sustd_xc_rk_ndx` decimal(7,2) DEFAULT NULL COMMENT '표준하체할증위험지수',
  `stdbd_prm` decimal(15,0) DEFAULT '0' COMMENT '표준체보험료',
  `sustd_prm` decimal(15,0) DEFAULT '0' COMMENT '표준하체보험료',
  `dcamt` decimal(15,0) DEFAULT '0' COMMENT '할인금액',
  `sustd_rwcvr_nclm_dcamt` decimal(15,0) DEFAULT '0' COMMENT '표준하체갱신담보무사고할인금액',
  `stdbd_rwcvr_nclm_dcamt` decimal(15,0) DEFAULT '0' COMMENT '표준체갱신담보무사고할인금액',
  `clmrl_nds_apcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고결과배서적용코드',
  `rmimc_stbz_dcamt` decimal(15,0) DEFAULT NULL COMMENT '실손의료비안정화할인금액',
  `sb_cscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대체비용코드',
  `isamt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입금액코드',
  `xp_dmamt` decimal(17,5) NOT NULL DEFAULT '0.00000' COMMENT '예상손해액',
  `md_dmamt` decimal(17,5) NOT NULL DEFAULT '0.00000' COMMENT '조정손해액',
  `trt_ap_cvr_prmsm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '특약적용담보보험료합계',
  `sys_mpv_dt` date DEFAULT NULL COMMENT '제도개선일자',
  `trt_ap_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약적용담보코드',
  `mstr_car_plyno` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마스터카증권번호',
  `clmp1_is_amtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1사고당가입금액코드',
  `emeg_mvo_ce_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동모집직원번호',
  `emeg_mvo_cnrdt` date DEFAULT NULL COMMENT '긴급출동계약일자',
  `cvr_spqu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보특성구분코드',
  `nds_prdt` date DEFAULT NULL COMMENT '배서예정일자',
  `prort_shtm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일할단기구분코드',
  `prort_shtrt` decimal(12,6) DEFAULT NULL COMMENT '일할단기율',
  `xp_sum_amt` decimal(17,5) DEFAULT NULL COMMENT '예상합산액',
  `md_sum_amt` decimal(17,5) DEFAULT NULL COMMENT '조정합산액',
  `de_sel_obs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사망후유장해구분코드',
  `itm_cvr_rk_rnk` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목담보위험급수',
  `imu_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책기간코드',
  `agr_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '약정비율',
  `absc_trm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부재기간구분코드',
  `agr_rest_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약정복구기간코드',
  `isamt_spc` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입금액내역',
  `esrct` decimal(2,0) DEFAULT NULL COMMENT '호위인수',
  `bd_dlbr_rpbl_btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신체손해배상책임업종코드',
  `woncr_cv_self_chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산자기부담금액',
  `dc_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '공제비율',
  `act_or_actct` decimal(4,0) DEFAULT NULL COMMENT '구좌/계좌수',
  `frc_rt_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '강제요율적용여부',
  `ad_self_chamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '추가자기부담금액',
  `prgcs_prt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문구비인쇄여부',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `mpy_cv_nprm` decimal(17,2) DEFAULT '0.00' COMMENT '월납환산순보험료',
  `rfd_dscno` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준비금식별번호',
  `remn_amt` decimal(17,0) DEFAULT NULL COMMENT '잔여금액',
  `rt_key_assmb_cd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율KEY조립코드',
  `bzcs_rt_key_assmb_cd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비요율KEY조립코드',
  `prm_ap_strdt` date DEFAULT NULL COMMENT '보험료적용시작일자',
  `prm_ap_nddt` date DEFAULT NULL COMMENT '보험료적용종료일자',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_pl_sl_cvr_00` (`plno`,`cgaf_ch_seqno`,`sl_cvrcd`,`sl_cvrsn`)
) ENGINE=InnoDB AUTO_INCREMENT=16402 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계판매담보';
