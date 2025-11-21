---

## ch376_dir_create

***Description***

create a folder


***Modify***

* Accumulator * X Register From ch376_wait_response_call* Y Register From ch376_wait_response_call
***Returns***

* Accumulator : ch376 status values

 jsr ch376_dir_create
 ; check accumulator here ch376_wait_response had been launched by ch376_dir_create
```

