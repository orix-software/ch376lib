.include "telestrat.inc"
.include "include/ch376.inc"

.import _ch376_wait_response

.export _ch376_file_create
.export ch376_file_create

.proc _ch376_file_create
    ;;@proto unsigned char ch376_dir_create();
    ;;@returns ch376 status values
.endproc

.proc ch376_file_create
    ;;@returns ch376 status values
    lda     #CH376_CMD_FILE_CREATE
    sta     CH376_COMMAND
    jmp     _ch376_wait_response
.endproc
