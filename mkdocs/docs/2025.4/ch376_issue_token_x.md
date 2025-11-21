---

## ch376_issue_token_x

***Description***

Send Token for control transfert

***Input***

* Accumulator : ch376 Token


***Modify***

* Accumulator * X Register * Y Register From ch376_wait_response
***Returns***

* Accumulator : ch376 status

 lda #$80
 jsr ch376_issue_token_x
 ; check accumulator for ch376 status
```

