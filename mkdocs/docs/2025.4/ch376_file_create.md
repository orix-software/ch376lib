---

## ch376_file_create

***Description***

create file


***Modify***

* Accumulator * X Register From ch376_wait_response_call* Y Register From ch376_wait_response_call
***Returns***

* Accumulator : ch376 status value

 jsr ch376_file_create
 ; check accumulator here ch376_wait_response had been launched by ch376_file_create
```

