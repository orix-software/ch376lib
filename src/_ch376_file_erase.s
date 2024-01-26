.include "telestrat.inc"
.include "include/ch376.inc"


.import  _ch376_wait_response

.export  _ch376_file_erase
.export  ch376_file_erase

.proc _ch376_file_erase
    ;;@proto unsigned char ch376_file_erase();
    ;;@brief erase file
    ;;@returns ch376 status values
.endproc

.proc ch376_file_erase
    ;;@brief Erase file
    ;;@returnsA ch376 status values
    lda     #CH376_FILE_ERASE
    sta     CH376_COMMAND
    jmp     _ch376_wait_response
.endproc
