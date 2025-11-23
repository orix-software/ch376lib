.include "telestrat.inc"
.include "include/ch376.inc"

.export ch376_rd_usb_data0


.proc ch376_rd_usb_data0
    ;;@brief read usb data0
    ;;@returnsA Y position
    ;;@returnsX X position
    ;;@returnsY Button
    ;;@returnsRES wheel
    ;;@```ca65
    ;;@`  jsr       ch376_rd_usb_data0
    ;;@`  Read registers
    ;;@`  rts
    ;;@```
    lda     #CH376_RD_USB_DATA0
    sta     CH376_COMMAND
    lda     CH376_DATA
    beq     @S1

    ldy     CH376_DATA ; get bouton
    lda     CH376_DATA ; get X
    tax
    lda     CH376_DATA ; get Y
    pha
    lda     CH376_DATA ; get wheel
    sta     RES ; store wheel
    pla
    rts


@S1:
    rts
.endproc

