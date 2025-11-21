---

## ch376_set_usb_addr

***Description***

set usb_address

***Input***

* Accumulator : The address to set


***Modify***

* X Register 
; Set usb addr
 lda #$02
 jsr ch376_set_usb_addr
 rts
```

