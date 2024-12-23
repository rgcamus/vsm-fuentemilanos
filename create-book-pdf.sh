#!/usr/bin/env sh
# Docker image: https://hub.docker.com/r/asciidoctor/docker-asciidoctor
# Docker image repository: https://github.com/asciidoctor/docker-asciidoctor

# The directory where the book source is located
BOOK_SOURCE_DIR=book
# The directory where the book's generated output files will be created
BOOK_BUILD_DIR=build

GS=/usr/bin/gs
# -a optimize=PDF/A-3 \

 
docker run --rm -v $(pwd):/documents/ asciidoctor/docker-asciidoctor \
    asciidoctor-pdf \
    -D $BOOK_BUILD_DIR \
     -a pdf-themesdir=$BOOK_SOURCE_DIR/themes \
     -a pdf-theme=$1 \
     -a pdf-fontsdir=$BOOK_SOURCE_DIR/fonts \
     -a compress \
    $BOOK_SOURCE_DIR/index.adoc
