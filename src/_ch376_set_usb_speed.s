.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_set_usb_speed
.export ch376_set_usb_speed

ch376_set_usb_speed := _ch376_set_usb_speed

.proc _ch376_set_usb_speed
    ldx     #CH276_SET_USB_SPEED ;
    stx     CH376_COMMAND
    sta     CH376_DATA
    rts
.endproc
