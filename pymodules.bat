@echo off
setlocal enabledelayedexpansion

REM List of Python libraries to install
set "modules=matplotlib scipy numpy pandas lxml requests rdkit sympy"


REM Install each module using pip
for %%m in (%modules%) do (
	set "command=pip install %%m"
	!command!
)

endlocal
pause