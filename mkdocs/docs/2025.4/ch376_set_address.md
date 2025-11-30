---

## ch376_set_address

***Description***

set usb address


***Modify***

* X Register Modified to set command
***Example***

```asm
 lda #$02
 jsr ch376_set_address
; Check A with ch376 status
 rts
```

