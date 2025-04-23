@echo off

:: Step 1: Install Miniconda
echo Installing Miniconda...
start /wait "" Miniconda.exe /InstallationType=JustMe /AddToPath=1 /RegisterPython=0 /SILENT

:: Step 2: Initialize Conda
echo Initializing Conda...
call "%USERPROFILE%\Miniconda3\Scripts\conda.exe" init

:: Step 3: Create a Conda Environment
echo Creating Conda environment...
call "%USERPROFILE%\Miniconda3\Scripts\conda.exe" create -y -n myenv python=3.9

:: Step 4: Activate the Environment
echo Activating Conda environment...
call "%USERPROFILE%\Miniconda3\Scripts\activate.bat" myenv

:: Step 5: Install Required Packages
echo Installing required packages...
call conda install -y --file requirements.txt

:: Step 6: Run Your Application
echo Running your application...
python app.py

:: End
echo Done!
cmd /k
