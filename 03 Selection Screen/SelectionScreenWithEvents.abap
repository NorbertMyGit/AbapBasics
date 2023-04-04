*&---------------------------------------------------------------------*
*& Report ZSZE_ABAP_SELSCR_99
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsze_abap_selscr_99.
TABLES: zsze_travel_99.

DATA: gt_travel TYPE TABLE OF zsze_travel_99.
DATA: gs_travel TYPE zsze_travel_99.

SELECT-OPTIONS: s_id FOR zsze_travel_99-req_id.
SELECT-OPTIONS: s_type FOR zsze_travel_99-type.


PARAMETERS: p_car TYPE zsze_travel_99-car_rent AS CHECKBOX.
PARAMETERS: p_rent TYPE zsze_travel_99-car_rent_days.


INITIALIZATION.
  p_car = 'X'.

AT SELECTION-SCREEN OUTPUT.


AT SELECTION-SCREEN.
  IF p_car = 'X' AND p_rent IS INITIAL.
    MESSAGE 'Carrent days is missing' TYPE 'E' DISPLAY LIKE 'E'.
  ENDIF.

START-OF-SELECTION.

  SELECT *
    FROM zsze_travel_99
    INTO TABLE gt_travel
    WHERE req_id IN s_id
      AND type IN s_type.


  LOOP AT gt_travel INTO gs_travel.
    WRITE: / gs_travel-req_id.
  ENDLOOP.
*  WRITE: / p_rent.
