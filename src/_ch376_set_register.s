.export _ch376_set_register
.import ch376_set_register

.import popa

.proc _ch376_set_register
    ;;@proto void          ch376_set_register(unsigned char registerid, unsigned char value);
    ;;@brief set file_name

    pha
    jsr     popa
    tax
    pla ; get value
    tax
    jmp     ch376_set_register
.endproc

