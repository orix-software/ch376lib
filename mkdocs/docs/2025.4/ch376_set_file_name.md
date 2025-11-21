---

## ch376_set_file_name

***Description***

set file_name

***Input***

* Accumulator : Low ptr adress of the string, terminated by 0
* Y Register : High ptr adress of the string, terminated by 0


***Modify***

* RES
* Accumulator * Y Register 
 lda #<myfile
 ldy #>myfile
 jsr ch376_set_file_name
 rts
myfile:
 .byte "hello.txt"
```

