

.include "telestrat.inc"
.include "include/ch376.inc"


.export ch376_seek_file

.import ch376_wait_response

; [IN] AY : ptr
.proc ch376_seek_file
    ;;@brief Seek file. Performs a wait_response
    ;;@inputA First byte
    ;;@inputY second byte
    ;;@inputX third byte byte
    ;;@inputMEM_RES Fourth byte
    ;;@modifyA
    ;;@modifyX from ch376_wait_response call
    ;;@modifyY from ch376_wait_response call
    ;;@returnsA ch376 status values
    ;;@```asm
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
