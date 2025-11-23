#define CH376_LIB_VERSION_2023_4 0x00
#define CH376_LIB_VERSION_2024_1 0x01
#define CH376_LIB_VERSION_2024_2 0x02
#define CH376_LIB_VERSION_2025_4 0x03

/*/// "CH376 interface commands and constants" */

// Commands
#define CH376_CMD_NONE          0x00
#define CH376_CMD_GET_IC_VER    0x01
#define CH376_CMD_ENTER_SLEEP   0x03
#define CH376_CMD_SET_USB_SPEED 0x04
#define CH376_CMD_RESET_ALL     0x05
#define CH376_CMD_CHECK_EXIST   0x06
#define CH376_CMD_GET_REGISTER  0x0A
#define CH376_CMD_GET_DEV_RATE  0x0A // ???
#define CH376_CMD_SET_REGISTER  0x0B
#define CH376_CMD_WRITE_VAR8    0x0B
#define CH376_CMD_GET_FILE_SIZE 0x0C
#define CH376_CMD_READ_VAR32    0x0C
#define CH376_CMD_WRITE_VAR32   0x0D
#define CH376_CMD_DELAY_100US   0x0F
#define CH376_SET_USB_ADDR      0x13
#define CH376_CMD_SET_USB_MODE  0x15
#define CH376_CMD_TEST_CONNECT  0x16
#define CH376_CMD_ABORT_NAK     0x17
#define CH376_CMD_SET_EP0_RX    0x18
#define CH376_CMD_SET_EP0_TX    0x19
#define CH376_CMD_SET_EP1_RX    0x1A
#define CH376_CMD_SET_EP1_TX    0x1B
#define CH376_CMD_SET_EP2_RX    0x1C
#define CH376_CMD_SET_EP2_TX    0x1D
#define CH376_CMD_GET_STATUS    0x22
#define CH376_CMD_UNLOCK_USB    0x23
#define CH376_DIRTY_BUFFER      0x25
#define CH376_CMD_RD_USB_DATA0  0x27
#define CH376_CMD_RD_USB_DATA_UNLOCK     0x28
#define CH376_CMD_WR_EP0        0x29 // DATA3
#define CH376_CMD_WR_EP1        0x2A // DATA5
#define CH376_CMD_WR_EP2        0x2B // DATA7
#define CH376_WR_USB_DATA       0x2C
#define CH376_CMD_WR_REQ_DATA   0x2D
#define CH376_OFS_DATA          0x2E
#define CH376_CMD_SET_FILE_NAME 0x2F
#define CH376_CMD_DISK_CONNECT  0x30
#define CH376_CMD_DISK_MOUNT    0x31
#define CH376_CMD_FILE_OPEN     0x32
#define CH376_CMD_FILE_ENUM_GO  0x33
#define CH376_CMD_FILE_CREATE   0x34
#define CH376_CMD_FILE_ERASE    0x35
#define CH376_CMD_FILE_CLOSE  	0x36
#define CH376_CMD_DIR_INFO_READ 0x37
#define CH376_DIR_INFO_SAVE     0x38
#define CH376_CMD_BYTE_LOCATE   0x39
#define CH376_CMD_BYTE_READ     0x3A
#define CH376_CMD_BYTE_RD_GO    0x3B
#define CH376_CMD_BYTE_WRITE    0x3C
#define CH376_CMD_BYTE_WR_GO    0x3D
#define CH376_DISK_CAPACITY     0x3E
#define CH376_CMD_DISK_QUERY    0x3F
#define CH376_CMD_DIR_CREATE    0x40
#define CH376_CMD_CLR_STALL     0x41
#define CH376_CMD_SET_ADDR      0X45
#define CH376_CMD_GET_DESCR     0x46
#define CH376_CMD_SET_CONFIG    0x49
#define CH376_SEC_READ          0x4B
#define CH376_SEC_WRITE         0x4C
#define CH376_CMD_AUTO_SETUP    0x4D
#define CH376_CMD_ISSUE_TKN_X   0x4E
#define CH376_CMD_DISK_RD_GO    0x55
#define CH376_DISK_WRITE        0x56
#define CH376_DISK_WR_GO        0x57
#define CH376_DISK_INQUIRY      0x58
#define CH376_DISK_READY        0x59
#define CH376_DISK_R_SENSE      0x5A
#define CH376_RD_DISK_SEC       0x5B
#define CH376_WR_DISK_SEC       0x5C
#define CH376_DISK_MAX_LUN      0x5D

