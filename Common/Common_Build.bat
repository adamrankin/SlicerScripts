pushd S4%1
mkdir Logs
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\Slicer_%2_Build_Log.txt }"
popd