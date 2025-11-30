---

## ch376_set_usb_mode

***Description***

Set usb mode

***Input***

* Accumulator : The usb mode to set


***Modify***

* X Register 
***Example***

```asm
 lda #CH376_USB_MODE_HOST_RESET
 jsr ch376_set_usb_mode
 rts
```

