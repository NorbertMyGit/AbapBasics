*&---------------------------------------------------------------------*
*& Report ZSZE_ABAP_ITAB_00
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsze_abap_itab_00.

" this is the definition of the strucutre
TYPES: BEGIN OF ty_info,
         name            TYPE text20,
         age             TYPE i,
         height          TYPE p DECIMALS 2,
         profession      TYPE text40,
         last_visit_date TYPE datum,
         last_visit_time TYPE uzeit,
       END OF ty_info.

DATA: ls_info TYPE ty_info.
DATA: lt_info TYPE TABLE OF ty_info.

FIELD-SYMBOLS: <fs_info> TYPE ty_info.

START-OF-SELECTION.
  ls_info-name = 'Norbert'.
  ls_info-age = 123.
  ls_info-height = '189.22'.
  ls_info-profession = 'SAP Consultant'.
  ls_info-last_visit_date = sy-datum.
  ls_info-last_visit_time = sy-uzeit.
  APPEND ls_info TO lt_info.

  APPEND INITIAL LINE TO lt_info ASSIGNING <fs_info>.
  <fs_info>-name = 'Emma'.
  <fs_info>-age = 45.
  <fs_info>-height = '171.00'.
  <fs_info>-profession = 'CEO'.
  <fs_info>-last_visit_date = sy-datum - 7.
  <fs_info>-last_visit_time = sy-uzeit.

  APPEND VALUE ty_info(
    name = 'Lewis'
    age = 22
    height = '201.00'
    profession = 'F1 Driver'
    last_visit_date = sy-datum - 35
    last_visit_time = sy-uzeit - 360
  ) TO lt_info.

  LOOP AT lt_info INTO ls_info.
    WRITE: / ls_info-name, ls_info-age, ls_info-height, ls_info-profession, ls_info-last_visit_date, ls_info-last_visit_time.
  ENDLOOP.
