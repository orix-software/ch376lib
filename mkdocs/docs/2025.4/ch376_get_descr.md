---

## ch376_get_descr

***Description***

Get usb descr device


***Modify***

* X Register * Y Register From ch376_wait_response_call
***Returns***

* Accumulator : ch376 status values

 jsr ch376_get_descr
 ; check accumulator here ch376_wait_response had been launched by ch376_get_descr
 rts
```

