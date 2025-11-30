---

## ch376_set_usb_speed

***Description***

Set usb mode

***Input***

* Accumulator : The speed for usb


***Modify***

* X Register 
***Example***

```asm
 lda #$02
 jsr ch376_set_usb_speed
 rts
```

