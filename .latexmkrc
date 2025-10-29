$pdf_mode = 4;  # use LuaLaTeX
$lualatex = 'lualatex %O -shell-escape -interaction=nonstopmode -recorder %S';
$clean_ext = 'bbl nav out snm synctex.gz';

# Ensure luaotfload can write its cache inside the repo (sandbox-safe)
$ENV{'TEXMFVAR'} = './.texmf-var';

# Default target
@default_files = ('main.tex');

