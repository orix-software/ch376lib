.include "telestrat.inc"
.include "include/ch376.inc"

.import  ch376_wait_response


.export  ch376_file_erase


.proc ch376_file_erase
    ;;@brief Erase file
    ;;@modifyA
    ;;@modifyX From ch376_wait_response_call
    ;;@modifyY From ch376_wait_response_call
    ;;@returnsA ch376 status value
    ;;@```ca65
    ;;@`  jsr       ch376_file_erase
    ;;@`  ; Check accumulator here :
    ;;@`  ; Ch376_wait_response had been launched
    ;;@`  ; By ch376_file_erase
    ;;@```
    lda     #CH376_FILE_ERASE
    sta     CH376_COMMAND
    jmp     ch376_wait_response
.endproc
