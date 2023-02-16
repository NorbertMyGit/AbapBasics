*&---------------------------------------------------------------------*
*& Report  ZPR_SALV_OUTPUT_01
*&
*&---------------------------------------------------------------------*
*& Basic output with SALV
*&
*&---------------------------------------------------------------------*
REPORT zpr_salv_output_01.

DATA: gt_ekko TYPE STANDARD TABLE OF ekko.
DATA: gr_alv  TYPE REF TO cl_salv_table.

START-OF-SELECTION.

  SELECT *
    FROM ekko
    INTO CORRESPONDING FIELDS OF TABLE gt_ekko
    UP TO 100 ROWS.

  IF sy-subrc EQ 0.
    TRY.
        cl_salv_table=>factory(
          IMPORTING
            r_salv_table   = gr_alv
          CHANGING
            t_table        = gt_ekko
        ).

        gr_alv->get_columns( )->set_optimize( abap_true ).
        gr_alv->display( ).

      CATCH cx_salv_msg.

    ENDTRY.
  ENDIF.
