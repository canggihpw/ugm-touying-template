# UGM Touying Template

An **unofficial** custom presentation template for [Typst](https://typst.app) using the UGM (Universitas Gadjah Mada) brand identity. Converted from the [UGM Beamer template](https://github.com/canggihpw/ugm-beamer-template).

## Quick Start

1. Clone and install fonts:
   ```bash
   git clone https://github.com/canggihpw/ugm-touying-template.git
   cd ugm-touying-template
   cp fonts/*.otf ~/Library/Fonts/    # macOS
   # or: cp fonts/*.otf ~/.fonts/     # Linux
   ```

2. Create a new presentation:
   ```bash
   ./new-presentation.sh my-talk
   cd presentations/my-talk
   ```

3. Edit your slides in `main.typ`.

4. Compile:
   ```bash
   typst compile --font-path ../../fonts main.typ
   # or from the repo root:
   make build
   ```

5. Open `main.pdf`.

## Features

- **UGM brand colors**: Yellow (#f6d648), Blue (#194168), Dark Blue (#00416B)
- **Gama-Sans font family** (included in `fonts/`)
- **Four slide types**: Title, Section divider, Content, Quote
- **Easy customization**: Modify `themes/ugm1/lib.typ` or create your own theme

## Directory Structure

```
ugm-touying-template/
├── main.typ                  # Entry point — compile this
├── Makefile                  # make build / make watch / make clean
├── new-presentation.sh       # Scaffold a new presentation folder
├── contents/
│   └── sample.typ            # Reference sample (not used by main.typ)
├── themes/
│   └── ugm1/
│       ├── lib.typ           # Theme definition (colors, fonts, layouts)
│       └── images/           # UGM brand assets
├── fonts/                    # Gama-Sans font family (OTF)
├── LICENSE
└── README.md
```

## Slide Types

| Slide type | How to use |
|---|---|
| Title slide | `#title-slide(title: [...], subtitle: [...], author: [...], date: [...])` |
| Section divider | `#section-slide([Section Name])` |
| Content slide | `#content-slide(title: [Slide Title], [Content...])` |
| Quote slide | `#quote-slide(["Quote text." - Author])` |

## Compiling

**Option 1 — Font path flag** (portable, no system install needed):
```bash
typst compile --font-path fonts/ main.typ
typst watch --font-path fonts/ main.typ
```

**Option 2 — System font install** (recommended for long-term use):
```bash
# macOS
cp fonts/*.otf ~/Library/Fonts/
# Linux
cp fonts/*.otf ~/.fonts/
fc-cache -fv

# Then just:
typst compile main.typ
```

**Option 3 — Make**:
```bash
make build    # compile once
make watch    # watch and recompile
make clean    # remove build artifacts
```

**Option 4 — VS Code**:
Install the [Typst LSP](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp) extension and configure `--font-path fonts/` in settings.

## Customization

### Colors
Edit in `themes/ugm1/lib.typ`:
```typst
#let ugm-yellow = rgb("#f6d648")
#let ugm-blue = rgb("#194168")
#let ugm-dark-blue = rgb("#00416B")
```

### Fonts
The Gama-Sans font family is in `fonts/`. To use a different font, change:
```typst
#let gama-font = "Your Font Name"
```

### Adding a new theme
1. Create a new directory in `themes/`
2. Copy and modify `themes/ugm1/lib.typ`
3. Import your theme in `main.typ`

## Migrating from LaTeX/Beamer

| Beamer | Typst |
|---|---|
| `\usetheme{ugm1}` | `#import "themes/ugm1/lib.typ": *` |
| `\maketitle` | `#title-slide(...)` |
| `\section{Name}` + `\sectionpage` | `#section-slide([Name])` |
| `\begin{frame}\frametitle{Title}` | `#content-slide(title: [Title], [...])` |
| `\quoteslide{"..."}` | `#quote-slide(["..."])` |
| `latexmk -xelatex main.tex` | `typst compile --font-path fonts/ main.typ` |

## License

MIT — see [LICENSE](LICENSE) for details.
