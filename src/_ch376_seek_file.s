

.include "telestrat.inc"
.include "include/ch376.inc"

.import _ch376_wait_response

.importzp ptr1, ptr2

.import popax

.export _ch376_seek_file
.export ch376_seek_file

.proc _ch376_seek_file
    ;;@proto unsigned int  ch376_seek_file(long position);
    ;;@brief Seek file
    ;;@note Not tested
    ;;@returns ch376 status values
    sta     ptr1
    stx     ptr1+1
    jsr     popax
    sta     ptr2
    stx     RES

    lda     ptr1
    ldy     ptr1+1
    ldx     ptr2
.endproc

; [IN] AY : ptr
.proc ch376_seek_file
    ;;@brief Seek file. Performs a wait_response
    ;;@inputA First byte
    ;;@inputY second byte
    ;;@inputX third byte byte
    ;;@inputMEM_RES Fourth byte
    ;;@returnsA ch376 status values
    ;;@```ca65
    ;;@`  lda       #$04
    ;;@`  sta       RES
    ;;@`  lda       #$01
    ;;@`  ldy       #$02
    ;;@`  ldx       #$03
    ;;@`  jsr       ch376_seek_file
    ;;@`  ; check accumulator here ch376_wait_response had been launched by ch376_seek_file
    ;;@```
    ;;@note Not tested
    pha
    lda     #CH376_BYTE_LOCATE
    sta     CH376_COMMAND
    pla
    sta     CH376_DATA
    sty     CH376_DATA
    stx     CH376_DATA
    lda     RES
    sta     CH376_DATA
    jmp     ch376_wait_response
.endproc
