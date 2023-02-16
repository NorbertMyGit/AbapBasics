*&---------------------------------------------------------------------*
*& Report  ZPR_FORM_ROUTINES_01
*&
*&---------------------------------------------------------------------*
*& INCLUDES
*& FORM ROUTINES
*&---------------------------------------------------------------------*
REPORT zpr_form_routines_01.

INCLUDE zpr_form_routines_01_top.
INCLUDE zpr_form_routines_01_f01.

START-OF-SELECTION.

PERFORM calculate_value USING 2 3 CHANGING gv_sum.

WRITE: / gv_sum.

DATA: lv_num1 TYPE i VALUE 3.
DATA: lv_num2 TYPE i VALUE 4.

PERFORM calculate_value USING lv_num1 lv_num2 CHANGING gv_sum.
WRITE: / gv_sum.

ADD 2 TO lv_num1.
ADD 2 TO lv_num2.
PERFORM calculate_value USING lv_num1 lv_num2 CHANGING gv_sum.
WRITE: / gv_sum.
