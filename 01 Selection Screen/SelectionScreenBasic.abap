*&---------------------------------------------------------------------*
*& Report  ZPR_SELECTION_SCREEN_01
*&
*&---------------------------------------------------------------------*
*& This programm shows a basic selection screen
*& with select options and parameters
*&---------------------------------------------------------------------*
REPORT zpr_selection_screen_01.

TABLES: sflight, scarr.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-t01.
SELECT-OPTIONS: s_carrid FOR scarr-carrid.
PARAMETERS: p_seats TYPE s_seatsmax.
SELECTION-SCREEN END OF BLOCK b1.
