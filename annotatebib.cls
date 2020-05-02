%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Ari Dyckovsky's Annotated Bibliography Class Template
%
% This class file defines the structure and design of an annotated bibliography. 
%
% Original header:
% Copyright (C) 2020 by Ari Dyckovsky
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Ari Dyckovsky
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{annotatebib}[2020/05/01 v0.1 Annotated Bibliography class]

\newif\ifnobiblatex
\DeclareOption{nobiblatex}{\nobiblatextrue}
\ProcessOptions\relax
\LoadClassWithOptions{article}
\PassOptionsToPackage{backend=biber}{biblatex}
\ifnobiblatex%
\AtBeginDocument{%
  \@ifpackageloaded{biblatex}{}
    {\ClassError{myclass}{Fatal: biblatex not loaded}
       {You must load biblatex, I'll end here}\@@end}%
}
\else\RequirePackage{biblatex}\fi

\RequirePackage{blindtext}
\RequirePackage{changepage}

%------------------------------------------------------------------------------
%	Environments
%------------------------------------------------------------------------------

%
% Usage: \annotatedcite{0.5in}{1.0in}{Bechara1997}{
%          This is where the text for the annotation for the reference
%          Bechara1997 will go
%        }
%
\newenvironment{annotatedcite}[4] {
  \hangindent=#1 \fullcite{#3}

  \begin{adjustwidth}{#2}{#2}
    #4 % replace with true annotation text
  \end{adjustwidth}
}

\endinput

