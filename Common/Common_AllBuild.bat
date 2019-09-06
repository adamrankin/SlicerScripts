@echo off

REM Slicer4
IF EXIST S4 (
  IF [%3] == [update_all] (
    pushd S4
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/Slicer/Slicer.git S4
)

REM Slicer4 build
mkdir S4%1
pushd S4%1
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DQt5_DIR:PATH=D:/Qt/5.13.1/msvc2017_64/lib/cmake/Qt5 -DCMAKE_CXX_MP_FLAG:BOOL=ON ../S4
cmake --build . --config %2
popd

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
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../VA
cmake --build . --config %2
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
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DSlicer_CUDA_GENERATION:STRING=Pascal ../SCV
cmake --build . --config %2
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
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../SIGT
cmake --build . --config %2
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
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../SOIGT
cmake --build . --config %2
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
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../SDT
cmake --build . --config %2
popd

REM SlicerVideoCameras
IF EXIST SVC (
  IF [%3] == ["update"] (
    pushd SVC
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/VASST/SlicerVideoCameras.git SVC
)

REM SlicerVideoCameras build
mkdir SVC%1
pushd SVC%1
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DVASSTAlgorithms_DIR:PATH=C:/d/Slcr/VA%1 -DSlicerOpenCV_DIR:PATH=C:/d/Slcr/SCV%1/inner-build -DSlicerIGT_DIR:PATH=C:/d/Slcr/SIGT%1 ../SVC
cmake --build . --config %2
popd

REM Sequences
IF EXIST Seq (
  IF [%3] == ["update"] (
    pushd Seq
    git pull origin master
    popd
  )
) ELSE (
  git clone https://github.com/SlicerRt/Sequences.git Seq
)

REM Sequences build
mkdir Seq%1
pushd Seq%1
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../Seq
cmake --build . --config %2
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
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DSequences_DIR:PATH=C:/d/Slcr/Seq%1 ../SIGSIO
cmake --build . --config %2
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
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../SVR
cmake --build . --config %2
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
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DSlicerIGT_DIR:PATH=C:/d/Slcr/SIGT%1 -DVASSTAlgorithms_DIR:PATH=C:/d/Slcr/VA%1 -DSlicerVirtualReality_DIR:PATH=C:/d/Slcr/SVR%1/inner-build -DSequences_DIR:PATH=C:/d/Slcr/Seq%1/ -DSlicerOpenCV_DIR:PATH=c:/d/Slcr/SCV%1/inner-build ../SV
cmake --build . --config %2
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
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build ../SRT
cmake --build . --config %2
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
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DSlicerRT_DIR:PATH=C:/d/Slcr/SRT%1/inner-build ../SO
cmake --build . --config %2
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
cmake -G "Visual Studio 16 2019 Win64" -T v140 -DSlicer_DIR:PATH=C:/d/Slcr/S4%1/Slicer-build -DVASSTAlgorithms_DIR:PATH=C:/d/Slcr/VA%1 -DSlicerVideoCameras_DIR:PATH=C:/d/Slcr/SVC%1/ ../SL
cmake --build . --config %2
popd

pause