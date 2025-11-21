.include "telestrat.inc"
.include "include/ch376.inc"


.export _ch376_set_bytes_write
.import ch376_write_entry_point

.proc _ch376_set_bytes_write
    ;;@proto void          ch376_set_bytes_write(unsigned int nb);
    jmp     ch376_write_entry_point
.endproc

