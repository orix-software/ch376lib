.export _ch376_check_exist
.import ch376_check_exist

.proc _ch376_check_exist
    ;;@proto unsigned char ch376_check_exist(void);
    ;;@brief If ch376 is present, it will return 0XAA
    ;;@returns 0XAA if it's OK
    jmp     ch376_check_exist
.endproc
