@echo off

:main_loop
  tasklist /NH /FI "PID eq %~1" | findstr "%~1" >nul || goto onExit
goto main_loop

:onExit
  cd /d "%~dp2"
  %2
exit