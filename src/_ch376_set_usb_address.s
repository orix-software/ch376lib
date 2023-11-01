.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_set_usb_address

.proc _ch376_set_usb_address
    ldx     #CH376_SET_USB_ADDR
    stx     CH376_COMMAND
    sta     CH376_DATA
    rts
.endproc
