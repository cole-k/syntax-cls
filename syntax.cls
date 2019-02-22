% Cole K, 2019
% stolen mostly from Kye Shi (GitHub @kwshi)
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{syntax}[Spring 2019 Syntax essay class]

\LoadClass[12pt, twoside]{article}

% packages

%% document setup
\RequirePackage[inline]{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{fancyref}
\RequirePackage{geometry}
\RequirePackage{hyperref}
\RequirePackage{lastpage}
\RequirePackage{titling}
%% times new roman ish
\RequirePackage{newtxtext}

%% trees
\RequirePackage{forest}
\useforestlibrary{linguistics}
\forestapplylibrarydefaults{linguistics}

%% IPA
\RequirePackage{tipa}

%% numbered examples and sub/superscripts outside math mode
%% this apparently can screw with other packages, so load last
\RequirePackage{gb4e}

%% (Author Date) citations
\RequirePackage[round]{natbib}
\bibliographystyle{plainnat}

% document setup
%% page dimensions
\geometry{
  top=.5in,
  bottom=.75in,
  right=1in,
  left=1in,
  headheight=3em,
  headsep=1em,
  marginparwidth=1.125in,
  marginparsep=.125in,
  includeheadfoot,
}

%% forest settings
% \forestset{
%   default preamble={
%     % change the location of
%     baseline, for tree={parent anchor=south, child anchor=north}
%   }}

%% page decoration
\fancypagestyle{simple-number}{
  \fancyhf{}
  \rhead{
    \mbox{
      \small {\textsc{\thepage}} of \pageref{LastPage}}
  }
  \renewcommand{\headrulewidth}{0pt}
}

\pagestyle{simple-number}
%% warning: redundant definition since needs
%% to be set after \maketitle.
\thispagestyle{empty}

%% hyperlink styles
\hypersetup{
  colorlinks=true,
  urlcolor=blue!50!green,
  linkcolor=black,
}

%% fancyref settings

%% don't label things by referring to page number by default
%% (to refer to a page number, use the vario format, e.g. 
%% \fref[vario]{reference}
\renewcommand{\fancyrefdefaultformat}{plain}

%% add references for examples
\newcommand{\fancyrefexlabelprefix}{ex}

\fancyrefaddcaptions{english}{%
  \newcommand*{\Frefexname}{Example}%
  \newcommand*{\frefexname}{%
  \MakeLowercase{\Frefexname}%
  }%
}

%% examples use parentheses around the reference number
\frefformat{plain}{\fancyrefexlabelprefix}{%
  \frefexname\fancyrefdefaultspacing(#1)%
}%
\Frefformat{plain}{\fancyrefexlabelprefix}{%
  \Frefexname\fancyrefdefaultspacing(#1)%
}%

\frefformat{vario}{\fancyrefexlabelprefix}{%
  \frefexname\fancyrefdefaultspacing(#1)#3%
}%
\Frefformat{vario}{\fancyrefexlabelprefix}{%
  \Frefexname\fancyrefdefaultspacing(#1)#3%
}%

%% add references for trees
\newcommand{\fancyreftreelabelprefix}{tree}

\fancyrefaddcaptions{english}{%
  \newcommand*{\Freftreename}{Tree}%
  \newcommand*{\freftreename}{%
  \MakeLowercase{\Freftreename}%
  }%
}

%% trees also use parentheses around the reference number
\frefformat{plain}{\fancyreftreelabelprefix}{%
  \freftreename\fancyrefdefaultspacing(#1)%
}%
\Frefformat{plain}{\fancyreftreelabelprefix}{%
  \Freftreename\fancyrefdefaultspacing(#1)%
}%

\frefformat{vario}{\fancyreftreelabelprefix}{%
  \freftreename\fancyrefdefaultspacing(#1)#3%
}%
\Frefformat{vario}{\fancyreftreelabelprefix}{%
  \Freftreename\fancyrefdefaultspacing(#1)#3%
}%
