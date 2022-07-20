/**
 * InsPlAutoTfRq Entity 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
// import javax.persistence.Temporal;
// import javax.persistence.TemporalType;
import javax.persistence.PostLoad;
import javax.persistence.PostPersist;
import javax.persistence.PostRemove;
import javax.persistence.PostUpdate;
import javax.persistence.PrePersist;
import javax.persistence.PreRemove;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Entity
@Table(name = "ins_pl_auto_tf_rq") //--설계자동이체신청
@Schema(description = "설계자동이체신청")
@Data
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@Slf4j
@IdClass(InsPlAutoTfRqPK.class)
public class InsPlAutoTfRq implements Serializable {
    @Id //  String
    @Column(name = "plno", length = 17, nullable = false)
    @Schema(description = "설계번호", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String plno; //--설계번호

    @Id //  BigDecimal
    @Column(name = "cgaf_ch_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "발행후변경순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal cgafChSeqno; //--발행후변경순번

    @Id //  String
    @Column(name = "auto_tf_cg_kndcd", length = 10, nullable = false)
    @Schema(description = "자동이체요금종류코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String autoTfCgKndcd; //--자동이체요금종류코드

    @Id //  BigDecimal
    @Column(name = "olcrr_seqno", precision = 5, scale = 0, nullable = false)
    @Schema(description = "구이력순번", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal olcrrSeqno; //--구이력순번

    @Column(name = "ctmno", length = 13, nullable = true)
    @Schema(description = "고객번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctmno; //--고객번호

    @Column(name = "bk_or_crd_cmpcd", length = 10, nullable = true)
    @Schema(description = "은행카드회사코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bkOrCrdCmpcd; //--은행카드회사코드

    @Column(name = "actno_or_crdno", length = 48, nullable = true)
    @Schema(description = "계좌번호카드번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String actnoOrCrdno; //--계좌번호카드번호

    @Column(name = "epay_peri_stm_no", length = 20, nullable = true)
    @Schema(description = "페이정기결제번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String epayPeriStmNo; //--페이정기결제번호

    @Column(name = "tf_tpcd", length = 10, nullable = true)
    @Schema(description = "이체유형코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfTpcd; //--이체유형코드

    @Column(name = "bk_brcd", length = 10, nullable = true)
    @Schema(description = "은행지점코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bkBrcd; //--은행지점코드

    @Column(name = "bk_brnm", length = 100, nullable = true)
    @Schema(description = "은행지점명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bkBrnm; //--은행지점명

    @Column(name = "crd_vald_trm", length = 30, nullable = true)
    @Schema(description = "카드유효기간", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crdValdTrm; //--카드유효기간

    @Column(name = "tf_rq_flgcd", length = 10, nullable = true)
    @Schema(description = "이체신청구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfRqFlgcd; //--이체신청구분코드

    @Column(name = "dpsr_or_crd_owrnm", length = 100, nullable = true)
    @Schema(description = "예금주카드소유자명", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dpsrOrCrdOwrnm; //--예금주카드소유자명

    @Column(name = "ctm_dscno", length = 48, nullable = true)
    @Schema(description = "고객식별번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ctmDscno; //--고객식별번호

    @Column(name = "crt_relcd", length = 10, nullable = true)
    @Schema(description = "계약자관계코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String crtRelcd; //--계약자관계코드

    @Column(name = "nt_tf_hpdy_cd", length = 10, nullable = true)
    @Schema(description = "이자이체희망일코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ntTfHpdyCd; //--이자이체희망일코드

    @Column(name = "tf_dl_metcd", length = 10, nullable = true)
    @Schema(description = "이체처리방식코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfDlMetcd; //--이체처리방식코드

    @Column(name = "auto_tf_rq_ptncd", length = 10, nullable = true)
    @Schema(description = "자동이체신청경로코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String autoTfRqPtncd; //--자동이체신청경로코드

    @Column(name = "ptcrd_ss_yn", length = 1, nullable = true)
    @Schema(description = "엽서발행여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String ptcrdSsYn; //--엽서발행여부

    @Column(name = "rq_rqudt", nullable = true)
    @Schema(description = "신청의뢰일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rqRqudt; //--신청의뢰일자

    @Column(name = "tf_rq_dl_stcd", length = 10, nullable = true)
    @Schema(description = "이체신청처리상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfRqDlStcd; //--이체신청처리상태코드

    @Column(name = "tf_rq_ercd", length = 10, nullable = true)
    @Schema(description = "이체신청오류코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfRqErcd; //--이체신청오류코드

    @Column(name = "rq_rst_rcpdt", nullable = true)
    @Schema(description = "신청결과접수일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rqRstRcpdt; //--신청결과접수일자

    @Column(name = "bdl_tf_yn", length = 1, nullable = true)
    @Schema(description = "일괄이체여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bdlTfYn; //--일괄이체여부

    @Column(name = "bnc_rmact_synch_yn", length = 1, nullable = true)
    @Schema(description = "방카송금계좌동시변경여부", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String bncRmactSynchYn; //--방카송금계좌동시변경여부

    @Column(name = "ch_crdno", length = 48, nullable = true)
    @Schema(description = "변경카드번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chCrdno; //--변경카드번호

    @Column(name = "ch_crd_vald_trm", length = 30, nullable = true)
    @Schema(description = "변경카드유효기간", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String chCrdValdTrm; //--변경카드유효기간

    @Column(name = "at_mntct", precision = 3, scale = 0, nullable = true)
    @Schema(description = "할부개월수", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal atMntct; //--할부개월수

    @Column(name = "tf_er_flgcd", length = 10, nullable = true)
    @Schema(description = "이체오류구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfErFlgcd; //--이체오류구분코드

    @Column(name = "rqdt", nullable = true)
    @Schema(description = "신청일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date rqdt; //--신청일자

    @Column(name = "cnldt", nullable = true)
    @Schema(description = "해지일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date cnldt; //--해지일자

    @Column(name = "cn_rqudt", nullable = true)
    @Schema(description = "해지의뢰일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date cnRqudt; //--해지의뢰일자

    @Column(name = "tf_cn_dl_stcd", length = 10, nullable = true)
    @Schema(description = "이체해지처리상태코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String tfCnDlStcd; //--이체해지처리상태코드

    @Column(name = "ln_plyno", length = 16, nullable = true)
    @Schema(description = "대출증권번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String lnPlyno; //--대출증권번호

    @Column(name = "dpsr_tlno", length = 50, nullable = true)
    @Schema(description = "예금주전화번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dpsrTlno; //--예금주전화번호

    @Column(name = "dh_cmpcd", length = 10, nullable = false)
    @Schema(description = "취급회사코드", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String dhCmpcd; //--취급회사코드

    @Column(name = "ctm_rqdt", nullable = true)
    @Schema(description = "고객신청일자", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date ctmRqdt; //--고객신청일자

    @Column(name = "evd_da_flgcd", length = 10, nullable = true)
    @Schema(description = "증빙자료구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String evdDaFlgcd; //--증빙자료구분코드

    @Column(name = "evd_da_dsc_vl", length = 100, nullable = true)
    @Schema(description = "증빙자료식별값", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String evdDaDscVl; //--증빙자료식별값

    @Column(name = "evd_da_save_ptncd", length = 10, nullable = true)
    @Schema(description = "증빙자료저장경로코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String evdDaSavePtncd; //--증빙자료저장경로코드

    @Column(name = "rl_pyr_no", length = 20, nullable = true)
    @Schema(description = "실제납부자번호", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String rlPyrNo; //--실제납부자번호

    @Column(name = "lpnt_rqamt", precision = 15, scale = 0, nullable = true)
    @Schema(description = "엘포인트신청금액", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private BigDecimal lpntRqamt; //--엘포인트신청금액

    @Column(name = "epay_flgcd", length = 10, nullable = true)
    @Schema(description = "페이구분코드", nullable = true)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String epayFlgcd; //--페이구분코드

    @Column(name = "inp_usr_id", length = 50, nullable = false)
    @Schema(description = "입력사용자id", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String inpUsrId; //--입력사용자id

    @Column(name = "inp_dthms", nullable = false)
    @Schema(description = "입력일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date inpDthms; //--입력일시

    @Column(name = "mdf_usr_id", length = 50, nullable = false)
    @Schema(description = "수정사용자id", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private String mdfUsrId; //--수정사용자id

    @Column(name = "mdf_dthms", nullable = false)
    @Schema(description = "수정일시", nullable = false)
    // defaultValue = "1", example = "abc@jiniworld.me", allowableValues = {"1", "2"}
    private Date mdfDthms; //--수정일시

    @Builder
    public InsPlAutoTfRq(String plno, BigDecimal cgafChSeqno, String autoTfCgKndcd, BigDecimal olcrrSeqno, String ctmno, String bkOrCrdCmpcd, String actnoOrCrdno, String epayPeriStmNo, String tfTpcd, String bkBrcd, String bkBrnm, String crdValdTrm, String tfRqFlgcd, String dpsrOrCrdOwrnm, String ctmDscno, String crtRelcd, String ntTfHpdyCd, String tfDlMetcd, String autoTfRqPtncd, String ptcrdSsYn, Date rqRqudt, String tfRqDlStcd, String tfRqErcd, Date rqRstRcpdt, String bdlTfYn, String bncRmactSynchYn, String chCrdno, String chCrdValdTrm, BigDecimal atMntct, String tfErFlgcd, Date rqdt, Date cnldt, Date cnRqudt, String tfCnDlStcd, String lnPlyno, String dpsrTlno, String dhCmpcd, Date ctmRqdt, String evdDaFlgcd, String evdDaDscVl, String evdDaSavePtncd, String rlPyrNo, BigDecimal lpntRqamt, String epayFlgcd, String inpUsrId, Date inpDthms, String mdfUsrId, Date mdfDthms) {
        this.plno = plno;
        this.cgafChSeqno = cgafChSeqno;
        this.autoTfCgKndcd = autoTfCgKndcd;
        this.olcrrSeqno = olcrrSeqno;
        this.ctmno = ctmno;
        this.bkOrCrdCmpcd = bkOrCrdCmpcd;
        this.actnoOrCrdno = actnoOrCrdno;
        this.epayPeriStmNo = epayPeriStmNo;
        this.tfTpcd = tfTpcd;
        this.bkBrcd = bkBrcd;
        this.bkBrnm = bkBrnm;
        this.crdValdTrm = crdValdTrm;
        this.tfRqFlgcd = tfRqFlgcd;
        this.dpsrOrCrdOwrnm = dpsrOrCrdOwrnm;
        this.ctmDscno = ctmDscno;
        this.crtRelcd = crtRelcd;
        this.ntTfHpdyCd = ntTfHpdyCd;
        this.tfDlMetcd = tfDlMetcd;
        this.autoTfRqPtncd = autoTfRqPtncd;
        this.ptcrdSsYn = ptcrdSsYn;
        this.rqRqudt = rqRqudt;
        this.tfRqDlStcd = tfRqDlStcd;
        this.tfRqErcd = tfRqErcd;
        this.rqRstRcpdt = rqRstRcpdt;
        this.bdlTfYn = bdlTfYn;
        this.bncRmactSynchYn = bncRmactSynchYn;
        this.chCrdno = chCrdno;
        this.chCrdValdTrm = chCrdValdTrm;
        this.atMntct = atMntct;
        this.tfErFlgcd = tfErFlgcd;
        this.rqdt = rqdt;
        this.cnldt = cnldt;
        this.cnRqudt = cnRqudt;
        this.tfCnDlStcd = tfCnDlStcd;
        this.lnPlyno = lnPlyno;
        this.dpsrTlno = dpsrTlno;
        this.dhCmpcd = dhCmpcd;
        this.ctmRqdt = ctmRqdt;
        this.evdDaFlgcd = evdDaFlgcd;
        this.evdDaDscVl = evdDaDscVl;
        this.evdDaSavePtncd = evdDaSavePtncd;
        this.rlPyrNo = rlPyrNo;
        this.lpntRqamt = lpntRqamt;
        this.epayFlgcd = epayFlgcd;
        this.inpUsrId = inpUsrId;
        this.inpDthms = inpDthms;
        this.mdfUsrId = mdfUsrId;
        this.mdfDthms = mdfDthms;
    }
	
	//----------------------------------------------------
    // Load/Persist/Update/Remove(조회/신규/수정/삭제)
    // Entity Pre/Post(이전/이후) 처리에 대한 정의(PreLoad는 없음)
    // * DB의 Trigger와 비슷한 JPA기능
    //----------------------------------------------------
    @PostLoad
    public void onPostLoad() {
        log.info("onPostLoad : Select후 호출" );
    }

    @PrePersist
    public void onPrePersist() {
        log.info("onPrePersist : Insert전 호출");
    }
    
    @PostPersist
    public void onPostPersist() {
        log.info("onPrePersist : Insert후 호출");
    }
    
    @PreUpdate
    public void onPreUpdate() {
        log.info("onPreUpdate : Update전 호출");
    }
    
    @PostUpdate
    public void onPostUpdate() {
        log.info("onPostUpdate : Update후 호출"); 
    }
    
    @PreRemove
    public void onPreRemove() {
        log.info("onPreRemove  : Delete전 호출");    
    }
    
    @PostRemove
    public void onPostRemove() {
        log.info("onPostRemove : Delete후 호출");
    }
}
