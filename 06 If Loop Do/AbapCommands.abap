*&---------------------------------------------------------------------*
*& Report ZSZE_ABAP_COMMAND_99
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsze_abap_command_99.

DATA: gv_number1 TYPE i.
DATA: gv_number2 TYPE i.
DATA: gv_sum TYPE i.
DATA: gt_ekpo TYPE TABLE OF ekpo.
DATA: gs_ekpo TYPE ekpo.

gv_number1 = 0.
gv_number2 = -5.

gv_sum = gv_number1 + gv_number2.

IF gv_sum < 0. " gv_sum LT 0.
  WRITE: / 'A szám csak pozitív lehet'.
ELSEIF gv_sum <= 10. " gv_sum LE 10.
  WRITE: / 'A szám helyes.'.
ELSE.
  WRITE: / 'A szám túl nagy.'.
ENDIF.


SELECT *
  FROM ekpo
  INTO TABLE gt_ekpo
  UP TO 100 ROWS.

LOOP AT gt_ekpo INTO gs_ekpo.
  WRITE: / gs_ekpo-ebeln, gs_ekpo-ebelp.
ENDLOOP.
