.export _ch376_set_usb_mode

.include "telestrat.inc"
.include "include/ch376.inc"


; A contains mode	
.proc _ch376_set_usb_mode
    ldx     #CH376_SET_USB_MODE ; $15
    stx     CH376_COMMAND

    stx     CH376_DATA	
    rts
.endproc    
	