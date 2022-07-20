--
-- Table structure for table `fin_inr_edamt_sb`
--

DROP TABLE IF EXISTS `fin_inr_edamt_sb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_inr_edamt_sb` (
  `inr_edamt_dldt` date NOT NULL COMMENT '통합입출금처리일자',
  `inr_rtxno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '통합영수증번호',
  `rv_py_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수납지급구분코드',
  `rv_py_sbno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '수납지급대기번호',
  `inr_edamt_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통합입출금처리상태코드',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원장종류코드',
  `ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원장번호',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회계기관코드',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발생시스템코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `da_cr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자료발생유형코드',
  `rpdt` date DEFAULT NULL COMMENT '영수일자',
  `crdt` date DEFAULT NULL COMMENT '발생일자',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표라인번호',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `invln_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '투융자상품코드',
  `cnrdt` date DEFAULT NULL COMMENT '계약일자',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) DEFAULT NULL COMMENT '수입보험료발생순번',
  `ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `crt_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자주민번호',
  `rpbl_opndt` date DEFAULT NULL COMMENT '책임개시일자',
  `ltrm_cr_totno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기계약집계번호',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `dp_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금원인코드',
  `mnt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금종구분코드',
  `dpdt` date DEFAULT NULL COMMENT '입금일자',
  `rp_admno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수관리번호',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `bsns_nds_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무배서구분코드',
  `clsaf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감후여부',
  `tot_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전체보험료',
  `woncr_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화보험료',
  `cr_rn_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동차원수보험료',
  `cr_dtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동차예수금액',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `fc_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화보험료',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `tf_cm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체수수료',
  `etamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타금액구분코드',
  `etamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타금액',
  `prm_pvl_slpdt` date DEFAULT NULL COMMENT '보험료계상전표일자',
  `prm_pvl_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료계상전표번호',
  `prm_pvl_slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료계상전표라인번호',
  `msg_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지ID',
  `msg_tp_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지유형분류코드',
  `tlm_tsdt` date DEFAULT NULL COMMENT '전문전송일자',
  `tlm_pno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문고유번호',
  `tlm_specd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문종별코드',
  `spbz_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문업무구분코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `amg_act_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌은행코드',
  `amg_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌번호',
  `rvdt` date NOT NULL COMMENT '수납일자',
  `rv_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '수납기관코드',
  `rv_xcno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '수납정산번호',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드회사코드',
  `dh_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급회사코드',
  `crd_smamt_aryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드합계금액승인여부',
  `inr_ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통합보종군코드',
  `inr_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통합증권번호',
  `inr_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '통합보험료',
  `ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소여부',
  `ccl_bj_pyno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소대상지급번호',
  `bsns_adx_file_dscno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무첨부파일식별번호',
  `elec_evd_img_bsnno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자증빙이미지업무번호',
  `elec_prv_dcu_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자결재문서아이디',
  `file_evd_gpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일증빙그룹번호',
  `pypl_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처고객번호',
  `pylnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처명',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `pynct_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급금권유형코드',
  `dfpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금상대처코드',
  `py_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급방법코드',
  `py_prdt` date DEFAULT NULL COMMENT '지급예정일자',
  `py_pr_woamt` decimal(15,0) DEFAULT NULL COMMENT '지급예정원화금액',
  `py_pr_fcamt` decimal(17,2) DEFAULT NULL COMMENT '지급예정외화금액',
  `py_dcn_woamt` decimal(15,0) DEFAULT NULL COMMENT '지급확정원화금액',
  `py_dcn_fcamt` decimal(17,2) DEFAULT NULL COMMENT '지급확정외화금액',
  `rl_py_dcn_woamt` decimal(15,0) DEFAULT NULL COMMENT '실지급확정원화금액',
  `rl_py_dcn_fcamt` decimal(17,2) DEFAULT NULL COMMENT '실지급확정외화금액',
  `fx_pldoq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외환차손익구분코드',
  `fx_pqamt` decimal(15,0) DEFAULT NULL COMMENT '외환차손익금액',
  `uiamt` decimal(17,2) DEFAULT NULL COMMENT '공제금액',
  `py_tf_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급이체방법코드',
  `py_tf_rqaps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급이체신청자구분코드',
  `py_tf_rq_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급이체신청방법코드',
  `rqaps_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자관계코드',
  `rcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령자구분코드',
  `rcr_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령자관계코드',
  `rv_sb_dt` date DEFAULT NULL COMMENT '수납대체일자',
  `pydt` date NOT NULL COMMENT '지급일자',
  `py_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '지급기관코드',
  `py_xcno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '지급정산번호',
  `py_dl_o1_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처리1차구분코드',
  `py_dl_o2_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처리2차구분코드',
  `pyno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급번호',
  `py_cstno` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급품의번호',
  `py_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급은행코드',
  `py_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급계좌번호',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `py_st_dv_dldt` date DEFAULT NULL COMMENT '지급정지배분처리일자',
  `pyst_dv_dl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급정지배분처리직원번호',
  `pyst_dv_dl_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급정지배분처리기관코드',
  `sms_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS대상여부',
  `chr_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문자내용',
  `hpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`inr_edamt_dldt`,`inr_rtxno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통합입출금대기';
