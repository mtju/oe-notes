The __Profiler Control Tool__ is an unsupported tool which can be used to perform profiler analysis of a Progress based application.

## Profiler handle

Profiler attributes:
* __description__ _char_ init "Unspecified" - Description.
* __directory__ _char_ init -T or CWD - Directory for debug listing files. Accepts only valid one.
* __enabled__ _log_ init false - set profiler:listings or profiler:coverage attributes to true before setting profiler:enabled to true. When set to false after use writes accumulated data to profiler output file and flushes.
* __file-name__ _char_ init "profile.out" - Can't be ?.
* __listings__ _log_ init false - Generates debug listing file (only first time matters). Sources must be in propath.
* __profiling__ _log_ - Turn profiling data recording on/off.
* __trace-filter__ _char_ init ""- CSV of procedure names for detailed timing. Case insensitive, uses matches() function.
* __tracing__ _char_ init "" - CSV of procedure names and listing line numbers corresponding to specific 4GL statements for which the Profiler will record detailed timing information. Format "procedure-name|line-number,procedure-name|line-number". If tracing is set to "" (the empty string), the only tracing information that is recorded is what is specified by the profiler:trace-filter attribute.
* __coverage__ _log_ init false - Record data for coverage analysis. Identifies the statements that could have been executed for any given procedure. Records the information for coverage analysis only the first time an external .p procedure is executed.

Profiler methods:
* __user-data(_char_)__ _log_ - Write data to special section. Return sucess/fail.
* __write-data()__ _log_ - dump recorded data. Return sucess/fail.

## Enable profiling for sessions
-profile profilerSettings.pf
```
-OUTFILE /tmp/profiler.out
-LISTINGS /tmp
-DESCRIBE "Test profiling"
-TRACE-FILTER "*"
```

[The profiler fails if the source files are not accessible. Make sure that all the source files are in the PROPATH.](https://community.progress.com/community_groups/openedge_general/f/26/t/8541)


### Output from PAS session (OE 11.5):
```
.
3 "terminateFreeABLSessions OpenEdge.ApplicationServer.AgentManager" "" 0
4 "stopAgent OpenEdge.ApplicationServer.AgentManager" "" 0
1 "OpenEdge.ApplicationServer.AgentManager" "" 46151
2 "AgentManager OpenEdge.ApplicationServer.AgentManager" "" 0
.
0 0 1 1
0 0 2 1
0 0 3 1
0 0 4 1
.
0 0 1 0.000000 0.444766
1 0 1 0.000051 0.000051
2 0 1 0.000007 0.000041
3 0 1 0.000017 0.444631
4 0 1 0.000010 0.000043
3 27 1 0.000002 0.000002
3 26 1 0.444612 0.444612
4 36 1 0.000001 0.000001
2 39 1 0.000034 0.000034
4 35 1 0.000032 0.000032
2 40 1 0.000000 0.000000
.
.
.

.
```

## References
* http://knowledgebase.progress.com/articles/Article/19495?q=profiler+handle&l=en_US&fs=Search&pn=1
