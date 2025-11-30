.include "telestrat.inc"
.include "include/ch376.inc"

.import ch376_wait_response

.export ch376_get_descr

.proc ch376_get_descr
    ;;@brief Get usb descr device
    ;;@modifyX
    ;;@modifyY From ch376_wait_response_call
    ;;@returnsA ch376 status values
    ;;@```asm
    ;;@`  jsr       ch376_get_descr
    ;;@`  ; check accumulator here ch376_wait_response had been launched by ch376_get_descr
    ;;@`  rts
    ;;@```
    ldx     #CH376_CMD_GET_DESCR
    stx     CH376_COMMAND
    sta     CH376_DATA
    jmp     ch376_wait_response
.endproc
