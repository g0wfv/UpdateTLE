# UpdateTLE
## Update TLE files from multiple web locations and update transponder definitions for Gpredict.
### General info ...
Run updatetle.sh to only update TLE files

Run updatetrsp.sh to only update transponder definitions from Gpredict git repo

Run updateall.sh to do both!

### Configuring ...
updatetle.sh looks for any *xxx*.conf files in the same directory and processes each one accordingly.

The *xxx*.conf file format is as follows ...

```
[base url]
http://somewhere.com/somedirectory/
[files]
file_1.txt
file_2.txt
...
file_n.txt
```
