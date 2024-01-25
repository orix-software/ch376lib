
.include "telestrat.inc"
.include "include/ch376.inc"

.importzp ptr1
.import _ch376_wait_response

.export  _ch376_disk_capacity
.export  ch376_disk_capacity

.proc _ch376_disk_capacity
    ;;@proto ch376_disk_capacity();
    ;;@brief check disk capacity
.endproc

.proc ch376_disk_capacity
    ;;@brief check disk capacity
    ;;@bug Impossible to use
    lda     #CH376_DISK_CAPACITY
    sta     CH376_COMMAND
    jsr     _ch376_wait_response

    lda     #CH376_RD_USB_DATA0
    sta     CH376_COMMAND

    ldy     #$00
    lda     CH376_DATA ; total sector0
    sta     (ptr1),y
    iny

    lda     CH376_DATA ; total sector1
    sta     (ptr1),y
    iny

    lda     CH376_DATA ; total sector2
    sta     (ptr1),y
    iny

    lda     CH376_DATA ; total sector3
    sta     (ptr1),y

    rts
.endproc
