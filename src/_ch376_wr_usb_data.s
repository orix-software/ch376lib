.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_wr_usb_data
.export ch376_wr_usb_data

.proc _ch376_wr_usb_data
    ;;@proto void ch376_wr_usb_data(char *data);
    ;;@brief Send data to usb device. First byte must be the the length to send
.endproc

.proc ch376_wr_usb_data
    ;;@brief Send data to usb device. First byte must be the the length to send
    ;;@inputA Low byte of ptr data
    ;;@inputY High byte of ptr data
    ;;@modifyA
    ;;@modifyY
    ;;@modifyX
    ;;@modifyMEM_RES
    ;;@```ca65
    ;;@`  lda       #<data
    ;;@`  ldy       #>data
    ;;@`  jsr       ch376_wr_usb_data
    ;;@`  rts
    ;;@`data:
    ;;@`   ; length, set port feature, set feature, port_power,0, Id port, 0, 0, 0
    ;;@`   .byte 8,$23,3,8,0,1,0,0
    ;;@```

    sta     RES
    sty     RES+1
    ldx     #CH376_WR_USB_DATA
    stx     CH376_COMMAND
    ldy     #$00

    lda     (RES),y
    tax     ; Get the length

@L1:
    lda     (RES),y
    sta     CH376_DATA
    iny
    dex
    bne     @L1

    rts
.endproc
