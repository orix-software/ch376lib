
.include "telestrat.inc"
.include "include/ch376.inc"



.export  _ch376_get_file_size
.import  ch376_get_file_size

.proc _ch376_get_file_size
    ;;@proto void          ch376_get_file_size(void);
    ;;@bug Impossible to use
    jmp     ch376_get_file_size
.endproc
