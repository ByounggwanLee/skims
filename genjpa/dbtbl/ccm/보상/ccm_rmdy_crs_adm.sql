--
-- Table structure for table `ccm_rmdy_crs_adm`
--

DROP TABLE IF EXISTS `ccm_rmdy_crs_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_rmdy_crs_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `rmdy_crs_seqno` decimal(3,0) NOT NULL COMMENT '치료과정순번',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `hagth_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입통원구분코드',
  `ward_sico` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병실호수',
  `strdt` date DEFAULT NULL COMMENT '시작일자',
  `nddt` date DEFAULT NULL COMMENT '종료일자',
  `rmdy_days` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '치료일수',
  `opdt` date DEFAULT NULL COMMENT '수술일자',
  `op_parcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수술부위코드',
  `opnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수술명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_rmdy_crs_adm_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`rmdy_crs_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='치료과정관리';
