.include "telestrat.inc"
.include "include/ch376.inc"

.importzp ptr1
.import ch376_wait_response

.export _ch376_disk_query
.export ch376_disk_query

.proc _ch376_disk_query
    ;;@proto void          ch376_disk_query(void);
    ;;@bug Impossible to use
.endproc

.proc ch376_disk_query
    ;;@bug Impossible to use
    lda     #CH376_DISK_QUERY
    sta     CH376_COMMAND
    jsr     ch376_wait_response

    ldy     #$00
    lda     CH376_DATA
    sta     (ptr1),y
    iny
    lda     CH376_DATA
    sta     (ptr1),y
    iny
    lda     CH376_DATA
    sta     (ptr1),y
    iny
    lda     CH376_DATA
    sta     (ptr1),y
    rts
.endproc
