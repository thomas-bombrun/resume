.PHONY: resume.pdf all clean

all: resume.pdf

resume.pdf: resume.tex
	mkdir _build & pdflatex -interaction=nonstopmode -halt-on-error -output-directory _build resume.tex

clean:
	ls -d  _build/* | grep -v resume.pdf | xargs rm

watch:
	while inotifywait -e close_write resume.tex; do make clean; make; done
