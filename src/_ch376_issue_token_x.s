.import ch376_issue_token_x
.export _ch376_issue_token_x

.import popa

.proc _ch376_issue_token_x
    ;;@proto unsigned char ch376_issue_token_x(unsigned char control_transfert, unsigned char token)
    ;;@brief Send Token for control transfert (return ch376 status)
    pha
    jsr     popa
    tax
    pla
    jsr     ch376_issue_token_x
    ldx     #$00
    rts
.endproc
