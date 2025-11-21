---

## ch376_disk_mount

***Description***

perform a disk mount


***Modify***

* Accumulator * X Register From ch376_wait_response_call* Y Register From ch376_wait_response_call
***Returns***

* Accumulator : ch376 status values

 jsr ch376_disk_mount
 ; check accumulator here ch376_wait_response had been launched by ch376_disk_mount
```

