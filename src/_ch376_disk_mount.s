.import _ch376_wait_response
.export _ch376_disk_mount
.export ch376_disk_mount

.include "telestrat.inc"
.include "include/ch376.inc"

.proc _ch376_disk_mount
    ;;@proto unsigned char ch376_disk_mount(void);
    ;;@brief perform a disk mount
    ;;@returns ch376 status values
.endproc

.proc ch376_disk_mount
    ;;@brief perform a disk mount
    ;;@returns ch376 status values
    lda     #CH376_DISK_MOUNT
    sta     CH376_COMMAND
    jmp     _ch376_wait_response
.endproc
