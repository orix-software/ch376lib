.import ch376_lib_version
.export _ch376_lib_version

.proc _ch376_lib_version
    ;;@proto unsigned char ch376_lib_version(void);
    ;;@brief Get lib version
    ;;@returns ch376 lib version
    ldx     #$00
    jmp     ch376_lib_version
.endproc
