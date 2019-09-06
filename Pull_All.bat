@echo off

REM Slicer4
IF EXIST S4 (
  pushd S4
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/Slicer/Slicer.git S4
)

REM Sequences
IF EXIST Seq (
  pushd Seq
  git pull origin master
  popd
) ELSE (
    git clone https://github.com/SlicerRt/Sequences.git Seq
)

REM VASSTAlgorithms
IF EXIST VA (
  pushd VA
  git pull origin master
  popd
) ELSE (
    git clone https://github.com/VASST/VASSTAlgorithms.git VA
)

REM SlicerOpenCV 
IF EXIST SCV (
  pushd SCV
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/Slicer/SlicerOpenCV.git SCV
)

REM SlicerIGT 
IF EXIST SIGT (
  pushd SIGT
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/SlicerIGT/SlicerIGT.git SIGT
)

REM SlicerOpenIGTLink
IF EXIST SOIGT (
  pushd SOIGT
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/openigtlink/SlicerOpenIGTLink.git SOIGT
)

REM SlicerDebuggingTools
IF EXIST SDT (
  pushd SDT
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/SlicerRt/SlicerDebuggingTools.git SDT
)

REM SlicerCamera
IF EXIST SVC (
  pushd SVC
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/VASST/SlicerVideoCameras.git SVC
)

REM SlicerAugmentedReality
IF EXIST SAR (
  pushd SAR
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/VASST/SlicerAugmentedReality.git SAR
)

REM SlicerVASST
IF EXIST SV (
  pushd SV
  git pull origin master
  popd
) ELSE (
  git clone https://github.com/VASST/SlicerVASST SV
)