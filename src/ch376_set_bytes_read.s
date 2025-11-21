.include "telestrat.inc"
.include "include/ch376.inc"

.export ch376_set_bytes_read
.export ch376_set_bytes_write

.import ch376_wait_response


.proc ch376_set_bytes_read
    ;;@brief Set bytes to read. Manage only 16 bits. Others bytes are set to 0 to provide 32 bits integer to ch376 chip
    ;;@inputA       Low value
    ;;@inputY       High value
    ;;@modifyX
    ;;@modifyA
    ;;@```ca65
    ;;@`  lda       #$02
    ;;@`  ldy       #$10
    ;;@`  jsr       ch376_set_bytes_read
    ;;@```
    ldx     #CH376_BYTE_READ
    .byt     $2C                ; jump 2 bytes with the hack bit $xxxx

write_entry_point:
    ldx     #CH376_BYTE_WRITE
    stx     CH376_COMMAND
    sta     CH376_DATA
    sty     CH376_DATA
.IFPC02
.pc02
    stz     CH376_DATA
    stz     CH376_DATA
.p02
.else
    lda     #$00
    sta     CH376_DATA
    sta     CH376_DATA
.endif
    jmp     ch376_wait_response
.endproc




.proc ch376_set_bytes_write
    ;;@brief Set bytes to write. Manage only 16 bits. Others bytes are set to 0 to provide 32 bits integer to ch376 chip
    ;;@inputA       Low value
    ;;@inputY       High value
    ;;@modifyX
    ;;@modifyA
    ;;@```ca65
    ;;@`  lda       #$02
    ;;@`  ldy       #$10
    ;;@`  jsr       ch376_set_bytes_write
    ;;@```
    jmp     ch376_set_bytes_read::write_entry_point
.endproc
