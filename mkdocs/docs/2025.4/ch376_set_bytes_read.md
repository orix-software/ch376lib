---

## ch376_set_bytes_read

***Description***

Set bytes to read. Manage only 16 bits. Others bytes are set to 0 to provide 32 bits integer to ch376 chip

***Input***

* Accumulator : Low value
* Y Register : High value


***Modify***

* X Register * Accumulator 
 lda #$02
 ldy #$10
 jsr ch376_set_bytes_read
```

---

## ch376_write_entry_point

---

## ch376_set_bytes_write

***Description***

Set bytes to write. Manage only 16 bits. Others bytes are set to 0 to provide 32 bits integer to ch376 chip

***Input***

* Accumulator : Low value
* Y Register : High value


***Modify***

* X Register * Accumulator 
 lda #$02
 ldy #$10
 jsr ch376_set_bytes_write
```

