--
-- Table structure for table `ins_ins_pl`
--

DROP TABLE IF EXISTS `ins_ins_pl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ins_pl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `pldt` date DEFAULT NULL COMMENT '설계일자',
  `vald_pl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '유효설계여부',
  `pl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계구분코드',
  `cm_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수금방법코드',
  `pl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계상태코드',
  `pl_st_chdt` date DEFAULT NULL COMMENT '설계상태변경일자',
  `fsti_dm_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '초회청구방법코드',
  `is_pl_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입설계종류코드',
  `xp_dmgrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '예상손해율',
  `pl_cmpr_gpno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계비교그룹번호',
  `rec_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추천설계번호',
  `rec_cgaoc_seqno` decimal(5,0) DEFAULT NULL COMMENT '추천발행후변경순번',
  `rec_corcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추천코스코드',
  `pl_vald_perdt` date DEFAULT NULL COMMENT '설계유효기한일자',
  `spccf_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특인설계번호',
  `spccf_cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '특인발행후변경순번',
  `nd_pl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기설계유형코드',
  `udrtk_gu_vlt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수지침위배여부',
  `pl_ch_psbdt` date DEFAULT NULL COMMENT '설계변경가능일자',
  `dgn_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단대상여부',
  `rq_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청접수번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `cnrdt` date DEFAULT NULL COMMENT '계약일자',
  `ppr_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위설계번호',
  `ppr_cgaoc_seqno` decimal(5,0) DEFAULT NULL COMMENT '상위발행후변경순번',
  `slr_tf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '급여이체직원번호',
  `crt_slrtf_stf_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자급여이체직원관계코드',
  `rvi_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부활설계번호',
  `is_pl_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입설계형태코드',
  `qa_ud_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QA심사대상여부',
  `rviba_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부활후배서처리구분코드',
  `udno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) DEFAULT NULL COMMENT '개별심사순번',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `pl_ct` decimal(5,0) DEFAULT NULL COMMENT '설계건수',
  `dc_ap_pl_ct` decimal(5,0) DEFAULT NULL COMMENT '할인적용설계건수',
  `gr_rv_sb_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체수납대기상태코드',
  `fnl_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종계약상태코드',
  `fnl_cr_dt_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종계약세부상태코드',
  `fnl_part_cvr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종일부담보상태코드',
  `fnl_cr_st_chdt` date DEFAULT NULL COMMENT '최종계약상태변경일자',
  `fnl_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '최종납입회차',
  `fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종납입년월',
  `ply_lvl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '증권레벨구분코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `nw_rnw_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규갱신구분코드',
  `apldt` date DEFAULT NULL COMMENT '청약일자',
  `trm_sct_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간구간구분코드',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `ins_st_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험시기시각',
  `ins_clstr` date NOT NULL COMMENT '보험종기',
  `ins_clstr_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종기시각',
  `ins_days` decimal(5,0) DEFAULT NULL COMMENT '보험일수',
  `instr_mc` decimal(3,0) DEFAULT NULL COMMENT '보험기간월수',
  `instr_yyct` decimal(1,0) DEFAULT NULL COMMENT '보험기간년수',
  `condt_t_ap_prm` decimal(15,0) DEFAULT '0' COMMENT '공동인수총적용보험료',
  `pym_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입방법코드',
  `ce_rowcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집경위코드',
  `ply_rc_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권수령방법코드',
  `holo_sign_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자필서명여부',
  `gr_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체계약여부',
  `cr_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약채널코드',
  `cprtb_admno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력점관리번호',
  `cmpg_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '캠페인대상여부',
  `nrdct` decimal(9,0) DEFAULT NULL COMMENT '피보험자수',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `crycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약형태코드',
  `otcm_mg_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사간사회사코드',
  `otcm_plyno` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사증권번호',
  `otcm_ply_ssdt` date DEFAULT NULL COMMENT '타사증권발행일자',
  `agmt_aqr_rt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협정구득요율구분코드',
  `nsc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계열사여부',
  `bk_admno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행관리번호',
  `bk_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행지점코드',
  `bk_extn_qfp` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행유자격자',
  `bk_ipps` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행입력자',
  `hscs_hs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가계비가계구분코드',
  `ps_cst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보유품의여부',
  `rt_aqr_rqno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율구득신청번호',
  `onw_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신구계약구분코드',
  `rv_ccldt` date DEFAULT NULL COMMENT '수납취소일자',
  `fmlct` decimal(5,0) DEFAULT NULL COMMENT '가족수',
  `bzcs_qtrt_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비지분율적용여부',
  `prort_shtm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일할단기구분코드',
  `same_ply_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동일증권구분코드',
  `dc_xc_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인할증적용구분코드',
  `pypof_symb` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입국기호',
  `rglt_vltct` decimal(7,0) DEFAULT NULL COMMENT '법규위반건수',
  `rglt_vlt_poct` decimal(3,0) DEFAULT NULL COMMENT '법규위반점수',
  `rglt_vltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법규위반코드',
  `is_crrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입경력코드',
  `spc_xccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별할증코드',
  `dty_pym_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의무납입방법코드',
  `pst_rpbl_is_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과거책임가입여부',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반공동물건구분코드',
  `co_obj_asno` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공동물건배정번호',
  `bfcr_iscmp` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약가입회사',
  `bfcr_ikdcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약보종코드',
  `bfcr_year` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약연도',
  `bfcr_no` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약번호',
  `bfcr_ins_st` date DEFAULT NULL COMMENT '전계약보험시기',
  `bfcr_ins_clstr` date DEFAULT NULL COMMENT '전계약보험종기',
  `bfcr_aprt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '전계약적용율',
  `dvpns_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원증권번호',
  `dvpns_jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원직업코드',
  `udrtk_gu_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수지침지역코드',
  `udrtk_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수등급코드',
  `sng_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단독계약구분코드',
  `ins_itm_smccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목소분류코드',
  `fsti_rp_prm` decimal(15,0) DEFAULT '0' COMMENT '초회영수보험료',
  `dc_xc_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인할증등급코드',
  `a_sct_ct` decimal(3,0) DEFAULT NULL COMMENT 'A구간대수',
  `b_sct_ct` decimal(3,0) DEFAULT NULL COMMENT 'B구간대수',
  `bfcr_dc_xc_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약할인할증등급코드',
  `dc_xc_same_grdyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인할증동일등급여부',
  `rpbl_ins_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '책임보험증권번호',
  `repy_nt_rcpdt` date DEFAULT NULL COMMENT '수불통지접수일자',
  `repy_nt_rcp_seqno` decimal(5,0) DEFAULT NULL COMMENT '수불통지접수순번',
  `xwpy_rtntm_ntpy_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과오납환급시이자지급여부',
  `y1_clm_ct` decimal(3,0) DEFAULT NULL COMMENT '1년사고횟수',
  `y1_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1년사고유무',
  `y3_clm_ct` decimal(3,0) DEFAULT NULL COMMENT '3년사고횟수',
  `vlt_spc_xccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위반특별할증코드',
  `xacd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산형태코드',
  `xc_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산주기코드',
  `cr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약유형코드',
  `hlt_ins_is_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건강보험가입여부',
  `unf_rt_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단일요율적용여부',
  `avg_age_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평균연령구분코드',
  `dpsrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '예치율',
  `dpst_prm_cc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예치보험료산출구분코드',
  `xc_prdy` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산예정일',
  `is_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입유형코드',
  `ssng_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '여행지역코드',
  `ssst` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '여행지',
  `ssng_ojccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '여행목적코드',
  `trf_ridcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교통승용구코드',
  `ssng_cmpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '여행회사명',
  `nrdps_adm_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자관리방법코드',
  `stdsb_rk_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '학과위험등급코드',
  `stdsb_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '학과구분코드',
  `rl_stdsb` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실제학과',
  `prctc_pln` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실습현장',
  `prctc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실습명',
  `prctc_mntct` decimal(3,0) DEFAULT NULL COMMENT '실습개월수',
  `dmgrt_md_cfcap_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해율조정계수적용사업자번호',
  `dmgrt_md_cfc_crpno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해율조정계수법인번호',
  `dmgrt_md_cfcap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해율조정계수적용여부',
  `fcntr_dmgrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '원청자손해율',
  `dmgrt_md_cfc` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '손해율조정계수',
  `fcntr_sclcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원청자범위코드',
  `cc_prm` decimal(17,2) DEFAULT '0.00' COMMENT '산출보험료',
  `nkor_rs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '북한주민여부',
  `ins_rt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험요율구분코드',
  `ap_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적용담보구분코드',
  `chaf_annu_apprm` decimal(17,2) DEFAULT '0.00' COMMENT '변경후년간적용보험료',
  `rt_aqr_unt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율구득단위구분코드',
  `rt_aqr_stncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율구득기준코드',
  `bsns_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무담당자직원번호',
  `intn_rltno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외연계번호',
  `cstcp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건설사구분코드',
  `chr_admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당관리자직원번호',
  `nvgtn_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항해구역코드',
  `et_nvgtn_arenm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타항해구역명',
  `condt_qtrt_frcap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공동인수지분율강제적용여부',
  `ss_plyct` decimal(3,0) DEFAULT NULL COMMENT '발행증권수',
  `trspr_cmpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운송인회사명',
  `dstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거리코드',
  `spcl_tr_dst` decimal(7,2) DEFAULT NULL COMMENT '특수운송거리',
  `tr_days` decimal(5,0) DEFAULT NULL COMMENT '운송일수',
  `snddt` date DEFAULT NULL COMMENT '발송일자',
  `arvdt` date DEFAULT NULL COMMENT '도착일자',
  `lowt_prm_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최저보험료적용여부',
  `slfdt` date DEFAULT NULL COMMENT '출항일자',
  `outus_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력용화폐코드',
  `ivamt_prt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험가액인쇄여부',
  `bl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'BL여부',
  `vp_clm` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'VP컬럼',
  `dc_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공제방법코드',
  `dvdld_ct` decimal(5,0) DEFAULT NULL COMMENT '분적횟수',
  `xpipt_op_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수출입OP구분코드',
  `carg_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적하세부구분코드',
  `trt_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약년월',
  `fltno` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선단번호',
  `flt_dc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선단할인여부',
  `shtm_xc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단기할증여부',
  `annu_shtm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연간단기구분코드',
  `op_crano` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'OP계약번호',
  `op_cr_ch_seq` decimal(3,0) DEFAULT NULL COMMENT 'OP계약변경회차',
  `op_cr_napc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'OP계약미적용여부',
  `nv_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사고객번호',
  `nv_cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '조사협력업체순번',
  `xc_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산고객번호',
  `xc_cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '정산협력업체순번',
  `marne_onds_no` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해상구배서번호',
  `nvgtn_sct_dstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항해구간거리코드',
  `inlwt_slng_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내수면운항여부',
  `cmpx_tr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복합운송여부',
  `prvsn_dcn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잠정확정구분코드',
  `cr_objnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약물건명',
  `pym_trm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입기간구분코드',
  `pym_trm` decimal(3,0) DEFAULT NULL COMMENT '납입기간',
  `pym_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입기간코드',
  `rl_pym_trm` decimal(3,0) DEFAULT NULL COMMENT '실납입기간',
  `nd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기구분코드',
  `nd` decimal(3,0) DEFAULT NULL COMMENT '만기',
  `ndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기코드',
  `rl_nd_trm` decimal(3,0) DEFAULT NULL COMMENT '실만기기간',
  `nd_rtamt_py_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기환급금지급유형코드',
  `inr_ins_cr_strdt` date DEFAULT NULL COMMENT '통합보험계약시작일자',
  `inr_ins_cr_nddt` date DEFAULT NULL COMMENT '통합보험계약종료일자',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `type_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종구분코드',
  `dfr_trm` decimal(3,0) DEFAULT NULL COMMENT '거치기간',
  `mw_py_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중도지급방법코드',
  `mw_wlamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '중도인출금액',
  `fr_mwwdr_rnd_yyct` decimal(5,0) DEFAULT NULL COMMENT '최초중도인출경과년수',
  `mw_wdra_st` decimal(2,0) DEFAULT NULL COMMENT '중도인출시기',
  `rvi_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부활이자',
  `rvi_nt_crdt` date DEFAULT NULL COMMENT '부활이자발생일자',
  `an_py_stdt` date DEFAULT NULL COMMENT '연금지급시기일자',
  `an_py_age` decimal(3,0) DEFAULT NULL COMMENT '연금지급연령',
  `an_py_trm` decimal(3,0) DEFAULT NULL COMMENT '연금지급기간',
  `annu_an_py_ct` decimal(5,0) DEFAULT NULL COMMENT '연간연금지급횟수',
  `an_pytcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연금지급형코드',
  `an_py_girt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '연금지급체증율',
  `tx_pf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세금우대구분코드',
  `iht_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상속여부',
  `tx_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '세금우대금액',
  `tx_pf_rgt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세금우대등록구분코드',
  `tx_pf_cncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세금우대해지코드',
  `tx_pf_cnldt` date DEFAULT NULL COMMENT '세금우대해지일자',
  `tx_pf_gd_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세금우대상품분류코드',
  `cr_cvr_is_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량담보가입여부',
  `cv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전환여부',
  `gr_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체계약구분코드',
  `gr_dscrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '단체할인율',
  `pym_xmp_stdt` date DEFAULT NULL COMMENT '납입면제시기일자',
  `avg_rt_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평균요율적용여부',
  `man_avg_ap_age` decimal(3,0) DEFAULT NULL COMMENT '남자평균적용연령',
  `fml_avg_ap_age` decimal(3,0) DEFAULT NULL COMMENT '여자평균적용연령',
  `man_avg_injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '남자평균상해급수코드',
  `fml_avg_injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '여자평균상해급수코드',
  `man_avg_drve_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '남자평균운전형태코드',
  `fml_avg_drve_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '여자평균운전형태코드',
  `plcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '플랜코드',
  `ibnf_py_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금지급유형코드',
  `drve_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전형태코드',
  `drve_cr_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전차량용도코드',
  `embr_minsr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '태아주피여부',
  `sb_pym_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대체납입신청여부',
  `dc_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인기준구분코드',
  `apl_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청약형태코드',
  `sep_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분리계약구분코드',
  `ibnf_sb_pym_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금대체납입여부',
  `ibnf_sb_pym_st` date DEFAULT NULL COMMENT '보험금대체납입시기',
  `rnw_nddt` date DEFAULT NULL COMMENT '갱신종료일자',
  `sign_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서명방법코드',
  `nd_sep_rtn_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기분할환급형태코드',
  `nd_sep_py_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기분할지급방법코드',
  `ba_prm` decimal(15,0) DEFAULT NULL COMMENT '기본보험료',
  `ap_prm` decimal(17,2) DEFAULT NULL COMMENT '적용보험료',
  `stdbd_prm` decimal(15,0) DEFAULT NULL COMMENT '표준체보험료',
  `sustd_prm` decimal(15,0) DEFAULT NULL COMMENT '표준하체보험료',
  `befo_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전증권번호',
  `bdl_pym_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄납입여부',
  `gr_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체고객번호',
  `ppr_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위증권번호',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `ud_chr_org_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사담당기관구분코드',
  `gdxpn_ss_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품설명서발행대상여부',
  `self_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자기계약여부',
  `rdch_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '승환계약여부',
  `cr_info_cvap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '계약정보민원여부',
  `gdxpn_trnm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품설명서전달여부',
  `nwcr_scan_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신계약스캔대상여부',
  `nwcr_scan_cplt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신계약스캔완료여부',
  `nwcr_scan_cplt_dthms` datetime DEFAULT NULL COMMENT '신계약스캔완료일시',
  `pl_st_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계상태세부코드',
  `ud_as_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사배정유형코드',
  `befo_cgaoc_seqno` decimal(5,0) DEFAULT NULL COMMENT '이전발행후변경순번',
  `befo_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전설계번호',
  `gu_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구증권번호',
  `prnot_trnm_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력물전달방법코드',
  `pl_rcp_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계접수유형코드',
  `pl_rcpno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계접수번호',
  `sms_snd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS발송여부',
  `ltran_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연계설계번호',
  `ltran_cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '연계발행후변경순번',
  `mg_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사회사코드',
  `fn_dl_rl_ownr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융거래실제소유자구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ins_pl_00` (`plno`,`cgaf_ch_seqno`),
  KEY `idx_ins_ins_pl_02` (`pldt`,`pl_flgcd`),
  KEY `idx_ins_ins_pl_09` (`plyno`,`pldt`,`vald_pl_yn`,`pl_stcd`,`cgaf_ch_seqno`,`ins_st`,`pl_flgcd`,`ins_imcd`),
  KEY `idx_ins_ins_pl_06` (`plyno`,`cgaf_ch_seqno`,`pl_flgcd`,`pl_stcd`,`plno`),
  KEY `idx_ins_ins_pl_12` (`dh_stfno`,`ikd_grpcd`,`ins_imcd`,`ins_clstr`,`ins_st`,`pldt`),
  KEY `idx_ins_ins_pl_01` (`dh_stfno`,`inp_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=43740 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험설계';
