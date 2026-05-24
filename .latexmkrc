$pdf_mode = 4;
mkdir 'out' unless -d 'out';
$ENV{'TEXMFVAR'} = "$ENV{'PWD'}/out/texmf-var";
$ENV{'TEXMFCACHE'} = "$ENV{'PWD'}/out/texmf-var";
$lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$out_dir = 'out';
$aux_dir = 'out';
$bibtex_use = 2;
$max_repeat = 5;

$clean_ext = 'synctex.gz bbl run.xml fdb_latexmk fls';
