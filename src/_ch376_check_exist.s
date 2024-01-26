.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_check_exist
.export ch376_check_exist

.proc _ch376_check_exist
    ;;@proto unsigned char ch376_check_exist(void);
    ;;@brief If ch376 is present, it will return 0XAA
    ;;@returns 0XAA if it's OK
.endproc

    ;;Follow next routine

.proc ch376_check_exist
    ;;@brief If ch376 is present, it will return $AA
    ;;@returnsA $AA if it's OK
    lda     #CH376_CHECK_EXIST ;
    sta     CH376_COMMAND
    lda     #$55
    sta     CH376_DATA
    lda     CH376_DATA
    rts
.endproc
