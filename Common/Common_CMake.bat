mkdir S4%1
cd S4%1
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DQt5_DIR:PATH=D:\Qt\5.13.1\msvc2017_64\lib\cmake\Qt5 -DCMAKE_CXX_MP_FLAG:BOOL=ON ..\S4