/**
 * InsPlRelpcAdr Entity Controller 클래스
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
import com.skims.domain.entity.InsPlRelpcAdr;
import com.skims.domain.repository.InsPlRelpcAdrRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;


@RestController
@Tag(name = "InsPlRelpcAdr 설계관계자주소 Controller")
@Slf4j
public class InsPlRelpcAdrController {

    @Autowired
    InsPlRelpcAdrRepository repository;


    @Autowired
    ObjectMapper mapper;

    // @Operation(summary = "설계관계자주소 전체조회" , summary = "설계관계자주소 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the insplrelpcadrs", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlRelpcAdr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @GetMapping("/insplrelpcadrs")
    public ResponseEntity<Page<InsPlRelpcAdr>> getAll(@PageableDefault Pageable pageable) {
        try {
			log.info("findAll");
            return ResponseEntity.ok().body(repository.findAll(pageable));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(null);
        }
    }

    
    // @Operation(summary = "설계관계자주소 Key조회" , description = "설계관계자주소 Primary Key로 조회" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the InsPlRelpcAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlRelpcAdr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlRelpcAdr not found", content = @Content) })
    @GetMapping("/insplrelpcadrs/{aid}")
    public ResponseEntity<InsPlRelpcAdr> getById(@PathVariable("aid") Long aid) {
        Optional<InsPlRelpcAdr> data = repository.findById(aid);

        if (data.isPresent()) {
            return ResponseEntity.ok().body(data.get());
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // @Operation(summary = "설계관계자주소 등록" , description = "설계관계자주소 신규 데이터 등록" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Create the InsPlRelpcAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlRelpcAdr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @PostMapping("/insplrelpcadrs")
    ResponseEntity<InsPlRelpcAdr> postData(@RequestBody InsPlRelpcAdr newData) {
        try {
            newData = repository.save(newData);
            return new ResponseEntity<>(newData, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // @Operation(summary = "설계관계자주소 수정" , description = "설계관계자주소 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlRelpcAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlRelpcAdr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlRelpcAdr not found", content = @Content) })
    @PutMapping("/insplrelpcadrs/{aid}")
    ResponseEntity<InsPlRelpcAdr> putData(@RequestBody InsPlRelpcAdr newData, @PathVariable("aid") Long aid) {
        return repository.findById(aid) //
                .map(oldData -> {
                    oldData.setPlno(newData.getPlno());
                    oldData.setCgafChSeqno(newData.getCgafChSeqno());
                    oldData.setRelpcSeqno(newData.getRelpcSeqno());
                    oldData.setAdrUsecd(newData.getAdrUsecd());
                    oldData.setAdrFlgcd(newData.getAdrFlgcd());
                    oldData.setCtmno(newData.getCtmno());
                    oldData.setAdrSeqno(newData.getAdrSeqno());
                    oldData.setBfBkBrPstno(newData.getBfBkBrPstno());
                    oldData.setNwAdrFlgcd(newData.getNwAdrFlgcd());
                    oldData.setRefIt(newData.getRefIt());
                    oldData.setBkBrPstno(newData.getBkBrPstno());
                    oldData.setBkBrBaAdr(newData.getBkBrBaAdr());
                    oldData.setBkBrEtAdr(newData.getBkBrEtAdr());
                    oldData.setLtrmNdsDlFlgcd(newData.getLtrmNdsDlFlgcd());
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

    // @Operation(summary = "설계관계자주소 수정" , description = "설계관계자주소 데이터 수정" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update the InsPlRelpcAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlRelpcAdr.class)) }),
            @ApiResponse(responseCode = "404", description = "InsPlRelpcAdr not found", content = @Content) })
	@PatchMapping("/insplrelpcadrs/{aid}")
    ResponseEntity<InsPlRelpcAdr> patchData(@RequestBody Map<String, Object> newMap, @PathVariable("aid") Long aid) {
        InsPlRelpcAdr newData = mapper.convertValue(newMap, InsPlRelpcAdr.class);
        return repository.findById(aid) //
                .map(oldData -> {
                    newMap.forEach((strKey, strValue) -> {
                        if (strKey.equals("plno"))
                            oldData.setPlno(newData.getPlno());
                        if (strKey.equals("cgafChSeqno"))
                            oldData.setCgafChSeqno(newData.getCgafChSeqno());
                        if (strKey.equals("relpcSeqno"))
                            oldData.setRelpcSeqno(newData.getRelpcSeqno());
                        if (strKey.equals("adrUsecd"))
                            oldData.setAdrUsecd(newData.getAdrUsecd());
                        if (strKey.equals("adrFlgcd"))
                            oldData.setAdrFlgcd(newData.getAdrFlgcd());
                        if (strKey.equals("ctmno"))
                            oldData.setCtmno(newData.getCtmno());
                        if (strKey.equals("adrSeqno"))
                            oldData.setAdrSeqno(newData.getAdrSeqno());
                        if (strKey.equals("bfBkBrPstno"))
                            oldData.setBfBkBrPstno(newData.getBfBkBrPstno());
                        if (strKey.equals("nwAdrFlgcd"))
                            oldData.setNwAdrFlgcd(newData.getNwAdrFlgcd());
                        if (strKey.equals("refIt"))
                            oldData.setRefIt(newData.getRefIt());
                        if (strKey.equals("bkBrPstno"))
                            oldData.setBkBrPstno(newData.getBkBrPstno());
                        if (strKey.equals("bkBrBaAdr"))
                            oldData.setBkBrBaAdr(newData.getBkBrBaAdr());
                        if (strKey.equals("bkBrEtAdr"))
                            oldData.setBkBrEtAdr(newData.getBkBrEtAdr());
                        if (strKey.equals("ltrmNdsDlFlgcd"))
                            oldData.setLtrmNdsDlFlgcd(newData.getLtrmNdsDlFlgcd());
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
	
    // @Operation(summary = "설계관계자주소 삭제" , description = "설계관계자주소 Primary Key로 삭제" )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Delete the InsPlRelpcAdr", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = InsPlRelpcAdr.class)) }),
            @ApiResponse(responseCode = "500", description = "Internal Server Error", content = @Content) })
    @DeleteMapping("/insplrelpcadrs/{aid}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("aid") Long aid) {
        try {
            repository.deleteById(aid);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
