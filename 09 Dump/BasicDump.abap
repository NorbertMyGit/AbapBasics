*&---------------------------------------------------------------------*
*& Report  ZPR_DUMP_01
*&
*&---------------------------------------------------------------------*
* To check a DUMP go to transaction: ST22
* In ABAP, a dump is an error that occurs during the execution of a program or transaction.
* There are several types of dumps in ABAP, each of which provides information about the type of error that has occurred. Here are some examples of different types of ABAP dumps:
*
*
* ABAP Runtime Error (short dump) - This type of dump occurs when there is a problem with the syntax or logic of a program. Examples of ABAP Runtime Errors include:
*   SYNTAX_ERROR
*   INVALID_TYPE_CONVERSION
*   OBJECTS_OBJREF_NOT_ASSIGNED
*   CX_PARAMETER_INVALID_RANGE
* System Errors (system dump) - This type of dump occurs when there is a problem with the underlying operating system or hardware. Examples of System Errors include:
*   MESSAGE_TYPE_X
*   ABAP/4 processor: SAPSQL_ARRAY_INSERT_DUPREC
* Memory-related Dumps - This type of dump occurs when there is a problem with the memory allocation or deallocation. Examples of Memory-related dumps include:
*   MEMORY_NO_MORE_PAGING
*   STORAGE_PARAMETERS_WRONG_SET
* Time-Outs (time-out dump) - This type of dump occurs when a transaction or program takes longer than the allowed time to execute. Examples of Time-Outs include:
*   TIME_OUT
*   SAPSQL_ARRAY_INSERT_DUPREC
* Communication Errors (communication dump) - This type of dump occurs when there is a problem with communication between different systems. Examples of Communication Errors include:
*   SYSTEM_FAILURE
*   RFC_ERROR_COMMUNICATION_FAILURE
*
* When a dump occurs, an error message is displayed on the screen with information about the type of error,
* he program that caused the error, and the location of the error in the program.
* ABAP dumps can be helpful for developers and support personnel to identify and troubleshoot problems in ABAP programs.
**&
*&---------------------------------------------------------------------*
REPORT zpr_dump_01.

PARAMETERS: p_num TYPE int1.
PARAMETERS: p_num2 TYPE int1.
" => this would cause a dump, since the data type is not correct
*PARAMETERS: p_num2 TYPE c.

DATA: lv_num  TYPE i.
DATA: lv_num2 TYPE i.
DATA: lv_sum  TYPE int1.

" this would cause a dump, since lv_num is numeric, 'ABC' is a string
*lv_num = 'ABC'.
START-OF-SELECTION.
  CALL FUNCTION 'Z_PR_BASIC_FUNCTION'
    EXPORTING
      iv_num  = p_num
      iv_num2 = p_num2
    IMPORTING
      ev_sum  = lv_sum
      " this would cause a dump in case the sum is bigger than 10
      " and this peace of code is hidden
*  EXCEPTIONS
*     error   = 1
*     others  = 2
    .
  IF sy-subrc EQ 0.
    WRITE: / 'The sum is:' , lv_sum.
  ENDIF.
