.import ch376_wait_response

.export ch376_disk_mount

.include "telestrat.inc"
.include "include/ch376.inc"



.proc ch376_disk_mount
    ;;@brief perform a disk mount
    ;;@modifyA
    ;;@modifyX From ch376_wait_response_call
    ;;@modifyY From ch376_wait_response_call
    ;;@returnsA ch376 status values
    ;;@```ca65
    ;;@`  jsr       ch376_disk_mount
    ;;@`  ; check accumulator here ch376_wait_response had been launched by ch376_disk_mount
    ;;@```
    lda     #CH376_DISK_MOUNT
    sta     CH376_COMMAND
    jmp     ch376_wait_response
.endproc
