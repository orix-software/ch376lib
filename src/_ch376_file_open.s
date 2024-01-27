.include "telestrat.inc"
.include "include/ch376.inc"

.import ch376_wait_response

.export _ch376_file_open
.export ch376_file_open

.proc _ch376_file_open
    ;;@proto unsigned char ch376_file_open(void);
    ;;@brief open file
    ;;@returns 'ch376 status' value
.endproc

.proc ch376_file_open
    ;;@brief open file
    ;;@modifyA
    ;;@modifyX From ch376_wait_response_call
    ;;@modifyY From ch376_wait_response_call
    ;;@returnsA 'ch376 status' value
    ;;@```ca65
    ;;@`  jsr       ch376_file_erase
    ;;@`  ; check accumulator here ch376_wait_response had been launched by ch376_file_open
    ;;@`  rts
    ;;@```
    lda     #CH376_FILE_OPEN
    sta     CH376_COMMAND
    jmp     ch376_wait_response
.endproc
