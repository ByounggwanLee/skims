--
-- Table structure for table `fin_rstx_spc_cltn_dt`
--

DROP TABLE IF EXISTS `fin_rstx_spc_cltn_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rstx_spc_cltn_dt` (
  `rr_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속년월',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `dat_sourc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '03' COMMENT '데이터소스구분코드',
  `jrd_uofcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관할관청코드',
  `bz_ic_yenxc_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '사업소득연말정산인원',
  `bz_ic_yenxc_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사업소득연말정산과표금액',
  `bz_ic_yenxc_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사업소득연말정산주민세액',
  `bzic_mwxc_xc_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '사업소득중도정산정산인원',
  `bzic_mwxc_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사업소득중도정산과표금액',
  `bzic_mwxc_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사업소득중도정산주민세액',
  `plr_aw_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '설계사수당인원',
  `plr_aw_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '설계사수당과표금액',
  `plr_aw_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '설계사수당주민세액',
  `bz_ic_gn_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '사업소득일반인원',
  `bz_ic_gntxs_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사업소득일반과표금액',
  `bz_ic_gn_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사업소득일반주민세액',
  `lbr_ic_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '근로소득인원',
  `lbr_ic_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '근로소득과표금액',
  `lbr_ic_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '근로소득주민세액',
  `lbric_mwxc_xc_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '근로소득중도정산정산인원',
  `lbric_mwxc_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '근로소득중도정산과표금액',
  `lbric_mwxc_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '근로소득중도정산주민세액',
  `lbr_ic_yenxc_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '근로소득연말정산인원',
  `lbr_ic_yenxc_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '근로소득연말정산과표금액',
  `lbr_ic_yenxc_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '근로소득연말정산주민세액',
  `nt_ic_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '이자소득인원',
  `nt_ic_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이자소득과표금액',
  `nt_ic_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이자소득주민세액',
  `lbr_rtm_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '근로퇴직인원',
  `lbr_rtm_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '근로퇴직과표금액',
  `lbr_rtm_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '근로퇴직주민세액',
  `an_pty_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '연금추징인원',
  `an_pty_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연금추징과표금액',
  `an_pty_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연금추징주민세액',
  `an_et_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '연금기타인원',
  `an_et_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연금기타과표금액',
  `an_et_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연금기타주민세액',
  `et_ic_gn_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '기타소득일반인원',
  `et_ic_gntxs_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타소득일반과표금액',
  `et_ic_gn_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타소득일반주민세액',
  `dv_ic_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '배당소득인원',
  `dv_ic_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배당소득과표금액',
  `dv_ic_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배당소득주민세액',
  `an_ic_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '연금소득인원',
  `an_ic_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연금소득과표금액',
  `an_ic_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연금소득주민세액',
  `crp_intic_psct` decimal(7,0) DEFAULT NULL COMMENT '법인이자소득인원수',
  `crp_intic_txst_amt` decimal(15,0) DEFAULT NULL COMMENT '법인이자소득과표금액',
  `crp_intic_rxamt` decimal(15,0) DEFAULT NULL COMMENT '법인이자소득주민세액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rr_yymm`,`orgcd`,`dat_sourc_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='주민세특별징수상세';
