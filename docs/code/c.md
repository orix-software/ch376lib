# C

## unsigned char ch376_check_exist(void);

***Description***

If ch376 is present, it will return 0XAA

***Returns***

0XAA if it's OK


## unsigned char ch376_dir_create();

***Description***

create a folder



## ch376_disk_capacity();

***Description***

check disk capacity

!!! bug "Impossible to use"


## unsigned char ch376_disk_mount(void);

***Description***

perform a disk mount

***Returns***

ch376 status values


## void ch376_disk_query(void);

!!! bug "Impossible to use"


## unsigned char ch376_file_close();

***Returns***

ch376 status values


## unsigned char ch376_dir_create();

***Description***

create file

***Returns***

ch376 status values


## unsigned char ch376_file_erase();

***Description***

erase file

***Returns***

ch376 status values


## unsigned char ch376_file_open(void);

***Description***

open file

***Returns***

ch376 status values


## unsigned char ch376_get_descr(unsigned char mode);

***Description***

Get usb descr device

***Returns***

ch376 status values


## void ch376_get_file_size(void);

!!! bug "Impossible to use"


## unsigned char ch376_ic_get_version(void);

***Description***

get version

***Returns***

ch376 firmware version


## unsigned char ch376_lib_version(void);

***Description***

Get lib version

***Returns***

ch376 lib version


## void ch376_reset_all(void);

***Description***

reset CH376



## unsigned int ch376_seek_file(int position);

***Description***

Seek file

***Returns***

ch376 status values


## void ch376_set_address(unsigned char adress);

***Description***

set usb address



## void ch376_set_config(unsigned char config);

***Description***

set config for usb device



## void ch376_set_file_name(char *filename);

***Description***

set file_name



## void ch376_set_usb_addr(unsigned char adress);

***Description***

set usb_address



## void ch376_set_usb_mode(unsigned char mode);

***Description***

Set usb mode

***Input***




## void ch376_set_usb_speed(unsigned char speed);

***Description***

Set usb mode

***Input***




## unsigned char ch376_wait_response(void);

***Description***

Perform wait_response

***Returns***

ch376 status values


