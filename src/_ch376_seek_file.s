.include "telestrat.inc"
.include "include/ch376.inc"

.import popax

.export _ch376_seek_file
.import ch376_seek_file

.proc _ch376_seek_file
    ;;@proto unsigned int  ch376_seek_file(long position);
    ;;@brief Seek file
    ;;@note Not tested
    ;;@returns ch376 status values
    sta     RESB
    stx     RESB + 1

    jsr     popax
    sta     RES
    stx     TR0
    ; X passed to ch376_seek_file

    lda     RESB
    ldy     RESB + 1
    ldx     TR0


    jmp     ch376_seek_file
.endproc
