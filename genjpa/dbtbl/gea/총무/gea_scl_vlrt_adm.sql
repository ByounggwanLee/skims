--
-- Table structure for table `gea_scl_vlrt_adm`
--

DROP TABLE IF EXISTS `gea_scl_vlrt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_scl_vlrt_adm` (
  `scl_vlrt_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '범위평가율종류코드',
  `vlrt_sclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가율범위코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `str_vlrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '시작평가율',
  `nd_vlrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '종료평가율',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`scl_vlrt_kndcd`,`vlrt_sclcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='범위평가율관리';
