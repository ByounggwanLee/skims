--
-- Table structure for table `cus_ctm`
--

DROP TABLE IF EXISTS `cus_ctm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `eng_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문고객명',
  `chnc_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한문고객명',
  `hngl_abrv_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글축약고객명',
  `eng_abrv_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문축약고객명',
  `ctm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객유형코드',
  `cr_own_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량소유여부',
  `drve_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전여부',
  `ctm_dat_acq_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객데이터획득경로코드',
  `frg_dlpl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경품배달처구분코드',
  `fmllv_ctm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가족사랑고객여부',
  `hmpag_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '홈페이지주소',
  `cybmy` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사이버머니',
  `sms_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS수신여부',
  `rlnm_ctfct_file_pth` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실명증표파일경로',
  `cntrt_st_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉정지요청여부',
  `tl_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화수신여부',
  `crdif_utl_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보활용동의여부',
  `mail_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일수신여부',
  `ntclt_mail_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내문이메일수신여부',
  `bzfml_sms_lmit_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업가족SMS제한여부',
  `rgbrd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내외국구분코드',
  `mntr_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주거래은행코드',
  `mntr_bk_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주거래은행지점코드',
  `et_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타주소구분코드',
  `cnn_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련회사코드',
  `ctm_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호구분코드',
  `spcl_rel_ctm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특수관계고객여부',
  `pdt_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표자주민번호',
  `pdtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표자명',
  `indpd_mrtmn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '독립유공자여부',
  `dflt_pt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고엽제환자여부',
  `dmrcy_518_injd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민주518부상자여부',
  `rltn_bzwpl_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연계사업장코드',
  `rltn_bzwpl_seqno` decimal(5,0) DEFAULT NULL COMMENT '연계사업장순번',
  `psn_info_cvap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보민원여부',
  `rcmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추천인명',
  `rcm_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추천인주민번호',
  `dher_rcm_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급자추천인관계코드',
  `bzps_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자유형코드',
  `ntp_sclcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기업규모코드',
  `bzps_bstnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자업태명',
  `bzps_imnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자종목명',
  `empct` decimal(7,0) DEFAULT NULL COMMENT '종업원수',
  `slamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '매출액',
  `capt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자본금',
  `fnddt` date DEFAULT NULL COMMENT '설립일자',
  `clodt` date DEFAULT NULL COMMENT '폐쇄일자',
  `dlncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래선코드',
  `bzwpl_own_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업장소유여부',
  `mn_pdt_out_pdtct` decimal(7,0) DEFAULT NULL COMMENT '주대표자외대표자수',
  `bdl_tf_pypsb_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄이체지급가능여부',
  `std_ind_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '표준산업분류코드',
  `ntp_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기업형태코드',
  `lstst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상장구분코드',
  `crpno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인번호',
  `clgmm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결산월구분코드',
  `gr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체구분코드',
  `gr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체유형코드',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `crp_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인유형코드',
  `wdg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결혼여부',
  `relgn_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종교코드',
  `fnl_edbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종학력코드',
  `hndps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애인여부',
  `hnd_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애등급코드',
  `hnd_grd_vald_trm` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애등급유효기간',
  `hndnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애명',
  `hnd_grdpa_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애급호코드',
  `ntn_mrtmn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국가유공자여부',
  `rwxno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보훈번호',
  `btplc_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출생지코드',
  `grdu_sch` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출신학교',
  `slcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '양음구분코드',
  `rl_brtyr_mndy` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실제생년월일',
  `rh_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'RH형태코드',
  `bldty_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '혈액형코드',
  `wpcnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장명',
  `depnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부서명',
  `ptn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직위',
  `bdt` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직무',
  `bnnm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종명',
  `jb_dt` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업상세',
  `emp_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고용형태코드',
  `wrk_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근무지역코드',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `ba_life_sadps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기초생활수급자여부',
  `smok_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '흡연여부',
  `de_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사망여부',
  `htn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고향',
  `wot_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '맞벌이여부',
  `frg_rlnm_ctfct_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외국인실명증표구분코드',
  `ntlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국적코드',
  `pspno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '여권번호',
  `jb_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '직업변경순번',
  `jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업코드',
  `injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수코드',
  `onw_jb_cnf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신구직업확인구분코드',
  `rltn_bzwpl_pstdt` date DEFAULT NULL COMMENT '연계사업장소속일자',
  `rltn_bzwpl_rgtr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연계사업장등록자구분코드',
  `rlnm_cnf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실명확인구분코드',
  `cnv_hp_tmst_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통화희망시간대코드',
  `born_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출생년도',
  `born_mndy` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출생월일',
  `rl_born_mndy` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실제출생월일',
  `mktg_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅동의여부',
  `gdint_crdio_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품소개신용정보제공동의여부',
  `doncl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '두낫콜여부',
  `dm_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'DM수신여부',
  `mktg_sms_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅SMS수신여부',
  `mktg_tl_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅전화수신여부',
  `mktg_mail_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅이메일수신여부',
  `mktg_dm_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅DM수신여부',
  `cer_of_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집자제공동의여부',
  `drve_licno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전면허번호',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_00` (`ctmno`),
  KEY `idx_cus_ctm_01` (`ctm_dscno`),
  KEY `idx_cus_ctm_02` (`hngl_ctmnm`,`ctm_dscno`,`ctm_tpcd`)
) ENGINE=InnoDB AUTO_INCREMENT=5662 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객';
