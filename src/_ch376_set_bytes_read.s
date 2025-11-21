.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_set_bytes_read
.export _ch376_set_bytes_write

.import ch376_set_bytes_read
.import ch376_set_bytes_write

.proc _ch376_set_bytes_write
    ;;@proto void          ch376_set_bytes_write(unsigned int nb);
    jmp     ch376_set_bytes_read::write_entry_point
.endproc

.proc _ch376_set_bytes_read
    ;;@proto void          ch376_set_bytes_read(unsigned int nb);
    ;Follow next .proc
    jmp  ch376_set_bytes_read
.endproc
