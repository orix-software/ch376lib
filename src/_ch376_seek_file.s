

.include "telestrat.inc"
.include "include/ch376.inc"

.import _ch376_wait_response

.export _ch376_seek_file

; [IN] AY : ptr
.proc _ch376_seek_file

    ldx     #CH376_BYTE_LOCATE
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
.endproc
