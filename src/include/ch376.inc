CH376_LIB_VERSION_2023_4 = $00
CH376_LIB_VERSION_2024_1 = $01
CH376_LIB_VERSION_2024_2 = $02
CH376_LIB_VERSION_2025_4 = $03

CH376_DETECTED           = $AA

CH376_NONE            = $00
CH376_GET_IC_VER      = $01
CH376_SET_BAUDRATE    = $02
CH376_GET_ENTER_SLEEP = $03
CH276_SET_USB_SPEED   = $04
CH376_RESET_ALL       = $05
CH376_CHECK_EXIST     = $06
CH376_GET_REGISTER    = $0A
CH376_GET_DEV_RATE    = $0A
CH376_SET_REGISTER    = $0B
CH376_SET_SD0         = $0B
CH376_WRITE_VAR8      = $0B
CH376_GET_FILE_SIZE   = $0C ; Get the current file length
CH376_READ_VAR32      = $0C
CH376_WRITE_VAR32     = $0D
CH376_DELAY_100US     = $0F
CH376_SET_USB_ADDR    = $13
CH376_SET_USB_MODE    = $15
CH376_TEST_CONNECT    = $16
CH376_ABORT_NAK       = $17
CH376_SET_EP0_RX      = $18
CH376_SET_EP0_TX      = $19
CH376_SET_EP1_RX      = $1A
CH376_SET_EP1_TX      = $1B
CH376_SET_EP2_RX      = $1C
CH376_SET_EP2_TX      = $1D
CH376_GET_STATUS      = $22
CH376_UNLOCK_USB      = $23 ; From CH375 datasheet
CH376_DIRTY_BUFFER    = $25
CH376_RD_USB_DATA0    = $27
CH376_RD_USB_DATA_UNLOCK = $28 ; From CH375 datasheet
CH376_WR_EP0          = $29 ; DATA3
CH376_WR_EP1          = $2A ; DATA5
CH376_WR_EP2          = $2B ; DATA7
CH376_WR_USB_DATA     = $2C
CH376_WR_REQ_DATA     = $2D
CH376_OFS_DATA        = $2E
CH376_SET_FILE_NAME   = $2F
CH376_DISK_CONNECT    = $30 ; check the disk connection status
CH376_DISK_MOUNT      = $31
CH376_FILE_OPEN       = $32
CH376_FILE_ENUM_GO    = $33
CH376_CMD_FILE_CREATE = $34
CH376_FILE_ERASE      = $35
CH376_FILE_CLOSE      = $36
CH376_DIR_INFO_READ   = $37
CH376_DIR_INFO_SAVE   = $38
CH376_BYTE_LOCATE     = $39
CH376_BYTE_READ       = $3A
CH376_BYTE_RD_GO      = $3B
CH376_BYTE_WRITE      = $3C
CH376_BYTE_WR_GO      = $3D
CH376_DISK_CAPACITY   = $3E
CH376_DISK_QUERY      = $3F
CH376_DIR_CREATE      = $40
CH376_CLR_STALL       = $41
CH376_SET_ADRESS      = $45
CH376_CMD_GET_DESCR   = $46
CH376_CMD_SET_CONFIG  = $49 ; Set USB configuration
CH376_SEC_READ        = $4B
CH376_SEC_WRITE       = $4C
CH376_AUTO_SETUP      = $4D
CH376_ISSUE_TKN_X     = $4E ; Send synchronization token and execute transactions
CH376_DISC_BOC        = $50
CH376_DISK_INIT       = $51 ; Init USB memory
CH376_DISK_RESET      = $52
CH376_DISK_SIZE       = $53 ; Get The maximum capacity of the USB memory
CH376_DISC_READ       = $54
CH376_DISK_RD_GO      = $55
CH376_DISK_WRITE      = $56
CH376_DISK_WR_GO      = $57
CH376_DISK_INQUIRY    = $58
CH376_DISK_READY      = $59
CH376_DISK_R_SENSE    = $5A
CH376_RD_DISK_SEC     = $5B
CH376_WR_DISK_SEC     = $5C
CH376_DISK_MAX_LUN    = $5D

