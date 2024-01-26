.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_set_usb_addr
.export ch376_set_usb_addr

.proc _ch376_set_usb_addr
    ;;@proto void          ch376_set_usb_addr(unsigned char adress);
    ;;@brief set usb_address
.endproc

.proc ch376_set_usb_addr
    ;;@brief set usb_address
    ;;@inputA The address to set
    ldx     #CH376_SET_USB_ADDR
    stx     CH376_COMMAND
    sta     CH376_DATA
    rts
.endproc
