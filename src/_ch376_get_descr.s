.include "telestrat.inc"
.include "include/ch376.inc"

.import _ch376_wait_response

.export _ch376_get_descr
.export ch376_get_descr

.proc _ch376_get_descr
    ;;@proto unsigned char ch376_get_descr(unsigned char mode);
    ;;@returns ch376 status values
.endproc

.proc ch376_get_descr
    ; Get A : type descriptor or config
    ;;@returnsA ch376 status values
    ldx     #CH376_CMD_GET_DESCR
    stx     CH376_COMMAND
    sta     CH376_DATA
    jmp     _ch376_wait_response
.endproc
