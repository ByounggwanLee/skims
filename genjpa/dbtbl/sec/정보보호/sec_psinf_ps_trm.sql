--
-- Table structure for table `sec_psinf_ps_trm`
--

DROP TABLE IF EXISTS `sec_psinf_ps_trm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_psinf_ps_trm` (
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `psinf_of_ojccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보제공목적코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `psinf_ps_trm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보보유기간유형코드',
  `psinf_ps_trm_num` decimal(10,0) NOT NULL COMMENT '개인정보보유기간수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ctmno`,`cprt_entp_seqno`,`bsns_flgcd`,`psinf_of_ojccd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인정보보유기간';
