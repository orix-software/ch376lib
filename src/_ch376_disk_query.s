.include "telestrat.inc"
.include "include/ch376.inc"




.export _ch376_disk_query
.import ch376_disk_query

.proc _ch376_disk_query
    ;;@proto void          ch376_disk_query(void);
    ;;@bug Impossible to use
    jmp     ch376_disk_query
.endproc
