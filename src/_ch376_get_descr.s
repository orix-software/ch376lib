.include "telestrat.inc"
.include "include/ch376.inc"

.import _ch376_wait_response

.export _ch376_get_descr

.proc _ch376_get_descr
    ; Get A : data to send
    ldx     #CH376_GET_DESCR
    stx     CH376_COMMAND
    sta     CH376_DATA
    jmp     _ch376_wait_response
.endproc    