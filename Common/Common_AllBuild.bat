@echo off

mkdir Logs

REM VASSTAlgorithms
IF EXIST VA (
  IF "%3" == "update" (
      pushd VA
      git pull origin master
      popd
  )
) ELSE (
    git clone https://github.com/VASST/VASSTAlgorithms.git VA
)

REM VASSTAlgorithms build
mkdir VA%1
pushd VA%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../VA | tee ..\Logs\VA%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\VA%2_Build_Log.txt }"
popd

REM SlicerOpenCV 
IF EXIST SCV (
  IF [%3] == ["update"] (
    pushd SCV
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/Slicer/SlicerOpenCV.git SCV
)

REM SlicerOpenCV build
mkdir SCV%1
pushd SCV%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DSlicer_CUDA_GENERATION:STRING=Pascal ../SCV | tee ..\Logs\SCV%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\SCV%2_Build_Log.txt }"
popd

REM SlicerIGT 
IF EXIST SIGT (
  IF [%3] == ["update"] (
    pushd SIGT
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/SlicerIGT/SlicerIGT.git SIGT
)

REM SlicerIGT build
mkdir SIGT%1
pushd SIGT%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../SIGT | tee ..\Logs\SIGT%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\SIGT%2_Build_Log.txt }"
popd

REM SlicerOpenIGTLink
IF EXIST SOIGT (
  IF [%3] == ["update"] (
    pushd SOIGT
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/openigtlink/SlicerOpenIGTLink.git SOIGT
)

REM SlicerOpenIGTLink build
mkdir SOIGT%1
pushd SOIGT%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../SOIGT | tee ..\Logs\SOIGT%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\SOIGT%2_Build_Log.txt }"
popd

REM SlicerDebuggingTools
IF EXIST SDT (
  IF [%3] == ["update"] (
    pushd SDT
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/SlicerRt/SlicerDebuggingTools.git SDT
)

REM SlicerDebuggingTools build
mkdir SDT%1
pushd SDT%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../SDT | tee ..\Logs\SDT%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\SDT%2_Build_Log.txt }"
popd

REM SlicerPinholeCameras
IF EXIST SPC (
  IF [%3] == ["update"] (
    pushd SPC
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/VASST/SlicerPinholeCameras.git SPC
)

REM SlicerPinholeCameras build
mkdir SPC%1
pushd SPC%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DVASSTAlgorithms_DIR:PATH=C:/d/Slcr/VA%1 -DSlicerOpenCV_DIR:PATH=C:/d/Slcr/SCV%1/inner-build -DSlicerIGT_DIR:PATH=C:/d/Slcr/SIGT%1 ../SPC | tee ..\Logs\SPC%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\SPC%2_Build_Log.txt }"
popd

REM IGSIO
IF EXIST SIGSIO (
  IF [%3] == ["update"] (
    pushd SIGSIO
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/IGSIO/SlicerIGSIO.git IGSIO
)

REM IGSIO build
mkdir SIGSIO%1
pushd SIGSIO%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DSequences_DIR:PATH=C:/d/Slcr/Seq%1 ../SIGSIO | tee ..\Logs\SIGSIO%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\SIGSIO%2_Build_Log.txt }"
popd

REM SlicerVirtualReality
IF EXIST SVR (
  IF [%3] == ["update"] (
    pushd SVR
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/KitwareMedical/SlicerVirtualReality.git SVR
)

REM SlicerVirtualReality build
mkdir SVR%1
pushd SVR%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../SVR | tee ..\Logs\SVR%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\SVR%2_Build_Log.txt }"
popd

REM SlicerVASST
IF EXIST SV (
  IF [%3] == ["update"] (
    pushd SV
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/VASST/SlicerVASST SV
)

REM SlicerVASST build
mkdir SVa%1
pushd SVa%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DSlicerIGT_DIR:PATH=C:/d/Slcr/SIGT%1 -DVASSTAlgorithms_DIR:PATH=C:/d/Slcr/VA%1 -DSlicerVirtualReality_DIR:PATH=C:/d/Slcr/SVR%1/inner-build -DSequences_DIR:PATH=C:/d/Slcr/Seq%1/ -DSlicerOpenCV_DIR:PATH=c:/d/Slcr/SCV%1/inner-build ../SV | tee ..\Logs\SV%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\SV%2_Build_Log.txt }"
popd

REM SlicerRT
IF EXIST SRT (
  IF [%3] == ["update"] (
    pushd SRT
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/SlicerRt/SlicerRT.git SV
)

REM SlicerRT build
mkdir SRT%1
pushd SRT%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../SRT | tee ..\Logs\SRT%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\SRT%2_Build_Log.txt }"
popd

REM SlicerOsirix
IF EXIST SO (
  IF [%3] == ["update"] (
    pushd SO
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/VASST/SlicerOsirix.git SV
)

REM SlicerOsirix build
mkdir SO%1
pushd SO%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DSlicerRT_DIR:PATH=C:/d/Slcr/SRT%1/inner-build ../SO | tee ..\Logs\SO%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\SO%2_Build_Log.txt }"
popd

REM SlicerLeapMotion
IF EXIST SL (
  IF [%3] == ["update"] (
    pushd SL
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/VASST/SlicerLeapMotion.git SL
)

REM SlicerLeapMotion build
mkdir SL%1
pushd SL%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DVASSTAlgorithms_DIR:PATH=C:/d/Slcr/VA%1 -DSlicerVideoCameras_DIR:PATH=C:/d/Slcr/SPC%1/ -DSlicerOpenCV_DIR:PATH=C:/d/Slcr/SCV%1/ ../SL | tee ..\Logs\SL%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\SL%2_Build_Log.txt }"
popd

REM SlicerAugmentedReality
IF EXIST SAR (
  IF [%3] == ["update"] (
    pushd SAR
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/VASST/SlicerAugmentedReality.git SAR
)

REM SlicerAugmentedReality build
mkdir SAR%1
pushd SAR%1
powershell -command "& { cmake -G \"Visual Studio 16 2019\" -A x64 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DSlicerVirtualReality_DIR:PATH=C:/d/Slcr/SVR%1/inner-build -DSlicerPinholeCameras_DIR:PATH=C:/d/Slcr/SPC%1 ../SA | tee ..\Logs\SAR%2_Configure_Log.txt }"
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\SAR%2_Build_Log.txt }"
popd

pause