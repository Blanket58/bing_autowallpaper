@echo off
set P=%cd%
cd %P%\pictures
DIR *.* /B > ..\configs\list.txt
pip list > ..\configs\modules.txt
Rscript ..\bin\scratch.R
cd ..
python .\bin\set.py