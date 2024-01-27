.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_set_usb_speed
.export ch376_set_usb_speed

.proc _ch376_set_usb_speed
    ;;@proto void          ch376_set_usb_speed(unsigned char speed);
    ;;@brief Set usb mode
    ;;@inputPARAM_speed The speed for usb
.endproc

.proc ch376_set_usb_speed
    ;;@brief Set usb mode
    ;;@inputA The speed for usb
    ;;@```ca65
    ;;@`  lda       #$02
    ;;@`  jsr       ch376_set_usb_speed
    ;;@`  rts
    ldx     #CH276_SET_USB_SPEED ;
    stx     CH376_COMMAND
    sta     CH376_DATA
    rts
.endproc
