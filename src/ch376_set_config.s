.include "telestrat.inc"
.include "include/ch376.inc"


.export ch376_set_config

.proc ch376_set_config
    ;;@brief set config for usb device
    ;;@inputA       config value
    ;;@modifyX
    ;;@```asm
    ;;@`  lda       #$02
    ;;@`  jsr       ch376_set_config
    ;;@```
    ldx     #CH376_CMD_SET_CONFIG
    stx     CH376_COMMAND
    sta     CH376_DATA
    rts
.endproc
