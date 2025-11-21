.include "telestrat.inc"
.include "include/ch376.inc"

.export ch376_wr_usb_data

.proc ch376_wr_usb_data
    ;;@brief Send data to usb device. First byte must be the the length to send
    ;;@inputA Low byte of ptr data
    ;;@inputX High byte of ptr data
    ;;@modifyA
    ;;@modifyY
    ;;@modifyX
    ;;@modifyMEM_RES Used
    ;;@```ca65
    ;;@`  lda       #<data
    ;;@`  ldx       #>data
    ;;@`  jsr       ch376_wr_usb_data
    ;;@`  rts
    ;;@`data:
    ;;@`   ; length, set port feature, set feature, port_power,0, Id port, 0, 0, 0
    ;;@`   .byte 8,$23,3,8,0,1,0,0
    ;;@```

    sta     RES
    stx     RES + 1
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


