

.proc _ch376_file_create
    lda     #CH376_CMD_FILE_CREATE
    sta     CH376_COMMAND
    jsr     _ch376_wait_response
    rts
.endproc

.proc _ch376_dir_create
    lda     #CH376_DIR_CREATE
    sta     CH376_COMMAND
    jsr     _ch376_wait_response
    rts
.endproc

.proc _ch376_disk_query
    lda     #CH376_DISK_QUERY
    sta     CH376_COMMAND
    jsr     _ch376_wait_response
    lda     CH376_DATA
    sta     TR0
    lda     CH376_DATA
    sta     TR1
    lda     CH376_DATA
    sta     TR2
    lda     CH376_DATA
    sta     TR3    
    rts
.endproc

.proc _ch376_disk_capacity
    lda     #CH376_DISK_CAPACITY
    sta     CH376_COMMAND
    jsr     _ch376_wait_response
    
    lda     CH376_RD_USB_DATA0
    sta     CH376_COMMAND
    
    lda     CH376_DATA ; total sector0
    sta     TR0 ; $5F
 
    lda     CH376_DATA ; total sector1
    sta     TR1  ; $ED
 
    lda     CH376_DATA ; total sector2
    sta     TR2 ; $92
    
    lda     CH376_DATA ; total sector3
    sta     TR3 ; $d8    
    
    rts
.endproc

.proc _ch376_file_erase
    lda     #CH376_FILE_ERASE
    sta     CH376_COMMAND
    jsr     _ch376_wait_response
    rts

; A contains 0 if it needs to update length
.proc _ch376_file_close
    ldx     #CH376_FILE_CLOSE
    stx     CH376_COMMAND
.IFPC02
.pc02    
    stz     CH376_DATA
.p02    
.else
    lda     #$00
    sta     CH376_DATA
.endif    
    jsr     _ch376_wait_response
    rts
.endproc    
	
; [IN] AY : ptr
.proc _ch376_seek_file

    ldx     #CH376_BYTE_LOCATE
    stx     CH376_COMMAND
    sta     CH376_DATA
    sty     CH376_DATA
.IFPC02
.pc02      
    stz     CH376_DATA
    stz     CH376_DATA
.p02    
.else	
    lda     #$00
    sta     CH376_DATA
    sta     CH376_DATA
.endif	
    jsr     _ch376_wait_response
    rts
.endproc

 


.proc _ch376_get_file_size
    lda     #CH376_GET_FILE_SIZE
    sta     CH376_COMMAND
    lda     #$68
    sta     CH376_DATA ; ????
    ; store file length
    lda     CH376_DATA
    sta     TR0
    lda     CH376_DATA
    sta     TR1
    lda     CH376_DATA
    sta     TR2
    lda     CH376_DATA
    sta     TR3
    rts	
.endproc
	
.proc _ch376_reset_all
    lda     #CH376_RESET_ALL ; 5 
    sta     CH376_COMMAND
	; waiting
    ldy     #$00
    ldx     #$00
loop:
    nop
    inx
    bne     loop
    iny
    bne     loop
    rts
.endproc    
	
.include "_ch376_check_exist.s"

.proc _ch376_ic_get_ver
    lda     #CH376_GET_IC_VER
    sta     CH376_COMMAND
    lda     CH376_DATA
    and     #%00111111 ; A contains revision
    clc
    adc     #$30 ; return ascii version
    rts
.endproc    
	
.proc _ch376_set_usb_mode
    lda     #CH376_SET_USB_MODE ; $15
    sta     CH376_COMMAND
.ifdef WITH_SDCARD_FOR_ROOT	
	lda     #CH376_SET_USB_MODE_CODE_SDCARD
.else	
    lda     #CH376_SET_USB_MODE_CODE_USB_HOST_SOF_PACKAGE_AUTOMATICALLY
.endif	
    sta     CH376_DATA	
    rts
.endproc    
	
.proc _ch376_disk_mount
    lda     #CH376_DISK_MOUNT
    sta     CH376_COMMAND
    jsr     _ch376_wait_response
    ; if we read data value, we have then length of the volume name
    rts	
.endproc

str_usbdrive_controller_not_found:
	.byte "Usb drive controller not found !",$0D,$0A,0

