smemp:
	asciidoctor-pdf -a pdf-style=resources/themes/risc-v_spec-pdf.yml -a pdf-fontsdir=resources/fonts Smepmp/Header.adoc -o Smepmp/Smepmp.pdf

mpu: mpu/Header.adoc
	asciidoctor-pdf -a pdf-style=resources/themes/risc-v_spec-pdf.yml -a pdf-fontsdir=resources/fonts mpu/Header.adoc -o mpu/mpu.pdf

clean:
	rm Smepmp/Smepmp.pdf mpu/mpu.pdf
