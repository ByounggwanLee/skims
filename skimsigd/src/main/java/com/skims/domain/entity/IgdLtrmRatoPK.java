/**
 * IgdLtrmRato Entity Primary Key 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;
import java.time.LocalDate;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
public class IgdLtrmRatoPK implements Serializable {
    private String ltrmRtTablFlgcd; //--장기요율테이블구분코드
    private String sno; //--일련번호
    private LocalDate apStrdt; //--적용시작일자
}
