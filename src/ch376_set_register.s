.include "telestrat.inc"
.include "include/ch376.inc"

.export ch376_set_register

.proc ch376_set_register
    ;;@brief Set register
    ;;@inputX The id of the register. ex VAR_SYS_BASE_INFO
    ;;@inputY The value of the register
    ;;@modifyA
    ;;@```asm
    ;;@`  lda       #$0B
    ;;@`  ldx       #$17
    ;;@`  ldy       #$D8
    ;;@`  jsr       ch376_set_register
    ;;@`  rts
    ;;@```

    lda     #CH376_SET_REGISTER
    sta     CH376_COMMAND
    stx     CH376_DATA
    sty     CH376_DATA

    rts

.endproc

