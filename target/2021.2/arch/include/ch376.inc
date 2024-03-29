CH376_DETECTED        = $AA

CH376_CMD_NONE        = $00
CH376_GET_IC_VER      = $01
CH376_SET_BAUDRATE    = $02
CH376_GET_ENTER_SLEEP = $03
CH276_SET_USB_SPEED   = $04 
CH376_RESET_ALL       = $05
CH376_CHECK_EXIST     = $06
CH376_GET_FILE_SIZE   = $0C ; Get the current file length
CH376_SET_USB_MODE    = $15
CH376_GET_STATUS      = $22
CH376_RD_USB_DATA0    = $27
CH376_WR_USB_DATA     = $2C
CH376_CMD_WR_REQ_DATA = $2D
CH376_SET_FILE_NAME   = $2F
CH376_DISK_CONNECT    = $30 ; check the disk connection status
CH376_DISK_MOUNT      = $31
CH376_FILE_OPEN       = $32
CH376_FILE_ENUM_GO    = $33
CH376_CMD_FILE_CREATE = $34
CH376_FILE_ERASE      = $35
CH376_FILE_CLOSE      = $36
CH376_BYTE_LOCATE     = $39
CH376_BYTE_READ       = $3A
CH376_BYTE_RD_GO      = $3B
CH376_BYTE_WRITE      = $3C
CH376_BYTE_WR_GO      = $3D
CH376_DISK_CAPACITY   = $3E
CH376_DISK_QUERY      = $3F
CH376_DIR_CREATE      = $40
CH376_SET_ADRESS      = $45
CH376_GET_DESCR       = $46
CH376_DISK_RD_GO      = $55

; CODE FOR CH376_SET_USB_MODE 

CH376_SET_USB_MODE_CODE_SDCARD                              = $03
; The code of 06H means switch to valid USB-HOST, produce SOF package automatically. 
CH376_SET_USB_MODE_CODE_USB_HOST_SOF_PACKAGE_AUTOMATICALLY  = $06

CH376_USB_INT_SUCCESS 		= $14
CH376_USB_INT_CONNECT 		= $15
CH376_USB_INT_DISCONNECT	= $16
CH376_USB_INT_BUF_OVER 		= $17
CH376_USB_INT_USB_READY 	= $18
CH376_USB_INT_DISK_READ 	= $1D
CH376_USB_INT_DISK_WRITE 	= $1D
CH376_USB_INT_DISK_ERR 		= $1F

CH376_ERR_OPEN_DIR          = $41
CH376_ERR_MISS_FILE         = $42
CH376_ERR_FOUND_NAME 		= $43
CH376_ERR_DISK_DISCON 	    = $82
CH376_ERR_LARGE_SECTOR 	    = $84
CH376_ERR_TYPE_ERROR 		= $92
CH376_ERR_BPB_ERROR 		= $A1
CH376_ERR_DISK_FULL 		= $B1
CH376_ERR_FDT_OVER 	  	    = $B2
CH376_ERR_FILE_CLOSE 		= $B4
