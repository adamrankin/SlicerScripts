mkdir S4%1
cd S4%1

call ..\Common\Local_Vars.bat

cmake -G "Visual Studio 17 2022" -A x64 -DQt5_DIR:PATH=%qt5_dir% -DSlicer_VTK_VERSION_MAJOR:STRING=9 -DCMAKE_CXX_MP_FLAG:BOOL=ON ..\S4