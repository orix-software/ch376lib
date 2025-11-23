.include "telestrat.inc"
.include "include/ch376.inc"

.export ch376_issue_token_x


.import ch376_wait_response


.proc ch376_issue_token_x
    ;;@brief Send Token for control transfert
    ;;@inputA ch376 Token
    ;;@inputA ch376 operation descriptor
    ;;@modifyA
    ;;@modifyX
    ;;@modifyY From ch376_wait_response
    ;;@returnsA ch376 status
    ;;@```ca65
    ;;@`  lda       #$80
    ;;@`  ldx       #$19
    ;;@`  jsr       ch376_issue_token_x
    ;;@`  rts
    ;;@`  ; check accumulator for ch376 status
    ;;@```
    ldy     #CH376_ISSUE_TKN_X
    sty     CH376_COMMAND
    sta     CH376_DATA
    stx     CH376_DATA ; Control transfert
    jmp     ch376_wait_response
.endproc
