.PHONY: all ja en clean

LATEXMK = latexmk -lualatex -interaction=nonstopmode -halt-on-error -outdir=build

all: ja en

ja:
	$(LATEXMK) src/sovereign_accounting_ja.tex
	cp build/sovereign_accounting_ja.pdf sovereign_accounting_ja.pdf
	cp sovereign_accounting_ja.pdf sovereign_accounting.pdf

en:
	$(LATEXMK) src/sovereign_accounting_en.tex
	cp build/sovereign_accounting_en.pdf sovereign_accounting_en.pdf

clean:
	rm -rf build/*.aux build/*.log build/*.out build/*.toc build/*.fls build/*.fdb_latexmk texput.log
