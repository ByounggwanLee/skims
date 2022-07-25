/**
 * IgdLtrmGdRtInfo Entity Primary Key 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.domain.entity;

import java.io.Serializable;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
public class IgdLtrmGdRtInfoPK implements Serializable {
    private String ltrmRtTablFlgcd; //--장기요율테이블구분코드
    private String gdcd; //--상품코드
}
