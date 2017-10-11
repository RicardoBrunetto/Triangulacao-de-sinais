all: clear_W
	@echo "Sucesso!"

compile:
	@pdflatex --interaction=batchmode main

clear: compile
	@rm -f *.synctex.gz
	@rm -f *.aux
	@rm -f *.log
	@rm -f *.out
	@rm -f *.blg
	@rm -f *.bbl

clear_W: compile
	@del *.synctex.gz
	@del *.aux
	@del *.log
	@del *.out
	@del *.blg
	@del *.bbl
