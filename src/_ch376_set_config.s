.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_set_config

.proc _ch376_set_config
    ldx     #CH376_SET_CONFIG
    stx     CH376_COMMAND
    sta     CH376_DATA
    rts
.endproc
