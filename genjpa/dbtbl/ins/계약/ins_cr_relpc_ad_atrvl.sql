--
-- Table structure for table `ins_cr_relpc_ad_atrvl`
--

DROP TABLE IF EXISTS `ins_cr_relpc_ad_atrvl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_relpc_ad_atrvl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `gpno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '그룹번호',
  `rowno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '행번호',
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `atr_seqno` decimal(5,0) DEFAULT NULL COMMENT '속성순번',
  `atrvl` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '속성값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_relpc_ad_atrvl_00` (`plyno`,`relpc_seqno`,`gpno`,`rowno`,`atrcd`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약관계자추가속성값';
