.proc _ch376_file_open
    lda #CH376_FILE_OPEN
    sta CH376_COMMAND
    jsr _ch376_wait_response
    rts
.endproc
