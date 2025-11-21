.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_wait_response
.import ch376_wait_response

.proc _ch376_wait_response
    ;;@proto unsigned char ch376_wait_response(void);
    ;;@brief Perform wait_response
    ;;@returns "ch376 status" values
    jmp     ch376_wait_response
.endproc
