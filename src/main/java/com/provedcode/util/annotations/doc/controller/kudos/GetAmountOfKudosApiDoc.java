package com.provedcode.util.annotations.doc.controller.kudos;

import com.provedcode.kudos.model.response.KudosAmountWithSponsor;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.http.MediaType;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;


@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Operation(summary = "Amount of “kudos” given by sponsors and who gave the “kudos” on proof")
@ApiResponses(value = {
        @ApiResponse(responseCode = "200",
                description = "SUCCESS",
                content = @Content(mediaType = MediaType.APPLICATION_JSON_VALUE,
                        schema = @Schema(implementation = KudosAmountWithSponsor.class))),
        @ApiResponse(responseCode = "404",
                description = "NOT FOUND",
                content = @Content),
        @ApiResponse(
                responseCode = "401",
                description = "UNAUTHORIZED",
                content = @Content),
        @ApiResponse(
                responseCode = "403",
                description = "FORBIDDEN (if not the talent wants to see)",
                content = @Content),
        @ApiResponse(
                responseCode = "400",
                description = "BAD REQUEST",
                content = @Content)
})
public @interface GetAmountOfKudosApiDoc {
}
