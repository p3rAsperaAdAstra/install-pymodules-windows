@echo off
setlocal enabledelayedexpansion

REM At the time of the initial commit (18.10.2023) the python version where all the packages are compatible was python 3.9
REM List of Python libraries to install
set "modules=matplotlib scipy numpy pandas lxml requests rdkit sympy"


REM Install each module using pip
for %%m in (%modules%) do (
	set "command=pip install %%m"
	!command!
)

endlocal
pause