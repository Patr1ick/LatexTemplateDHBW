# DHBW Stuttgart Latex Template
This is an unofficial latex template for student projects at the DHBW Stuttgart.
## Use the template
### Requirements
- A working Latex installation, like [TexLive](https://www.tug.org/texlive/)
- An editor, like [Visual Studio Code](https://code.visualstudio.com/)
### Compile
You can use the package _latexmk_ to build the files
- Generate: `latexmk`
- Clean up: `latexmk -c`   

Note that you need an Perl interpreter, which will be automatically installed when you use TexLive.

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
#### Switch the language
When you want to change the language to German, you have to change the following line in the config file:
```latex
\setboolean{german}{true}
```