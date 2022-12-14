%%------------------ Infos générales ---------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{base}[24/11/2022]


%%------------------ Options -----------------------


\DeclareOption{10pt}{
  \PassOptionsToClass{\CurrentOption}{article}
}

\DeclareOption*{\ClassWarning{base}{Unknown option '\CurrentOption'}}

\ExecuteOptions{10pt}

\ProcessOptions*


%------------------ Classe de base -----------------


\LoadClass{article}


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
\RequirePackage[bottom]{footmisc}
\RequirePackage{Mmbase}


%%------------------ Commandes ---------------------


%\definecolor{slcolor}{HTML}{882B21}
\everymath{\displaystyle}

\hypersetup{
    pdftitle = TP5 ADO,
    pdfauthor = Mathieu WAHARTE,
    colorlinks = true,
    linkcolor = blue
}

\pagestyle{fancy}
\fancyhf{}

\fancyhead[C]{\rightmark}
\cfoot{\thepage}

\renewcommand{\sectionmark}[1]{%
  \markright{\textbf{\MakeUppercase{\thesection.\ #1}}}}%
  
%\titleformat{\subsection}[runin]
%{\normalfont\large\bfseries}{\thesubsection}{1em}{}

\titlelabel{\thetitle.\quad}

\setlength{\headheight}{15.6pt}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}


%%------------------ Fin ---------------------------

\endinput



















