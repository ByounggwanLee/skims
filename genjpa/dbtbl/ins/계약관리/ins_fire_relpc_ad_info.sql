--
-- Table structure for table `ins_fire_relpc_ad_info`
--

DROP TABLE IF EXISTS `ins_fire_relpc_ad_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_fire_relpc_ad_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업코드',
  `jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업명',
  `injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수코드',
  `cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처',
  `adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소',
  `mfg_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출고차여부',
  `owcr_ins_is_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자차보험가입여부',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반공동물건구분코드',
  `is_age_trtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입연령특약코드',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `acsr_dt_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부속품세부내용',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `pdtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표자명',
  `obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '물건구분코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `pfbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자명',
  `pym_seq` decimal(5,0) DEFAULT NULL COMMENT '납입회차',
  `fire_ln_gd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화특대출상품구분코드',
  `nt_dt` date DEFAULT NULL COMMENT '통지일자',
  `qust_qtit1` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항1',
  `qust_qtit2` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항2',
  `qust_qtit3` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항3',
  `qust_qtit4` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항4',
  `qust_qtit5` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항5',
  `qust_qtit6` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항6',
  `qust_qtit7` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항7',
  `qust_qtit8` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항8',
  `qust_qtit9` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항9',
  `qust_qtit10` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항10',
  `qust_qtit11` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항11',
  `qust_qtit12` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항12',
  `qust_qtit13` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항13',
  `qust_qtit14` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항14',
  `qust_qtit15` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문문항15',
  `cn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해지구분코드',
  `cnldt` date DEFAULT NULL COMMENT '해지일자',
  `nds_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서구분코드',
  `ndsdt` date DEFAULT NULL COMMENT '배서일자',
  `crano` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약번호',
  `relpc_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자관계코드',
  `pfb_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자주민번호',
  `fire_rltn_mai_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화특연계주체구분코드',
  `rltn_srv_admno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연계서비스관리번호',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명',
  `chgtm_trvl_dst` decimal(10,0) DEFAULT NULL COMMENT '교체시주행거리',
  `tir_chg_dthms` datetime DEFAULT NULL COMMENT '타이어교체일시',
  `tir_std` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타이어규격',
  `tir_mdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타이어모델명',
  `tir_chg_qant` decimal(3,0) DEFAULT NULL COMMENT '타이어교체수량',
  `rwhl_tir_std` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후륜타이어규격',
  `rwhl_tir_mdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후륜타이어모델명',
  `rwhl_tir_chg_qant` decimal(3,0) DEFAULT NULL COMMENT '후륜타이어교체수량',
  `img_finm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지파일명',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `sex_dscno` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별식별번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_fire_relpc_ad_info_00` (`plyno`,`relpc_seqno`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화특관계자부가정보';
