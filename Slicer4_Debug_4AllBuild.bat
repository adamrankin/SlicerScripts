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
mkdir S4D
pushd S4D
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DQt5_DIR:PATH=D:/Qt/5.12.0/msvc2017_64/lib/cmake/Qt5 -DCMAKE_CXX_MP_FLAG:BOOL=ON ../S4
cmake --build . --config Debug
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
mkdir VAD
pushd VAD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4D/Slicer-build ../VA
cmake --build . --config Debug
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
mkdir SCVD
pushd SCVD
REM cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4D/Slicer-build -DSlicer_CUDA_GENERATION:STRING=Pascal ../SCV
REM cmake --build . --config Debug
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
mkdir SIGTD
pushd SIGTD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4D/Slicer-build ../SIGT
cmake --build . --config Debug
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
mkdir SOIGTD
pushd SOIGTD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4D/Slicer-build ../SOIGT
cmake --build . --config Debug
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
mkdir SDTD
pushd SDTD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4D/Slicer-build ../SDT
cmake --build . --config Debug
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
mkdir SVCD
pushd SVCD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4D/Slicer-build -DVASSTAlgorithms_DIR:PATH=C:/d/Slcr/VAD -DSlicerOpenCV_DIR:PATH=C:/d/Slcr/SCVD/inner-build -DSlicerIGT_DIR:PATH=C:/d/Slcr/SIGTD ../SVC
cmake --build . --config Debug
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
mkdir SeqD
pushd SeqD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4D/Slicer-build ../Seq
cmake --build . --config Debug
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
mkdir SIGSIOD
pushd SIGSIOD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4D/Slicer-build -DSequences_DIR:PATH=C:/d/Slcr/SeqD ../SIGSIO
cmake --build . --config Debug
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
mkdir SVRD
pushd SVRD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4D/Slicer-build ../SVR
cmake --build . --config Debug
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
mkdir SVaD
pushd SVaD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4D/Slicer-build -DSlicerIGT_DIR:PATH=C:/d/Slcr/SIGTD -DVASSTAlgorithms_DIR:PATH=C:/d/Slcr/VAD -DSlicerVirtualReality_DIR:PATH=C:/d/Slcr/SVRD/inner-build -DSequences_DIR:PATH=C:/d/Slcr/SeqD/ -DSlicerOpenCV_DIR:PATH=c:/d/Slcr/SCVD/inner-build ../SV
cmake --build . --config Debug
popd

REM SlicerRT
IF EXIST SRT (
  IF [%1] == ["update"] (
    pushd SRT
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/SlicerRt/SlicerRT.git SV
)

REM SlicerRT build
mkdir SRTD
pushd SRTD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4D/Slicer-build ../SRT
cmake --build . --config Debug
popd

REM SlicerOsirix
IF EXIST SO (
  IF [%1] == ["update"] (
    pushd SO
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/VASST/SlicerOsirix.git SV
)

REM SlicerOsirix build
mkdir SOD
pushd SOD
cmake -G "Visual Studio 15 2017 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4D/Slicer-build -DSlicerRT_DIR:PATH=C:/d/Slcr/SRTD/inner-build ../SO
cmake --build . --config Debug
popd

pause