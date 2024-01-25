.export _ch376_set_usb_mode
.export ch376_set_usb_mode

.include "telestrat.inc"
.include "include/ch376.inc"

.proc _ch376_set_usb_mode
    ;;@brief Set usb mode
    ;;@proto void          ch376_set_usb_mode(unsigned char mode);
.endproc

; A contains mode
.proc ch376_set_usb_mode
    ;;@brief Set usb mode
    ldx     #CH376_SET_USB_MODE ; $15
    stx     CH376_COMMAND

    sta     CH376_DATA
    rts
.endproc
