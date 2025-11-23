.export _ch376_set_file_name
.import ch376_set_file_name

.proc _ch376_set_file_name
    ;;@proto void          ch376_set_file_name(char *filename);
    ;;@brief set file_name
    pha
    txa
    tay
    pla
    jmp     ch376_set_file_name
.endproc
