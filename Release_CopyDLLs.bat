@echo off

copy C:\d\Slcr\SCVR\bin\Release\ITKVideoBridgeOpenCV-5.0.dll C:\d\Slcr\SCVR\inner-build\lib\Slicer-4.11\qt-loadable-modules\Release /Y
copy C:\d\Slcr\SCVR\OpenCV-install\x64\vc14\bin\opencv_ffmpeg346_64.dll C:\d\Slcr\SCVR\inner-build\lib\Slicer-4.11\qt-loadable-modules\Release /Y

copy C:\d\Slcr\SIGSIOR\bin\Release\*.dll C:\d\Slcr\SIGSIOR\inner-build\lib\Slicer-4.11\qt-loadable-modules\Release /Y

copy C:\d\Slcr\SOIGTR\bin\Release\*.dll C:\d\Slcr\SOIGTR\inner-build\lib\Slicer-4.11\qt-loadable-modules\Release /Y

copy C:\d\Slcr\SVRR\OpenVR\bin\win64\openvr_api.dll C:\d\Slcr\SVRR\inner-build\lib\Slicer-4.11\qt-loadable-modules\Release /Y
copy C:\d\Slcr\SVRR\bin\Release\*.dll C:\d\Slcr\SVRR\inner-build\lib\Slicer-4.11\qt-loadable-modules\Release /Y

copy C:\d\Slcr\SCVR\OpenCV-install\Lib\site-packages\cv2.cp36-win_amd64.pyd C:\d\Slcr\SCVR\inner-build\lib\Slicer-4.11\qt-loadable-modules\Release /Y