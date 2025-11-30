.include "telestrat.inc"
.include "include/ch376.inc"


.export ch376_check_exist


.proc ch376_check_exist
    ;;@brief If ch376 is present, it will return $AA
    ;;@modifyA
    ;;@returnsA $AA if it's OK
    ;;@```asm
    ;;@`  jsr       ch376_check_exist
    ;;@`  cmp       #$AA
    ;;@`  beq       @exists
    ;;@`  rts       ; Does not exist
    ;;@`@exists:
    ;;@`...
    ;;@```
    lda     #CH376_CHECK_EXIST ;
    sta     CH376_COMMAND
    lda     #$55
    sta     CH376_DATA
    lda     CH376_DATA
    rts
.endproc
