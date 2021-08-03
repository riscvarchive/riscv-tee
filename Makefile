.PHONY: default
default: all

smepmp:
	asciidoctor-pdf -a pdf-style=resources/themes/risc-v_spec-pdf.yml -a pdf-fontsdir=resources/fonts Smepmp/Header.adoc -o Smepmp/Smepmp.pdf

ssmpu:
	asciidoctor-pdf -a pdf-style=resources/themes/risc-v_spec-pdf.yml -a pdf-fontsdir=resources/fonts Ssmpu/Header.adoc -o Ssmpu/Ssmpu.pdf

all: smepmp ssmpu

clean:
	rm Smepmp/Smepmp.pdf Ssmpu/Ssmpu.pdf
