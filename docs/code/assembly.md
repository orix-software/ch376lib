# Assembly

endproc
proc ch376_check_exist
   ;;@brief Send a value, if ch376 is present, it will return $AA
   lda     #CH376_CHECK_EXIST ;
   sta     CH376_COMMAND
   lda     #$55
   sta     CH376_DATA
   lda     CH376_DATA
   rts
endproc
## ch376_dir_create

### Description

create a folder

## ch376_disk_capacity

### Description

check disk capacity

## ch376_disk_mount

### Description

perform a disk mount

## ch376_disk_query

## ch376_file_close

## ch376_file_create

## ch376_file_erase

## ch376_file_open

## ch376_get_descr

## ch376_get_file_size

   ;;@brief get version
Follownextroutine
## ch376_ic_get_ver

### Description

get version

## ch376_lib_version

### Description

Get lib version

## ch376_reset_all

### Description

reset CH376

## ch376_seek_file

## ch376_set_address

## ch376_set_config

## ch376_set_file_name

## ch376_set_usb_addr

## ch376_set_usb_mode

### Description

Set usb mode

## ch376_set_usb_speed

## ch376_wait_response

