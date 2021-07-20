

/*obsolete please use instead file in telemon repo*/

/* /// "Portable types" */




/* /// "CH376 interface commands and constants" */

// Chip version
#define CH376_DATA_IC_VER 3

// Commands
#define CH376_CMD_NONE          0x00
#define CH376_CMD_GET_IC_VER    0x01
#define CH376_CMD_ENTER_SLEEP   0x03
#define CH376_CMD_SET_USB_SPEED 0x04
#define CH376_CMD_RESET_ALL     0x05
#define CH376_CMD_CHECK_EXIST   0x06
#define CH376_CMD_GET_REGISTER  0x0A
//#define CH376_CMD_GET_DEV_RATE  0x0A ???
#define CH376_CMD_SET_REGISTER  0x0B
#define CH376_CMD_GET_FILE_SIZE 0x0C
#define CH376_CMD_DELAY_100US   0x0F
#define CH376_SET_USB_ADDR      0x13
#define CH376_CMD_SET_USB_MODE  0x15
#define CH376_CMD_TEST_CONNECT  0x16
#define CH376_CMD_SET_EP0_RX    0x18
#define CH376_CMD_SET_EP0_TX    0x19
#define CH376_CMD_SET_EP1_RX    0x1A
#define CH376_CMD_SET_EP1_TX    0x1B
#define CH376_CMD_SET_EP2_RX    0x1C
#define CH376_CMD_SET_EP2_TX    0x1D
#define CH376_CMD_GET_STATUS    0x22
#define CH376_CMD_UNLOCK_USB    0x23
#define CH376_CMD_RD_USB_DATA0  0x27
#define CH376_CMD_RD_USB_DATA_UNLOCK     0x28
#define CH376_CMD_WR_EP0        0x29 // DATA3
#define CH376_CMD_WR_EP1        0x2A // DATA5
#define CH376_CMD_WR_EP2        0x2B // DATA7
#define CH376_WR_USB_DATA       0x2C
#define CH376_CMD_WR_REQ_DATA   0x2D
#define CH376_CMD_SET_FILE_NAME 0x2F
#define CH376_CMD_DISK_CONNECT  0x30
#define CH376_CMD_DISK_MOUNT    0x31
#define CH376_CMD_FILE_OPEN     0x32
#define CH376_CMD_FILE_ENUM_GO  0x33
#define CH376_CMD_FILE_CREATE   0x34
#define CH376_CMD_FILE_ERASE    0x35
#define CH376_CMD_FILE_CLOSE  	0x36
#define CH376_CMD_DIR_INFO_READ 0x37
#define CH376_CMD_BYTE_LOCATE   0x39
#define CH376_CMD_BYTE_READ     0x3A
#define CH376_CMD_BYTE_RD_GO    0x3B
#define CH376_CMD_BYTE_WRITE    0x3C
#define CH376_CMD_BYTE_WR_GO    0x3D
#define CH376_CMD_DISK_QUERY    0x3F
#define CH376_CMD_DIR_CREATE    0x40
#define CH376_CMD_CLR_STALL     0x41
#define CH376_CMD_GET_DESCR     0X42
#define CH376_CMD_SET_ADDR      0X45
#define CH375_CMD_GET_DESCR     0x46
#define CH376_CMD_ISSUE_TKN_X   0x4E
#define CH376_CMD_DISK_RD_GO    0x55

#define CH376_ARG_SET_USB_MODE_INVALID       0x00
#define CH376_ARG_SET_USB_MODE_SD_HOST       0x03
#define CH376_ARG_SET_USB_MODE_USB_HOST      0x06
#define CH376_ARG_SET_USB_HOST_RESET_USB_BUS 0x07

// Status & errors
#define CH376_ERR_OPEN_DIR      0x41
#define CH376_ERR_MISS_FILE     0x42
#define CH376_ERR_FOUND_NAME 	0x43
#define CH376_ERR_DISK_DISCON 	0x82
#define CH376_ERR_LARGE_SECTOR 	0x84
#define CH376_ERR_TYPE_ERROR 	0x92
#define CH376_ERR_BPB_ERROR 	0xA1
#define CH376_ERR_DISK_FULL 	0xB1
#define CH376_ERR_FDT_OVER 		0xB2
#define CH376_ERR_FILE_CLOSE 	0xB4


#define CH376_RET_SUCCESS       0x51
#define CH376_RET_ABORT         0x5F

#define CH376_INT_SUCCESS    0x14
#define CH376_INT_DISK_READ  0x1D
#define CH376_INT_DISK_WRITE 0x1F

#define CH376_LIB_VERSION_2021_2 0x00
#define CH376_LIB_VERSION_2021_3 0x01
#define CH376_LIB_VERSION_2021_4 0x02

unsigned char ch376_check_exist(void);
unsigned char ch376_ic_get_version(void);
void 		  ch376_set_usb_mode(unsigned char mode);
unsigned char ch376_disk_mount(void);
unsigned int  ch376_seek_file(int position);// 16 bytes

unsigned char ch376_lib_version(void);

unsigned int  ch376_file_get_info(void);

void 		  ch376_set_file_name(char *filename);
unsigned char ch376_file_open(void);
void 		  ch376_set_bytes_write(unsigned int value);
void 		  ch376_set_bytes_read(unsigned int value);
unsigned char ch376_file_create();
unsigned char ch376_dir_create();
unsigned char ch376_file_erase();
// file_close return results of file_close
unsigned char ch376_file_close();





