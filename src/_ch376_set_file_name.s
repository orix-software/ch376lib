
.include "telestrat.inc"
.include "include/ch376.inc"

.importzp ptr1

.export _ch376_set_file_name

;@set filename, input : A and Y adress of the string, terminated by 0
; If the set is successful, then A contains 0
.proc _ch376_set_file_name
    sta     ptr1
    sty     ptr1+1

    lda     #CH376_SET_FILE_NAME        ;$2F
    sta     CH376_COMMAND
    ldx     #$00
loop:
    lda     ptr1,x
    ;lda     (ptr1),y
    beq     end                         ; we reached 0 value
    cmp     #'a'                       ; 'a'
    bcc     skip
    cmp     #$7B                        ; 'z'
    bcs     skip
    sbc     #$1F
skip:
    sta     CH376_DATA
    inx
    cpx     #13                         ; because we don't manage longfilename shortname =13 8+3 and dot and \0
    bne     loop
    lda     #$00
end:
    sta     CH376_DATA
    rts
.endproc   