
.include "include/ch376.inc"

.export ch376_lib_version
.export _ch376_lib_version

.proc _ch376_lib_version
    ;;@proto unsigned char ch376_lib_version(void);
    ;;@brief Get lib version
    ;;@returns ch376 lib version
    ldx     #$00
.endproc

; Don't fill any code here (see previous routine)

.proc ch376_lib_version
    ;;@brief Get lib version
    lda     #CH376_LIB_VERSION_2024_1
    ;;@returnsA ch376 lib version
    rts
.endproc
