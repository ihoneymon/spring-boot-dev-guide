#!/usr/bin/env bash
asciidoctor index.adoc -o spring-boot-dev-guide.html
asciidoctor-pdf -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=KaiGenGothicKR index.adoc -o spring-boot-dev-guide.pdf
