.PHONY: default
default: all

smepmp:
	asciidoctor-pdf -a pdf-style=resources/themes/risc-v_spec-pdf.yml -a pdf-fontsdir=resources/fonts -a optimize Smepmp/Header.adoc -o Smepmp/Smepmp.pdf

ssmpu:
	asciidoctor-pdf -a pdf-style=resources/themes/risc-v_spec-pdf.yml -a pdf-fontsdir=resources/fonts -a optimize Ssmpu/Header.adoc -o Ssmpu/Ssmpu.pdf

smtctx:
	asciidoctor-pdf -a pdf-style=resources/themes/risc-v_spec-pdf.yml -a pdf-fontsdir=resources/fonts Smtctx/Header.adoc -o Smtctx/Smtctx.pdf

all: smepmp ssmpu smtctx

clean:
	rm Smepmp/Smepmp.pdf Ssmpu/Ssmpu.pdf Smtctx/Smtctx.pdf
