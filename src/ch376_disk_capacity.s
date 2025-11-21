
.include "telestrat.inc"
.include "include/ch376.inc"


.import ch376_wait_response
.export ch376_disk_capacity

.proc ch376_disk_capacity
    ;;@brief check disk capacity
    ;;@bug Impossible to use
    sta     RES
    stx     RES + 1

    lda     #CH376_DISK_CAPACITY
    sta     CH376_COMMAND
    jsr     ch376_wait_response

    lda     #CH376_RD_USB_DATA0
    sta     CH376_COMMAND

    ldy     #$00
    lda     CH376_DATA ; total sector0
    sta     (RES),y
    iny

    lda     CH376_DATA ; total sector1
    sta     (RES),y
    iny

    lda     CH376_DATA ; total sector2
    sta     (RES),y
    iny

    lda     CH376_DATA ; total sector3
    sta     (RES),y

    rts
.endproc
