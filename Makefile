smemp:
	asciidoctor-pdf -a pdf-style=resources/themes/risc-v_spec-pdf.yml -a pdf-fontsdir=resources/fonts Smepmp/Header.adoc -o Smepmp/Smepmp.pdf

clean:
	rm Smepmp/Smepmp.pdf
