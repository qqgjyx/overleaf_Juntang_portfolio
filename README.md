# CMU Portfolio LaTeX

A professional portfolio document compiling research projects, software tools, and academic work into a polished 10-20 page PDF. Designed for graduate applications, job applications, and professional showcasing.

## Overview

This LaTeX portfolio uses LuaLaTeX for modern typography, custom styling for visual appeal, and a modular structure for easy maintenance. The portfolio includes:

- **Research Projects**: Publications, ongoing research, and technical contributions
- **Software Tools**: Open-source packages with substantial impact (GitHub stars, citations)
- **Coursework Projects**: Significant academic projects demonstrating technical depth
- **Visualizations**: High-quality figures showcasing data analysis and modeling skills
- **Personal Projects**: Creative and practical applications of programming

## Prerequisites

### Required Software

1. **TeX Distribution**:
   - **macOS**: Install [MacTeX](https://www.tug.org/mactex/) (full distribution)
   - **Linux**: Install TeX Live (`sudo apt-get install texlive-full`)
   - **Windows**: Install [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)

2. **latexmk**: Included with modern TeX distributions; automates compilation

3. **LuaLaTeX**: Included with TeX distributions; required for modern font support

### Recommended Fonts

The portfolio uses **Inter** as the primary sans-serif font. Install it for best results:

1. Download Inter from [Google Fonts](https://fonts.google.com/specimen/Inter) or [rsms/inter](https://github.com/rsms/inter)
2. Install the font files (`.ttf` or `.otf`) to your system:
   - **macOS**: Double-click font files and click "Install Font"
   - **Linux**: Copy to `~/.local/share/fonts/` and run `fc-cache -f -v`
   - **Windows**: Right-click font files and select "Install"

**Fallback Fonts**: If Inter is unavailable, the system will use Helvetica Neue or TeX Gyre Heros (built-in).

### Required LaTeX Packages

All packages are included in full TeX distributions. If using a minimal distribution, install:
- `geometry`, `fontspec`, `microtype`, `xcolor`, `graphicx`, `hyperref`
- `enumitem`, `caption`, `float`, `wrapfig`, `tikz`, `fontawesome5`, `qrcode`
- `fancyhdr`, `titlesec`

## Building the Portfolio

### Quick Start

```bash
# Compile to PDF
make pdf

# Clean auxiliary files
make clean
```

### Manual Compilation

If `make` is unavailable:

```bash
latexmk -lualatex -shell-escape -interaction=nonstopmode main.tex
```

### Compilation Options

- **Engine**: LuaLaTeX (required for fontspec and modern fonts)
- **Shell Escape**: Enabled for QR code generation and external tools
- **Interaction Mode**: `nonstopmode` continues compilation past errors for batch processing

### Expected Output

- **File**: `portfolio.pdf` (or `main.pdf` if not renamed)
- **Pages**: 10-20 pages (target range)
- **File Size**: < 25 MB (compress images if larger)

## Project Structure

```
cmu-portfolio-latex/
├── README.md                 # This file
├── Makefile                  # Build automation
├── .latexmkrc                # LaTeX compiler configuration
├── main.tex                  # Main document (includes all sections)
├── styles/
│   └── portfolio.sty         # Custom style package (fonts, colors, macros)
├── sections/
│   ├── 00_cover.tex          # Cover page with contact info
│   ├── 10_research_projects.tex   # Research contributions
│   ├── 20_software_tools.tex      # Open-source tools
│   ├── 30_coursework_projects.tex # Academic projects
│   ├── 40_visualization_modeling.tex  # Visual showcase
│   ├── 50_personal_creative.tex   # Optional creative work
│   └── 99_backpage.tex       # Acknowledgments and contact
└── assets/
    ├── README.md             # Image guidelines
    ├── headshot.jpg          # Your photo
    ├── qr_website.png        # QR codes
    ├── proj_*.png            # Project images
    └── tool_*.png            # Tool screenshots
```

## Customization Guide

### 1. Personal Information

Edit `sections/00_cover.tex` and `sections/99_backpage.tex`:
- Name, affiliation, contact info
- Tagline and bio
- Links to website, GitHub, LinkedIn

### 2. Content Sections

Each section file is standalone and can be edited independently:

- **Research Projects** (`10_research_projects.tex`): Use `\ProjectEntry` macro for consistent formatting
- **Software Tools** (`20_software_tools.tex`): Highlight impact (stars, citations, users)
- **Coursework** (`30_coursework_projects.tex`): Emphasize technical depth and results
- **Visualizations** (`40_visualization_modeling.tex`): Include captions explaining insights
- **Personal** (`50_personal_creative.tex`): Optional; remove if not needed

### 3. Images

Replace placeholder images in `assets/` directory:

```bash
# Required images
assets/headshot.jpg                    # Your photo (square, 800x800px min)
assets/qr_website.png                  # QR to your website
assets/proj_mixing_configurations_1.png
assets/proj_hsi_1.png
assets/proj_eeg_1.png
assets/tool_mheatmap_1.png
assets/tool_pysgtsnepi_1.png
assets/cs316_ui_1.png
assets/cs201_ds_1.png
assets/placeholder_1600x900.png        # Fallback for missing images
```

**Image Guidelines**:
- Format: PNG (charts/diagrams) or JPG (photos)
- Resolution: Minimum 1600px width for landscape images
- File size: < 5 MB per image (compress if needed)
- Aspect ratio: 16:9 or 4:3 for figures

### 4. Colors and Styling

Edit `styles/portfolio.sty`:

```latex
% Change accent color
\definecolor{Accent}{HTML}{2D6CDF}  % Default blue
% Try: {HTML}{D32F2F} for red, {HTML}{388E3C} for green

% Adjust margins
\RequirePackage[margin=1.0in]{geometry}  % Change to 0.75in for more space
```

### 5. Page Limit

Target: **10-20 pages**

If exceeding 20 pages:
1. Reduce images: use 1-2 figures per project instead of 3-4
2. Condense text: prefer bullet points over paragraphs
3. Remove optional section: `50_personal_creative.tex`
4. Adjust font size: change `11pt` to `10pt` in `main.tex` (not recommended)

## Using Reusable Macros

The portfolio provides several macros for consistent formatting:

### Project Entry

```latex
\ProjectEntry
{Project Title}
{Your Role}
{Tech Stack}
{
  \bitem{Bullet point 1}
  \bitem{Bullet point 2}
  \bitem{Bullet point 3}
}
{assets/image.png}
{\extlink{https://github.com/user/repo}{GitHub} \quad \extlink{https://arxiv.org}{Paper}}
{\badge{Tag1} \badge{Tag2} \badge{Tag3}}
```

### Links with Icons

```latex
\extlink{https://example.com}{Link Text}
```

### Badges/Tags

```latex
\badge{Machine Learning} \badge{Python} \badge{Open Source}
```

### QR Codes

```latex
\qr{https://your-website.com}
```

## Quality Checklist

Before finalizing your portfolio:

- [ ] All images are high resolution and properly sized
- [ ] Links are tested and functional (GitHub, arXiv, websites)
- [ ] QR codes scan correctly on mobile devices
- [ ] Page count is 10-20 pages
- [ ] PDF file size is < 25 MB
- [ ] No LaTeX compilation errors or warnings
- [ ] Fonts render correctly (check on different systems)
- [ ] Personal information is accurate and up-to-date
- [ ] Figures have descriptive captions
- [ ] Consistent formatting across all sections
- [ ] Proofread for typos and grammatical errors
- [ ] Test PDF on different viewers (Adobe, Preview, browser)

## Accessibility

Make your portfolio accessible:

1. **Alt Text**: Provide descriptive captions for all figures
2. **Color Contrast**: Use high-contrast text (black on white)
3. **Link Descriptions**: Use meaningful link text ("GitHub repository" not "click here")
4. **Font Size**: Keep body text ≥ 11pt
5. **PDF Tags**: Ensure PDF is tagged for screen readers (use `pdfx` package if needed)

## Embedding Links

### Clickable Links

All URLs in the PDF are clickable hyperlinks:
- GitHub repositories
- arXiv preprints
- Demo videos (YouTube)
- Project websites

### QR Codes

Generate QR codes using:
- [QR Code Generator](https://www.qr-code-generator.com/)
- Python: `pip install qrcode[pil]` then `qrcode.make('https://example.com').save('qr.png')`

Place QR codes on cover and back pages for easy mobile access.

## Troubleshooting

### Font Not Found

**Error**: `fontspec error: "font-not-found"`

**Solution**: 
1. Verify font is installed: `fc-list | grep Inter` (Linux/macOS)
2. Update font cache: `fc-cache -f -v`
3. Use fallback: The style file will automatically use TeX Gyre Heros

### Images Not Displaying

**Error**: `File 'assets/image.png' not found`

**Solution**:
1. Check file exists in `assets/` directory
2. Verify filename matches exactly (case-sensitive on Linux/macOS)
3. Use relative paths, not absolute paths

### Compilation Hangs

**Solution**:
1. Press `X` to exit if stuck on error
2. Run `make clean` to remove auxiliary files
3. Check for infinite loops in custom macros
4. Ensure `\end{document}` is present

### PDF Too Large

**Solution**:
1. Compress images: `convert input.png -quality 85 output.jpg`
2. Use lower resolution for non-critical figures
3. Remove unused images from `assets/`
4. Use `gs` (Ghostscript) to compress final PDF:

```bash
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
   -dNOPAUSE -dQUIET -dBATCH -sOutputFile=portfolio_compressed.pdf portfolio.pdf
```

## Advanced Usage

### Continuous Preview

Monitor PDF output while editing:

```bash
latexmk -lualatex -shell-escape -pvc main.tex
```

Press `Ctrl+C` to stop.

### Custom Build Scripts

For complex workflows, extend the Makefile:

```makefile
# Add to Makefile
final: pdf
	gs -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress \
	   -dNOPAUSE -dBATCH -sOutputFile=portfolio_final.pdf main.pdf
	@echo "Final PDF created: portfolio_final.pdf"
```

### Version Control

Use Git to track changes:

```bash
git init
git add .
git commit -m "Initial portfolio structure"

# Create .gitignore
cat > .gitignore << EOF
*.aux
*.log
*.out
*.toc
*.synctex.gz
*.fdb_latexmk
*.fls
main.pdf
EOF
```

## Credits & License

**Template Design**: Juntang Wang, 2025  
**License**: MIT License (use freely, attribution appreciated)

**Acknowledgments**:
- Inter font by Rasmus Andersson
- FontAwesome5 icons
- LaTeX community for excellent packages

## Contact & Support

For questions, suggestions, or issues:
- **GitHub Issues**: [Create an issue](https://github.com/juntang-zhuang/cmu-portfolio-latex/issues)
- **Email**: juntangw@andrew.cmu.edu

---

**Last Updated**: October 2025  
**Version**: 1.0.0

