.include "telestrat.inc"
.include "include/ch376.inc"


.export ch376_ic_get_ver


.proc ch376_ic_get_ver
    ;;@brief Get ch376 firmware version
    ;;@modifyA
    ;;@returnsA ch376 firmware version
    ;;@```asm
    ;;@`  jsr       ch376_ic_get_ver
    ;;@`  ; check accumulator for Version (integer value)
    ;;@```
    lda     #CH376_GET_IC_VER
    sta     CH376_COMMAND
    lda     CH376_DATA
    and     #%00111111 ; A contains revision

    rts
.endproc
