\ProvidesClass{apaper}
\LoadClass{article}

\RequirePackage{amsmath}
\RequirePackage{calc}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{fmtcount}
\RequirePackage{geometry}
\RequirePackage{hyperref}
\RequirePackage[math]{kurier}
\RequirePackage{setspace}
\RequirePackage[square,comma,numbers]{natbib}
\RequirePackage{titlesec}
\RequirePackage{varioref}
\RequirePackage{xcolor}
\RequirePackage{xkeyval}

\define@key{apaper}{docno}{\def\@docno{#1}}
\define@key{apaper}{color}{\colorlet{apapercolor}{#1}}
\define@key{apaper}{rulecolor}{\colorlet{rulecolor}{#1}}
\define@key{apaper}{logo}{\def\@logo{#1}}
\define@key{apaper}{classify}{\def\@classify{#1}}
\define@key{apaper}{byline}{\def\@byline{#1}}
\setkeys{apaper}{%
  docno={},
  color=gray!25,
  rulecolor=gray!25,
  logo={},
  classify={},
  byline={}
}
\newcommand{\docno}[1]{\setkeys*{apaper}{docno={#1}}}
\ProcessOptionsX<apaper>
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\makeatletter
  \newcommand{\subtitle}[1]{\def\@subtitle{#1}}
  \subtitle{}
  \newcommand{\email}[1]{\def\@email{#1}}
  \newcommand{\apaperopts}[1]{\stekeys{apaper}{#1}}
  \email{}
  \newcommand{\thedate}{\@date}
\makeatother

\hypersetup{colorlinks=true}
\geometry{a4paper,textwidth=5.5in,textheight=8.5in,marginparsep=7pt,marginparwidth=.6in}
\setlength{\parskip}{\baselineskip}
\setlength{\parindent}{0pt}
%
\makeatletter%
  \def \maketitle {%%
    \hypersetup{pdftitle={\@title{}},linkcolor=apapercolor,anchorcolor=apapercolor,citecolor=apapercolor,filecolor=apapercolor,urlcolor=apapercolor}%
    \thispagestyle{empty}%
    \par%
    \begin{minipage}[t]{0.15\textwidth}%
      \ifx \@logo \@empty%
        \ \relax%
      \else%
        \includegraphics[width=\textwidth]{\@logo}%
      \fi%
    \end{minipage}%
    \hfill%
    \begin{minipage}[b]{0.8\textwidth}%
      \raggedleft%
      \textbf{\color{apapercolor}\Large\@title}%
      \ifx \@docno \@empty%
        \relax%
      \else%
        \par Document N\fmtord{o}\hspace{0.5em}\texttt{\@docno}%
      \fi%
      \ifx \@byline \@empty%
        \relax
      \else%
        {\par\color{apapercolor}\@byline}%
      \fi%
    \end{minipage}%
    \vspace{0.25\baselineskip}%
    {\color{rulecolor}\hrule}%
    \vspace{-0.75\baselineskip}%
    \@date%
    \ifx \@author \@empty%
      \relax%
    \else%
      \hfill\@author\ 
      \ifx \@email \@empty%
        \relax%
      \else%
        \texttt{<\href{mailto:\@email}{\@email}>}%
      \fi%
    \fi%
    \par%
    \ifx \@classify \@empty%
      \relax%
    \else%
      \begin{center}%
        \textsc{\@classify}%
      \end{center}%
    \fi%
    \vspace{\baselineskip}%
    \pagestyle{fancy}%
    \lhead{\textsc{\@title}}%
    \chead{\thepage}
    \rhead{\textsc{\@classify}}%
    \ifx \@docno \@empty%
      \relax%
    \else%
      \chead{\texttt{\@docno} -- \thepage}%
    \fi%
    \ifx \@byline \@empty%
      \relax%
    \else%
      \renewcommand{\footrulewidth}{0.4pt}% default is 0pt
      \cfoot{\vspace{-0.1\baselineskip}\color{apapercolor}\tiny\@byline}%
    \fi%
  }%
\makeatother

\makeatletter
  \newcommand{\hsp}{\hspace{10pt}}
  \titleformat{\section}[hang]{\LARGE\bfseries}{%
    \begin{minipage}{0.06\textwidth}%
      \thesection%
    \end{minipage}%
    {\color{apapercolor}|}\hsp%
    }{0pt}{\LARGE\bfseries}%
\makeatother

\makeatletter
  %% if ToC is empty, allow turning off the extraneous line
  \def\@notocline{}%
  \newcommand{\notocline}{\def\@notocline{true}}%
  %% do not put Contents on top of the table of contents...
  \renewcommand\tableofcontents{%
    \begin{spacing}{0.25}%
      \@starttoc{toc}%
    \end{spacing}%
    \par\vspace{2\baselineskip}%
    \ifx \@notocline \@empty%
      {\color{rulecolor}\hrule}%
    \else%
      \relax%
    \fi%
  }%
\makeatother

\makeatletter
  \setlist[itemize]{noitemsep,topsep=0pt}
  \setlist[enumerate]{noitemsep,topsep=0pt}
  \setlist[description]{itemsep=\baselineskip,topsep=0pt}
\makeatother

\makeatletter
  \newcounter{annexe}%
  \renewcommand{\theannexe}{\Roman{annexe}}%
  \newcommand{\annexe}[1]{%
    \clearpage%
    \refstepcounter{annexe}%
    \addcontentsline{toc}{section}{Annexe \theannexe: #1}%
    \begin{center}%
      \textsc{\large Annexe \theannexe\\#1}%
    \end{center}%
    \par\vspace{\baselineskip}%
  }
  \newcommand{\pdfannexe}[2]{%
    \clearpage%
    \refstepcounter{annexe}%
    \addcontentsline{toc}{section}{Annexe \theannexe: #1}%
    \includepdf[pages=-,scale=0.8,pagecommand={\lhead{\textsc{Annexe \theannexe: #1}}}]{#2}%
  }
\makeatother
\endinput
