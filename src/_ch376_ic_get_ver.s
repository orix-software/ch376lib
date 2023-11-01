.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_ic_get_ver

.proc _ch376_ic_get_ver
    lda     #CH376_GET_IC_VER
    sta     CH376_COMMAND
    lda     CH376_DATA
    and     #%00111111 ; A contains revision

    rts
.endproc
