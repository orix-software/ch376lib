
.include "telestrat.inc"
.include "include/ch376.inc"

.export  _ch376_dir_create
.export  ch376_dir_create

.import _ch376_wait_response

.proc _ch376_dir_create
    ;;@proto unsigned char ch376_dir_create();
    ;;@brief create a folder

.endproc

.proc ch376_dir_create
    ;;@brief create a folder
    lda     #CH376_DIR_CREATE
    sta     CH376_COMMAND
    jmp     _ch376_wait_response
.endproc
