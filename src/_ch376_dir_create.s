
.include "telestrat.inc"
.include "include/ch376.inc"

.export  _ch376_dir_create

.import _ch376_wait_response

.proc _ch376_dir_create
    lda     #CH376_DIR_CREATE
    sta     CH376_COMMAND
    jmp     _ch376_wait_response
.endproc
