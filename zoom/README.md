# How to manually install previous installer packages of Zoom for Mac users


The following information have been tested on macOS Catalina (Version 10.15.4), but might work for previous macOS also.

To install 4.6.8 version, download installzoom.sh, then in your terminal:

`bash installzoom.sh`


Alternatively, you can download one of the older versions of the install file via Zoom:

- version 4.6.8 (March 23, 2020)
	- https://zoom.us/client/4.6.19178.0323/ZoomInstaller.pkg
- version 4.6.7 (March 1, 2020)
  - https://zoom.us/client/4.6.18176.0301/ZoomInstaller.pkg
- version 4.6.4 (January 19, 2020)
  - https://zoom.us/client/4.6.17383.0119/ZoomInstaller.pkg

After downloading a previous version of the installer, run these command lines in the terminal:

- unpack the contents of the installer into a Zoom directory
 `pkgutil --expand ZoomInstaller.pgk Zoom`
- access the installation Scripts directory 
 `cd Zoom/Scripts`
- run the decompression tool to again unpack the Zoom app
 `./7zr x zm.7z`
- move or copy the entire zoom.us.app folder into the /Applications directory
 `cp -R zoom.us.app /Applications/.`


