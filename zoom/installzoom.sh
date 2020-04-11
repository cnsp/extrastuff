#!/bin/bash

cd ~/Downloads

# download previous installer. default 4.6.8
curl https://zoom.us/client/4.6.19178.0323/ZoomInstaller.pkg

# unpack the contents of the installer into a Zoom directory
pkgutil --expand ZoomInstaller.pgk Zoom

# access the installation Scripts directory 
cd Zoom/Scripts

# run the decompression tool to again unpack the Zoom app
./7zr x zm.7z

# copy the entire zoom.us.app folder into the /Applications directory
cp -R zoom.us.app /Applications/.
