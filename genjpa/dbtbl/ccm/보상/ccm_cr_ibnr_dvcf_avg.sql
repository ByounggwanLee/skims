--
-- Table structure for table `ccm_cr_ibnr_dvcf_avg`
--

DROP TABLE IF EXISTS `ccm_cr_ibnr_dvcf_avg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cr_ibnr_dvcf_avg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ibnr_cr_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR자동차담보구분코드',
  `ibnr_injr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR상해구분코드',
  `ibnr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감구분코드',
  `ibnr_cc_cyccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR산출주기코드',
  `sts_trmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계기간코드',
  `cls_dvlp_yyodr_num` decimal(3,0) NOT NULL COMMENT '마감진전년차수',
  `avg_cls_yyodr_num` decimal(3,0) DEFAULT NULL COMMENT '평균마감년차수',
  `artm_avg_dsamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '산술평균결정금액진전계수',
  `artm_avg_gdprc_amt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '산술평균물가금액진전계수',
  `artm_avg_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '산술평균손해액진전계수',
  `artm_avg_ct_dvcf` decimal(15,10) DEFAULT NULL COMMENT '산술평균건수진전계수',
  `gmtr_avg_dsamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '기하평균결정금액진전계수',
  `gmtr_avg_gdprc_amt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '기하평균물가금액진전계수',
  `gmtr_avg_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '기하평균손해액진전계수',
  `gmtr_avg_ct_dvcf` decimal(15,10) DEFAULT NULL COMMENT '기하평균건수진전계수',
  `lats_avg_dsamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '최근평균결정금액진전계수',
  `lats_avg_gdprc_amt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '최근평균물가금액진전계수',
  `lats_avg_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '최근평균손해액진전계수',
  `lats_avg_ct_dvcf` decimal(15,10) DEFAULT NULL COMMENT '최근평균건수진전계수',
  `if_artm_avg_dsamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '추정산술평균결정금액진전계수',
  `if_artm_avg_gdprc_amt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '추정산술평균물가금액진전계수',
  `if_artm_avg_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '추정산술평균손해액진전계수',
  `if_artm_avg_ct_dvcf` decimal(15,10) DEFAULT NULL COMMENT '추정산술평균건수진전계수',
  `if_gmtr_avg_dsamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '추정기하평균결정금액진전계수',
  `if_gmtr_avg_gdprc_amt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '추정기하평균물가금액진전계수',
  `if_gmtr_avg_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '추정기하평균손해액진전계수',
  `if_gmtr_avg_ct_dvcf` decimal(15,10) DEFAULT NULL COMMENT '추정기하평균건수진전계수',
  `if_lats_avg_dsamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '추정최근평균결정금액진전계수',
  `if_lats_avg_gdprc_amt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '추정최근평균물가금액진전계수',
  `if_lats_avg_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '추정최근평균손해액진전계수',
  `if_lats_avg_ct_dvcf` decimal(15,10) DEFAULT NULL COMMENT '추정최근평균건수진전계수',
  `acm_dsamt` decimal(15,0) DEFAULT NULL COMMENT '누적결정금액',
  `acm_gdprc_amt` decimal(15,0) DEFAULT NULL COMMENT '누적물가금액',
  `acm_dmamt` decimal(15,0) DEFAULT NULL COMMENT '누적손해액',
  `acm_ct` decimal(15,0) DEFAULT NULL COMMENT '누적건수',
  `if_artm_avg_dsamt` decimal(15,0) DEFAULT NULL COMMENT '추정산술평균결정금액',
  `if_artm_avg_gdprc_amt` decimal(15,0) DEFAULT NULL COMMENT '추정산술평균물가금액',
  `if_artm_avg_dmamt` decimal(15,0) DEFAULT NULL COMMENT '추정산술평균손해액',
  `if_artm_avg_cfc` decimal(15,10) DEFAULT NULL COMMENT '추정산술평균계수',
  `xp_artm_avg_dsamt` decimal(15,0) DEFAULT NULL COMMENT '예상산술평균결정금액',
  `xp_artm_avg_gdprc_amt` decimal(15,0) DEFAULT NULL COMMENT '예상산술평균물가금액',
  `xp_artm_avg_dmamt` decimal(15,0) DEFAULT NULL COMMENT '예상산술평균손해액',
  `xp_artm_avg_cfc` decimal(15,10) DEFAULT NULL COMMENT '예상산술평균계수',
  `if_gmtr_avg_dsamt` decimal(15,0) DEFAULT NULL COMMENT '추정기하평균결정금액',
  `if_gmtr_avg_gdprc_amt` decimal(15,0) DEFAULT NULL COMMENT '추정기하평균물가금액',
  `if_gmtr_avg_dmamt` decimal(15,0) DEFAULT NULL COMMENT '추정기하평균손해액',
  `if_gmtr_avg_cfc` decimal(15,10) DEFAULT NULL COMMENT '추정기하평균계수',
  `xp_gmtr_avg_dsamt` decimal(15,0) DEFAULT NULL COMMENT '예상기하평균결정금액',
  `xp_gmtr_avg_gdprc_amt` decimal(15,0) DEFAULT NULL COMMENT '예상기하평균물가금액',
  `xp_gmtr_avg_dmamt` decimal(15,0) DEFAULT NULL COMMENT '예상기하평균손해액',
  `xp_gmtr_avg_cfc` decimal(15,10) DEFAULT NULL COMMENT '예상기하평균계수',
  `if_lats_avg_dsamt` decimal(15,0) DEFAULT NULL COMMENT '추정최근평균결정금액',
  `if_lats_avg_gdprc_amt` decimal(15,0) DEFAULT NULL COMMENT '추정최근평균물가금액',
  `if_lats_avg_dmamt` decimal(15,0) DEFAULT NULL COMMENT '추정최근평균손해액',
  `if_lats_avg_cfc` decimal(15,10) DEFAULT NULL COMMENT '추정최근평균계수',
  `xp_lats_avg_dsamt` decimal(15,0) DEFAULT NULL COMMENT '예상최근평균결정금액',
  `xp_lats_avg_gdprc_amt` decimal(15,0) DEFAULT NULL COMMENT '예상최근평균물가금액',
  `xp_lats_avg_dmamt` decimal(15,0) DEFAULT NULL COMMENT '예상최근평균손해액',
  `xp_lats_avg_cfc` decimal(15,10) DEFAULT NULL COMMENT '예상최근평균계수',
  `calc_avg_dsamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '연산평균결정금액진전계수',
  `calc_avg_gdprc_amt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '연산평균물가금액진전계수',
  `calc_avg_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '연산평균손해액진전계수',
  `calc_avg_ct_dvcf` decimal(15,10) DEFAULT NULL COMMENT '연산평균건수진전계수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cr_ibnr_dvcf_avg_00` (`cls_yymm`,`ibnr_cr_cvr_flgcd`,`ibnr_injr_flgcd`,`ibnr_cls_flgcd`,`ibnr_cc_cyccd`,`sts_trmcd`,`cls_dvlp_yyodr_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차IBNR진전계수평균';
