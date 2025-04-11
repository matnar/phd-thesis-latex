# Simple Thesis LaTeX Template

This repository provides a customizable LaTeX template for writing a PhD thesis. It is designed to be clean and pre-configured with a curated set of LaTeX packages to handle typical requirements of a doctoral dissertation.


## Features

- Clean title page, abstract, acknowledgments, and declaration pages
- Easily extendable structure: chapters, appendices, bibliography
- Includes commonly needed LaTeX packages

### Included LaTeX Packages
#### Document and Layout
- `inputenc` – UTF-8 encoding support
- `babel` – Language localization (default: American English)
- `fontenc` – Proper font encoding (T1)
- `fancyhdr` – Custom headers and footers
- `setspace` – Line spacing adjustments
- `xcolor` – Support for custom colors
- `titling`, `changepage`, `appendix`, `enumitem` – Document organization and styling

#### Referencing and Hyperlinks
- `hyperref` – Clickable references and PDF metadata
- `nameref` – Named references for sections

#### Figures and Graphics
- `graphicx` – Image inclusion
- `float` – Enhanced float control
- `epstopdf` – EPS to PDF conversion
- `subfig` – Sub-figures within floats

#### Math and Symbols
- `amsmath`, `amssymb`, `amsthm` – Math environments and symbols
- `bm` – Bold math symbols
- `bbold` – Blackboard bold math symbols

#### Tables
- `multirow` – Multirow cells in tables
- `longtable` – Multipage tables
- `tabularx` – Tables with flexible column widths
- `booktabs` – High-quality table formatting

#### Algorithms and Code
- `listings` – Code formatting and syntax highlighting
- `algorithm`, `algpseudocode` – Algorithm and pseudocode environments

### Styling
- `lettrine` – Drop capitals
- `mdframed` – Colored or styled boxes (with TikZ backend)
- `url` – URL formatting

## Structure

```plaintext
phd-thesis-template/
├── main.tex             # Main thesis file
├── img/                 # Images and plots
├── biblio.bib           # BibTeX bibliography
├── mnthesis.cls         # Custom thesis class
└── LICENSE              # GPLv3 license
```

## Getting Started

Clone the repository:

    git clone https://github.com/matnar/phd-thesis-latex.git
    cd phd-thesis-latex

Compile the thesis:

    pdflatex main.tex
    bibtex main
    pdflatex main.tex
    pdflatex main.tex

Start editing the content inside main.tex.

## License

This template is licensed under the GNU General Public License v3.0 (GPLv3). See the [LICENSE](LICENSE) file for details.

## Contributions

This template has been originally designed for writing my personal PhD thesis. 

At the time of writing, a few fully-fledged templates for thesis were available. 

Feel free to fork, improve, and submit pull requests. Contributions and suggestions are welcome!