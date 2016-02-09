# https://community.progress.com/community_groups/openedge_general/w/openedgegeneral/1980.profiler-control-tool
# Right click profile.w -> Run

(new-object System.Net.WebClient).DownloadFile('http://community.progress.com/cfs-file.ashx/__key/communityserver-wikis-components-files/00-00-00-00-15/profiler_5F00_control.zip','ProfilerControl.zip')

Expand-Archive ProfilerControl.zip -dest .\PROFILER

cp .\PROFILER\profile.w .

del ProfilerControl.zip