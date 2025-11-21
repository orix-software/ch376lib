.include "telestrat.inc"
.include "include/ch376.inc"


.export  _ch376_file_erase
.import  ch376_file_erase

.proc _ch376_file_erase
    ;;@proto unsigned char ch376_file_erase();
    ;;@brief erase file
    ;;@returns ch376 status value
    jmp     ch376_file_erase
.endproc
