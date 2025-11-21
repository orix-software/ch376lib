.include "telestrat.inc"
.include "include/ch376.inc"

.import ch376_wait_response

.export _ch376_file_open
.import ch376_file_open

.proc _ch376_file_open
    ;;@proto unsigned char ch376_file_open(void);
    ;;@brief open file
    ;;@returns 'ch376 status' value
    jmp     ch376_file_open
.endproc
