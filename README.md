# Tex Me Baby One More Time
[![Bash Shell](https://badges.frapsoft.com/bash/v1/bash.png?v=103)](https://github.com/smhuda)

This script was written to convert multiple Markdown files and compiled them into a PDF document. The script was written to modularise the Markdown files in sections where they are numbere with an integer at the start to ensure they are compiled by pandoc in sequence. The ```pagebreak``` function is added to markdown files to ensure that each markdown section is printed on a new page, this comes in very useful when writing different sections as markdown files and then compiling them as one, it also enables to edit and re-parse only the sections that need editing in a markdown, a big exhaustive markdown file can cause clutter and confusion.

## Dependancies

This is a bash script and relies on the pandoc library to do the parsing job, the script aids modular use of markdown files and parsing them to a PDF file. 
```shell
sudo apt install pandoc
```
## Usage
The markdown files should be placed in the ```doc```directory of the script where the script is placed outside of this directory. If you would like this task to be acheived from a single directory the variable can be edited in the script to acheive this. A date and time stamp is printed along side the conveted file name to ensure uniquness. The files should be renamed with an integer sequence to ensure they are printed in the same sequence you expect.
```shell
bash texmebaby.sh
```
## Contact

Please do not hesistate to contact me for a contribution or change to the script, also feel free to log issues if you come across errors.

[![GPLv3 license](https://img.shields.io/badge/License-GPLv3-blue.svg)](http://perso.crans.org/besson/LICENSE.html)
