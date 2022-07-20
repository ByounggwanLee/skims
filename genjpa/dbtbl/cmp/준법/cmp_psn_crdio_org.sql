--
-- Table structure for table `cmp_psn_crdio_org`
--

DROP TABLE IF EXISTS `cmp_psn_crdio_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_psn_crdio_org` (
  `crdio_tp_rgtno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보제공유형등록번호',
  `bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업자번호',
  `bzpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`crdio_tp_rgtno`,`bzmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인신용정보제공기관';
