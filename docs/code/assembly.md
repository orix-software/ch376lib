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



## ch376_disk_capacity

***Description***

check disk capacity

!!! bug "Impossible to use"


## ch376_disk_mount

***Description***

perform a disk mount


***Returns***

* Accumulator : ch376 status values



## ch376_disk_query

!!! bug "Impossible to use"


## ch376_file_close


***Returns***

* Accumulator : ch376 status values



## ch376_file_create

***Description***

create file


***Returns***

* Accumulator : ch376 status values



## ch376_file_erase

***Description***

Erase file


***Returns***

* Accumulator : ch376 status values



## ch376_file_open

***Description***

open file


***Returns***

* Accumulator : ch376 status values



## ch376_get_descr


***Returns***

* Accumulator : ch376 status values

***Description***

Get usb descr device



## ch376_get_file_size

!!! bug "Impossible to use"


## ch376_ic_get_ver

***Description***

get version


***Returns***

* Accumulator : ch376 firmware version



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

!!! note "Not tested"


## ch376_set_address

***Description***

set usb address



## ch376_set_config

***Description***

set config for usb device



## ch376_set_file_name

***Description***

set file_name

***Input***

* Accumulator : Low ptr adress of the string, terminated by 0
* Y Register : High ptr adress of the string, terminated by 0


## ch376_set_usb_addr

***Description***

set usb_address

***Input***

* Accumulator : The address to set


## ch376_set_usb_mode

***Description***

Set usb mode

***Input***

* Accumulator : The usb mode to set


## ch376_set_usb_speed

***Description***

Set usb mode

***Input***

* Accumulator : The speed for usb


## ch376_wait_response


***Returns***

* Accumulator : ch376 status values (1 return 1 if usb controller does not respond)



