.export _ch376_set_usb_mode
.import ch376_set_usb_mode

.proc _ch376_set_usb_mode
    ;;@proto void          ch376_set_usb_mode(unsigned char mode);
    ;;@brief Set usb mode
    ;;@inputPARAM_mode The usb mode to set
    jmp     ch376_set_usb_mode
.endproc
