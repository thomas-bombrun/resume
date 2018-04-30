.PHONY: resume.pdf all clean

all: resume.pdf

resume.pdf: resume.tex
	pdflatex -interaction=nonstopmode -halt-on-error resume.tex

clean:
	rm -f *.out & rm -f *.aux & rm -f *.log
