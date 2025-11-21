---

## ch376_file_erase

***Description***

Erase file


***Modify***

* Accumulator * X Register From ch376_wait_response_call* Y Register From ch376_wait_response_call
***Returns***

* Accumulator : ch376 status value

 jsr ch376_file_erase
 ; Check accumulator here :
 ; Ch376_wait_response had been launched
 ; By ch376_file_erase
```

