.include "telestrat.inc"
.include "include/ch376.inc"

.import _ch376_wait_response

.export _ch376_file_close
.export ch376_file_close


.proc _ch376_file_close
    ;;@proto unsigned char ch376_file_close();
.endproc

; A contains 0 if it needs to update length
.proc ch376_file_close
    ldx     #CH376_FILE_CLOSE
    stx     CH376_COMMAND
.IFPC02
.pc02
    stz     CH376_DATA
.p02
.else
    lda     #$00
    sta     CH376_DATA
.endif
    jmp     _ch376_wait_response
.endproc
