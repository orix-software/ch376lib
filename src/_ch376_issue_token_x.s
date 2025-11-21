.include "telestrat.inc"
.include "include/ch376.inc"

.import ch376_issue_token_x
.export _ch376_issue_token_x


.proc _ch376_issue_token_x
    ;;@proto void ch376_issue_token_x(unsigned char token)
    ;;@brief Send Token for control transfert
    jmp     ch376_issue_token_x
.endproc
