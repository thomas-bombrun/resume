.PHONY: resume.pdf all clean

all: resume.pdf

resume.pdf: resume.tex
	mkdir _build & pdflatex -interaction=nonstopmode -halt-on-error -output-directory _build resume.tex

clean:
	ls -d  _build/* | grep -v resume.pdf | xargs rm
