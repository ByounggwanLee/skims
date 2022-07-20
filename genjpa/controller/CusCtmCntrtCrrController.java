/**
 * CusCtmCntrtCrr Entity Controller 클래스
 *
 *  @author  Lee Byoung Gwan
 *  @version 1.0
**/
package com.skims.controller;

import java.util.Map;
import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.skims.domain.entity.CusCtmCntrtCrr;
import com.skims.domain.repository.CusCtmCntrtCrrRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "CusCtmCntrtCrr 고객접촉이력 Controller")
@Slf4j
public class CusCtmCntrtCrrController {

    @Autowired
    CusCtmCntrtCrrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "고객접촉이력 전체조회" , summary = "고객접촉이력 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the cusctmcntrtcrrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmCntrtCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/cusctmcntrtcrrs")
    public ResponseEntity<Page<CusCtmCntrtCrr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "고객접촉이력 Key조회" , description = "고객접촉이력 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the CusCtmCntrtCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmCntrtCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtmCntrtCrr not found", content = @Content) })
    @GetMapping("/cusctmcntrtcrrs/{aid}")
    public ResponseEntity<CusCtmCntrtCrr> getById(@PathVariable("aid") Long aid) {
        Optional<CusCtmCntrtCrr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "고객접촉이력 등록" , description = "고객접촉이력 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the CusCtmCntrtCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmCntrtCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/cusctmcntrtcrrs")
    ResponseEntity<CusCtmCntrtCrr> postData(@RequestBody CusCtmCntrtCrr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "고객접촉이력 수정" , description = "고객접촉이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusCtmCntrtCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmCntrtCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtmCntrtCrr not found", content = @Content) })
    @PutMapping("/cusctmcntrtcrrs/{aid}")
    ResponseEntity<CusCtmCntrtCrr> putData(@RequestBody CusCtmCntrtCrr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setCntrtDthms(newData.getCntrtDthms());
                    oldData.setCtmno(newData.getCtmno());
                    oldData.setCntrtMncd(newData.getCntrtMncd());
                    oldData.setCntpsId(newData.getCntpsId());
                    oldData.setPlyno(newData.getPlyno());
                    oldData.setWholBsnsDlTpnm(newData.getWholBsnsDlTpnm());
                    oldData.setWholBsnsDlTpDtnm(newData.getWholBsnsDlTpDtnm());
                    oldData.setNtcBjpsFlgcd(newData.getNtcBjpsFlgcd());
                    oldData.setCntrtDlFlgcd(newData.getCntrtDlFlgcd());
                    oldData.setIsno(newData.getIsno());
                    oldData.setRqdt(newData.getRqdt());
                    oldData.setCtmCntrtRcvCn(newData.getCtmCntrtRcvCn());
                    oldData.setDocId(newData.getDocId());
                    oldData.setInpUsrId(newData.getInpUsrId());
                    oldData.setInpDthms(newData.getInpDthms());
                    oldData.setMdfUsrId(newData.getMdfUsrId());
                    oldData.setMdfDthms(newData.getMdfDthms());
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });

    }

    // @Operation(summary = "고객접촉이력 수정" , description = "고객접촉이력 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the CusCtmCntrtCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmCntrtCrr.class)) }),
            @ApiResponse(responseCode = "404", description = "CusCtmCntrtCrr not found", content = @Content) })
	@PatchMapping("/cusctmcntrtcrrs/{aid}")
    ResponseEntity<CusCtmCntrtCrr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        CusCtmCntrtCrr newData = mapper.convertValue(newMap, CusCtmCntrtCrr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("cntrtDthms"))
                            oldData.setCntrtDthms(newData.getCntrtDthms());
                        if (strKey.equals("ctmno"))
                            oldData.setCtmno(newData.getCtmno());
                        if (strKey.equals("cntrtMncd"))
                            oldData.setCntrtMncd(newData.getCntrtMncd());
                        if (strKey.equals("cntpsId"))
                            oldData.setCntpsId(newData.getCntpsId());
                        if (strKey.equals("plyno"))
                            oldData.setPlyno(newData.getPlyno());
                        if (strKey.equals("wholBsnsDlTpnm"))
                            oldData.setWholBsnsDlTpnm(newData.getWholBsnsDlTpnm());
                        if (strKey.equals("wholBsnsDlTpDtnm"))
                            oldData.setWholBsnsDlTpDtnm(newData.getWholBsnsDlTpDtnm());
                        if (strKey.equals("ntcBjpsFlgcd"))
                            oldData.setNtcBjpsFlgcd(newData.getNtcBjpsFlgcd());
                        if (strKey.equals("cntrtDlFlgcd"))
                            oldData.setCntrtDlFlgcd(newData.getCntrtDlFlgcd());
                        if (strKey.equals("isno"))
                            oldData.setIsno(newData.getIsno());
                        if (strKey.equals("rqdt"))
                            oldData.setRqdt(newData.getRqdt());
                        if (strKey.equals("ctmCntrtRcvCn"))
                            oldData.setCtmCntrtRcvCn(newData.getCtmCntrtRcvCn());
                        if (strKey.equals("docId"))
                            oldData.setDocId(newData.getDocId());
                        if (strKey.equals("inpUsrId"))
                            oldData.setInpUsrId(newData.getInpUsrId());
                        if (strKey.equals("inpDthms"))
                            oldData.setInpDthms(newData.getInpDthms());
                        if (strKey.equals("mdfUsrId"))
                            oldData.setMdfUsrId(newData.getMdfUsrId());
                        if (strKey.equals("mdfDthms"))
                            oldData.setMdfDthms(newData.getMdfDthms());
                    });
                    return new ResponseEntity<>(repository.save(oldData), HttpStatus.OK);
                })
                .orElseGet(() -> {
                    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
                });
    }
	
    // @Operation(summary = "고객접촉이력 삭제" , description = "고객접촉이력 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the CusCtmCntrtCrr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = CusCtmCntrtCrr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/cusctmcntrtcrrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
