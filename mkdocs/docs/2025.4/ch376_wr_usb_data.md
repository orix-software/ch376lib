---

## ch376_wr_usb_data

***Description***

Send data to usb device. First byte must be the the length to send

***Input***

* Accumulator : Low byte of ptr data
* X Register : High byte of ptr data


***Modify***

* Accumulator * Y Register * X Register * RESUsed

***Example***

```asm
 lda #<data
 ldx #>data
 jsr ch376_wr_usb_data
 rts
data:
 ; length, set port feature, set feature, port_power,0, Id port, 0, 0, 0
 .byte 8,$23,3,8,0,1,0,0
```

