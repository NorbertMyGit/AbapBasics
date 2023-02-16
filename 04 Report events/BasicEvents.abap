*&---------------------------------------------------------------------*
*& Report  ZPR_REPORT_EVENTS_01
*&
*&---------------------------------------------------------------------*
*& All important Events in an ABAP Report.
*&
*&---------------------------------------------------------------------*
REPORT zpr_report_events_01.

*& The Load-of-program event  loads the program into memory for execution. Always, Load-of-program is the first event in execution sequence.
LOAD-OF-PROGRAM.

*& Initialization is an event that is used for initialize variables, screen values and other default actions.
INITIALIZATION.

*& One of the selection screen events is used to manipulate dynamic selection-screen changes.
AT SELECTION-SCREEN OUTPUT.

*& It is used to validates the screen input parameter.
*At Selection-Screen on field.

*& This selection screen event allows for a value help or field help  for an input field.
*At Selection-Screen on value request.

*& This selection screen event enables function key F1 help for a input field.
*At Selection-Screen on help request.

*& Selection screen validates various input fields.
AT SELECTION-SCREEN.

*& This is the default event in any ABAP program and is activated whether we use it explicitly or not .
START-OF-SELECTION.

*& This event signals that event of what has been initiated by the start-of-selection event.
END-OF-SELECTION.
