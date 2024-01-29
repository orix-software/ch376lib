.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_wait_response
.export ch376_wait_response

.proc _ch376_wait_response
    ;;@proto unsigned char ch376_wait_response(void);
    ;;@brief Perform wait_response
    ;;@returns "ch376 status" values
.endproc

.proc ch376_wait_response
    ;;@brief Perform wait_response. It's not needed to call because some commands already perform ch376_wait_response
    ;;@modifyA
    ;;@modifyX
    ;;@modifyY
    ;;@returnsA "ch376 status" value (or return 1 if usb controller does not respond)
    ;;@```ca65
    ;;@`  jsr       ch376_wait_response
    ;;@`  rts
    ;;@```
    ldy     #$FF

loop3:
    ldx     #$FF ; merci de laisser une valeur importante car parfois en mode non debug, le controleur ne répond pas tout de suite

@loop:
    lda     CH376_COMMAND
    and     #%10000000
    cmp     #128
    bne     no_error
    dex
    bne     @loop
    dey
    bne     loop3
	; error is here
    lda     #$01
    rts

no_error:
    lda     #CH376_GET_STATUS
    sta     CH376_COMMAND
    lda     CH376_DATA
    rts
.endproc
