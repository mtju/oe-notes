@echo off

del /s /q .\srt*
:: Temporary sort space; session compile storage

del /s /q .\lbi*
:: Local before-image file (subtransaction undo)

del /s /q .\rcd*
:: Cache of r-code being run in a session

:: An abnormal termination can result in some combination of the following dump files:
del /s /q .\procore.*
::     A list of recent ABL (Advanced Business Language) messages, by message number
::     • An ABL procedure stack trace that includes line numbers from the debug listing file within each
::     procedure
::     OpenEdge writes the procore file to a temporary directory, if you specify the Temporary Directory
::     (-T) startup parameter; otherwise, OpenEdge writes the procore file to the current working
::     directory. Refer to Procedures and triggers on page 32.
del /s /q .\protrace.*
::     • A stack trace of the ABL Virtual Machine (AVM) or other OpenEdge process (such as a database
::     server or utility) that terminated abnormally
::     • A stack trace of the executing ABL program itself, where applicable
::     • A list of the persistent procedures or classes that are in memory, with their handle IDs
::     • A list of startup parameters in effect for the ABL session
::     • Symbolic information (when available)
:: • core file
::     • A stack trace of the AVM executing ABL code
::     • Hex representation of the parameters to each routine:: 