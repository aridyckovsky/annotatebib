# Annotated Bibliography Boilerplate

Typsetting an annotated bibliography with `annotatebib` helps you focus on the
content of sources instead of formatting.

### Assumptions

LaTeX2e is installed and configured on your local machine.

### Potential Early Errors

When first installed, 

## Installation

Two options are available for installation:

### "Use this template" on GitHub (Preferred)

Simply click the green button "Use this template" and follow the steps outlined
by GitHub. This will provide the same structure and set of files and begin
a new git tree.

### Clone the repo for an actual annotated bibliography

To clone the repository, run the following commands, where `new_name` is the name of the
project you intend to annotate:

```
git clone https://github.com/aridyckovsky/annotatebib.git new_name
cd new_name
git remote remove origin
```

The last command above is necessary to disconnect your new local repo from the
remote. This way, when you make changes, they won't track against the
boilerplate, which is to remain a boilerplate without a project-specific set of
content.

If you want to push to a remote repo of your own, simply push upstream to one:

```
git remote add origin https://github.com/*user*/*repo*.git
```

Be sure to replace *user* and *repo* with the actual values for your remote. To
push committed local changes, you'll need to run

```
git push --set-upstream origin master
```

## Usage

First, navigate to the project root directory. In here, run `make all`. This
should generate a series of printed statements followed by a final statement
that looks like

```
Copying generated PDFs to output folder: /../new_name/output
```

To check out the generated documented, simply run `open output/main.pdf`. The
PDF should have a title, name, date, and two bibliographic entries with blind
text (randomly generated statements). If this worked, you're ready to start
adapting the boilerplate to your own annotation needs! In case this did not
work, see the following list of errors and solutions:

#### Permission Denied Error

If an error is returned related to your `Makefile`, such as a `Permission
denied` sort of statement related to the shell script `screen.sh`, then run
`sudo chmod u+r+x .build_scripts/screen.sh`.

### Editing the BibTex file

Your bibliography is only as strong as the information its given. To do this,
edit  `references.bib`. Alternatively, if you use Mendley or another references
organizer, export your set of references directly to `references.bib` and
overwrite the file.

### Annotations and Citations

As you'll find in `main.tex`, the annotated items are individually called with

```
\hangindent=0.5in \fullcite{Bechara1997}
 
\begin{adjustwidth}{1in}{1in}
  \blindtext % replace with true annotation text
\end{adjustwidth}   
```

where "Bechara1997" is the citation reference in your BibTex file
`references.bib`. You'll want to replace `\blindtext` with your annotation itself.

