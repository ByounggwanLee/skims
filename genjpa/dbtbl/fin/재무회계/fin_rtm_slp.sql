--
-- Table structure for table `fin_rtm_slp`
--

DROP TABLE IF EXISTS `fin_rtm_slp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rtm_slp` (
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `rtman_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '퇴직연금구분코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `slp_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전표상태코드',
  `ers_dthms` datetime DEFAULT NULL COMMENT '삭제일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`slpdt`,`slpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='퇴직전표';
