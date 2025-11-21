.include "telestrat.inc"
.include "include/ch376.inc"


.import ch376_wait_response

.export ch376_disk_query


.proc ch376_disk_query
    sta     RES
    stx     RES + 1
    ;;@bug Impossible to use
    lda     #CH376_DISK_QUERY
    sta     CH376_COMMAND
    jsr     ch376_wait_response

    ldy     #$00
    lda     CH376_DATA
    sta     (RES),y
    iny
    lda     CH376_DATA
    sta     (RES),y
    iny
    lda     CH376_DATA
    sta     (RES),y
    iny
    lda     CH376_DATA
    sta     (RES),y
    rts
.endproc
