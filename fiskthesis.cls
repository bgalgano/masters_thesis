% ========================
% This is the LaTeX class
% file that provides the
% formatting and page layout
% for the Fisk Master's Thesis.
%
% Created by Trey Mack
% Modified by Sam Dunham
% Last update: 05/04/2017
% ========================
% REQUIRED PACKAGES
% 
% (1) graphicx
% (2) amsmath
% (4) fancyhdr
% (6) titlesec
% (7) titletoc
% (8) setspace
% (9) ccaption
% (10) float
% (11) natbib
% (12) array
%
% Might want to distinguish between
% packages that usually come with LaTeX
% and those that you had to get from
% CTAN.
% ========================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fiskthesis}

% ========================
% OPTIONS : All options should
% be declared here.
% ========================

% Pass all options to
% the book class.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
% *** END OF OPTIONS ***

% Load the book class.
\LoadClass[12pt,oneside]{book}

% Load packages that provide
% commands that may be used
% later, but are not necessary
% for the formatting options
% defined by the rest of this file.
\RequirePackage{xcolor,graphicx}
\RequirePackage{amsmath}
\RequirePackage{float}
\RequirePackage[round]{natbib} % for customizing citations.
\RequirePackage{ccaption} % for customizing captions.
\RequirePackage{array} % for customizing tables.
\RequirePackage{setspace} % for doublespacing.


% ========================
% MARGINS
% ========================

\RequirePackage{fancyhdr}

% set left margin to 1.5in
\setlength{\hoffset}{0.5in}

% set separation between
% left margin and text body to zero
\setlength{\oddsidemargin}{0pt}

% set separation between header
% and the top margin to zero
\setlength{\topmargin}{0pt}

% set separation between the
% header and text body to "3" single spaces
\setlength{\headsep}{24pt}

% set height of header
\setlength{\headheight}{15pt}

% set separation between
% footer and text body to zero
\setlength{\footskip}{0pt}

% set width of text body
% to 6in
\setlength{\textwidth}{6in}

% set height of text body
% to 8.5in
\setlength{\textheight}{8.5in}

% *** END MARGINS FORMATTING ***


% ========================
% HEADER AND FOOTER 
% ========================

% Next determine the contents
% of the header for non-chapter
% pages.

%%% "Chapter 1: Introduction             <page number>"

