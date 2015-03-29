ECHO OFF

SET /p SECTIONS=<outline.txt

SET REFERENCES=references.bib
SET TEMPLATE=template.tex
SET CSL=outline.txt

echo "%SECTIONS% , %REFERENCES% , %TEMPLATE% , %CSL%"