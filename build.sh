#!/usr/bin/env bash
asciidoctor index.adoc
asciidoctor-pdf -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=KaiGenGothicKR index.adoc
mv index.pdf spring-boot-dev-guide.pdf
