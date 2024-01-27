.export _ch376_set_usb_mode
.export ch376_set_usb_mode

.include "telestrat.inc"
.include "include/ch376.inc"

.proc _ch376_set_usb_mode
    ;;@proto void          ch376_set_usb_mode(unsigned char mode);
    ;;@brief Set usb mode
    ;;@inputPARAM_mode The usb mode to set
.endproc

.proc ch376_set_usb_mode
    ;;@brief Set usb mode
    ;;@inputA The usb mode to set
    ;;@```ca65
    ;;@`  lda       #CH376_USB_MODE_HOST_RESET
    ;;@`  jsr       ch376_set_usb_mode
    ;;@`  rts
    ;;@```
    ldx     #CH376_SET_USB_MODE ; $15
    stx     CH376_COMMAND

    sta     CH376_DATA
    rts
.endproc
