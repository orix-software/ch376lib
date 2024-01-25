.include "telestrat.inc"
.include "include/ch376.inc"

.import _ch376_wait_response

.export _ch376_file_create
.export ch376_file_create

.proc _ch376_file_create
.endproc

.proc ch376_file_create
    lda     #CH376_CMD_FILE_CREATE
    sta     CH376_COMMAND
    jmp     _ch376_wait_response
.endproc
