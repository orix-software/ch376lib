.include "telestrat.inc"
.include "include/ch376.inc"

.export ch376_delay_100us
.export _ch376_delay_100us

_ch376_delay_100us := ch376_delay_100us

.proc ch376_delay_100us
    ;;@brief Wait 100 us
    ;;@modifyA
    ;;@```ca65
    ;;@`  jsr    ch376_delay_100us
    ;;@`  ; exit when 100us is finished
    ;;@```
    lda     #CH376_DELAY_100US
    sta     CH376_COMMAND

@loop_wait:
    lda     CH376_DATA
    beq     @loop_wait

    rts
.endproc
