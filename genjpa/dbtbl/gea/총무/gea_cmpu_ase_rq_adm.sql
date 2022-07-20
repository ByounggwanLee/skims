--
-- Table structure for table `gea_cmpu_ase_rq_adm`
--

DROP TABLE IF EXISTS `gea_cmpu_ase_rq_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_cmpu_ase_rq_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `cmpu_supt_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산지원세부구분코드',
  `ase_ch_dl_rkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산변경처리단계코드',
  `ch_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경진행상태코드',
  `dmd_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자ID',
  `rq_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청내용',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `dl_hpdt` date DEFAULT NULL COMMENT '처리희망일자',
  `rcpno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수번호',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관실체구분코드',
  `crnt_adm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현재관리기관코드',
  `ch_org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경기관실체구분코드',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관코드',
  `adm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리직원번호',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `mv_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전화지역번호',
  `mv_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전화국번',
  `mv_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전화일련번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `org_grd_cn` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관등급내용',
  `uramt` decimal(17,2) DEFAULT '0.00' COMMENT '발생금액',
  `chrps_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자의견',
  `ntl_ch_unprc` decimal(15,0) DEFAULT '0' COMMENT '설치변경단가',
  `ntl_ch_qant` decimal(5,0) DEFAULT NULL COMMENT '설치변경수량',
  `ntl_chamt` decimal(15,0) DEFAULT '0' COMMENT '설치변경금액',
  `ntl_ch_labcs` decimal(15,0) DEFAULT '0' COMMENT '설치변경인건비',
  `ntl_ch_tamt` decimal(15,0) DEFAULT '0' COMMENT '설치변경총액',
  `inrsd_unprc` decimal(15,0) DEFAULT '0' COMMENT '구내단가',
  `inrsd_qant` decimal(5,0) DEFAULT NULL COMMENT '구내수량',
  `inrsd_amt` decimal(15,0) DEFAULT '0' COMMENT '구내금액',
  `inrsd_labcs` decimal(15,0) DEFAULT '0' COMMENT '구내인건비',
  `inrsd_tamt` decimal(15,0) DEFAULT '0' COMMENT '구내총액',
  `lan_unprc` decimal(15,0) DEFAULT '0' COMMENT 'LAN단가',
  `lan_qant` decimal(5,0) DEFAULT NULL COMMENT 'LAN수량',
  `lan_amt` decimal(15,0) DEFAULT '0' COMMENT 'LAN금액',
  `lan_labcs` decimal(15,0) DEFAULT '0' COMMENT 'LAN인건비',
  `lan_tamt` decimal(15,0) DEFAULT '0' COMMENT 'LAN총액',
  `cmpu_wrk_rpt_ctn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산공사보고의견',
  `pc_qant` decimal(5,0) DEFAULT NULL COMMENT 'PC수량',
  `pc_trspt_cs` decimal(15,0) DEFAULT '0' COMMENT 'PC운반비용',
  `pc_labcs` decimal(15,0) DEFAULT '0' COMMENT 'PC인건비',
  `pc_tamt` decimal(15,0) DEFAULT '0' COMMENT 'PC총액',
  `prntr_qant` decimal(5,0) DEFAULT NULL COMMENT '프린터수량',
  `prntr_trspt_cs` decimal(15,0) DEFAULT '0' COMMENT '프린터운반비용',
  `prntr_labcs` decimal(15,0) DEFAULT '0' COMMENT '프린터인건비',
  `prntr_tamt` decimal(15,0) DEFAULT '0' COMMENT '프린터총액',
  `et_eqmt_qant` decimal(5,0) DEFAULT NULL COMMENT '기타장비수량',
  `eqmt_trspt_cs` decimal(15,0) DEFAULT '0' COMMENT '장비운반비용',
  `et_eqmt_labcs` decimal(15,0) DEFAULT '0' COMMENT '기타장비인건비',
  `et_eqmt_tamt` decimal(15,0) DEFAULT '0' COMMENT '기타장비총액',
  `cmpu_mch_rpt_ctn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산기기보고의견',
  `ntl_ch_fnl_unprc` decimal(15,0) DEFAULT '0' COMMENT '설치변경최종단가',
  `ntl_ch_fnl_qant` decimal(5,0) DEFAULT NULL COMMENT '설치변경최종수량',
  `ntl_ch_fnl_amt` decimal(15,0) DEFAULT '0' COMMENT '설치변경최종금액',
  `ntl_ch_fnl_labcs` decimal(15,0) DEFAULT '0' COMMENT '설치변경최종인건비',
  `ntl_ch_fnl_tamt` decimal(15,0) DEFAULT '0' COMMENT '설치변경최종총액',
  `inrsd_fnl_unprc` decimal(15,0) DEFAULT '0' COMMENT '구내최종단가',
  `inrsd_fnl_qant` decimal(5,0) DEFAULT NULL COMMENT '구내최종수량',
  `inrsd_fnl_amt` decimal(15,0) DEFAULT '0' COMMENT '구내최종금액',
  `inrsd_fnl_labcs` decimal(15,0) DEFAULT '0' COMMENT '구내최종인건비',
  `inrsd_fnl_tamt` decimal(15,0) DEFAULT '0' COMMENT '구내최종총액',
  `lan_fnl_unprc` decimal(15,0) DEFAULT '0' COMMENT 'LAN최종단가',
  `lan_fnl_qant` decimal(5,0) DEFAULT NULL COMMENT 'LAN최종수량',
  `lan_fnl_amt` decimal(15,0) DEFAULT '0' COMMENT 'LAN최종금액',
  `lan_fnl_labcs` decimal(15,0) DEFAULT '0' COMMENT 'LAN최종인건비',
  `lan_fnl_tamt` decimal(15,0) DEFAULT '0' COMMENT 'LAN최종총액',
  `cmpu_wrk_fnl_ctn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산공사최종의견',
  `pc_fnl_qant` decimal(5,0) DEFAULT NULL COMMENT 'PC최종수량',
  `pc_fnl_trspt_cs` decimal(15,0) DEFAULT '0' COMMENT 'PC최종운반비용',
  `pc_fnl_labcs` decimal(15,0) DEFAULT '0' COMMENT 'PC최종인건비',
  `pc_fnl_tamt` decimal(15,0) DEFAULT '0' COMMENT 'PC최종총액',
  `prntr_fnl_qant` decimal(5,0) DEFAULT NULL COMMENT '프린터최종수량',
  `prntr_fnl_trspt_cs` decimal(15,0) DEFAULT '0' COMMENT '프린터최종운반비용',
  `prntr_fnl_labcs` decimal(15,0) DEFAULT '0' COMMENT '프린터최종인건비',
  `prntr_fnl_tamt` decimal(15,0) DEFAULT '0' COMMENT '프린터최종총액',
  `et_eqmt_fnl_qant` decimal(5,0) DEFAULT NULL COMMENT '기타장비최종수량',
  `eqmt_fnl_trspt_cs` decimal(15,0) DEFAULT '0' COMMENT '장비최종운반비용',
  `et_eqmt_fnl_labcs` decimal(15,0) DEFAULT '0' COMMENT '기타장비최종인건비',
  `et_eqmt_fnl_tamt` decimal(15,0) DEFAULT '0' COMMENT '기타장비최종총액',
  `cmpu_mch_fnl_ctn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산기기최종의견',
  `bsns_adx_file_dscno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무첨부파일식별번호',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `rcr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령자명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_cmpu_ase_rq_adm_00` (`reqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전산자산요청관리';
