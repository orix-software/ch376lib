.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_set_usb_addr
.import ch376_set_usb_addr

.proc _ch376_set_usb_addr
    ;;@proto void          ch376_set_usb_addr(unsigned char adress);
    ;;@brief set usb_address
    jmp     ch376_set_usb_addr
.endproc


