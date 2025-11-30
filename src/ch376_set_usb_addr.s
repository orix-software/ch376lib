.include "telestrat.inc"
.include "include/ch376.inc"


.export ch376_set_usb_addr


.proc ch376_set_usb_addr
    ;;@brief set usb_address
    ;;@inputA The address to set
    ;;@modifyX
    ;;@```asm
    ;;@`; Set usb addr
    ;;@`  lda       #$02
    ;;@`  jsr       ch376_set_usb_addr
    ;;@`  rts
    ;;@```
    ldx     #CH376_SET_USB_ADDR
    stx     CH376_COMMAND
    sta     CH376_DATA
    rts
.endproc
