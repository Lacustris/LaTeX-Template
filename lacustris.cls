%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lacustris LaTeX Template
%
% Author:
% Justin Wies
% Secretaris 25ste bestuur der N.S.S.S.V. Lacustris
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lacustris}[2017/04/13 Lacustris class]
 
\LoadClass[onecolumn]{article} % Extend the article class

%----------------------------------------------------------------------------------------
%	PACKAGES 
%----------------------------------------------------------------------------------------

\RequirePackage[a4paper,pdftex]{geometry}	% Use A4 paper margins
\RequirePackage[dutch]{babel} % Use Dutch as the language
\RequirePackage{xcolor} % Required for specifying custom colors
\RequirePackage{graphicx} % Allow for loading images
\RequirePackage{fix-cm} % Allows increasing the font size of specific fonts beyond LaTeX default specifications
\RequirePackage{parskip} % Different paragraph formatting
\RequirePackage{titlesec} % Allows for modifying titles for sections etc.
\RequirePackage{microtype} % Better letter spacing and kerning
\RequirePackage[pdftex]{hyperref}

%----------------------------------------------------------------------------------------
%	OPTIONS
%----------------------------------------------------------------------------------------

\DeclareOption{twocolumn}{\PackageError{Lacustris}{The `twocolumn' option is not supported!}{Try removing the twocolumn option when calling this package.}\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

% Finish processing options
\ProcessOptions\relax

%----------------------------------------------------------------------------------------
%	GENERAL DEFINITIONS
%----------------------------------------------------------------------------------------

\definecolor{red}{HTML}{FD0006}
\setcounter{tocdepth}{2}

%----------------------------------------------------------------------------------------
%	GENERAL TYPOGRAPHY
%----------------------------------------------------------------------------------------

\renewcommand{\familydefault}{\sfdefault}

%----------------------------------------------------------------------------------------
%	HEADINGS
%----------------------------------------------------------------------------------------

% Remove numbers from section titles etc.

\renewcommand\thesection{}
\renewcommand\thesubsection{}
\renewcommand\thesubsubsection{}

% Header spacing
\titlespacing{\section}{-1em}{2em}{0em}[0em]
\titlespacing{\subsection}{-1em}{1em}{0em}[0em]
\titlespacing{\subsubsection}{-1em}{0.8em}{*0.1}[0em]

%----------------------------------------------------------------------------------------
%	TITLE PAGE
%----------------------------------------------------------------------------------------

% Extra commands for title page
%\def{\clearheadinfo{%
%	\gdef\@subtitle{}%
%}}
\makeatletter
\newcommand{\subtitle}[1]{\newcommand{\@subtitle}{#1}}

\newcommand{\HRule}[1]{\hfill \rule{0.2\linewidth}{#1}} % Horizontal rule at the bottom of the page, adjust width here

% Actual title page definition

\renewcommand{\maketitle}{%
	\thispagestyle{empty}
	\colorbox{red}{
		\parbox[t]{1.0\linewidth}{
			\color{white}\centering \fontsize{50pt}{80pt}\selectfont % The first argument for fontsize is the font size of the text and the second is the line spacing - you may need to play with these for your particular title
			\vspace*{2cm} % Space between the start of the title and the top of the grey box

			\hfill \@title \\
			\hfill \@subtitle\\
			\vspace*{3cm}
		
			\hfill\includegraphics[height=4cm]{logo-rotated.png}
			
		
			\vspace*{0.7cm} % Space between the end of the title and the bottom of the grey box
		}
	}
	\vfill
	{\centering\large 
		\hfill\@author\\
		\hfill\HRule{1pt}
	}
	
	\newpage
}

\makeatother

%----------------------------------------------------------------------------------------
%	OTHER 
%----------------------------------------------------------------------------------------

\setlength{\oddsidemargin}{0mm} % Adjust margins to center the colored title box
\setlength{\evensidemargin}{0mm} % Margins on even pages - only necessary if adding more content to this template




