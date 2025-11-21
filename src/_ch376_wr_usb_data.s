.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_wr_usb_data
.import ch376_wr_usb_data

.proc _ch376_wr_usb_data
    ;;@proto void ch376_wr_usb_data(char *data);
    ;;@brief Send data to usb device. First byte must be the the length to send
    jmp ch376_wr_usb_data
.endproc
