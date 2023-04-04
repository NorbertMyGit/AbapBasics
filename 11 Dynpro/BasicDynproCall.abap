*&---------------------------------------------------------------------*
*& Report ZSZE_ABAP_DYNPRO_00
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsze_abap_dynpro_00.

INCLUDE zsze_abap_dynpro_00_top.

INCLUDE zsze_abap_dynpro_00_pbo.

INCLUDE zsze_abap_dynpro_00_pai.

START-OF-SELECTION.
  CALL SCREEN 0100.
  


* These codes should be written in the includes above!
* TOP Include Implementation zsze_abap_dynpro_00_top*
*&---------------------------------------------------------------------*
*& Include          ZSZE_ABAP_DYNPRO_00_TOP
*&---------------------------------------------------------------------*

DATA: gv_okcode TYPE syucomm.

* Process Before Output Implementation zsze_abap_dynpro_00_pbo*
*----------------------------------------------------------------------*
***INCLUDE ZSZE_ABAP_DYNPRO_00_PBO.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0100 OUTPUT.
  SET PF-STATUS 'STATUS_0100'.
  SET TITLEBAR 'TITLE_0100'.
ENDMODULE.


* Process After Input Implementation zsze_abap_dynpro_00_pai * 
*----------------------------------------------------------------------*
***INCLUDE ZSZE_ABAP_DYNPRO_00_PAI.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.
  CASE gv_okcode.
    WHEN 'BACK'
      OR 'QUIT'
      OR 'EXIT'.
      LEAVE TO SCREEN 0.
  ENDCASE.
ENDMODULE.
