---

## ch376_file_open

***Description***

open file


***Modify***

* Accumulator * X Register From ch376_wait_response_call* Y Register From ch376_wait_response_call
***Returns***

* Accumulator : 'ch376 status' value

***Example***

```asm
 jsr ch376_file_erase
 ; check accumulator here ch376_wait_response had been launched by ch376_file_open
 rts
```

