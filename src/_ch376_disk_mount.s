
.export _ch376_disk_mount
.import ch376_disk_mount

.include "telestrat.inc"
.include "include/ch376.inc"

.proc _ch376_disk_mount
    ;;@proto unsigned char ch376_disk_mount(void);
    ;;@brief perform a disk mount
    ;;@returns ch376 status values
    jmp     ch376_disk_mount
.endproc
