mkdir S4%1
cd S4%1

call ..\Common\Local_Vars.bat

cmake -G "Visual Studio 16 2019" -A x64 -DQt5_DIR:PATH=%qt5_dir% -DCMAKE_CXX_MP_FLAG:BOOL=ON ..\S4