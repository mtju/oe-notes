# Logging

## Logging levels

 lvl | name     | Description
-----|----------|-------------------------------------
  0  | None     | Turned off.
  1  | Errors   | All errors despite set entry types.
  2  | Basic    | **Default**.
  3  | Verbose  | Determined by log entry types.
  4  | Extended | Determined by log entry types.

Following specifies logging level 2 for all but the 4GLTrace log entry type, which uses logging level 3:
```
-logentrytypes 4GLTrace:3,DynObjects.*,ProEvents.*
```

## References
[What are the different logging levels for Progress?](http://knowledgebase.progress.com/articles/Article/P96437)
[OpenEdge Deployment: Startup Command and Parameter Reference](https://documentation.progress.com/output/ua/OpenEdge_latest/index.html#page/dpspr/preface.html#)