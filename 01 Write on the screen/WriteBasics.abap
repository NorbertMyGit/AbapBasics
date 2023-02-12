*&---------------------------------------------------------------------*
*& Report  ZPR_WRITE_01
*&
*&---------------------------------------------------------------------*
*& How to use the WRITE statement?
*& Which possibilities do you have to write on the screen?
*&---------------------------------------------------------------------*
REPORT zpr_write_01.

TYPES: BEGIN OF ty_employee,
         name         TYPE text40,
         age          TYPE i,
         workinghours TYPE i,
       END OF ty_employee.

DATA: lt_employee TYPE TABLE OF ty_employee.
DATA: ls_employee TYPE ty_employee.

DATA: name TYPE string VALUE 'John Doe'.


WRITE: / 'Hello'.

WRITE: / 'Hello World'.

WRITE: / 'Hello', / 'World'.

WRITE: / 'Hello', name,'!'.


WRITE: / name COLOR COL_HEADING, ' is a great person!'.

ls_employee-age = 40.
ls_employee-name = 'John Doe'.
ls_employee-workinghours = 40.
APPEND ls_employee TO lt_employee.

ls_employee-age = 26.
ls_employee-name = 'Catharin'.
ls_employee-workinghours = 30.
APPEND ls_employee TO lt_employee.

ls_employee-age = 32.
ls_employee-name = 'Micheal'.
ls_employee-workinghours = 50.
APPEND ls_employee TO lt_employee.


WRITE: /'Name', 50'Age', 62'Working hours'.
LOOP AT lt_employee INTO ls_employee.
  WRITE: / ls_employee-name, ls_employee-age, ls_employee-workinghours.
ENDLOOP.
