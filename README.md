# DHBW Stuttgart Latex Template
This is an unofficial latex template for student projects at the DHBW Stuttgart.
You can find an example [here](/main.pdf).

Please note that I cannot give any guarantee for the completeness and correctness of this template.
## Use the template
### Requirements
- A working Latex installation, like [TexLive](https://www.tug.org/texlive/)
- An editor, like [Visual Studio Code](https://code.visualstudio.com/)
### Compile
You can use the package _latexmk_ to build the files
- Generate: `latexmk`
- Clean up: `latexmk -c`   

Note that you need a Perl interpreter to run latexmk (and makeglossaries). If you have installed TexLive, the interpreter has already been installed.

Alternatively, you can also generate the files directly via LuaTex:
`lualatex main`
To generate the glossary and bibliography you have to run
```
biber main
makeglossaries main
```
an then rerun LuaTex.
### Customise template
You can customise all the information in the config.tex file. It is intended that the own writing is saved under `/pages/chapter`. However, you have to include them in `main.tex` yourself.

To add entries to the glossary or acronym directory, you can add them under `/pages/util/glossary.tex` or `/pages/util/acronyms.tex`.
#### Switch the language
If you want to change the language, you have to change the following line in the config file (true = German, false = English).
```latex
\setboolean{german}{false}
```