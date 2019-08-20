mkdir S4R
pushd S4R
cmake -G "Visual Studio 14 2015 Win64" -DQt5_DIR:PATH=D:\Qt\5.12.0\msvc2017_64\lib\cmake\Qt5 -DCMAKE_CXX_MP_FLAG:BOOL=ON -DSlicer_VTK_RENDERING_BACKEND:STRING=OpenGL2 ..\S4
popd

pause