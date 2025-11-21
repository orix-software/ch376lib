
.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_reset_all
.import ch376_reset_all

.proc _ch376_reset_all
    ;;@proto void          ch376_reset_all(void);
    ;;@brief reset CH376
    jmp     ch376_reset_all
.endproc
