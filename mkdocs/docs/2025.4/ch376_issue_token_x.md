---

## ch376_issue_token_x

***Description***

Send Token for control transfert

***Input***

* Accumulator : ch376 Token
* Accumulator : ch376 operation descriptor


***Modify***

* Accumulator * X Register * Y Register From ch376_wait_response
***Returns***

* Accumulator : ch376 status

 lda #$80
 ldx #$19
 jsr ch376_issue_token_x
 rts
 ; check accumulator for ch376 status
```

