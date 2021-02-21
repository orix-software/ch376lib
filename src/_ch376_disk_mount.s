.import _ch376_wait_response
.export _ch376_disk_mount

.include "telestrat.inc"
.include "include/ch376.inc"

.proc _ch376_disk_mount
    lda     #CH376_DISK_MOUNT
    sta     CH376_COMMAND
    jmp     _ch376_wait_response

.endproc
