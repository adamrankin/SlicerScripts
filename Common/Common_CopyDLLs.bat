@echo off

copy C:\d\Slcr\SCV%1\bin\%2\ITKVideoBridgeOpenCV-5.0.dll C:\d\Slcr\SCV%1\inner-build\lib\Slicer-4.11\qt-loadable-modules\%2 /Y
copy C:\d\Slcr\SCV%1\OpenCV-install\x64\vc14\bin\opencv_ffmpeg346_64.dll C:\d\Slcr\SCV%1\inner-build\lib\Slicer-4.11\qt-loadable-modules\%2 /Y

copy C:\d\Slcr\SIGSIO%1\bin\%2\*.dll C:\d\Slcr\SIGSIO%1\inner-build\lib\Slicer-4.11\qt-loadable-modules\%2 /Y

copy C:\d\Slcr\SOIGT%1\bin\%2\*.dll C:\d\Slcr\SOIGT%1\inner-build\lib\Slicer-4.11\qt-loadable-modules\%2 /Y

copy C:\d\Slcr\SVR%1\OpenVR\bin\win64\openvr_api.dll C:\d\Slcr\SVR%1\inner-build\lib\Slicer-4.11\qt-loadable-modules\%2 /Y
copy C:\d\Slcr\SVR%1\bin\%2\*.dll C:\d\Slcr\SVR%1\inner-build\lib\Slicer-4.11\qt-loadable-modules\%2 /Y

copy C:\d\Slcr\SCV%1\OpenCV-install\Lib\site-packages\cv2.cp36-win_amd64.pyd C:\d\Slcr\SCV%1\inner-build\lib\Slicer-4.11\qt-loadable-modules\%2 /Y