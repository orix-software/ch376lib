
.include "telestrat.inc"
.include "include/ch376.inc"

.export  ch376_get_file_size

.proc ch376_get_file_size
    ;;@brief Get file size
    ;;@bug Impossible to use
    sta     RES
    stx     RES + 1
    lda     #CH376_GET_FILE_SIZE
    sta     CH376_COMMAND
    lda     #$68
    sta     CH376_DATA ; ????
    ; store file length
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
