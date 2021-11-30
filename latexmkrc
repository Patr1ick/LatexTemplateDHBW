$pdf_mode = 4;
@default_files = ('main.tex');
#$out_dir = 'build';

$bibtex_use = 2;

push @generated_exts, 'acn', 'acr', 'alg', 'glg', 'glo', 'gls', 'ist', 'run.xml';

# Add Glossaries
add_cus_dep('glo', 'gls', 0, 'runMakeGlossaries'); 
add_cus_dep('acn', 'acr', 0, 'runMakeGlossaries');

sub runMakeGlossaries{
    return system "makeglossaries main";
}