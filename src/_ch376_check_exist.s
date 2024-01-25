.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_check_exist
.export ch376_check_exist

.proc _ch376_check_exist
    ;;@proto unsigned char ch376_check_exist(void);
    ;;@brief Send a value, if ch376 is present, it will return 0XAA
    ;; Follow next routine
.endproc

.proc ch376_check_exist
    ;;@brief Send a value, if ch376 is present, it will return $AA
    lda     #CH376_CHECK_EXIST ;
    sta     CH376_COMMAND
    lda     #$55
    sta     CH376_DATA
    lda     CH376_DATA
    rts
.endproc
