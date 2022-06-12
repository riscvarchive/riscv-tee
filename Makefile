.PHONY: default smepmp ssmpu

DEPS := resources/themes/risc-v_spec-pdf.yml $(shell find resources/fonts -type f)

default: all

smepmp: Smepmp/Smepmp.pdf
	echo "Generating Smepmp/Smepmp.pdf"

Smepmp/Smepmp.pdf: ${DEPS} Smepmp/Header.adoc
	asciidoctor-pdf -a pdf-style=resources/themes/risc-v_spec-pdf.yml -a pdf-fontsdir=resources/fonts -a optimize Smepmp/Header.adoc -o Smepmp/Smepmp.pdf

ssmpu: Ssmpu/Ssmpu.pdf
	echo "Generating Ssmpu/Ssmpu.pdf"

Ssmpu/Ssmpu.pdf: ${DEPS} Ssmpu/Header.adoc
	asciidoctor-pdf -a pdf-style=resources/themes/risc-v_spec-pdf.yml -a pdf-fontsdir=resources/fonts -a optimize Ssmpu/Header.adoc -o Ssmpu/Ssmpu.pdf

all: smepmp ssmpu

clean:
	rm Smepmp/Smepmp.pdf Ssmpu/Ssmpu.pdf
