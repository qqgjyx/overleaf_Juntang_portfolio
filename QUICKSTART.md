# Quick Start Guide

Welcome to your CMU Portfolio LaTeX repository! This guide will help you build your portfolio PDF in minutes.

## 🚀 Build Your Portfolio Now

```bash
# Navigate to portfolio directory
cd /Users/juntangwang/Library/CloudStorage/OneDrive-DukeUniversity/Documents/_Paper/overleaf_Juntang_portfolio

# Compile to PDF (takes 1-2 minutes)
make pdf

# View the result
open main.pdf  # macOS
# OR
xdg-open main.pdf  # Linux
```

## ✅ What's Included

Your portfolio is **ready to compile** with:

### 📁 Complete Structure
- ✅ **Build system**: `Makefile`, `.latexmkrc` for automated compilation
- ✅ **Custom styling**: Professional design in `styles/portfolio.sty`
- ✅ **7 sections**: Cover, Research, Tools, Coursework, Visualizations, Personal, Back page
- ✅ **Placeholder images**: 10 temporary images in `assets/` for testing

### 📝 Pre-filled Content

All sections contain **your actual project descriptions**:

1. **Research Projects** (`sections/10_research_projects.tex`)
   - Mixing Configurations for Downstream Prediction (ICLR 2026)
   - Hyperspectral Imaging Segmentation
   - EEG/EMG Vigilance Classification

2. **Software Tools** (`sections/20_software_tools.tex`)
   - mheatmap (600+ GitHub stars)
   - pysgtsnepi (SG-t-SNE-Π implementation)

3. **Coursework** (`sections/30_coursework_projects.tex`)
   - CS316 Mini-Amazon (Full-stack e-commerce)
   - CS201 PeopleDB (Data structures in Java)

4. **Visualizations** (`sections/40_visualization_modeling.tex`)
   - Spectral reordering examples
   - EEG time-frequency analysis
   - Glucose-insulin ODE modeling

5. **Personal Projects** (`sections/50_personal_creative.tex`)
   - RA automation tools
   - Generative data art

## 📸 Replace Placeholder Images

The portfolio uses **placeholder images** for now. Replace them with your actual images:

```bash
# Navigate to assets directory
cd assets/

# Replace with your real images (keep the same filenames)
# headshot.jpg - Your professional photo
# qr_website.png - QR code to your website
# proj_*.png - Project screenshots
# tool_*.png - Tool screenshots
# cs*.png - Coursework images
```

See `assets/README.md` for detailed image guidelines.

## 🎨 Customize Your Portfolio

### Update Personal Information

Edit contact details and bio:
```bash
# Cover page
nano sections/00_cover.tex

# Back page
nano sections/99_backpage.tex
```

### Modify Content

Each section is in a separate file:
```bash
ls sections/
# 00_cover.tex
# 10_research_projects.tex
# 20_software_tools.tex
# 30_coursework_projects.tex
# 40_visualization_modeling.tex
# 50_personal_creative.tex
# 99_backpage.tex
```

### Change Colors

Edit accent color and styling:
```bash
nano styles/portfolio.sty
# Find: \definecolor{Accent}{HTML}{2D6CDF}
# Change to your preferred color
```

## 🔧 Requirements

### Already Have
- ✅ LaTeX distribution (MacTeX/TeX Live)
- ✅ LuaLaTeX compiler
- ✅ latexmk build tool

### Recommended (Optional)
- **Inter font**: Download from [Google Fonts](https://fonts.google.com/specimen/Inter)
  - Provides best typography
  - Falls back to Helvetica/TeX Gyre Heros if unavailable

## 📊 Expected Output

- **File**: `main.pdf`
- **Pages**: 10-20 pages (currently ~15 with placeholder content)
- **Size**: ~2-5 MB (with placeholder images)
- **Quality**: Print-ready, high-resolution

## 🐛 Troubleshooting

### Compilation Errors?

```bash
# Clean and rebuild
make clean
make pdf
```

### Images Not Found?

```bash
# Verify images exist
ls -lh assets/

# If missing, regenerate placeholders
python3 generate_placeholders.py
```

### Font Issues?

The portfolio automatically falls back to system fonts if Inter is unavailable. To install Inter:

1. Download: https://fonts.google.com/specimen/Inter
2. Install font files to your system
3. Rebuild: `make clean && make pdf`

## 📚 Next Steps

1. ✅ **Test compile**: Run `make pdf` to verify everything works
2. 📸 **Replace images**: Add your actual project screenshots
3. ✏️ **Customize content**: Update sections with your specific details
4. 🎨 **Adjust styling**: Tweak colors, fonts, or layout if desired
5. 📖 **Review**: Read through entire PDF for accuracy
6. 🚀 **Share**: Use for applications, websites, or portfolios

## 💡 Pro Tips

- **Continuous preview**: `latexmk -lualatex -shell-escape -pvc main.tex` (auto-recompile on save)
- **Compress PDF**: Use Ghostscript to reduce file size (see README.md)
- **Version control**: Initialize Git repo to track changes
- **Print quality**: Use high-res images (≥1600px width) for best results

## 📖 Full Documentation

See `README.md` for comprehensive documentation including:
- Detailed customization guide
- Reusable macro reference
- Accessibility tips
- Advanced features
- Quality checklist

## ❓ Questions?

- **Documentation**: `README.md` (comprehensive guide)
- **Image guidelines**: `assets/README.md`
- **Email**: juntangw@andrew.cmu.edu

---

**Ready to build?** Run `make pdf` and your portfolio will be ready in ~2 minutes! 🎉

