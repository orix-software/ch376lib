---

## ch376_wait_response

***Description***

Perform wait_response. It's not needed to call because some commands already perform ch376_wait_response


***Modify***

* Accumulator * X Register * Y Register 

***Returns***

* Accumulator : "ch376 status" value (or return 1 if usb controller does not respond)

***Example***

```asm
 jsr ch376_wait_response
 rts
```

