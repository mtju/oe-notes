# Adminserver

## Failed RMI setup.. (8539) error

Check if resolved server name IP (can be checked with ping) matches any of the adapters assigned ip adresses.

In unix try one of these:
```
ifconfig -a
ip link show
ip a
```

Windows:
```
ipconfig
```

If it doesn't match - edit hosts file and try starting adminserver again.

### References
[Starting the AdminServer after changing the network interface causes error 8539 in the AdminServer log file](http://knowledgebase.progress.com/articles/Article/P54660)