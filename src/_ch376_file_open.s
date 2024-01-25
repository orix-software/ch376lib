.include "telestrat.inc"
.include "include/ch376.inc"

.import _ch376_wait_response

.export _ch376_file_open
.export ch376_file_open

.proc _ch376_file_open
    ;;@proto unsigned char ch376_file_open(void);
    ;;@returns ch376 status values
.endproc

.proc ch376_file_open
    ;;@returns ch376 status values
    lda     #CH376_FILE_OPEN
    sta     CH376_COMMAND
    jmp     _ch376_wait_response
.endproc
