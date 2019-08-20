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
mkdir S4R
pushd S4R
cmake -G "Visual Studio 14 2015 Win64" -DQt5_DIR:PATH=D:/Qt/5.12.0/msvc2017_64/lib/cmake/Qt5 -DCMAKE_CXX_MP_FLAG:BOOL=ON ../S4
cmake --build . --config Release
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
mkdir VAR
pushd VAR
cmake -G "Visual Studio 14 2015 Win64" -DSlicer_DIR:PATH=C:/d/Slcr/S4R/Slicer-build ../VA
cmake --build . --config Release
popd

REM SlicerOpenCV 
IF EXIST SCV (
  IF [%1] == ["update"] (
    pushd SCV
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/Slicer/SlicerOpenCV.git SCV
)

REM SlicerOpenCV build
mkdir SCVR
pushd SCVR
cmake -G "Visual Studio 14 2015 Win64" -DSlicer_DIR:PATH=C:/d/Slcr/S4R/Slicer-build -DSlicer_CUDA_GENERATION:STRING=Pascal ../SCV
cmake --build . --config Release
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
mkdir SIGTR
pushd SIGTR
cmake -G "Visual Studio 14 2015 Win64" -DSlicer_DIR:PATH=C:/d/Slcr/S4R/Slicer-build ../SIGT
cmake --build . --config Release
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
mkdir SOIGTR
pushd SOIGTR
cmake -G "Visual Studio 14 2015 Win64" -DSlicer_DIR:PATH=C:/d/Slcr/S4R/Slicer-build ../SOIGT
cmake --build . --config Release
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
mkdir SDTR
pushd SDTR
cmake -G "Visual Studio 14 2015 Win64" -DSlicer_DIR:PATH=C:/d/Slcr/S4R/Slicer-build ../SDT
cmake --build . --config Release
popd

REM SlicerCamera
IF EXIST SVC (
  IF [%1] == ["update"] (
    pushd SVC
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/VASST/SlicerVideoCameras.git SVC
)

REM SlicerCamera build
mkdir SVCR
pushd SVCR
cmake -G "Visual Studio 14 2015 Win64" -DSlicer_DIR:PATH=C:/d/Slcr/S4R/Slicer-build -DVASSTAlgorithms_DIR:PATH=C:/d/Slcr/VAR -DSlicerOpenCV_DIR:PATH=C:/d/Slcr/SCVR/inner-build ../SVC
cmake --build . --config Release
popd

REM SlicerVirtualReality
IF EXIST SVR (
  IF [%1] == ["update"] (
    pushd SVR
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/KitwareMedical/SlicerVirtualReality.git SVR
)

REM SlicerVirtualReality build
mkdir SVRR
pushd SVRR
cmake -G "Visual Studio 14 2015 Win64" -DSlicer_DIR:PATH=C:/d/Slcr/S4R/Slicer-build ../SVR
cmake --build . --config Release
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
mkdir SARR
pushd SARR
cmake -G "Visual Studio 14 2015 Win64" -DSlicer_DIR:PATH=C:/d/Slcr/S4R/Slicer-build ../SAR
cmake --build . --config Release
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
mkdir SeqR
pushd SeqR
cmake -G "Visual Studio 14 2015 Win64" -DSlicer_DIR:PATH=C:/d/Slcr/S4R/Slicer-build ../Seq
cmake --build . --config Release
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
mkdir SIGSIOR
pushd SIGSIOR
cmake -G "Visual Studio 14 2015 Win64" -DSlicer_DIR:PATH=C:/d/Slcr/S4R/Slicer-build -DSequences_DIR:PATH=C:/d/Slcr/SeqR ../IGSIO
cmake --build . --config Release
popd


REM SlicerVASST
IF EXIST SV (
  IF [%1] == ["update"] (
    pushd SV
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/VASST/SlicerVASST SV
)

REM SlicerVASST build
mkdir SVaR
pushd SVaR
cmake -G "Visual Studio 14 2015 Win64" -DSlicer_DIR:PATH=C:/d/Slcr/S4R/Slicer-build -DSlicerIGT_DIR:PATH=C:/d/Slcr/SIGTR -DVASSTAlgorithms_DIR:PATH=C:/d/Slcr/VAR -DSlicerVirtualReality_DIR:PATH=C:/d/Slcr/SVRR/inner-build -DSequences_DIR:PATH=C:/d/Slcr/SeqR/ -DSlicerOpenCV_DIR:PATH=c:/d/Slcr/SCVR/inner-build ../SV
cmake --build . --config Release
popd


pause