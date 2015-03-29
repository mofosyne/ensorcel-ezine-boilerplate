ECHO OFF
ECHO This is a simple alternative to the linux makefile
ECHO This simply removes and regenerate the build folder for html output

SET COMMAND=%1%

ECHO "COMMAND: %COMMAND%"

call win_make_settings.bat

rmdir build /S /q
mkdir build

ECHO ON

IF "%COMMAND%"=="html" pandoc -S --mathjax="http://cdn.mathjax.org/mathjax/latest/MathJax.js" --section-divs -s --biblatex --toc -N --bibliography=%REFERENCES% -o ./build/example.html -t html --normalize %SECTIONS%

IF "%COMMAND%"=="pdf" markdown2pdf --toc -N --bibliography=%REFERENCES% -o ./build/example.pdf --csl=./csl/%CSL%.csl --template=%TEMPLATE% %SECTIONS%

IF "%COMMAND%"=="epub" pandoc -S -s --biblatex --toc -N --bibliography=%REFS% -o ./build/example.epub -t epub --normalize %SECTIONS%