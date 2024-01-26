# Assembly

## ch376_check_exist

***Description***

Send a value, if ch376 is present, it will return $AA

***Returns***

* Accumulator : $AA if it's OK

## ch376_dir_create

***Description***

create a folder

***Returns***

* Accumulator : ch376 status values

## ch376_disk_capacity

***Description***

check disk capacity

## ch376_disk_mount

***Description***

perform a disk mount

***Returns***

* Accumulator : ch376 status values

## ch376_disk_query

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

## ch376_reset_all

***Description***

reset CH376

## ch376_seek_file

***Description***

Seek file. Manage 24 bits only

***Input***

* Accumulator : First byte
***Input***

* Y Register : second byte
***Input***

* X Register : third byte byte
***Input***


***Returns***

* Accumulator : ch376 status values

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
***Input***

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

