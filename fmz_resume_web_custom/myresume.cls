\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass[11pt]{article}

% disable indent globally
\setlength{\parindent}{0pt}
% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}
% use xifthen
\RequirePackage{xifthen}
% use fontawesome
\RequirePackage{fontawesome}
% use xcolor for customizing color
%\RequirePackage[usenames,dvipsnames]{xcolor}
% loading fonts
\RequirePackage{fontspec}
% Main document font
\setmainfont[
  Path = fonts/Main/ ,
  Extension = .otf ,
  UprightFont = *-regular ,
  BoldFont = *-bold ,
  ItalicFont = *-italic ,
  BoldItalicFont = *-bolditalic ,
  SmallCapsFont = Fontin-SmallCaps
]{texgyretermes}

\RequirePackage[
	a4paper,
	left=0.8in,
	right=0.8in,
	top=0.70in,
	bottom=0.55in,
	nohead
]{geometry}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}
\RequirePackage[super]{nth}

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedleft}  % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*1.8}{*1.8}

\titleformat{\subsection}
  {\large\raggedleft}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*1.8}{*0.6}

\newcommand{\datedsection}[2]{%
  \section[#1]{#2 \hfill #1}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#2 \hfill #1}%
}
\newcommand{\datedline}[2]{%
  {\par #2 \hfill #1 \par}%
}

\newcommand{\name}[1]{
  \leftline{\Huge\scshape{#1}}
  \vspace{1.25ex}
}

\newcommand{\email}[1]{
  \leftline{\faEnvelope\ \space {#1}}
}

\newcommand{\phone}[1]{
  \leftline{\faPhone\ \space {#1}}
}

\newcommand{\homepage}[1]{
  \leftline{\faLink\ \space {#1}}
}