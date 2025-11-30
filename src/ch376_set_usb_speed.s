.include "telestrat.inc"
.include "include/ch376.inc"

.export ch376_set_usb_speed

.proc ch376_set_usb_speed
    ;;@brief Set usb mode
    ;;@inputA The speed for usb
    ;;@modifyX
    ;;@```asm
    ;;@`  lda       #$02
    ;;@`  jsr       ch376_set_usb_speed
    ;;@`  rts
    ;;@```
    ldx     #CH276_SET_USB_SPEED ;
    stx     CH376_COMMAND
    sta     CH376_DATA
    rts
.endproc
