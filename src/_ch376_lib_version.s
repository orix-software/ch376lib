
.include "include/ch376.inc"

.export _ch376_lib_version

.proc _ch376_lib_version
    lda     #CH376_LIB_VERSION_2021_2
    ldx     #$00
    rts
.endproc