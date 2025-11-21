.include "telestrat.inc"
.include "include/ch376.inc"

.export _ch376_ic_get_ver
.import ch376_ic_get_ver

.proc _ch376_ic_get_ver
    ;;@proto unsigned char ch376_ic_get_version(void);
    ;;@brief Get ch376 firmware version
    ;;@returns ch376 firmware version
    ;;Follow next routine
    jmp     ch376_ic_get_ver
.endproc
