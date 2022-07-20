--
-- Table structure for table `ins_ovse_rins_xc_requ`
--

DROP TABLE IF EXISTS `ins_ovse_rins_xc_requ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ovse_rins_xc_requ` (
  `ovse_rins_xc_rqno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '해외재보험정산의뢰번호',
  `xcpl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산처구분코드',
  `dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대처코드',
  `rincd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험자코드',
  `bdl_requ_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄의뢰구분코드',
  `xc_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산업무구분코드',
  `xc_amt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산금액구분코드',
  `xc_spc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산내역',
  `rm_bknm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금은행명',
  `rm_bk_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금은행계좌번호',
  `xc_rqudt` date DEFAULT NULL COMMENT '정산의뢰일자',
  `xcdt` date DEFAULT NULL COMMENT '정산일자',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재상태코드',
  `nxt_prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '다음결재자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ovse_rins_xc_rqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해외재보험정산의뢰';
