.include "telestrat.inc"
.include "include/ch376.inc"

.export ch376_issue_token_x


.import ch376_wait_response


.proc ch376_issue_token_x
    ;;@brief Send Token for control transfert
    ;;@inputA ch376 Token
    ;;@modifyA
    ;;@modifyX
    ;;@modifyY From ch376_wait_response
    ;;@returnsA ch376 status
    ;;@```ca65
    ;;@`  lda       #$80
    ;;@`  jsr       ch376_issue_token_x
    ;;@`  ; check accumulator for ch376 status
    ;;@```
    ldx     #CH376_ISSUE_TKN_X
    stx     CH376_COMMAND
    sta     CH376_DATA
    lda     #$0D
    sta     CH376_DATA ; Control transfert

    jmp     ch376_wait_response
.endproc
