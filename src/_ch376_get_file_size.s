
.include "telestrat.inc"
.include "include/ch376.inc"

.importzp ptr1

.export  _ch376_get_file_size
.export  ch376_get_file_size

.proc _ch376_get_file_size
    ;;@proto void          ch376_get_file_size(void);
    ;;@bug Impossible to use
.endproc

.proc ch376_get_file_size
    ;;@bug Impossible to use
    lda     #CH376_GET_FILE_SIZE
    sta     CH376_COMMAND
    lda     #$68
    sta     CH376_DATA ; ????
    ; store file length
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
