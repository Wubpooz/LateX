%%------------------ Infos générales ---------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TDs}[03/10/2022]


%%------------------ Options -----------------------


\DeclareOption{10pt}{
  \PassOptionsToClass{\CurrentOption}{book}
}

\DeclareOption*{\ClassWarning{exampleclass}{Unknown option '\CurrentOption'}}

\ExecuteOptions{10pt}

\ProcessOptions*


%------------------ Classe de base -----------------


\LoadClass{book}


%%------------------ Extensions --------------------


\RequirePackage[utf8]{inputenc}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{titlesec}
\RequirePackage[margin=1in,headheight=13.6pt,lmargin=0.7in, rmargin=0.7in]{geometry}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage{subcaption}
\RequirePackage{wrapfig}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{xcolor}
\RequirePackage[bottom]{footmisc}
\RequirePackage{examplepackage}


%%------------------ Commandes ---------------------


%\definecolor{slcolor}{HTML}{882B21}
\everymath{\displaystyle}

\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}
\makeatletter
\newcommand\footnoteref[1]{\protected@xdef\@thefnmark{\ref{#1}}\@footnotemark}
\makeatother

\pagestyle{fancy}
\fancyhf{}
    
%\setlength{\headheight}{61.37221pt}
    
\fancyhead[L]{\rightmark}
\lfoot{Mathieu WAHARTE}
\rfoot{\href{mailto:mathieu.waharte@universite-pais-saclay.fr}{mathieu.waharte@u-psud.fr}}
\cfoot{\thepage}

\renewcommand{\sectionmark}[1]{%
  \markright{\MakeUppercase{\thesection.\ #1}}}%
  
\titleformat{\subsection}[runin]
{\normalfont\large\bfseries}{\thesubsection}{1em}{}

%%------------------ Fin ---------------------------

\endinput
