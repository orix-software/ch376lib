
.include "include/ch376.inc"

.export ch376_lib_version
.export _ch376_lib_version

.proc _ch376_lib_version
    ldx     #$00
.endproc

; Don't fill any code here (see previous routine)

.proc ch376_lib_version
    lda     #CH376_LIB_VERSION_2023_4
    rts
.endproc
