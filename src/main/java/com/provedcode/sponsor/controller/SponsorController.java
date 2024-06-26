package com.provedcode.sponsor.controller;

import com.provedcode.sponsor.mapper.SponsorMapper;
import com.provedcode.sponsor.model.dto.SponsorDTO;
import com.provedcode.sponsor.model.request.EditSponsor;
import com.provedcode.sponsor.service.SponsorService;
import com.provedcode.util.annotations.doc.controller.sponsor.DeleteSponsorApiDoc;
import com.provedcode.util.annotations.doc.controller.sponsor.GetAllSponsorsApiDoc;
import com.provedcode.util.annotations.doc.controller.sponsor.GetSponsorApiDoc;
import com.provedcode.util.annotations.doc.controller.sponsor.PatchEditSponsorApiDoc;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.PositiveOrZero;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@AllArgsConstructor
@Validated
@RequestMapping("/api/v3")
public class SponsorController {
    SponsorService sponsorService;
    SponsorMapper sponsorMapper;

    @GetAllSponsorsApiDoc
    @GetMapping("/sponsors")
    Page<SponsorDTO> getSponsors(@RequestParam(value = "page", defaultValue = "0") @PositiveOrZero Integer page,
                                 @RequestParam(value = "size", defaultValue = "5") @Min(1) @Max(1000) Integer size) {
        return sponsorService.getAllSponsors(page, size).map(sponsorMapper::toDto);
    }

    @GetSponsorApiDoc
    @PreAuthorize("hasRole('SPONSOR')")
    @GetMapping("/sponsors/{id}")
    SponsorDTO getSponsor(@PathVariable("id") long id, Authentication authentication) {
        return sponsorMapper.toDto(sponsorService.getSponsorById(id, authentication));
    }

    @PatchEditSponsorApiDoc
    @PreAuthorize("hasRole('SPONSOR')")
    @PatchMapping("/sponsors/{id}")
    SponsorDTO editSponsor(@PathVariable("id") long id,
                           @RequestBody EditSponsor editSponsor,
                           Authentication authentication) {
        return sponsorMapper.toDto(sponsorService.editSponsorById(id, editSponsor, authentication));
    }

    @DeleteSponsorApiDoc
    @PreAuthorize("hasRole('SPONSOR')")
    @DeleteMapping("/sponsors/{id}")
    void deleteSponsor(@PathVariable("id") long id, Authentication authentication) {
        sponsorService.deleteSponsor(id, authentication);
    }
}