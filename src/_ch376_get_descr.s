.include "telestrat.inc"
.include "include/ch376.inc"



.export _ch376_get_descr
.import ch376_get_descr

.proc _ch376_get_descr
    ;;@proto unsigned char ch376_get_descr(unsigned char mode);
    ;;@brief Get usb descr device
    ;;@returns ch376 status values
    jmp     ch376_get_descr
.endproc

