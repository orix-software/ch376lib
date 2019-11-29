.proc _ch376_check_exist
    lda     #CH376_CHECK_EXIST ; 
    sta     CH376_COMMAND
    lda     #$55
    sta     CH376_DATA
    lda     CH376_DATA
    rts
.endproc    