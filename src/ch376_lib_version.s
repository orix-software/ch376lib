
.include "include/ch376.inc"

.export ch376_lib_version



; Don't fill any code here (see previous routine)

.proc ch376_lib_version
    ;;@brief Get lib version
    ;;@modifyA
    ;;@returnsA ch376 lib version
    ;;@```asm
    ;;@`  jsr       ch376_lib_version
    ;;@`  cmp       #CH376_LIB_VERSION_2024_2
    ;;@`  beq       @right_version
    ;;@`  ; Wrong version
    ;;@`...
    ;;@`  rts
    ;;@`@right_version:
    ;;@`...
    ;;@`  rts
    ;;@```
    lda     #CH376_LIB_VERSION_2025_4

    rts
.endproc
