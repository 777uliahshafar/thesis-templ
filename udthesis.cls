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
%\usepackage[english]{babel} %PdfLatex Compiler Engine
\usepackage{polyglossia} %LuaLatex Compiler Engine
\setmainlanguage{bahasai}
\setotherlanguages{english}

\addto\captionsenglish{\renewcommand{\figurename}{Gambar}} % Rename caption's command
\addto\captionsenglish{\renewcommand{\tablename}{Tabel}}

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
% CONFIGURATION OF SUBFILE
\usepackage{subfiles}
\newcommand{\onlyinsubfile}[1]{#1}
\newcommand{\notinsubfile}[1]{}
