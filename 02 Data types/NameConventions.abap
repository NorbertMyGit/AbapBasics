*&---------------------------------------------------------------------*
*& Report ZSZE_ABAP_ITAB_99
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSZE_ABAP_ITAB_99.

DATA: gs_head_data TYPE ZSZE_ABAP_HEAD_DATA_S_99.
DATA: gt_head_data TYPE TABLE OF ZSZE_ABAP_HEAD_DATA_S_99.
DATA: gv_flag      TYPE flag.
DATA: gv_net_amount TYPE netpr.
DATA: gc_status_new TYPE ZSZE_ABAP_STATUS_99 VALUE 'NEW'.
DATA: gc_status_appr TYPE ZSZE_ABAP_STATUS_99 VALUE 'APPROVED'.
DATA: gc_status_decl TYPE ZSZE_ABAP_STATUS_99 VALUE 'DECLINED'.
DATA: gc_req_type_ho      TYPE zsze_abap_type_99 VALUE 'HOMEOFFICE',
      gc_req_type_sick    TYPE zsze_abap_type_99 VALUE 'SICK',
      gc_req_type_holiday TYPE zsze_abap_type_99 VALUE 'HOLIDAY'.

DATA: gs_travel TYPE zsze_travel_99.
DATA: gt_travel TYPE TABLE OF zsze_travel_99.

gs_travel-req_id = 1.
gs_travel-req_user = sy-uname.

gs_head_data-REQ_USER = 1.
gs_head_data-STATUS = gc_status_new.
gs_head_data-TYPE = gc_req_type_sick.