\pagestyle{fancy}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\chaptermark}[1]{\markboth{\small\chaptername~\thechapter:~#1}{}}
\lhead{\protect\textnormal{\leftmark}}
\chead{}
\rhead{\small\thepage}
\lfoot{}
\cfoot{}
\rfoot{}
  
 %%% Appendix Header %%%
 
\def\ps@apphead
{
 \def\@oddhead{\uline{\small\leftmark \hfill \thepage}}
 \def\@evenhead{}
 \def\@oddfoot{}
 \def\@evenfoot{}
 }

% *** END HEADER AND FOOTER FORMATTING ***

% ========================
% CHAPTER AND SECTION TITLES
% ========================

\RequirePackage[compact,bf,tiny]{titlesec}
\RequirePackage{titletoc}
\titleclass{\chapter}{top}

%%% "Chapter 1: Introduction"

\titleformat{\chapter}[hang]
{\bfseries\large\vspace{-3em}}
{Chapter\hspace{2mm}\thechapter:\hspace{2mm}}
{0pt}
{}

\titlespacing*{\chapter}{0pt}{0pt}{12pt}

% Make chapter pages have empty header and footer.
\assignpagestyle{chapter}{empty}

% *** END CHAPTER AND SECTION TITLE FORMATTING ***

% ========================
%  TITLE PAGE FORMATTING 
% ========================

% define the 'Title' command
\newcommand{\Title}[1]{%
\MakeUppercase{\bfseries #1}\\
\vspace{6ex}
A Thesis\\
\vspace{6ex}
Submitted to the Graduate Faculty\\
\vspace{2ex}
of\\
\vspace{2ex}
Fisk University\\
\vspace{3ex}}

% Define the 'Department' command
\newcommand{\Department}[1]{%
Department of #1\\}

% Define the 'Author' command 
\newcommand{\Author}[1]{%
\vspace{6ex}
by\\
\vspace{6ex}
#1 \\
\vspace{7ex}
In Partial Fulfillment\\
\vspace{2ex}
of the Requirements for the Degree of\\
\vspace{2ex}
Master of Arts\\}

% Define the 'GradDate' command
% The two arguments are 'month'
% and 'year'
\newcommand{\GradDate}[2]{%
\vspace{4ex}
#1 #2}

% Define the 'ThesisTitle' environment
\newenvironment{ThesisTitle}
{\thispagestyle{empty}%
 \begin{center}}
{\end{center}}

% *** END TITLE FORMATTING ***

% ========================
% APPROVAL PAGE FORMATTING
% ========================

% Define the 'ATitle' (Approval Title) command
\newcommand{\ATitle}[1]{%
 Approval Sheet for Thesis\\
 Submitted in Candidacy for the Degree of\\
 Master of Arts\\
 \vspace{7ex}
 \MakeUppercase{\bfseries #1}\\}

% Redefine the 'Author' command
\newcommand{\AAuthor}[1]{%
 \vspace{6ex}
 by\\
 \vspace{5ex}
 #1\\}

% Define the 'Degree' command
\newcommand{\Degree}[1]{#1}

% Define the 'University' command
\newcommand{\University}[1]{#1,}

% Define the 'GradYear' command
\newcommand{\GradYear}[1]{#1\\}

% Define the 'City' command
\newcommand{\City}[1]{#1,}

% Define the 'State' command
\newcommand{\State}[1]{#1\\}

% Redefine the 'Department' command
\newcommand{\ADepartment}[1]{%
 \vspace{7ex}
 Approved by the Department of #1\\}

% Define the 'Approval' environment
\newenvironment{Approval}
{\newpage%
 \thispagestyle{empty}%
 \vspace{7ex}%
 \begin{center}%
 \MakeUppercase{\bfseries Fisk University}\\%
 \vspace{4ex}}
{\end{center}}

% Define the 'Name' command
\newcommand{\Name}[1]{%
\hline
#1 &}

% Define the 'Role' command
\newcommand{\Role}[1]{%
#1 & Date\\
& & \\
& & \\}

% Define the 'Chair' command
\newcommand{\Chair}[1]{%
\hline
#1 & Department Chair & Date}

% Define the 'Committee' environment
\newenvironment{Committee}
{\vspace{10ex}%
 \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}lll}}{\end{tabular*}}

% *** END APPROVAL PAGE FORMATTING ***

% ========================
%  CAPTIONS
% ========================
% Set style of captions
\precaption{\vspace{-2em}\singlespacing}
\captionnamefont{\bfseries\footnotesize} %bfseries makes it bold
\captiontitlefont{\footnotesize}
\captiondelim{: }
%\captiondelim( --- }
%\hangcaption  % check out these 2 alternatives
\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}

% Set the numbering of
% figures and tables so
% that they begin anew
% with each section, or
% alternatively, with each
% chapter.

\providecommand{\chapnum}
{
\makeatletter
\@addtoreset{table}{chapter}
\renewcommand{\thetable}{\thechapter.\arabic{table}}
\makeatletter

\makeatletter
\@addtoreset{figure}{chapter}
\renewcommand{\thefigure}{\thechapter.\arabic{figure}}
\makeatletter
}

% Section numbering of the tables and figures.
\providecommand{\secnum}
{
\makeatletter
\@addtoreset{table}{section}
\renewcommand{\thetable}{\thesection.\arabic{table}}
\makeatletter

\makeatletter
\@addtoreset{figure}{section}
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
\makeatletter
}

% *** END CAPTION FORMATTING ***

% ========================
% WIDOWS AND ORPHANS
%
% The following commands try
% to keep LaTeX from leaving just
% a few lines at the end or
% beginning of a page.
% The larger the number,
% the more LaTeX tries to avoid it.
% ========================

\widowpenalty=1000
\clubpenalty=1000

% END OF FILE
