@echo off

REM Slicer4
IF EXIST S4 (
  pushd S4
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/Slicer/Slicer S4
)

REM VASSTAlgorithms
IF EXIST VA (
  pushd VA
  git pull origin master
  popd
) ELSE (
    git clone https://github.com/VASST/VASSTAlgorithms VA
)

REM SlicerOpenCV 
IF EXIST SCV (
  pushd SCV
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/Slicer/SlicerOpenCV SCV
)

REM SlicerIGT 
IF EXIST SIGT (
  pushd SIGT
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/SlicerIGT/SlicerIGT SIGT
)

REM SlicerOpenIGTLink
IF EXIST SOIGT (
  pushd SOIGT
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/openigtlink/SlicerOpenIGTLink SOIGT
)

REM SlicerDebuggingTools
IF EXIST SDT (
  pushd SDT
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/SlicerRt/SlicerDebuggingTools SDT
)

REM SlicerCamera
IF EXIST SVC (
  pushd SVC
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/VASST/SlicerVideoCameras SVC
)

REM SlicerAugmentedReality
IF EXIST SAR (
  pushd SAR
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/VASST/SlicerAugmentedReality SAR
)

REM SlicerVASST
IF EXIST SV (
  pushd SV
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/VASST/SlicerVASST SV
)