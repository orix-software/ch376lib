.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_ic_get_ver
.export ch376_ic_get_ver

.proc _ch376_ic_get_ver
    ;;@proto unsigned char ch376_ic_get_version(void);
    ;;@brief get version
    ;;@returns ch376 firmware version
    ;;Follow next routine
.endproc

.proc ch376_ic_get_ver
    ;;@brief get version
    ;;@returnsA ch376 firmware version
    ;;@```ca65
    ;;@`  jsr       ch376_ic_get_ver
    ;;@`  ; check accumulator for Version (integer value)
    ;;@```
    lda     #CH376_GET_IC_VER
    sta     CH376_COMMAND
    lda     CH376_DATA
    and     #%00111111 ; A contains revision

    rts
.endproc
