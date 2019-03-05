\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eie-cbo}[2019/01/24 E&IE Course Brief and Outline class]
% A class for typesetting a Course Brief & Outline (CBO)
% for the School of Electrical and Information Engineering. Authored by
% many.
% Used as \documentclass[11pt]{eie-cbo}

\RequirePackage{fancyhdr} 	% headers and footers
\RequirePackage{multirow}		% multi-line table rows
\RequirePackage{url}      	% typeset URLs
\RequirePackage{graphicx} 	% graphics
\RequirePackage[british]{babel}

\PassOptionsToClass{a4paper}{article}
\AtEndOfClass{\setlength{\topmargin}{-3mm}
\setlength{\headheight}{0mm}
\setlength{\headsep}{0mm}
\setlength{\footskip}{12mm}
\setlength{\oddsidemargin}{5mm}
\setlength{\evensidemargin}{5mm}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions
\LoadClass{article}
\setlength{\parskip}{\medskipamount}
\setlength{\parindent}{0pt}
\setlength{\unitlength}{1mm}

\newcommand{\eehead}{\textit{School of Electrical and Information Engineering}\\
\textsf{University of the Witwatersrand, Johannesburg}\\}

\newcommand{\cname}{}      % course name
\newcommand{\coursename}[1]{\renewcommand{\cname}{#1}}

\newcommand{\eehd}{				% first page header	
	\begin{minipage}[]{.2\textwidth}
	\setcounter{secnumdepth}{2}
	\includegraphics[height=20mm]{eie-logo}
	\end{minipage}
	\vspace{1mm}
	\begin{minipage}[]{.8\textwidth}
	\noindent\Large\textsf
	\eehead
	\smallskip
	\ccode{} --- \cname
	\end{minipage}
	\smallskip\hrule\medskip}
\renewcommand{\@maketitle}{\newpage\eehd\begin{center}
{\Large\textbf \@title \par}{\large \lineskip .5em
\begin{tabular}[t]{c}\@author\end{tabular}\par}
\vskip 1em {\large \@date} \end{center}\par}
\newcommand{\makeheads}{\maketitle\thispagestyle{fancy}}
\newcommand{\omithead}{\renewcommand{\@maketitle}{}}
\author{}\date{}  % default these to nothing

\title{Course Brief and Outline --- \today} % title

\setlength{\textheight}{248mm}
\setlength{\textwidth}{150mm}

\RequirePackage{datetime2}  % datetime format
\DTMnewdatestyle{yearonly}{%
\renewcommand{\DTMdisplaydate}[4]{\number##1 }%
\renewcommand{\DTMDisplaydate}{\DTMdisplaydate}%
}
\DTMsetdatestyle{yearonly}

\newcommand{\ccode}{}      % course code 
\newcommand{\coursecode}[1]{\renewcommand{\ccode}{#1}}

\pagestyle{fancy} % headers and footers
\lhead{}
\chead{}
\rhead{}
\renewcommand{\headrulewidth}{0.0pt}
\lfoot{\ccode{} Course Brief and Outline --- \today}
\cfoot{}
\rfoot{\thepage}
\renewcommand{\footrulewidth}{0.4pt}

% these packages produce errors if included at the beginning of the class file
% with the others
\RequirePackage{booktabs}		% nicer tables
\RequirePackage{hyperref}   % URL hyperlinks
\hypersetup{
    colorlinks,
    urlcolor={blue}
}%

% Use \autoref{label} for cross-referencing sections
\addto\extrasbritish{%
  \renewcommand{\sectionautorefname}{Section}%
}
\addto\extrasbritish{%
  \renewcommand{\subsectionautorefname}{Section}%
}
\addto\extrasbritish{%
  \renewcommand{\subsubsectionautorefname}{Section}%
}

\newcommand{\email}[1]{\href{mailto:#1}{#1}} % email hyperlinks

\endinput
