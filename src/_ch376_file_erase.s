.include "telestrat.inc"
.include "include/ch376.inc"


.import  _ch376_wait_response

.export  _ch376_file_erase

.proc _ch376_file_erase
    lda     #CH376_FILE_ERASE
    sta     CH376_COMMAND
    jmp     _ch376_wait_response
.endproc
