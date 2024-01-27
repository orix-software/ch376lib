# Assembly

## ch376_check_exist

***Description***

If ch376 is present, it will return $AA


***Returns***

* Accumulator : $AA if it's OK

***Example***

```ca65
 jsr ch376_check_exist
 cmp #$AA
 beq @exists
 rts ; Does not exist
@exists:
...
```



## ch376_dir_create

***Description***

create a folder


***Returns***

* Accumulator : ch376 status values

***Example***

```ca65
 jsr ch376_dir_create
 ; check accumulator here ch376_wait_response had been launched by ch376_dir_create
```



## ch376_disk_capacity

***Description***

check disk capacity

!!! bug "Impossible to use"


## ch376_disk_mount

***Description***

perform a disk mount


***Returns***

* Accumulator : ch376 status values

***Example***

```ca65
 jsr ch376_disk_mount
 ; check accumulator here ch376_wait_response had been launched by ch376_disk_mount
```



## ch376_disk_query

!!! bug "Impossible to use"


## ch376_file_close

***Description***

Close file


***Returns***

* Accumulator : 'ch376 status' value

***Example***

```ca65
 jsr ch376_file_close
 ; check accumulator here ch376_wait_response had been launched by ch376_file_close
```



## ch376_file_create

***Description***

create file


***Returns***

* Accumulator : ch376 status value

***Example***

```ca65
 jsr ch376_file_create
 ; check accumulator here ch376_wait_response had been launched by ch376_file_create
```



## ch376_file_erase

***Description***

Erase file


***Returns***

* Accumulator : ch376 status value

***Example***

```ca65
 jsr ch376_file_erase
 ; check accumulator here ch376_wait_response had been launched by ch376_file_erase
```



## ch376_file_open

***Description***

open file


***Returns***

* Accumulator : 'ch376 status' value

***Example***

```ca65
 jsr ch376_file_erase
 ; check accumulator here ch376_wait_response had been launched by ch376_file_open
```



## ch376_get_descr

***Description***

Get usb descr device


***Returns***

* Accumulator : ch376 status values

***Example***

```ca65
 jsr ch376_get_descr
 ; check accumulator here ch376_wait_response had been launched by ch376_get_descr
```



## ch376_get_file_size

***Description***

Get file size

!!! bug "Impossible to use"


## ch376_ic_get_ver

***Description***

get version


***Returns***

* Accumulator : ch376 firmware version

***Example***

```ca65
 jsr ch376_ic_get_ver
 ; check accumulator for Version (integer value)
```



## ch376_lib_version

***Description***

Get lib version


***Returns***

* Accumulator : ch376 lib version

***Example***

```ca65
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



## ch376_reset_all

***Description***

reset CH376

***Example***

```ca65
 jsr ch376_reset_all
 rts
```



## ch376_seek_file

***Description***

Seek file. Performs a wait_response

***Input***

* Accumulator : First byte
* Y Register : second byte
* X Register : third byte byte

***Returns***

* Accumulator : ch376 status values

***Example***

```ca65
 lda #$04
 sta RES
 lda #$01
 ldy #$02
 ldx #$03
 jsr ch376_seek_file
 ; check accumulator here ch376_wait_response had been launched by ch376_seek_file
```

!!! note "Not tested"


## ch376_set_address

***Description***

set usb address

***Example***

```ca65
 lda #$02
 jsr ch376_set_address
```



## ch376_set_config

***Description***

set config for usb device

***Input***

* Accumulator : config value
***Example***

```ca65
 lda #$02
 jsr ch376_set_config
```



## ch376_set_file_name

***Description***

set file_name

***Input***

* Accumulator : Low ptr adress of the string, terminated by 0
* Y Register : High ptr adress of the string, terminated by 0
***Example***

```ca65
 lda #<myfile
 ldy #>myfile
 jsr ch376_set_file_name
 rts
myfile:
 .byte "hello.txt"
```



## ch376_set_usb_addr

***Description***

set usb_address

***Input***

* Accumulator : The address to set
***Example***

```ca65
 lda #$02
 jsr ch376_set_usb_addr
 rts
```



## ch376_set_usb_mode

***Description***

Set usb mode

***Input***

* Accumulator : The usb mode to set
***Example***

```ca65
 lda #CH376_USB_MODE_HOST_RESET
 jsr ch376_set_usb_mode
 rts


## ch376_set_usb_speed

***Description***

Set usb mode

***Input***

* Accumulator : The speed for usb
***Example***

```ca65
 lda #$02
 jsr ch376_set_usb_speed
 rts


## ch376_wait_response

***Description***

Perform wait_response. It's not needed to call because some commands already perform ch376_wait_response


***Returns***

* Accumulator : "ch376 status" value (or return 1 if usb controller does not respond)

***Example***

```ca65
 jsr ch376_wait_response
 rts


