\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simple-thesis}[2017/07/19 v1.0]
\LoadClass[11pt,a4paper,twoside,openright]{book}

%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%%
% -- Input and Language
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%%  
\RequirePackage[utf8]{inputenc}
\RequirePackage[american]{babel}
\RequirePackage[T1]{fontenc}

% \RequirePackage{libertine}

%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
% -- Document Layout 
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
\RequirePackage{fancyhdr}
\RequirePackage{setspace} 	%interlinea
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage{xcolor}
\RequirePackage[T1,hyphens]{url}
\RequirePackage{hyperref}	% collegamenti ipertestuali
\RequirePackage{multirow}	% tabelle con celle multiriga
\RequirePackage{listings}  % listing of code 

%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
% -- Figures and Graphics
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{epstopdf}

%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
% -- Math Symbols and Formulas 
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
\RequirePackage{amsmath}
\RequirePackage{amssymb} 


\RequirePackage{multirow}
\RequirePackage{longtable}
\RequirePackage{pdflscape}
\RequirePackage[]{subfig}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{bbold}
\RequirePackage{algpseudocode}
\RequirePackage{algorithm}
\algdef{SE}[DOWHILE]{Do}{doWhile}{\algorithmicdo}[1]{\algorithmicwhile\ #1}%


\RequirePackage{appendix}
\RequirePackage{nameref}

\RequirePackage{tabularx}
\RequirePackage{booktabs}

\RequirePackage{titling}
\RequirePackage{changepage}

% \RequirePackage{minitoc} 		% Per chapter toc
\RequirePackage{enumitem}
\setlist{itemsep=0pt,topsep=3pt,leftmargin=17pt}

\newtheorem{theorem}{Theorem}
\numberwithin{theorem}{chapter} 

\newcommand{\appearsin}[1]{\vspace{1em} \noindent {\bf Chapter \ref{#1}:~\nameref{#1}}}

\RequirePackage{lettrine}
\definecolor{BrickRed}{RGB}{178,0,39}
\definecolor{StreetGray}{RGB}{140,140,140}
\newcommand{\ps}[2] {\lettrine[lines=1,lhang=-0.15]{#1}{#2}} 

\setlength{\parskip}{0.25em}

\renewcommand*\rmdefault{ppl}
\interfootnotelinepenalty=10000

\newenvironment{chapabstract}{
 \begin{adjustwidth}{.7cm}{.7cm}
}{
 \end{adjustwidth} 
 \vspace{.3cm}
}

\clubpenalty=1000
\widowpenalty=1000

\raggedbottom 

\AtBeginDocument{\renewcommand{\bibname}{References}}

\newcommand{\frontsection}{
  \pagestyle{empty}
  \frontmatter
  \pagestyle{plain}
}
\newcommand{\mainsection}{
  \mainmatter
  \pagestyle{fancy}
  \fancyhf{}
  \fancyhead[lo]{\slshape\nouppercase{\rightmark}}
  \fancyhead[re]{\slshape\nouppercase{\leftmark}}
  \fancyhead[ro,le]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
}

%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
% -- General Settings 
%%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% %%%%% 
\setlength{\parskip}{0.5em}

% -- hyperref 
\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}

% -- listing
\lstset{ %
  backgroundcolor=\color{white},
  basicstyle=\footnotesize,        
  breaklines=true,
  captionpos=b,                    
%  commentstyle=\color{PineGreen},    % comment style
  escapeinside={\%*}{*)},          
% keywordstyle=\color{blue},       % keyword style
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{wide}{%
  \begin{list}{}{%
      \setlength{\topsep}{0pt}%
      \addtolength{\leftmargin}{-1.5cm}%
      \addtolength{\rightmargin}{-2cm}%
      \addtolength{\textwidth}{2cm}%
      \setlength{\listparindent}{0cm}%
      \setlength{\itemindent}{0cm}%
      \setlength{\parsep}{\parskip}}%
  \item[]%
}{%
  \end{list}%
}

\newcommand*{\project}[1]{\gdef\@project{#1}}
\newcommand*{\@project}{Final Year Project}

\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\@supervisor}{\texttt{\string\supervisor} currently not set. Please fix this.}

\newcommand*{\phdcoordinator}[1]{\gdef\@phdcoordinator{#1}}
\newcommand*{\@phdcoordinator}{\texttt{\string\phdcoordinator} currently not set. Please fix this.}

\newcommand*{\university}[1]{\gdef\@university{#1}}
\newcommand*{\@university}{\texttt{\string\university} currently not set. Please fix this.}

\newcommand*{\department}[1]{\gdef\@department{#1}}
\newcommand*{\@department}{\texttt{\string\department} currently not set. Please fix this.}

\newcommand*{\academicyear}[1]{\gdef\@academicyear{#1}}
\newcommand*{\@academicyear}{2016/17}

\newcommand*{\phdcycle}[1]{\gdef\@phdcycle{#1}}
\newcommand*{\@phdcycle}{\texttt{\string\phdcycle} currently not set. Please fix this.}

\newcommand*{\phdname}[1]{\gdef\@phdname{#1}}
\newcommand*{\@phdname}{\texttt{\string\phdname} currently not set. Please fix this.}

\newcommand*{\fancytitle}[1]{\gdef\@fancytitle{#1}}
\newcommand*{\@fancytitle}{\@title}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\makefrontpage}{%
\begin{titlepage}
\begin{wide}
\thispagestyle{empty}

\centering
\vspace{1cm}
{\scshape\LARGE \@university \par}
{\scshape \@department \par}
\vspace{-0.3cm}

\rule{\textwidth}{0.4pt} \par

{\em \@phdname \unskip \par}
{\em \@phdcycle \par}

\vspace{3cm}
% {\scshape\Large\@project\unskip\strut\par}
{\huge\@fancytitle\unskip\strut\par}
\vspace{2cm}

{\LARGE \itshape\@author\unskip\strut\par}
\vspace{3.5cm}


\begin{minipage}[t]{0.5\textwidth}
\begin{flushleft} \large
Advisor\\
{\Large\itshape\@supervisor\unskip\strut\par}
\end{flushleft}
\end{minipage}\begin{minipage}[t]{0.5\textwidth}
\begin{flushright} \large
PhD Coordinator\\
{\Large\itshape\@phdcoordinator\unskip\strut\par}
\end{flushright}
\end{minipage}
 
\vfill
{\scshape \large Academic Year \@academicyear \par} 
\vspace{-0.3cm} \rule{\textwidth}{0.4pt} \par
{\large \@date\par}
\end{wide}
\end{titlepage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\endinput
