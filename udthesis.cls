%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Simple Article
% Integrated article template with simple for make4ht
% LaTeX Class
% Version 1.0 (10/11/20)
%
% This class originates by:
% Vel and  Nicolas Diaz
%
% Authors:
% Muhammad Uliah Shafar
%
%
% Free License:
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{udthesis}[2021/01/03 Udthesis Class v1.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options

\LoadClass{report} % Load the base class

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------
% PREAMBLE OF ENGLISH LANGUAGE HYPHENATION
% Malay happen to replace bahasai command
%\usepackage[english]{babel} %PdfLatex Compiler Engine
\usepackage{polyglossia} %LuaLatex Compiler Engine
\setmainlanguage{bahasai}
\setotherlanguages{english}
\PolyglossiaSetup{malay}{indentfirst=true}

% Rename caption's command for bahasai
\addto\captionsmalay{
    \renewcommand{\abstractname}{ABSTRACT}
}
% Rename caption's command for english
\addto\captionsenglish{
    \renewcommand{\figurename}{Gambar}
    \renewcommand{\tablename}{Tabel}
    \renewcommand{\abstractname}{ABSTRACT}
}

%----------------------------------------------------------------------------------------
%	DOCUMENT MARGINS
%----------------------------------------------------------------------------------------

\usepackage{geometry} % Required for adjusting page dimensions and margins

\geometry{
	paper=a4paper, % Paper size, change to letterpaper for US letter size
	top=3cm, % Top margin
	bottom=3cm, % Bottom margin
	left=4cm, % Left margin
	right=3cm, % Right margin
%	headheight=0.75cm, % Header height
	footskip=1.5cm, % Space from the bottom margin to the baseline of the footer
%	headsep=0.75cm, % Space from the top margin to the baseline of the header
	showframe, % Uncomment to show how the type block is set on the page
}

%----------------------------------------------------------------------------------------
%	TITLE SECTION
%----------------------------------------------------------------------------------------
%\setcounter{secnumdepth}{3}% number subsubsection in report class

\usepackage{titlesec}
\makeatletter
% reformat chapter number
\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand \thesection{\arabic{chapter}.\arabic{section}}
\renewcommand \thesubsection{\arabic{chapter}.\arabic{section}.\arabic{subsection}}
\renewcommand \thesubsubsection{\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}

\titleformat{\chapter} %command
[display]%shape
{\normalfont\fontsize{12}{15}\filcenter\bfseries}%format
{BAB \thechapter}%label
{0pt}%sep
{\vspace{0pt}}%before-title
[]%after-title

\titleformat{\section} %command
{\normalfont\fontsize{12}{15}\bfseries}%format
{\thesection}%label
{12pt}%sep
{\vspace{0pt}}%before-title
[]%after-title

\titleformat{\subsection} %command
%shape
{\normalfont\fontsize{12}{15}\bfseries}%format
{\thesubsection}%label
{12pt}%sep
{}%before-title
[]%after-title

%\titleformat{\subsubsection} %command
%shape
%{\normalfont\fontsize{12}{15}\bfseries}%format
%{\thesubsubsection}%label
%{12pt}%sep
%{}%before-title
%[]%after-title

\titlespacing*{\chapter}{0pt}%left
{-20pt plus 4pt minus 2pt}%before
{30pt plus 2pt minus 2pt}%after
\titlespacing\section{0pt}
{12pt plus 4pt minus 2pt}
{0pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}
{12pt plus 4pt minus 2pt}
{0pt plus 2pt minus 2pt}
\titlespacing\subsubsection{0pt}
{12pt plus 4pt minus 2pt}
{0pt plus 2pt minus 2pt}


%----------------------------------------------------------------------------------------
% PREAMBLE OF FIGURES

\usepackage{graphicx}

\graphicspath{{figures/}{../figures/}}% Specifies where to look for included images (trailing slash required)
%\graphicspath{{figures/}{./}}

%\usepackage{wrapfig} % Allows in-line images
%\usepackage{subcaption} %Subfigure component
%\usepackage[labelformat=parens,labelsep=quad, skip=3pt]{caption}  %Subcaption in 2 column img

\usepackage[labelsep=period,labelfont=onehalfspacing]{caption}%Use caption* for add source
\setlength\belowcaptionskip{-10pt} %Reduce spacing caption figures


%\setkeys{Gin}{draft} %Render image for draft

%----------------------------------------------------------------------------------------
% PREAMBLE OF TABLE AND LIST

\usepackage{tabularx}
\usepackage{booktabs} % Required for better horizontal rules in tables

%----------------------------------------------------------------------------------------
% CONFIGURATION OF SUBFILE
\usepackage{subfiles}
\newcommand{\onlyinsubfile}[1]{#1}
\newcommand{\notinsubfile}[1]{}

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------
% LUALATEX FONT
\usepackage{fontspec}
\setmainfont{Arial} %Altex main font documents, default= Modern

%----------------------------------------------------------------------------------------
% CONFIGURATION OF TEXT(PARAGRAPH, SECTION, DATE, OTHERS)


\usepackage{lipsum} % Add  dummy text
\usepackage[hidelinks]{hyperref}
\usepackage{setspace} %Alter spacing in paragraph
\onehalfspacing %Specify spacing of setspace

\setlength{\parindent}{1cm} %Alter indentation

\usepackage{indentfirst} %Indent the first paragraph
%\providecommand{\keywords}[1]{\textbf{\textit{Keywords---}} #1} %Insert Keyword Command

\usepackage[bahasai, calc]{datetime2} %Formating date or DTMtoday command, files ldf needs customization. Removes showdayofweek.

%----------------------------------------------------------------------------------------
%	LaTeX MACROS AND COMMANDS
%----------------------------------------------------------------------------------------
\renewenvironment{abstract}{%
    \clearpage
    \begin{center}%
    \doublespacing
        {\bfseries \abstractname\vspace{-.5em}\vspace{30pt}}%
    \end{center}%
%    \quotation
    }
{
%\endquotation
\vspace{14pt}}
