resultados.pdf : resultados.tex plot1.pdf plot.pdf
    pdflatex resultados.tex
plot.pdf : plotdatos.py datos.dat
    python plotdatos.py
datos.dat : makedatos.py
    python makedatos.py
plot1.pdf : plotdatos1.py datos1.dat
    python plotdatos1.py    
datos1.dat : a.out
    ./a.out >> datos1. dat
a.out : makedatos1.cpp
    g++ makedatos1.cpp