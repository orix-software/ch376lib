.include "telestrat.inc"
.include "include/ch376.inc"



.export _ch376_file_close
.import ch376_file_close

.proc _ch376_file_close
    ;;@proto unsigned char ch376_file_close();
    ;;@returns ch376 status values
    jmp     ch376_file_close
.endproc
