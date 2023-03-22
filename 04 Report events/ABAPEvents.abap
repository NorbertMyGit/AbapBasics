*&---------------------------------------------------------------------*
*& Report ZSZE_ABAP_EVENTS_00
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsze_abap_events_01.

TABLES: zsze_travel_99.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-t01.
  SELECT-OPTIONS: s_requ FOR zsze_travel_99-req_user,
                  s_reqid FOR zsze_travel_99-req_id.
  PARAMETERS: p_user TYPE zsze_travel_99-created_by.
  PARAMETERS: p_carr TYPE zsze_travel_99-car_rent AS CHECKBOX USER-COMMAND carr.
  PARAMETERS: p_days TYPE zsze_travel_99-car_rent_days MODIF ID sc1.
SELECTION-SCREEN END OF BLOCK b1.


INITIALIZATION.
  " initate values
  p_carr = abap_true.

AT SELECTION-SCREEN OUTPUT.
  " influencing the screen
  LOOP AT SCREEN.
    IF screen-group1 = 'SC1'.
      IF p_carr EQ abap_true.
        screen-active = 1.
      ELSE.
        screen-active = 0.
      ENDIF.
    ENDIF.
    MODIFY SCREEN.
  ENDLOOP.


AT SELECTION-SCREEN.
  " validation
  IF p_carr = abap_true AND p_days is INITIAL.
    MESSAGE 'Autóbérlés napok száma nem maradhat üresen' TYPE 'I' DISPLAY LIKE 'E'.
  ENDIF.

START-OF-SELECTION.
  " business logic
  " SELECT AND MAPPING

END-OF-SELECTION.
  " output the data
  " WRITE/ALV/Dynpro