#define CH376_ARG_SET_USB_MODE_INVALID       0x00
#define CH376_USB_MODE_DEVICE_OUTER_FW       0x01
#define CH376_USB_MODE_DEVICE_INNER_FW       0x02
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

#define CH376_INT_SUCCESS        0x14
#define CH376_USB_INT_CONNECT 	 0x15
#define CH376_USB_INT_DISCONNECT 0x16
#define CH376_USB_INT_BUF_OVER 	 0x17
#define CH376_USB_INT_USB_READY  0x18
#define CH376_INT_DISK_READ      0x1D
#define CH376_USB_INT_DISK_WRITE 0x1E
#define CH376_INT_DISK_WRITE     0x1F

#define CH376_RET_SUCCESS       0x51
#define CH376_RET_ABORT         0x5F


/* Informations de base du système actuel */
/* Le bit 6 est utilisé pour indiquer la sous-classe du périphérique de stockage USB SubClass-Code, le bit 6 est 0 pour indiquer que la sous-classe est 6 et le bit 6 est 1 pour indiquer que la sous-classe est différente de 6 */
/* Le bit 5 est utilisé pour indiquer l'état de la configuration USB en mode périphérique USB et l'état de la connexion du périphérique USB en mode hôte USB */
/* En mode périphérique USB, si le bit 5 est 1, la configuration USB est terminée et les bits 5 et 0 ne sont pas configurés */
/* En mode hôte USB, si le bit 5 est 1, il y a un périphérique USB dans le port USB, et si le bit 5 est 0, il n'y a pas de périphérique USB dans le port USB */
/* Le bit 4 est utilisé pour indiquer l'état de verrouillage du tampon en mode périphérique USB. Le bit 4 est 1 signifie que le tampon USB est verrouillé et le bit 6 est 1 signifie qu'il a été libéré */
/* Autres bits, réservés, veuillez ne pas modifier */
#define VAR_SYS_BASE_INFO           0x20

/* Nombre de tentatives d'opération de transaction USB */
/* Si le bit 7 est 0, il ne réessayera pas lorsque NAK est reçu, le bit 7 est 1 et le bit 6 est 0, et réessayera à l'infini lors de la réception de NAK (vous pouvez utiliser la commande CMD_ABORT_NAK pour abandonner la nouvelle tentative), le bit 7 est 1 et 6 est 1 Réessayez au plus 3 secondes lors de la réception de NAK */
/* Bit 5 ~ Bit 0 représente le nombre de tentatives après l'expiration du délai */
#define VAR_RETRY_TIMES             0x25

/* Indicateur de bit en mode fichier hôte */
/* Bit 1 et Bit 0, l'indicateur du système de fichiers FAT du disque logique, 00-FAT12, 01-FAT16, 10-FAT32, 11-illégal */
/* Bit 2, indique si les données de la table FAT dans le tampon courant ont été modifiées, 0-non modifié, 1-modifié */
/* Bit 3, la longueur du fichier doit être modifiée, le fichier actuel est ajouté avec les données, 0-Aucune modification n'est pas ajoutée, 1-Ajouté et doit être modifié */
/* Autres bits, réservés, veuillez ne pas modifier */
#define VAR_FILE_BIT_FLAG           0x26

/* État du disque et du fichier en mode fichier hôte */
/* Indicateur de bit de la carte SD en mode fichier hôte */
#define VAR_SD_BIT_FLAG             0x30
/* Bit 0, version de la carte SD, 0- prend uniquement en charge la première version SD, 1- prend en charge la deuxième version SD */
/* Bit 1, reconnaissance automatique, carte 0-SD, carte 1-MMC */
/* Bit 2, identification automatique, carte SD de capacité standard 0, carte SD 1 grande capacité (HC-SD) */
/* Bit 4, délai d'expiration de la commande ACMD41 */
/* Bit 5, délai d'expiration de la commande CMD1 */
/* Bit 6, délai d'expiration de la commande CMD58 */
/* Autres bits, réservés, veuillez ne pas modifier */
#define VAR_DISK_STATUS             0x2B

/* L'indicateur de synchronisation du point de terminaison BULK-IN / BULK-OUT du périphérique de stockage USB */
/* Bit 7, indicateur de synchronisation de point de terminaison en bloc */
/* Bit 6, indicateur de synchronisation de point de terminaison en bloc */
/* Bit 5 ~ Bit 0, doit être 0 */
#define VAR_UDISK_TOGGLE            0x31

