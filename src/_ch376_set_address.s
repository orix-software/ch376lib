
.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_set_address
.export ch376_set_address

.proc _ch376_set_address
    ;;@proto void          ch376_set_address(unsigned char adress);
.endproc

.proc ch376_set_address
    ldx     #CH376_SET_ADRESS
    stx     CH376_COMMAND
    sta     CH376_DATA
    rts
.endproc
