--
-- Table structure for table `ins_dvpns_carnm_info`
--

DROP TABLE IF EXISTS `ins_dvpns_carnm_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_carnm_info` (
  `yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '년도',
  `qtr` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '분기',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '차명코드',
  `opedt` date NOT NULL COMMENT '시행일자',
  `cnmcd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명코드구분코드',
  `carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명',
  `rgsct` decimal(5,0) DEFAULT NULL COMMENT '정원수',
  `load_fxqtt` decimal(10,0) DEFAULT NULL COMMENT '적재정량',
  `dspl` decimal(4,0) DEFAULT NULL COMMENT '배기량',
  `tpno` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '형식번호',
  `carnm_dt_mtt` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명세부사항',
  `cr_prd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량제작회사코드',
  `stro_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스테레오여부',
  `clr_glss_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '칼라유리여부',
  `aircn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '에어컨여부',
  `airb_bag_pstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '에어백장착위치코드',
  `cr_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차형태코드',
  `rob_prvtn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도난방지여부',
  `abs_bag_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ABS장착여부',
  `auto_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동여부',
  `gps_bag_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'GPS장착여부',
  `emblz_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이모빌라이저여부',
  `foma_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외산여부',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `cr_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량등급코드',
  `emblz_apdt` date DEFAULT NULL COMMENT '이모빌라이저적용일자',
  `elcr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전기차여부',
  `mot_out_qnty` decimal(15,0) DEFAULT NULL COMMENT '모터출력량',
  `cn_yyct_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내용년수구분코드',
  `outs_nw_cnmcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외부신차명코드',
  `sl_str_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매시작년월',
  `sl_nd_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매종료년월',
  `prs_crcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표차량코드',
  `lpg_link_cnmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'LPG연결차명코드',
  `cr_fuel_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량연료구분코드',
  `sling_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매중차량여부',
  `cr_rpcrg_spcrt_sctcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량수리비특별요율구간코드',
  `ppr_cnmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위차명코드',
  `us_str_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용시작년도',
  `us_nd_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용종료년도',
  `cnmcd_mn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명코드유지여부',
  `nwcr_mfg_vlamt` decimal(15,0) DEFAULT NULL COMMENT '신차출고가액',
  `nwcr_mfg_yytp` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신차출고연식',
  `memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`yr`,`qtr`,`cnmcd`,`opedt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원차명정보';
