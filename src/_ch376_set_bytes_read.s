.export _ch376_set_bytes_read
.import ch376_set_bytes_read

.proc _ch376_set_bytes_read
    ;;@proto void          ch376_set_bytes_read(unsigned int nb);
    ;Follow next .proc
    jmp  ch376_set_bytes_read
.endproc