; CODE FOR CH376_SET_USB_MODE

CH376_USB_MODE_DEVICE_INVALID                           = $00
CH376_USB_MODE_DEVICE_OUTER_FW                          = $01
CH376_USB_MODE_DEVICE_INNER_FW                          = $02
CH376_USB_MODE_CODE_SDCARD                              = $03
; The code of 06H means switch to valid USB-HOST, produce SOF package automatically.
CH376_USB_MODE_CODE_USB_HOST_SOF_PACKAGE_AUTOMATICALLY  = $06
CH376_USB_MODE_HOST_RESET                               = $07

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


CH376_USB_INT_SUCCESS 		= $14
CH376_USB_INT_CONNECT 		= $15
CH376_USB_INT_DISCONNECT	= $16
CH376_USB_INT_BUF_OVER 		= $17
CH376_USB_INT_USB_READY 	= $18
CH376_USB_INT_DISK_READ 	= $1D
CH376_USB_INT_DISK_WRITE 	= $1E
CH376_USB_INT_DISK_ERR 		= $1F

CH376_ST_RET_SUCCESS        = $51
CH376_ST_RET_ABORT          = $5F



; / * Informations de base du système actuel * /
; / * Le bit 6 est utilisé pour indiquer la sous-classe du périphérique de stockage USB SubClass-Code, le bit 6 est 0 pour indiquer que la sous-classe est 6 et le bit 6 est 1 pour indiquer que la sous-classe est différente de 6 * /
; / * Le bit 5 est utilisé pour indiquer l'état de la configuration USB en mode périphérique USB et l'état de la connexion du périphérique USB en mode hôte USB * /
; / * En mode périphérique USB, si le bit 5 est 1, la configuration USB est terminée et les bits 5 et 0 ne sont pas configurés * /
; / * En mode hôte USB, si le bit 5 est 1, il y a un périphérique USB dans le port USB, et si le bit 5 est 0, il n'y a pas de périphérique USB dans le port USB * /
; / * Le bit 4 est utilisé pour indiquer l'état de verrouillage du tampon en mode périphérique USB. Le bit 4 est 1 signifie que le tampon USB est verrouillé et le bit 6 est 1 signifie qu'il a été libéré * /
; / * Autres bits, réservés, veuillez ne pas modifier * /
VAR_SYS_BASE_INFO           = $20

; / * Nombre de tentatives d'opération de transaction USB * /
; / * Si le bit 7 est 0, il ne réessayera pas lorsque NAK est reçu, le bit 7 est 1 et le bit 6 est 0, et réessayera à l'infini lors de la réception de NAK (vous pouvez utiliser la commande CMD_ABORT_NAK pour abandonner la nouvelle tentative), le bit 7 est 1 et 6 est 1 Réessayez au plus 3 secondes lors de la réception de NAK * /
; / * Bit 5 ~ Bit 0 représente le nombre de tentatives après l'expiration du délai * /
VAR_RETRY_TIMES             = $25

; / * Indicateur de bit en mode fichier hôte * /
; / * Bit 1 et Bit 0, l'indicateur du système de fichiers FAT du disque logique, 00-FAT12, 01-FAT16, 10-FAT32, 11-illégal * /
; / * Bit 2, indique si les données de la table FAT dans le tampon courant ont été modifiées, 0-non modifié, 1-modifié * /
; / * Bit 3, la longueur du fichier doit être modifiée, le fichier actuel est ajouté avec les données, 0-Aucune modification n'est pas ajoutée, 1-Ajouté et doit être modifié * /
; / * Autres bits, réservés, veuillez ne pas modifier * /
VAR_FILE_BIT_FLAG           = $26

