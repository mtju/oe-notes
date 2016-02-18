# mergeprop tool

A tool for scripting edits to *.properties files.
* Creates backups by default.
* You can only perform group-level deletions.

### Switches

* -type
  * ubroker _(ubroker.properties)_
  * database _(conmgr.properties)_
  * tools _(JavaTools.properties)_
  * plugin _(AdminServerPlugins.properties)_
* -action
  * update _(default - creates if not present in properties)_
  * create
  * delete
  * list/listall _UBroker.AS.asbroker2_
* -delta _Path to delta file_

# Examples
## Update

Update PAS properties:
```
mergeprop -type none -action update -target `pwd`/openedge.properties -delta `pwd`/delta.txt
```

Sample PAS delta:
```
[AppServer.Agent.pas2]
    PROPATH=/home/user/some/app,${DLC}/tty,${DLC}/tty/netlib/OpenEdge.Net.pl

[AppServer.SessMgr]
    agentStartupParam=-T "${catalina.base}/temp" -db /db/app -H host -S 2000

[AppServer.SessMgr.pas2]
    agentStartupParam=-T "${catalina.base}/temp" -db /db/app -H host -S 2000
```

## Validate

PAS
```
mergeprop -delta `pwd`/openedge.properties -validate -type none -target mergeprop -delta `pwd`/openedge.properties -nobackup
```

To validate an existing ubroker.properties file, use following syntax:
```
mergeprop -delta %dlc%\properties\ubroker.properties -validate -type ubroker -nobackup
```

## References
* [Mergeprop utility overview](http://documentation.progress.com/output/ua/OpenEdge_latest/index.html#page/gsins/mergeprop-utility-overview.html)
* http://knowledgebase.progress.com/articles/Article/P116259?q=mergeprop&l=en_US&fs=Search&pn=1