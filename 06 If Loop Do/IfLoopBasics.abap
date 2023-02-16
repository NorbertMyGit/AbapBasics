*&---------------------------------------------------------------------*
*& Report  ZPR_IF_LOOP_01
*&
*&---------------------------------------------------------------------*
*& Examples for
*& IF ELSE ENDIF
*& CASE
*& LOOP
*& DO
*& WHILE
*&---------------------------------------------------------------------*
REPORT zpr_if_loop_01.

DATA: lv_number TYPE i VALUE 5.
DATA: lv_flag   TYPE flag.
DATA: lv_index  TYPE i VALUE 1.

" if the value is greater, smaller, equal etc., do that...
IF lv_number < 5.
  WRITE: / 'Less than 5'.
ELSEIF lv_number > 5.
  WRITE: /  'Greater than 5'.
ELSE.
  WRITE: / 'Is equal to: ', lv_number.
ENDIF.

" in case the number is X, do that...
CASE lv_number.
  WHEN 5
    OR 10.
    WRITE: / 'The number is either 5 or 10'.
  WHEN 6.
    WRITE: / 'The number is 6'.
  WHEN OTHERS.
    WRITE: / 'The number is neither 5, 6 or 10'.
ENDCASE.

" select 10 rows from the MARA table
SELECT *
  FROM mara
  INTO TABLE @DATA(lt_mara)
  UP TO 10 ROWS.

" loop at the internal table entries one by one
" and write the MATNR field on the screen
LOOP AT lt_mara INTO DATA(ls_mara).
  WRITE: / ls_mara-matnr.
ENDLOOP.

" DO it N times
DO 3 TIMES.
  WRITE: / lv_number.
  lv_number = lv_number + 1.
ENDDO.

" while the flag stays false
" the loop will not end
WHILE lv_flag = abap_false.
  WRITE: / 'The flag is false'.
  lv_index = lv_index + 1.
*  ADD 1 to lv_index.
  IF lv_index = 2
  OR lv_index > 10.
    lv_flag = abap_true.
  ENDIF.
ENDWHILE.
