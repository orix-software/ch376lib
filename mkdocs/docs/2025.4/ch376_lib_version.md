---

## ch376_lib_version

***Description***

Get lib version


***Modify***

* Accumulator 

***Returns***

* Accumulator : ch376 lib version

***Example***

```asm
 jsr ch376_lib_version
 cmp #CH376_LIB_VERSION_2024_2
 beq @right_version
 ; Wrong version
...
 rts
@right_version:
...
 rts
```

