# VSM Fuentemilanos 1996

![Portada](https://fuentemilanos.club/_astro/mockup-vsm-fuentemilanos.D3G6VfxJ_emXrx.jpg)

Este proyecto es todavía un trabajo en curso; un esfuerzo por darle una nueva vida a un libro que, os aseguro, merece ser leído por los amantes del vuelo a vela. He reformateado y adaptado el contenido a un estilo digital, manteniendo, en la medida de lo posible, la fidelidad al material original.

No ha sido fácil. La calidad de las imágenes originales no era excelente, y algunas ilustraciones y fotografías eran casi irrecuperables. He intentado mejorar algunas de ellas y he reemplazado las ilegibles por otras, con la esperanza de que reflejen el espíritu del original.

# Iniciador de Libro AsciiDoc

Este es un repositorio de plantilla para escribir libros usando AsciiDoc.

He explorado brevemente otros formatos como Markdown, Latex y Pandoc, pero he encontrado que AsciiDoc es el formato más flexible y poderoso para escribir libros. Es fácilmente legible y escribible para un humano, tiene una sintaxis laxa y un buen conjunto de valores predeterminados para escribir libros, y se puede convertir fácilmente a otros formatos como PDF, ePUB y HTML.

AsciiDoc también es un formato muy poderoso para escribir documentación técnica y se usa ampliamente en la industria de los medios y la publicación de contenido, como en los libros de O'Reilly.

# Conceptos básicos de AsciiDoc y escritura

Una observación importante para comenzar al escribir un libro con AsciiDoc es la noción del lenguaje frente a las implementaciones. AsciiDoc es un lenguaje que pretende ser un marcado semántico ligero. Para generar resultados de AsciiDoc, usamos herramientas de procesador de texto como Asciidoctor, que es gratuito y de código abierto.

Actualícese con la última sintaxis y características de AsciiDoc leyendo la Guía del usuario de AsciiDoc.

# Características

La experiencia de escritura de libros proporciona las siguientes características con este repositorio:

* Generación de tabla de contenido (TOC).
* Capítulos de preludio de plantilla: un Prefacio y un Prólogo.
* Capítulos de plantilla con formato de uso común en libros.
* Los capítulos están estructurados en sus propios directorios de capítulos para  que puedan ubicarse junto con sus imágenes y otros activos, como fragmentos de * código.
* Una salida PDF que usa un tema y se puede personalizar.
* Una salida PDF que usa fuentes personalizadas (familia de fuentes abiertas de  Google). Específicamente, una fuente Open Sans para el texto del cuerpo y una *fuente Source Code Pro para fragmentos de código fuente y código en línea.

# Generación de libros:

No es necesaria una instalación local de Asciidoctor, ya que la generación del libro se realiza a través de Docker.
No es necesaria una configuración especial de CI, ya que la generación del libro se realiza a través de Docker.
Scripts basados ​​en Docker para generar el libro en varios formatos, incluidos PDF, HTML y ePUB.
Introducción al iniciador de libros AsciiDoc
Comenzamos familiarizándonos con la estructura del repositorio y los distintos archivos que forman parte de él.

La estructura del directorio de nivel superior tiene el siguiente aspecto:

```
├── README.md
├── book
│   ├── preface.adoc
│   ├── foreword.adoc
│   ├── index.adoc
│   ├── chapter-01-The-Beginning
│   │   ├── content.adoc
│   ├── chapter-02-The-Rocket
│   │   ├── content.adoc
│   ├── chapter-03-How-Planet-Systems-Work
│   │   ├── content.adoc
│   │   └── images
│   ├── fonts/
│   ├── images/
│   └── themes/
├── create-book-epub.sh
├── create-book-pdf.sh
└── interactive-asciidoctor-shell.sh
```

El directorio book es donde se almacena el contenido del libro:

* El archivo `index.adoc` es el punto de entrada principal del libro y es donde incluimos todos los demás capítulos y capítulos de preludio.
* El directorio `images/` es donde puede almacenar imágenes que se utilizan en el libro.
* Los capítulos se escriben en su propio directorio, y cada directorio de capítulo contiene un archivo content.adoc que es el punto de entrada principal del capítulo, y un directorio images opcional para las imágenes que se utilizan en el capítulo. Esto ayuda a colocar los activos para el mismo capítulo juntos en lugar de tenerlos todos mezclados en un gran directorio.
* En el mismo directorio, encontrará el directorio themes PDF temático y el directorio fonts que contiene las fuentes utilizadas en el libro.

# Generar el libro AsciiDoc

## Construyendo el libro AsciiDoc localmente

Para construir el libro localmente, deberá tener Docker instalado en su máquina. Una vez que tenga Docker instalado, puede ejecutar el siguiente comando para construir el libro en formato PDF:

```fBash
./create-book-pdf.sh basic
```

O bien, genere un libro PDF con temática de modo oscuro:

```Bash
./create-book-pdf.sh dark
```
Luego puede encontrar el archivo PDF generado en el directorio book. Si está en macOS, puede abrirlo con su lector de PDF predeterminado de la siguiente manera:

```Bash
open book/index.pdf
```

# Scripts útiles de AsciiDoc

El repositorio de inicio de libros asciidoc también proporciona algunos scripts útiles para ayudarlo a generar otros formatos de salida de libros y depurar la herramienta asciidoctor:

* `create-book-ePUB.sh` - Genera el libro en formato ePUB.
* `interactive-asciidoctor-shell.sh` - Inicia un shell interactivo dentro de la imagen de Docker con la herramienta asciidoctor instalada.

# Activos del libro AsciiDoc

Los activos estáticos para el libro se almacenan en el directorio book e incluyen lo siguiente:

* El directorio `images` es donde puede almacenar imágenes que se utilizan en el libro. Dentro de este directorio hay una imagen cover.jpeg utilizada para la portada del libro y una space.jpeg utilizada como ejemplo para una imagen en el libro.
* El directorio `fonts` es donde puede almacenar las fuentes que se utilizan en el libro. Actualmente alberga las fuentes Open Sans y Source Code Pro, ambas con su archivo .zip original archivado como descargado del sitio web de Google Fonts, así como extraído cada uno en su propio directorio.

--- 
El autor de esta  plantilla es  Liran Tal liran@lirantal.com