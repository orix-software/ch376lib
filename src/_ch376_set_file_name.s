
.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_set_file_name
.export ch376_set_file_name

.proc _ch376_set_file_name
    ;;@proto void          ch376_set_file_name(char *filename);
    ;;@brief set file_name
    pha
    txa
    tay
    pla
.endproc

;@set filename, input : A and Y adress of the string, terminated by 0
; If the set is successful, then A contains 0
.proc ch376_set_file_name
    ;;@brief set file_name
    ;;@inputA Low ptr adress of the string, terminated by 0
    ;;@inputY High ptr adress of the string, terminated by 0
    ;;@```ca65
    ;;@`  lda       #<myfile
    ;;@`  ldy       #>myfile
    ;;@`  jsr       ch376_set_file_name
    ;;@`  rts
    ;;@`myfile:
    ;;@` .byte "hello.txt"
    ;;@```

    sta     RES
    sty     RES+1


    lda     #CH376_SET_FILE_NAME        ;$2F
    sta     CH376_COMMAND
    ldy     #$00

loop:
    lda     (RES),y

    beq     end                         ; we reached 0 value
    cmp     #'a'                       ; 'a'
    bcc     skip
    cmp     #$7B                        ; 'z'
    bcs     skip
    sbc     #$1F
skip:
    sta     CH376_DATA
    iny
    cpy     #13                         ; because we don't manage longfilename shortname =13 8+3 and dot and \0
    bne     loop
    lda     #$00

end:
    sta     CH376_DATA
    rts
.endproc
