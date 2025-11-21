
.export ch376_set_usb_mode

.include "telestrat.inc"
.include "include/ch376.inc"


.proc ch376_set_usb_mode
    ;;@brief Set usb mode
    ;;@inputA The usb mode to set
    ;;@modifyX
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
