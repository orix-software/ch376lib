# C

##unsigned char ch376_check_exist(void);

*** Description ***

Send a value, if ch376 is present, it will return 0XAA

##unsigned char ch376_dir_create();

*** Description ***

create a folder

##ch376_disk_capacity();

*** Description ***

check disk capacity

##unsigned char ch376_disk_mount(void);

*** Description ***

perform a disk mount

##void ch376_disk_query(void);

##unsigned char ch376_file_close();

##unsigned char ch376_dir_create();

##unsigned char ch376_file_erase();

##unsigned char ch376_file_open(void);

##unsigned char ch376_get_descr(unsigned char mode);

##void ch376_get_file_size(void);

*** Description ***

get version

##unsigned char ch376_lib_version(void);

*** Description ***

Get lib version

##void ch376_reset_all(void);

*** Description ***

reset CH376

##unsigned int ch376_seek_file(int position);

##void ch376_set_address(unsigned char adress);

##void ch376_set_config(unsigned char config);

##void ch376_set_file_name(char *filename);

##void ch376_set_usb_addr(unsigned char adress);

*** Description ***

Set usb mode

##void ch376_set_usb_mode(unsigned char mode);

##void ch376_set_usb_speed(unsigned char speed);

##unsigned char ch376_wait_response(void);

