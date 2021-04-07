@echo off

mkdir Logs

REM Slicer build
pushd S4R/Slicer-build
powershell -command "& { cmake --build . --config Release --target PACKAGE | tee ..\Logs\SlicerRelease_Package_Log.txt }"
popd

REM VASSTAlgorithms build
pushd VAR
powershell -command "& { cmake --build . --config Release --target PACKAGE | tee ..\Logs\VARelease_Package_Log.txt }"
popd

REM SlicerOpenCV build
pushd SCVR
powershell -command "& { cmake --build . --config Release --target PACKAGE | tee ..\Logs\SCVRelease_Package_Log.txt }"
popd

REM SlicerIGT build
pushd SIGTR
powershell -command "& { cmake --build . --config Release --target PACKAGE | tee ..\Logs\SIGTRelease_Package_Log.txt }"
popd

REM SlicerOpenIGTLink build
pushd SOIGTR
powershell -command "& { cmake --build . --config Release --target PACKAGE | tee ..\Logs\SOIGTRelease_Package_Log.txt }"
popd

REM SlicerDebuggingTools build
pushd SDTR
powershell -command "& { cmake --build . --config Release --target PACKAGE | tee ..\Logs\SDTRelease_Package_Log.txt }"
popd

REM SlicerVideoCameras build
pushd SVCR
powershell -command "& { cmake --build . --config Release --target PACKAGE | tee ..\Logs\SVCRelease_Package_Log.txt }"
popd

REM IGSIO build
pushd SIGSIOR
powershell -command "& { cmake --build . --config Release --target PACKAGE | tee ..\Logs\SIGSIORelease_Package_Log.txt }"
popd

REM SlicerVirtualReality build
pushd SVRR
powershell -command "& { cmake --build . --config Release --target PACKAGE | tee ..\Logs\SVRRelease_Package_Log.txt }"
popd

REM SlicerVASST build
pushd SVaR
powershell -command "& { cmake --build . --config Release --target PACKAGE | tee ..\Logs\SVRelease_Package_Log.txt }"
popd

REM SlicerRT build
pushd SRTR
powershell -command "& { cmake --build . --config Release --target PACKAGE | tee ..\Logs\SRTRelease_Package_Log.txt }"
popd

REM SlicerAugmentedReality build
pushd SARR
powershell -command "& { cmake --build . --config Release --target PACKAGE | tee ..\Logs\SARRelease_Package_Log.txt }"
popd

pause