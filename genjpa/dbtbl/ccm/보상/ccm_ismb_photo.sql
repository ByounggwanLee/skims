--
-- Table structure for table `ccm_ismb_photo`
--

DROP TABLE IF EXISTS `ccm_ismb_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_ismb_photo` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `file_seqno` decimal(5,0) NOT NULL COMMENT '파일순번',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당직원번호',
  `chr_cnr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당센터기관코드',
  `chr_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당팀기관코드',
  `finm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '파일명',
  `pht_dthms` datetime NOT NULL COMMENT '촬영일시',
  `ismb_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입회구분코드',
  `drt_ismb_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '간접입회여부',
  `fr_enddt` date DEFAULT NULL COMMENT '최초종결일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_ismb_photo_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`file_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='입회사진';
