
.include "telestrat.inc"
.include "include/ch376.inc"


.export ch376_reset_all

.proc ch376_reset_all
    ;;@brief reset CH376
    ;;@modifyA
    ;;@modifyX
    ;;@modifyY
    ;;@```ca65
    ;;@`  jsr       ch376_reset_all
    ;;@`  rts
    ;;@```
    lda     #CH376_RESET_ALL ; 5
    sta     CH376_COMMAND
	; waiting
    ldy     #$00
    ldx     #$00

loop:
    nop
    inx
    bne     loop
    iny
    bne     loop
    rts
.endproc
