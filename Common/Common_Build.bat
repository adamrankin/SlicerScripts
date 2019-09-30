mkdir Logs
pushd S4%1
powershell -command "& { cmake --build . --config %2 | tee ..\Logs\Slicer_%2_Build_Log.txt }"
popd