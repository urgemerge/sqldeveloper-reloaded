# sqldeveloper-reloaded

Provide both the SQL Developer ZIP file and JDK tarball from the Oracle website. After starting the container the init script will extract both files to /opt and run sqldeveloper.sh with JAVA_HOME set.

xhost +local: && docker run --rm -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v <path-to-install-files>:/tmp -v <path-to-persistant-data>:/opt urgemerge/sqldeveloper-reloaded
