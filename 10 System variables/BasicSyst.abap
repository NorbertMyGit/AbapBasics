*&---------------------------------------------------------------------*
*& Report ZSZE_ABAP_SYS_99
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsze_abap_sys_99.

WRITE: / sy-uname, sy-datum, sy-uzeit. " actual user, current date, current time
WRITE: / sy-msgid, sy-msgno, sy-msgty, sy-msgv1. " message variables
WRITE: / sy-subrc. " Indicates the success of the last executed command
                   " if it is <> 0 than the command was not successful

WRITE: / sy-sysid. " system id
WRITE: / sy-mandt. " cliend number
WRITE: / sy-ucomm. " actual function code
WRITE: / sy-index. " actual index
WRITE: / sy-tabix. " actual index in an iteration
