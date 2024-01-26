

.include "telestrat.inc"
.include "include/ch376.inc"

.import _ch376_wait_response

.importzp ptr1

.export _ch376_seek_file
.export ch376_seek_file

.proc _ch376_seek_file
    ;;@proto unsigned int  ch376_seek_file(int position);
    ;;@brief Seek file
    ;;@returns ch376 status values
    sta     ptr1
    stx     ptr1+1
    ;jsr     popax
.endproc

; [IN] AY : ptr
.proc ch376_seek_file
    ;;@brief Seek file. Manage 24 bits only
    ;;@inputA First byte
    ;;@inputY second byte
    ;;@inputX third byte byte
    ;;@inputMEM_RES Fourth byte
    ;;@returnsA ch376 status values
    pha
    lda     #CH376_BYTE_LOCATE
    sta     CH376_COMMAND
    pla
    sta     CH376_DATA
    sty     CH376_DATA
    stx     CH376_DATA
    lda     RES
    sta     CH376_DATA
    jmp     _ch376_wait_response
.endproc
