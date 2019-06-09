eac_logchecker.exe
==================

This is the CheckLog program for [Exact Audio Copy](http://www.exactaudiocopy.de/)
that can be used to verify logs that are produced. The program must be run either
on Windows or by using wine32. The repo provides a Dockerfile that can be used
to create a Linux environment that can be used to run the program.

Usage:
Windows (or create a [bat file](https://captainrookie.com/how-to-check-if-an-eac-log-file-has-been-edited/)):
```
CheckLog.exe path/to/log_file.log
```

Linux/Mac (with Docker, it will issue some number of warnings initially about X server):
```
docker build . -t eac_logchecker
docker run -it -v path/to/log_files.log:/eac/log_file.log eac_logchecker bash -c "wine CheckLog.exe log_file.log"
```
