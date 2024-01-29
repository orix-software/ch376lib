
.include "telestrat.inc"
.include "include/ch376.inc"

.export  _ch376_dir_create
.export  ch376_dir_create

.import ch376_wait_response

.proc _ch376_dir_create
    ;;@proto unsigned char ch376_dir_create();
    ;;@brief create a folder
.endproc

.proc ch376_dir_create
    ;;@brief create a folder
    ;;@modifyA
    ;;@modifyX From ch376_wait_response_call
    ;;@modifyY From ch376_wait_response_call
    ;;@returnsA ch376 status values
    ;;@```ca65
    ;;@`  jsr       ch376_dir_create
    ;;@`  ; check accumulator here ch376_wait_response had been launched by ch376_dir_create
    ;;@```
    lda     #CH376_DIR_CREATE
    sta     CH376_COMMAND
    jmp     ch376_wait_response
.endproc
