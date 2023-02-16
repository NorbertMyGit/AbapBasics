FUNCTION z_pr_basic_function.
*"----------------------------------------------------------------------
*"*"Lokale Schnittstelle:
*"  IMPORTING
*"     REFERENCE(IV_NUM) TYPE  INT1
*"     REFERENCE(IV_NUM2) TYPE  INT1
*"  EXPORTING
*"     REFERENCE(EV_SUM) TYPE  INT1
*"  EXCEPTIONS
*"      ERROR
*"----------------------------------------------------------------------

  ev_sum = iv_num + iv_num2.

  IF ev_sum > 10.
    RAISE error.
  ENDIF.


ENDFUNCTION.
