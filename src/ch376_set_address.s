
.include "telestrat.inc"
.include "include/ch376.inc"

.export ch376_set_address
.import ch376_wait_response

.proc ch376_set_address
    ;;@brief set usb address
    ;;@modifyX Modified to set command
    ;;@returnA ch376 status
    ;;@```asm
    ;;@`  lda       #$02
    ;;@`  jsr       ch376_set_address
    ;;@`; Check A with ch376 status
    ;;@`  rts
    ;;@```
    ldx     #CH376_SET_ADRESS
    stx     CH376_COMMAND
    sta     CH376_DATA
    jmp     ch376_wait_response
.endproc
