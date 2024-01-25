.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_set_config
.export ch376_set_config

.proc _ch376_set_config
    ;;@proto void          ch376_set_config(unsigned char config);
.endproc

.proc ch376_set_config
    ldx     #CH376_CMD_SET_CONFIG
    stx     CH376_COMMAND
    sta     CH376_DATA
    rts
.endproc
