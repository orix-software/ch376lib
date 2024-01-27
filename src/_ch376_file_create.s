.include "telestrat.inc"
.include "include/ch376.inc"

.import ch376_wait_response

.export _ch376_file_create
.export ch376_file_create

.proc _ch376_file_create
    ;;@proto unsigned char ch376_dir_create();
    ;;@brief create file
    ;;@returns ch376 status values
.endproc

.proc ch376_file_create
    ;;@brief create file
    ;;@returnsA ch376 status value
    ;;@```ca65
    ;;@`  jsr       ch376_file_create
    ;;@`  ; check accumulator here ch376_wait_response had been launched by ch376_file_create
    ;;@```
    lda     #CH376_CMD_FILE_CREATE
    sta     CH376_COMMAND
    jmp     ch376_wait_response
.endproc
