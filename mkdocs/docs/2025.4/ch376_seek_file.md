---

## ch376_seek_file

***Description***

Seek file. Performs a wait_response

***Input***

* Accumulator : First byte
* Y Register : second byte
* X Register : third byte byte
* RES : Fourth byte

***Modify***

* Accumulator * X Register from ch376_wait_response call* Y Register from ch376_wait_response call

***Returns***

* Accumulator : ch376 status values

***Example***

```asm
 lda #$04
 sta RES
 lda #$01
 ldy #$02
 ldx #$03
 jsr ch376_seek_file
 ; check accumulator here ch376_wait_response had been launched by ch376_seek_file
```

!!! note "Not tested"

