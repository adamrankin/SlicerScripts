@echo off

REM Slicer4
IF EXIST S4 (
  IF [%1] == [update_all] (
    pushd S4
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/Slicer/Slicer.git S4
)

REM Slicer4 build
mkdir S4RD
pushd S4RD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DQt5_DIR:PATH=D:/Qt/5.12.0/msvc2017_64/lib/cmake/Qt5 -DCMAKE_CXX_MP_FLAG:BOOL=ON ../S4
cmake --build . --config RelWithDebInfo
popd

REM VASSTAlgorithms
IF EXIST VA (
  IF "%1" == "update" (
      pushd VA
      git pull origin master
      popd
  )
) ELSE (
    git clone https://github.com/VASST/VASSTAlgorithms.git VA
)

REM VASSTAlgorithms build
mkdir VARD
pushd VARD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4RD/Slicer-build ../VA
cmake --build . --config RelWithDebInfo
popd

REM SlicerIGT 
IF EXIST SIGT (
  IF [%1] == ["update"] (
    pushd SIGT
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/SlicerIGT/SlicerIGT.git SIGT
)

REM SlicerIGT build
mkdir SIGTRD
pushd SIGTRD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4RD/Slicer-build ../SIGT
cmake --build . --config RelWithDebInfo
popd

REM SlicerOpenIGTLink
IF EXIST SOIGT (
  IF [%1] == ["update"] (
    pushd SOIGT
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/openigtlink/SlicerOpenIGTLink.git SOIGT
)

REM SlicerOpenIGTLink build
mkdir SOIGTRD
pushd SOIGTRD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4RD/Slicer-build ../SOIGT
cmake --build . --config RelWithDebInfo
popd

REM SlicerDebuggingTools
IF EXIST SDT (
  IF [%1] == ["update"] (
    pushd SDT
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/SlicerRt/SlicerDebuggingTools.git SDT
)

REM SlicerDebuggingTools build
mkdir SDTRD
pushd SDTRD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4RD/Slicer-build ../SDT
cmake --build . --config RelWithDebInfo
popd

REM SlicerVirtualReality
IF EXIST SVRD (
  IF [%1] == ["update"] (
    pushd SVR
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/KitwareMedical/SlicerVirtualReality.git SVR
)

REM SlicerVirtualReality build
mkdir SVRRD
pushd SVRRD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4RD/Slicer-build ../SVR
cmake --build . --config RelWithDebInfo
popd

REM SlicerAugmentedReality
IF EXIST SAR (
  IF [%1] == ["update"] (
    pushd SAR
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/VASST/SlicerAugmentedReality.git SAR
)

REM SlicerAugmentedReality build
mkdir SARRD
pushd SARRD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4RD/Slicer-build ../SAR
cmake --build . --config RelWithDebInfo
popd

REM Sequences
IF EXIST Seq (
  IF [%1] == ["update"] (
    pushd Seq
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/SlicerRt/Sequences.git Seq
)

REM Sequences build
mkdir SeqRD
pushd SeqRD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4RD/Slicer-build ../Seq
cmake --build . --config RelWithDebInfo
popd

REM IGSIO
IF EXIST SIGSIO (
  IF [%1] == ["update"] (
    pushd SIGSIO
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/IGSIO/SlicerIGSIO.git IGSIO
)

REM IGSIO build
mkdir SIGSIORD
pushd SIGSIORD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4RD/Slicer-build -DSequences_DIR:PATH=C:/d/Slcr/SeqRD ../SIGSIO
cmake --build . --config RelWithDebInfo
popd

pause