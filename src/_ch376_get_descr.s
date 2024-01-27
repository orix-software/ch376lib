.include "telestrat.inc"
.include "include/ch376.inc"

.import ch376_wait_response

.export _ch376_get_descr
.export ch376_get_descr

.proc _ch376_get_descr
    ;;@proto unsigned char ch376_get_descr(unsigned char mode);
    ;;@brief Get usb descr device
    ;;@returns ch376 status values
.endproc

.proc ch376_get_descr
    ;;@brief Get usb descr device
    ;;@returnsA ch376 status values
    ;;@```ca65
    ;;@`  jsr       ch376_get_descr
    ;;@`  ; check accumulator here ch376_wait_response had been launched by ch376_get_descr
    ;;@`  rts
    ;;@```
    ldx     #CH376_CMD_GET_DESCR
    stx     CH376_COMMAND
    sta     CH376_DATA
    jmp     ch376_wait_response
.endproc
