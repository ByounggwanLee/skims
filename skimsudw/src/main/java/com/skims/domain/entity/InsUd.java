/**
 * InsUd Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import com.skims.domain.listener.InsUdListener;

@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Entity
@EntityListeners(InsUdListener.class)
@Table(name = "ins_ud") //--심사
@Schema(description = "심사")
public class InsUd implements Serializable {
    @Id //  Long
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "aid", nullable = false)
//    @Schema(description = "", nullable = true , defaultValue = "" , example = ""  , allowableValues = {"", ""})
    @Schema(description = "aid", nullable = false)
    private Long aid; //--aid

    @Column(name = "udno", length = 13, nullable = false)
    @Schema(description = "심사번호", nullable = false)
    private String udno; //--심사번호

    @Column(name = "ndv_ud_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "개별심사순번", nullable = false)
    private BigDecimal ndvUdSeqno; //--개별심사순번

    @Column(name = "tgnrt_ud_bj_yn", length = 1, nullable = false)
    @Schema(description = "총괄심사대상여부", nullable = false)
    private String tgnrtUdBjYn; //--총괄심사대상여부

    @Column(name = "ud_bj_flgcd", length = 10, nullable = false)
    @Schema(description = "심사대상구분코드", nullable = false)
    private String udBjFlgcd; //--심사대상구분코드

    @Column(name = "ud_rel_atr_1", length = 20, nullable = false)
    @Schema(description = "심사관계속성1", nullable = false)
    private String udRelAtr1; //--심사관계속성1

    @Column(name = "ud_rel_atr_2", length = 20, nullable = true)
    @Schema(description = "심사관계속성2", nullable = true)
    private String udRelAtr2; //--심사관계속성2

    @Column(name = "ud_rel_atr_3", length = 20, nullable = true)
    @Schema(description = "심사관계속성3", nullable = true)
    private String udRelAtr3; //--심사관계속성3

    @Column(name = "ikd_grpcd", length = 10, nullable = false)
    @Schema(description = "보종군코드", nullable = false)
    private String ikdGrpcd; //--보종군코드

    @Column(name = "plyno", length = 16, nullable = true)
    @Schema(description = "증권번호", nullable = true)
    private String plyno; //--증권번호

    @Column(name = "ndsno", length = 4, nullable = true)
    @Schema(description = "배서번호", nullable = true)
    private String ndsno; //--배서번호

    @Column(name = "ud_bsns_flgcd", length = 10, nullable = false)
    @Schema(description = "심사업무구분코드", nullable = false)
    private String udBsnsFlgcd; //--심사업무구분코드

    @Column(name = "ud_rkcd", length = 10, nullable = false)
    @Schema(description = "심사단계코드", nullable = false)
    private String udRkcd; //--심사단계코드

    @Column(name = "ud_flgcd", length = 10, nullable = false)
    @Schema(description = "심사구분코드", nullable = false)
    private String udFlgcd; //--심사구분코드

    @Column(name = "ud_prg_stcd", length = 10, nullable = false)
    @Schema(description = "심사진행상태코드", nullable = false)
    private String udPrgStcd; //--심사진행상태코드

    @Column(name = "ud_rstcd", length = 10, nullable = true)
    @Schema(description = "심사결과코드", nullable = true)
    private String udRstcd; //--심사결과코드

    @Column(name = "ud_cplt_perdt", nullable = true)
    @Schema(description = "심사완료기한일자", nullable = true)
    private LocalDate udCpltPerdt; //--심사완료기한일자

    @Column(name = "ud_xmn_cn", length = 4000, nullable = true)
    @Schema(description = "심사검토내용", nullable = true)
    private String udXmnCn; //--심사검토내용

    @Column(name = "udrtk_cnd_cn", length = 1000, nullable = true)
    @Schema(description = "인수조건내용", nullable = true)
    private String udrtkCndCn; //--인수조건내용

    @Column(name = "rqtno", length = 50, nullable = false)
    @Schema(description = "의뢰직원번호", nullable = false)
    private String rqtno; //--의뢰직원번호

    @Column(name = "requ_dthms", nullable = false)
    @Schema(description = "의뢰일시", nullable = false)
    private LocalDateTime requDthms; //--의뢰일시

    @Column(name = "dh_stfno", length = 50, nullable = true)
    @Schema(description = "취급직원번호", nullable = true)
    private String dhStfno; //--취급직원번호

    @Column(name = "usrno", length = 10, nullable = true)
    @Schema(description = "사용인번호", nullable = true)
    private String usrno; //--사용인번호

    @Column(name = "ud_chr_orgcd", length = 7, nullable = true)
    @Schema(description = "심사담당기관코드", nullable = true)
    private String udChrOrgcd; //--심사담당기관코드

    @Column(name = "ud_chr_stfno", length = 50, nullable = true)
    @Schema(description = "심사담당직원번호", nullable = true)
    private String udChrStfno; //--심사담당직원번호

    @Column(name = "ud_chr_org_flgcd", length = 10, nullable = true)
    @Schema(description = "심사담당기관구분코드", nullable = true)
    private String udChrOrgFlgcd; //--심사담당기관구분코드

    @Column(name = "fnl_ud_stfno", length = 50, nullable = true)
    @Schema(description = "최종심사직원번호", nullable = true)
    private String fnlUdStfno; //--최종심사직원번호

    @Column(name = "fnl_ud_cplt_dthms", nullable = true)
    @Schema(description = "최종심사완료일시", nullable = true)
    private LocalDateTime fnlUdCpltDthms; //--최종심사완료일시

    @Column(name = "fnl_ud_st_info", length = 50, nullable = true)
    @Schema(description = "최종심사상태정보", nullable = true)
    private String fnlUdStInfo; //--최종심사상태정보

    @Column(name = "fnl_udwr_ctn", length = 1000, nullable = true)
    @Schema(description = "최종심사자의견", nullable = true)
    private String fnlUdwrCtn; //--최종심사자의견

    @Column(name = "ud_dl_bz_days", precision = 5, scale = 0, nullable = true)
    @Schema(description = "심사처리영업일수", nullable = true)
    private BigDecimal udDlBzDays; //--심사처리영업일수

    @Column(name = "is_plmdf_need_yn", length = 1, nullable = true)
    @Schema(description = "가입설계수정필요여부", nullable = true)
    private String isPlmdfNeedYn; //--가입설계수정필요여부

    @Column(name = "rk_admno", length = 10, nullable = true)
    @Schema(description = "위험관리번호", nullable = true)
    private String rkAdmno; //--위험관리번호

    @Column(name = "ltrm_plno", length = 17, nullable = true)
    @Schema(description = "장기설계번호", nullable = true)
    private String ltrmPlno; //--장기설계번호

    @Column(name = "sms_ts_prg", length = 2000, nullable = true)
    @Schema(description = "sms전송문구", nullable = true)
    private String smsTsPrg; //--sms전송문구

    @Column(name = "spccf_ud_bj_yn", length = 1, nullable = true)
    @Schema(description = "특인심사대상여부", nullable = true)
    private String spccfUdBjYn; //--특인심사대상여부

    @Column(name = "dgn_ud_bj_yn", length = 1, nullable = true)
    @Schema(description = "진단심사대상여부", nullable = true)
    private String dgnUdBjYn; //--진단심사대상여부

    @Column(name = "nrdcd", length = 48, nullable = true)
    @Schema(description = "피보험자코드", nullable = true)
    private String nrdcd; //--피보험자코드

    @Column(name = "bn_csfcd", length = 10, nullable = true)
    @Schema(description = "업종분류코드", nullable = true)
    private String bnCsfcd; //--업종분류코드

    @Column(name = "ins_btpcd", length = 10, nullable = true)
    @Schema(description = "보험업종코드", nullable = true)
    private String insBtpcd; //--보험업종코드

    @Column(name = "entp_xmn_rq_cn", length = 500, nullable = true)
    @Schema(description = "업체검토요청내용", nullable = true)
    private String entpXmnRqCn; //--업체검토요청내용

    @Column(name = "emeg_ud_bj_yn", length = 1, nullable = true)
    @Schema(description = "긴급심사대상여부", nullable = true)
    private String emegUdBjYn; //--긴급심사대상여부

    @Column(name = "apldo_prss_bj_yn", length = 1, nullable = true)
    @Schema(description = "청약서선발행대상여부", nullable = true)
    private String apldoPrssBjYn; //--청약서선발행대상여부

    @Column(name = "ap_rscd", length = 10, nullable = true)
    @Schema(description = "승인사유코드", nullable = true)
    private String apRscd; //--승인사유코드

    @Column(name = "spccf_bj_flgcd", length = 10, nullable = true)
    @Schema(description = "특인대상구분코드", nullable = true)
    private String spccfBjFlgcd; //--특인대상구분코드

    @Column(name = "carno_hngl", length = 50, nullable = true)
    @Schema(description = "차량번호한글", nullable = true)
    private String carnoHngl; //--차량번호한글

    @Column(name = "vald_strdt", nullable = true)
    @Schema(description = "유효시작일자", nullable = true)
    private LocalDate valdStrdt; //--유효시작일자

    @Column(name = "vald_nddt", nullable = true)
    @Schema(description = "유효종료일자", nullable = true)
    private LocalDate valdNddt; //--유효종료일자

    @Column(name = "cr_spccf_tpcd", length = 10, nullable = true)
    @Schema(description = "자동차특인유형코드", nullable = true)
    private String crSpccfTpcd; //--자동차특인유형코드

    @Column(name = "lowt_drv_rsno", length = 48, nullable = true)
    @Schema(description = "최저운전자주민번호", nullable = true)
    private String lowtDrvRsno; //--최저운전자주민번호

    @Column(name = "sms_rcvpt_id", length = 50, nullable = true)
    @Schema(description = "sms수신자id", nullable = true)
    private String smsRcvptId; //--sms수신자id

    @Column(name = "sms_rcv_yn", length = 1, nullable = true)
    @Schema(description = "sms수신여부", nullable = true)
    private String smsRcvYn; //--sms수신여부

    @Column(name = "msg_rcvpt_id", length = 50, nullable = true)
    @Schema(description = "msg수신자id", nullable = true)
    private String msgRcvptId; //--msg수신자id

    @Column(name = "msg_rcv_yn", length = 1, nullable = true)
    @Schema(description = "msg수신여부", nullable = true)
    private String msgRcvYn; //--msg수신여부

    @Column(name = "auto_apl_yn", length = 1, nullable = true)
    @Schema(description = "자동청약여부", nullable = true)
    private String autoAplYn; //--자동청약여부

    @Column(name = "dcu_cpmt_need_yn", length = 1, nullable = true)
    @Schema(description = "서류보완필요여부", nullable = true)
    private String dcuCpmtNeedYn; //--서류보완필요여부

    @Column(name = "prs_plno", length = 17, nullable = true)
    @Schema(description = "대표설계번호", nullable = true)
    private String prsPlno; //--대표설계번호

    @Column(name = "udwr_is_plmdf_need_yn", length = 1, nullable = true)
    @Schema(description = "심사자가입설계수정필요여부", nullable = true)
    private String udwrIsPlmdfNeedYn; //--심사자가입설계수정필요여부

    @Column(name = "rt_ud_requ_rs", length = 2000, nullable = true)
    @Schema(description = "요율심사의뢰사유", nullable = true)
    private String rtUdRequRs; //--요율심사의뢰사유

    @Column(name = "cr_prv_flgcd", length = 2, nullable = true)
    @Schema(description = "자동차결재구분코드", nullable = true)
    private String crPrvFlgcd; //--자동차결재구분코드

    @Column(name = "cr_prv_rstcd", length = 2, nullable = true)
    @Schema(description = "자동차결재결과코드", nullable = true)
    private String crPrvRstcd; //--자동차결재결과코드

    @Column(name = "cr_prv_chrps_stfno", length = 50, nullable = true)
    @Schema(description = "자동차결재담당자직원번호", nullable = true)
    private String crPrvChrpsStfno; //--자동차결재담당자직원번호

    @Column(name = "cr_prv_ctn", length = 2000, nullable = true)
    @Schema(description = "자동차결재의견", nullable = true)
    private String crPrvCtn; //--자동차결재의견

    @Column(name = "cr_prv_dthms", nullable = true)
    @Schema(description = "자동차결재일시", nullable = true)
    private LocalDateTime crPrvDthms; //--자동차결재일시

    @Column(name = "dgndc_adxdt", nullable = true)
    @Schema(description = "진단서첨부일자", nullable = true)
    private LocalDate dgndcAdxdt; //--진단서첨부일자

    @Column(name = "rcn_rptg_adxdt", nullable = true)
    @Schema(description = "실사보고서첨부일자", nullable = true)
    private LocalDate rcnRptgAdxdt; //--실사보고서첨부일자

    @Column(name = "apldo_adxdt", nullable = true)
    @Schema(description = "청약서첨부일자", nullable = true)
    private LocalDate apldoAdxdt; //--청약서첨부일자

    @Column(name = "sbcvr_ud_yn", length = 1, nullable = true)
    @Schema(description = "부담보심사여부", nullable = true)
    private String sbcvrUdYn; //--부담보심사여부

    @Column(name = "sbcvr_cnfst_adxdt", nullable = true)
    @Schema(description = "부담보확인서첨부일자", nullable = true)
    private LocalDate sbcvrCnfstAdxdt; //--부담보확인서첨부일자

    @Column(name = "img_ud_end_yn", length = 1, nullable = true)
    @Schema(description = "이미지심사종결여부", nullable = true)
    private String imgUdEndYn; //--이미지심사종결여부

    @Column(name = "ppr_ud_seqno", precision = 5, scale = 0, nullable = true)
    @Schema(description = "상위심사순번", nullable = true)
    private BigDecimal pprUdSeqno; //--상위심사순번

    @Column(name = "ud_rq_rs", length = 1000, nullable = true)
    @Schema(description = "심사의뢰사유", nullable = true)
    private String udRqRs; //--심사의뢰사유

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    private LocalDateTime inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    private LocalDateTime mdfDthms; //--수정일시

    @Builder
    public InsUd(String udno, BigDecimal ndvUdSeqno, String tgnrtUdBjYn, String udBjFlgcd, String udRelAtr1, String udRelAtr2, String udRelAtr3, String ikdGrpcd, String plyno, String ndsno, String udBsnsFlgcd, String udRkcd, String udFlgcd, String udPrgStcd, String udRstcd, LocalDate udCpltPerdt, String udXmnCn, String udrtkCndCn, String rqtno, LocalDateTime requDthms, String dhStfno, String usrno, String udChrOrgcd, String udChrStfno, String udChrOrgFlgcd, String fnlUdStfno, LocalDateTime fnlUdCpltDthms, String fnlUdStInfo, String fnlUdwrCtn, BigDecimal udDlBzDays, String isPlmdfNeedYn, String rkAdmno, String ltrmPlno, String smsTsPrg, String spccfUdBjYn, String dgnUdBjYn, String nrdcd, String bnCsfcd, String insBtpcd, String entpXmnRqCn, String emegUdBjYn, String apldoPrssBjYn, String apRscd, String spccfBjFlgcd, String carnoHngl, LocalDate valdStrdt, LocalDate valdNddt, String crSpccfTpcd, String lowtDrvRsno, String smsRcvptId, String smsRcvYn, String msgRcvptId, String msgRcvYn, String autoAplYn, String dcuCpmtNeedYn, String prsPlno, String udwrIsPlmdfNeedYn, String rtUdRequRs, String crPrvFlgcd, String crPrvRstcd, String crPrvChrpsStfno, String crPrvCtn, LocalDateTime crPrvDthms, LocalDate dgndcAdxdt, LocalDate rcnRptgAdxdt, LocalDate apldoAdxdt, String sbcvrUdYn, LocalDate sbcvrCnfstAdxdt, String imgUdEndYn, BigDecimal pprUdSeqno, String udRqRs, String inpUsrId, LocalDateTime inpDthms, String mdfUsrId, LocalDateTime mdfDthms) {
        this.udno = udno;
        this.ndvUdSeqno = ndvUdSeqno;
        this.tgnrtUdBjYn = tgnrtUdBjYn;
        this.udBjFlgcd = udBjFlgcd;
        this.udRelAtr1 = udRelAtr1;
        this.udRelAtr2 = udRelAtr2;
        this.udRelAtr3 = udRelAtr3;
        this.ikdGrpcd = ikdGrpcd;
        this.plyno = plyno;
        this.ndsno = ndsno;
        this.udBsnsFlgcd = udBsnsFlgcd;
        this.udRkcd = udRkcd;
        this.udFlgcd = udFlgcd;
        this.udPrgStcd = udPrgStcd;
        this.udRstcd = udRstcd;
        this.udCpltPerdt = udCpltPerdt;
        this.udXmnCn = udXmnCn;
        this.udrtkCndCn = udrtkCndCn;
        this.rqtno = rqtno;
        this.requDthms = requDthms;
        this.dhStfno = dhStfno;
        this.usrno = usrno;
        this.udChrOrgcd = udChrOrgcd;
        this.udChrStfno = udChrStfno;
        this.udChrOrgFlgcd = udChrOrgFlgcd;
        this.fnlUdStfno = fnlUdStfno;
        this.fnlUdCpltDthms = fnlUdCpltDthms;
        this.fnlUdStInfo = fnlUdStInfo;
        this.fnlUdwrCtn = fnlUdwrCtn;
        this.udDlBzDays = udDlBzDays;
        this.isPlmdfNeedYn = isPlmdfNeedYn;
        this.rkAdmno = rkAdmno;
        this.ltrmPlno = ltrmPlno;
        this.smsTsPrg = smsTsPrg;
        this.spccfUdBjYn = spccfUdBjYn;
        this.dgnUdBjYn = dgnUdBjYn;
        this.nrdcd = nrdcd;
        this.bnCsfcd = bnCsfcd;
        this.insBtpcd = insBtpcd;
        this.entpXmnRqCn = entpXmnRqCn;
        this.emegUdBjYn = emegUdBjYn;
        this.apldoPrssBjYn = apldoPrssBjYn;
        this.apRscd = apRscd;
        this.spccfBjFlgcd = spccfBjFlgcd;
        this.carnoHngl = carnoHngl;
        this.valdStrdt = valdStrdt;
        this.valdNddt = valdNddt;
        this.crSpccfTpcd = crSpccfTpcd;
        this.lowtDrvRsno = lowtDrvRsno;
        this.smsRcvptId = smsRcvptId;
        this.smsRcvYn = smsRcvYn;
        this.msgRcvptId = msgRcvptId;
        this.msgRcvYn = msgRcvYn;
        this.autoAplYn = autoAplYn;
        this.dcuCpmtNeedYn = dcuCpmtNeedYn;
        this.prsPlno = prsPlno;
        this.udwrIsPlmdfNeedYn = udwrIsPlmdfNeedYn;
        this.rtUdRequRs = rtUdRequRs;
        this.crPrvFlgcd = crPrvFlgcd;
        this.crPrvRstcd = crPrvRstcd;
        this.crPrvChrpsStfno = crPrvChrpsStfno;
        this.crPrvCtn = crPrvCtn;
        this.crPrvDthms = crPrvDthms;
        this.dgndcAdxdt = dgndcAdxdt;
        this.rcnRptgAdxdt = rcnRptgAdxdt;
        this.apldoAdxdt = apldoAdxdt;
        this.sbcvrUdYn = sbcvrUdYn;
        this.sbcvrCnfstAdxdt = sbcvrCnfstAdxdt;
        this.imgUdEndYn = imgUdEndYn;
        this.pprUdSeqno = pprUdSeqno;
        this.udRqRs = udRqRs;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
}
