.include "telestrat.inc"
.include "include/ch376.inc"



.export _ch376_file_create
.import ch376_file_create

.proc _ch376_file_create
    ;;@proto unsigned char ch376_dir_create();
    ;;@brief create file
    ;;@returns ch376 status values
    jmp     ch376_file_create
.endproc
