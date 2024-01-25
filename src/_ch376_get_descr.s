.include "telestrat.inc"
.include "include/ch376.inc"

.import _ch376_wait_response

.export _ch376_get_descr
.export ch376_get_descr

.proc _ch376_get_descr
.endproc

.proc ch376_get_descr
    ; Get A : type descriptor or config
    ldx     #CH376_CMD_GET_DESCR
    stx     CH376_COMMAND
    sta     CH376_DATA
    jmp     _ch376_wait_response
.endproc
