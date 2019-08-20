@echo off

copy C:\d\Slcr\SCVD\bin\Debug\ITKVideoBridgeOpenCV-5.0.dll C:\d\Slcr\SCVD\inner-build\lib\Slicer-4.11\qt-loadable-modules\Debug /Y
copy C:\d\Slcr\SCVD\OpenCV-install\x64\vc14\bin\opencv_ffmpeg346_64.dll C:\d\Slcr\SCVD\inner-build\lib\Slicer-4.11\qt-loadable-modules\Debug /Y

copy C:\d\Slcr\SIGSIOD\bin\Debug\*.dll C:\d\Slcr\SIGSIOD\inner-build\lib\Slicer-4.11\qt-loadable-modules\Debug /Y

copy C:\d\Slcr\SOIGTD\bin\Debug\*.dll C:\d\Slcr\SOIGTD\inner-build\lib\Slicer-4.11\qt-loadable-modules\Debug /Y

copy C:\d\Slcr\SVRD\OpenVR\bin\win64\openvr_api.dll C:\d\Slcr\SVRD\inner-build\lib\Slicer-4.11\qt-loadable-modules\Debug /Y
copy C:\d\Slcr\SVRD\bin\Debug\*.dll C:\d\Slcr\SVRD\inner-build\lib\Slicer-4.11\qt-loadable-modules\Debug /Y

copy C:\d\Slcr\SCVD\OpenCV-install\Lib\site-packages\cv2.cp36-win_amd64.pyd C:\d\Slcr\SCVD\inner-build\lib\Slicer-4.11\qt-loadable-modules\Debug /Y