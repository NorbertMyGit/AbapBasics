*&---------------------------------------------------------------------*
*& Report  ZPR_DATA_TYPES_01
*&
*&---------------------------------------------------------------------*
*& This is a summary of the data types in ABAP
*& ABAP is strongly-typed programming, which means that all the variables
*& and data structues must have a defined data type.
*& You can create your own data type called domain...
*& and use it in a data element, which you can use in your program
*& Data declaration is with DATA lv_XYZ type DATA_TYPE
*& where XYZ is the some meaningful name for the type
*& and DATA_TYPE is either a predefined SAP type or you data element/structure etc.
*& One Data declaration is without colon DATA lv_index type i.
*& Or multiple declarations are with colon DATA: lv_index  type i,
*&                                               lv_string type string.
*&---------------------------------------------------------------------*
REPORT zpr_data_types_01.

*--------------------------------------------------------------------*
" Character and String
" 1 Character (any letter of the alphabet, number, special character..)
DATA: lv_char   TYPE char1.
" Any character (any letter of the alphabet, number, special character..)
DATA: lv_string TYPE string.
*--------------------------------------------------------------------*
" Numeric data types
DATA lv_int1 TYPE int1.
DATA lv_int2 TYPE int2.
DATA lv_int4 TYPE int4.
DATA lv_dec  TYPE decfloat34.
DATA lv_quan TYPE bstmg.
DATA lv_curr TYPE netpr.
*--------------------------------------------------------------------*
" Date and time
DATA lv_dats TYPE dats.
DATA lv_tims TYPE tims.
*--------------------------------------------------------------------*
" Boolean
DATA lv_flag TYPE flag.
*--------------------------------------------------------------------*
" Structure and internal table
TYPES: BEGIN OF ty_person,
         name TYPE string,
         age  TYPE int2,
       END OF ty_person.

DATA lt_person TYPE TABLE OF ty_person.
DATA ls_person TYPE ty_person.
*--------------------------------------------------------------------*
