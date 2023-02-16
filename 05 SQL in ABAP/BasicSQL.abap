*&---------------------------------------------------------------------*
*& Report  ZPR_SQL_01
*&
*&---------------------------------------------------------------------*
*& SQL in ABAP
*& These are some basic SQL queries...
*& with inline declarations as well
*&---------------------------------------------------------------------*
REPORT zpr_sql_01.

TYPES: BEGIN OF ty_material,
         matnr TYPE matnr,
         meins TYPE meins,
       END OF ty_material.
DATA: ls_material TYPE ty_material.
DATA: lt_material TYPE STANDARD TABLE OF ty_material.


DATA: lt_mara  TYPE TABLE OF mara.
DATA: lr_matnr TYPE RANGE OF matnr.

START-OF-SELECTION.
  " select all entries from the table MARA
  SELECT *
     FROM mara
  INTO TABLE lt_mara.

  " select all entries from the table MARA
  " with in-line declaration
  SELECT *
     FROM mara
  INTO TABLE @DATA(lt_mara_inline).

  " select 2 fields of all entries of the MARA table
  SELECT matnr
         meins
    FROM mara
  INTO CORRESPONDING FIELDS OF TABLE lt_mara.

  " select 2 fields of all entries of the MARA table
  " into an internal table with those two fields
  SELECT matnr
         meins
    FROM mara
  INTO CORRESPONDING FIELDS OF TABLE lt_material.

  " same examples just with inline declaration
  SELECT matnr,
         meins
    FROM mara
  INTO TABLE @DATA(lt_material_inline).

  " select a single entry with where operation
  SELECT SINGLE matnr meins
    FROM mara
    INTO ls_material
  WHERE matnr = 'HK_290900'.

  " select a single entry with LIKE operator
  SELECT SINGLE matnr meins
    FROM mara
    INTO ls_material
    WHERE matnr LIKE 'HK%'.

  " select multiple entries with range
  APPEND INITIAL LINE TO lr_matnr ASSIGNING FIELD-SYMBOL(<fs_matnr>).
  <fs_matnr>-sign = 'I'.
  <fs_matnr>-option = 'EQ'.
  <fs_matnr>-low = 'H11'.
  APPEND INITIAL LINE TO lr_matnr ASSIGNING <fs_matnr>.
  <fs_matnr>-sign = 'I'.
  <fs_matnr>-option = 'EQ'.
  <fs_matnr>-low = 'H12'.
  APPEND INITIAL LINE TO lr_matnr ASSIGNING <fs_matnr>.
  <fs_matnr>-sign = 'I'.
  <fs_matnr>-option = 'EQ'.
  <fs_matnr>-low = 'H13'.

  SELECT *
    FROM mara
    INTO TABLE lt_mara_inline
    WHERE matnr IN lr_matnr.

  " select multiple entries with range between
  CLEAR: lr_matnr.
  APPEND INITIAL LINE TO lr_matnr ASSIGNING <fs_matnr>.
  <fs_matnr>-sign   = 'I'.
  <fs_matnr>-option = 'BT'.
  <fs_matnr>-low    = 'H11'.
  <fs_matnr>-high   = 'H14'.

  SELECT *
    FROM mara
    INTO TABLE lt_mara_inline
    WHERE matnr IN lr_matnr.

*  BREAK-POINT.
