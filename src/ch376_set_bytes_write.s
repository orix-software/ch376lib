.include "telestrat.inc"
.include "include/ch376.inc"


.export ch376_set_bytes_write


.import ch376_write_entry_point


.proc ch376_set_bytes_write
    ;;@brief Set bytes to write. Manage only 16 bits. Others bytes are set to 0 to provide 32 bits integer to ch376 chip
    ;;@inputA       Low value
    ;;@inputY       High value
    ;;@modifyX
    ;;@modifyA
    ;;@```ca65
    ;;@`  lda       #$02
    ;;@`  ldy       #$10
    ;;@`  jsr       ch376_set_bytes_write
    ;;@```
    jmp     ch376_write_entry_point
.endproc
