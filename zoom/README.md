# Manually install previous installer packages of Zoom for Mac users

After the recent Zoom update to 4.6.9, some of the features like virtual cameras have stopped working in zoom.  Zoom has not addressed these issues, so the recourse is to uninstall 4.6.9 and re-install a previous version.

---

The following information have been tested on macOS Catalina (Version 10.15.4), but might work for previous macOS also.

To install 4.6.8 version, download installzoom.sh: 

`curl https://github.com/cnsp/extrastuff/blob/master/zoom/installzoom.sh`

then run the install file:

`bash installzoom.sh`


Alternatively, you can download one of the older versions of the install file via Zoom:

- version 4.6.8 (March 23, 2020)
	- https://zoom.us/client/4.6.19178.0323/ZoomInstaller.pkg
- version 4.6.7 (March 1, 2020)
  - https://zoom.us/client/4.6.18176.0301/ZoomInstaller.pkg
- version 4.6.4 (January 19, 2020)
  - https://zoom.us/client/4.6.17383.0119/ZoomInstaller.pkg

After downloading a previous version of the installer, run these command lines in the terminal:

1. unpack the contents of the installer into a Zoom directory

`pkgutil --expand ZoomInstaller.pgk Zoom`

2. access the installation Scripts directory 

`cd Zoom/Scripts`

3. run the decompression tool to again unpack the Zoom app

`./7zr x zm.7z`

4. copy the entire zoom.us.app folder into the /Applications directory

`cp -R zoom.us.app /Applications/.`


