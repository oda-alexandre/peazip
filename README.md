# **<center>PeaZip</center>**


**INTRODUCTION**

*peazip http://www.peazip.org/ via docker*


**PREREQUIS**

*Installer docker*


**INSTALLATION**

copier/coller dans un terminal :

    docker run -d --name peazip -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/peazip -e DISPLAY --network none alexandreoda/peazip


**LICENSE**

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/peazip/blob/master/LICENSE)
