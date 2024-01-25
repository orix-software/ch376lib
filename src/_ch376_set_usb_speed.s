.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_set_usb_speed
.export ch376_set_usb_speed



.proc _ch376_set_usb_speed
    ;;@proto void          ch376_set_usb_speed(unsigned char speed);
.endproc

.proc ch376_set_usb_speed
    ldx     #CH276_SET_USB_SPEED ;
    stx     CH376_COMMAND
    sta     CH376_DATA
    rts
.endproc