/* Le numéro d'unité logique du périphérique de stockage USB */
/* Bit 7 ~ Bit 4, le numéro d'unité logique actuel du périphérique de stockage USB, après que CH376 initialise le périphérique de stockage USB, la valeur par défaut est d'accéder à 0 # unité logique */
/* Bit 3 ~ Bit 0, le numéro d'unité logique maximum du périphérique de stockage USB, plus 1 est égal au nombre d'unités logiques */
#define VAR_UDISK_LUN               0x34

/* Le nombre de secteurs par cluster du disque logique */
#define VAR_SEC_PER_CLUS            0x38
/* Le numéro d'index des informations de répertoire de fichiers en cours dans le secteur */
#define VAR_FILE_DIR_INDEX          0x3B

/* Le décalage de secteur du pointeur de fichier actuel dans le cluster, 0xFF pointe vers la fin du fichier, la fin du cluster */
#define VAR_CLUS_SEC_OFS            0x3C

/* Variable 32 bits / 4 octets */
/* Pour les disques FAT16, c'est le nombre de secteurs occupés par le répertoire racine, et pour les disques FAT32, c'est le numéro de cluster de départ du répertoire racine (longueur totale 32 bits, octet de poids faible en premier) */
#define VAR_DISK_ROOT               0x44

/* Le nombre total de clusters du disque logique (la longueur totale est de 32 bits, octet de poids faible en premier) */
#define VAR_DSK_TOTAL_CLUS          0x48

/* Le numéro de secteur absolu de départ du disque logique LBA (longueur totale 32 bits, octet de poids faible en premier) */
#define VAR_DSK_START_LBA           0x4C

/* LBA de départ de la zone de données du disque logique (la longueur totale est de 32 bits, octet de poids faible en premier) */
#define VAR_DSK_DAT_START           0x50

/* LBA correspondant aux données du tampon de données actuel du disque (longueur totale 32 bits, octet de poids faible en premier) */
#define VAR_LBA_BUFFER              0x54

/* L'adresse LBA de départ du disque actuellement lu et écrit (la longueur totale est de 32 bits, octet de poids faible en premier) */
#define VAR_LBA_CURRENT             0x58

/* L'adresse LBA du secteur où se trouvent les informations du répertoire de fichiers en cours (longueur totale 32 bits, octet de poids faible en premier) */
#define VAR_FAT_DIR_LBA             0x5C

/* Le numéro de cluster de départ du fichier ou du répertoire (dossier) actuel (longueur totale 32 bits, octet de poids faible en premier) */
#define VAR_START_CLUSTER           0x60

/* Le numéro de cluster actuel du fichier actuel (la longueur totale est de 32 bits, octet de poids faible en premier) */
#define VAR_CURRENT_CLUST           0x64

/* La longueur du fichier actuel (la longueur totale est de 32 bits, octet de poids faible en premier) */
#define VAR_FILE_SIZE               0x68

/* Le pointeur de fichier actuel, le décalage d'octet de la position actuelle de lecture et d'écriture (longueur totale 32 bits, octet de poids faible en premier) */ 
#define VAR_CURRENT_OFFSET          0x6C

unsigned char ch376_check_exist(void);
unsigned char ch376_ic_get_version(void);
void          ch376_set_usb_mode(unsigned char mode);
unsigned char ch376_disk_mount(void);
unsigned int  ch376_seek_file(long position);// 32 bytes

unsigned char ch376_lib_version(void);

unsigned int  ch376_file_get_info(void);

void          ch376_set_file_name(char *filename);
unsigned char ch376_file_open(void);
void          ch376_set_bytes_write(unsigned int value);
void          ch376_set_bytes_read(unsigned int value);
unsigned char ch376_file_create();
unsigned char ch376_dir_create();
unsigned char ch376_file_erase();
// file_close return results of file_close
unsigned char ch376_file_close();

unsigned char ch376_lib_version();

// Since 2024.1
void          ch376_reset_all(void);
unsigned char ch376_wait_response(void);
void          ch376_set_usb_speed(unsigned char speed);
void          ch376_set_usb_addr(unsigned char adress);
void          ch376_set_address(unsigned char adress);
unsigned char ch376_get_descr(unsigned char mode);
void          ch376_set_config(unsigned char config);

// Since 2024.2
void          ch376_get_file_size(void);
void          ch376_disk_query(void);
void          ch376_disk_capacity();
void          ch376_issue_token_x(unsigned char token);
void          ch376_wr_usb_data(char *data);
void          ch376_set_bytes_write(unsigned int nb);
void          ch376_set_bytes_read(unsigned int nb);

void          ch376_delay_100us();

// Since 2025.4
void          ch376_set_register(unsigned char registerid, unsigned char value);
