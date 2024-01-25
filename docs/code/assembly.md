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

## ch376_disk_query

## ch376_file_close

## ch376_file_create

## ch376_file_erase

## ch376_file_open

## ch376_get_descr

## ch376_get_file_size

endproc
proc ch376_ic_get_ver
   ;;@brief get version
   lda     #CH376_GET_IC_VER
   sta     CH376_COMMAND
   lda     CH376_DATA
   and     #%00111111 ; A contains revision
   rts
endproc
## ch376_lib_version

### Description

Get lib version

## ch376_reset_all

### Description

reset CH376

