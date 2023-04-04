*&---------------------------------------------------------------------*
*& Report ZSZE_ABAP_SQL_00
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsze_abap_sql_ins_00.

DATA: gs_travel           TYPE zsze_travel_99.
DATA: gt_travel           TYPE TABLE OF zsze_travel_99.
DATA: gc_req_type_ho      TYPE zsze_abap_type_99   VALUE 'HOMEOFFICE'.
DATA: gc_req_type_Sick    TYPE zsze_abap_type_99   VALUE 'SICK'.
DATA: gc_req_type_holiday TYPE zsze_abap_type_99   VALUE 'HOLIDAY'.
DATA: gc_req_status_new   TYPE zsze_abap_status_99 VALUE 'NEW'.
DATA: gc_req_status_appr  TYPE zsze_abap_status_99 VALUE 'APPROVED'.
DATA: gc_req_status_decl  TYPE zsze_abap_status_99 VALUE 'DECLINED'.


START-OF-SELECTION.

  gs_travel-req_id       = 4.
  gs_travel-req_user     = sy-uname.
  gs_travel-status       = gc_req_status_new.
  gs_travel-type         = gc_req_type_ho.
  gs_travel-date_from    = sy-datum.
  gs_travel-date_to      = sy-datum + 2.
  gs_travel-created_by   = sy-uname.
  gs_travel-created_date = sy-datum.
  gs_travel-created_time = sy-uzeit.
  INSERT INTO zsze_travel_99 VALUES gs_travel.
  COMMIT WORK AND WAIT.

  ROLLBACK WORK.

  DELETE zsze_travel_99 FROM gs_travel.
  COMMIT WORK AND WAIT.

  gs_travel-req_id       = 1.
  gs_travel-req_user     = sy-uname.
  gs_travel-status       = gc_req_status_new.
  gs_travel-type         = gc_req_type_ho.
  gs_travel-date_from    = sy-datum.
  gs_travel-date_to      = sy-datum + 2.
  gs_travel-created_by   = sy-uname.
  gs_travel-created_date = sy-datum.
  gs_travel-created_time = sy-uzeit.
  MODIFY zsze_travel_99 FROM gs_travel.
  COMMIT WORK AND WAIT.

  DELETE FROM zsze_travel_99 WHERE req_id = 1.
  COMMIT WORK AND WAIT.

  gs_travel-req_id       = 1.
  gs_travel-req_user     = sy-uname.
  gs_travel-status       = gc_req_status_new.
  gs_travel-type         = gc_req_type_ho.
  gs_travel-date_from    = sy-datum.
  gs_travel-date_to      = sy-datum + 2.
  gs_travel-created_by   = sy-uname.
  gs_travel-created_date = sy-datum.
  gs_travel-created_time = sy-uzeit.
  INSERT INTO zsze_travel_99 VALUES gs_travel.
  COMMIT WORK AND WAIT.


  gs_travel-status = gc_req_status_appr.
  UPDATE zsze_travel_99 SET status = gs_travel-status WHERE req_id = gs_travel-req_id.
  COMMIT WORK AND WAIT.