; / * État du disque et du fichier en mode fichier hôte * /
; VAR_SD_BIT_FLAG 0x30 / * Indicateur de bit de la carte SD en mode fichier hôte * /
; / * Bit 0, version de la carte SD, 0- prend uniquement en charge la première version SD, 1- prend en charge la deuxième version SD * /
; / * Bit 1, reconnaissance automatique, carte 0-SD, carte 1-MMC * /
; / * Bit 2, identification automatique, carte SD de capacité standard 0, carte SD 1 grande capacité (HC-SD) * /
; / * Bit 4, délai d'expiration de la commande ACMD41 * /
; / * Bit 5, délai d'expiration de la commande CMD1 * /
; / * Bit 6, délai d'expiration de la commande CMD58 * /
; / * Autres bits, réservés, veuillez ne pas modifier * /
VAR_DISK_STATUS             = $2B

; / * L'indicateur de synchronisation du point de terminaison BULK-IN / BULK-OUT du périphérique de stockage USB * /
; / * Bit 7, indicateur de synchronisation de point de terminaison en bloc * /
; / * Bit 6, indicateur de synchronisation de point de terminaison en bloc * /
; / * Bit 5 ~ Bit 0, doit être 0 * /
VAR_UDISK_TOGGLE            = $31

; / * Le numéro d'unité logique du périphérique de stockage USB * /
; / * Bit 7 ~ Bit 4, le numéro d'unité logique actuel du périphérique de stockage USB, après que CH376 initialise le périphérique de stockage USB, la valeur par défaut est d'accéder à 0 # unité logique * /
; / * Bit 3 ~ Bit 0, le numéro d'unité logique maximum du périphérique de stockage USB, plus 1 est égal au nombre d'unités logiques * /
VAR_UDISK_LUN               = $34

; / * Le nombre de secteurs par cluster du disque logique * /
VAR_SEC_PER_CLUS            = $38
; / * Le numéro d'index des informations de répertoire de fichiers en cours dans le secteur * /
VAR_FILE_DIR_INDEX          = $3B

; / * Le décalage de secteur du pointeur de fichier actuel dans le cluster, 0xFF pointe vers la fin du fichier, la fin du cluster * /
VAR_CLUS_SEC_OFS            = $3C

;/ * Variable 32 bits / 4 octets * /
; / * Pour les disques FAT16, c'est le nombre de secteurs occupés par le répertoire racine, et pour les disques FAT32, c'est le numéro de cluster de départ du répertoire racine (longueur totale 32 bits, octet de poids faible en premier) * /
VAR_DISK_ROOT               = $44

; / * Le nombre total de clusters du disque logique (la longueur totale est de 32 bits, octet de poids faible en premier) * /
VAR_DSK_TOTAL_CLUS          = $48

; / * Le numéro de secteur absolu de départ du disque logique LBA (longueur totale 32 bits, octet de poids faible en premier) * /
VAR_DSK_START_LBA           = $4C

; / * LBA de départ de la zone de données du disque logique (la longueur totale est de 32 bits, octet de poids faible en premier) * /
VAR_DSK_DAT_START           = $50

; / * LBA correspondant aux données du tampon de données actuel du disque (longueur totale 32 bits, octet de poids faible en premier) * /
VAR_LBA_BUFFER              = $54

; / * L'adresse LBA de départ du disque actuellement lu et écrit (la longueur totale est de 32 bits, octet de poids faible en premier) * /
VAR_LBA_CURRENT             = $58

; / * L'adresse LBA du secteur où se trouvent les informations du répertoire de fichiers en cours (longueur totale 32 bits, octet de poids faible en premier) * /
VAR_FAT_DIR_LBA             = $5C

; / * Le numéro de cluster de départ du fichier ou du répertoire (dossier) actuel (longueur totale 32 bits, octet de poids faible en premier) * /
VAR_START_CLUSTER           = $60

; / * Le numéro de cluster actuel du fichier actuel (la longueur totale est de 32 bits, octet de poids faible en premier) * /
VAR_CURRENT_CLUST           = $64

; / * La longueur du fichier actuel (la longueur totale est de 32 bits, octet de poids faible en premier) * /
VAR_FILE_SIZE               = $68

; / * Le pointeur de fichier actuel, le décalage d'octet de la position actuelle de lecture et d'écriture (longueur totale 32 bits, octet de poids faible en premier) * / 
VAR_CURRENT_OFFSET          = $6C
