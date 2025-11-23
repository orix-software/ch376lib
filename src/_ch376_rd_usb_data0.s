
.include "ch376.inc"
.include "telestrat.inc"
    ;;@returnsA Y position
    ;;@returnsX X position
    ;;@returnsY Button
    ;;@returnsRES wheel

.export _ch376_rd_usb_data0
.import ch376_rd_usb_data0

.importzp ptr1, ptr2

.proc _ch376_rd_usb_data0
    ;;@proto void ch376_rd_usb_data0(void * rd_usb_data0 struct);

    sta     ptr1
    stx     ptr1 + 1
    jsr     ch376_rd_usb_data0

    sty     ptr2

    ldy     #rd_usb_data0::yy
    sta     (ptr1),y

    ldy     #rd_usb_data0::button
    lda     ptr2
    sta     (ptr1),y

    ldy     #rd_usb_data0::xx
    txa
    sta     (ptr1),y

    ldy     #rd_usb_data0::wheel
    lda     RES
    sta     (ptr1),y

    rts
.endproc