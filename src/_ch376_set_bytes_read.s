.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_set_bytes_read
.export _ch376_set_bytes_write

.import _ch376_wait_response

_ch376_set_bytes_read:
    ; A and Y contains number of bytes to read
    ldx     #CH376_BYTE_READ
    .byt     $2C                ; jump 2 bytes with the hack bit $xxxx
_ch376_set_bytes_write:
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
    jmp     _ch376_wait_response
