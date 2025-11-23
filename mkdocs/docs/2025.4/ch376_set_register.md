---

## ch376_set_register

***Description***

Set register

***Input***

* X Register : The id of the register. ex VAR_SYS_BASE_INFO
* Y Register : The value of the register


***Modify***

* Accumulator 
 lda #$0B
 ldx #$17
 ldy #$D8
 jsr ch376_set_register
 rts
```

