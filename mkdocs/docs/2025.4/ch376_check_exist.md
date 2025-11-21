---

## ch376_check_exist

***Description***

If ch376 is present, it will return $AA


***Modify***

* Accumulator 
***Returns***

* Accumulator : $AA if it's OK

 jsr ch376_check_exist
 cmp #$AA
 beq @exists
 rts ; Does not exist
@exists:
...
```

