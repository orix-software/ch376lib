
.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_wait_response
.export ch376_wait_response

ch376_wait_response := _ch376_wait_response

.proc _ch376_wait_response
; 1 return 1 if usb controller does not respond
; else A contains answer of the controller
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
