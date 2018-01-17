Scripts to put line numbers on a PDF file
=========================================

 This code came from: https://tex.stackexchange.com/questions/18760/add-page-and-line-numbers-to-a-pdf on 16 Jan 2018.
 
 The code was modified in several ways:
 
 # \pgfplotsset{compat=1.14}
 
 # A for loop was introduced (you need to change the loop indices to match
 the pages in the work being decorated).
 
 # The decoration for the line numbers was moved out and font size increased.
 
 Usage
 -----
 
 First run the findlines.sh script on the pdf file.
 Next, run the LaTeX code: 'pdflatex numberlines.tex'
 The output will be in numberlines.pdf

 It may be necessary to respond to some failures with <cr>, for example for pages without any recognized text.

Requirements:
-------------

A proper installation of LateX and of ImageMagick. 

18 Jan 2018


