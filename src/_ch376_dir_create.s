
.include "telestrat.inc"
.include "include/ch376.inc"

.export  _ch376_dir_create
.import  ch376_dir_create



.proc _ch376_dir_create
    ;;@proto unsigned char ch376_dir_create();
    ;;@brief create a folder
    jmp     ch376_dir_create
.endproc
