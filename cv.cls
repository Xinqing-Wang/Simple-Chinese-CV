\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[A Simple Latex Class Template for Refume]



\LoadClass[11pt,a4paper]{article} 

%页面支持
\RequirePackage[a4paper,top=1.2cm,bottom=1.2cm,left=1.5cm,right=1.5cm]{geometry} 
\RequirePackage{fancyhdr}  

%颜色支持与图标支持
\RequirePackage{xcolor}  
\RequirePackage{fontawesome}
\RequirePackage{tikz}
\RequirePackage{eso-pic}
\RequirePackage{graphicx}

%中文与字体支持
\RequirePackage{listings}
\RequirePackage{fontspec}
\RequirePackage{xeCJK}   
\setCJKmainfont{SourceHanSansCN}
[
  Path=fonts/,
  UprightFont = *-Regular,
  BoldFont    = *-Bold
]
\setmainfont{SourceSansPro}
[
  Path=fonts/,
  UprightFont = *-Regular,
  BoldFont    = *-Bold
]

         
%引入超链接
\RequirePackage{hyperref}    



% 定义颜色变量
\definecolor{headerbg}{HTML}{E46AAA} % 页眉颜色条
\definecolor{footerbg}{HTML}{E46AAA}  % 页脚颜色条
\definecolor{sectioncolor}{HTML}{5370C3} %标题字体颜色



%页面美观，添加顶部底部颜色条,去掉页眉页脚
\newcommand{\addPageColorBars}{%
  \AddToShipoutPictureBG*{%
    % 页面顶部颜色条
    \begin{tikzpicture}[remember picture, overlay]
      \fill[headerbg] (current page.north west) rectangle ([yshift=-0.5cm]current page.north east);
    \end{tikzpicture}
    % 页面底部颜色条
    \begin{tikzpicture}[remember picture, overlay]
      \fill[footerbg] (current page.south west) rectangle ([yshift=0.5cm]current page.south east);
    \end{tikzpicture}
  }
}
%去掉页眉页脚
\pagestyle{empty}

%设置段落间距
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.3em}








%个人信息
\newcommand{\name}[1]{ {\huge \bfseries  #1}}

\newcommand{\wanted}[1]{
    {\textbf{求职意向：}}{#1}
}

\newcommand{\Wechat}[1]{
    {\faWechat}:{#1}
}

\newcommand{\Phone}[1]{

    {\faPhone}:{#1}
}
\newcommand{\Github}[2]{{\faGithub}: \href{#1}{#2}}
\newcommand{\Email}[1]{{\faEnvelope}: \href{mailto:#1}{#1}}

\newcommand{\QQ}[1]{
    {\faQq}:{#1}
}
\newcommand{\Site}[2]{{\faLink}: \href{#1}{#2}}

\newcommand{\PersonalInfo}[1]{
  {\textbf{自我介绍：}}{#1}
}

%设置标题样式

\newcommand{\cvsection}[2]{%
  \vspace{0.1em}%
  \noindent{\Large#1} \space 
  {\color{sectioncolor}{\Large\bfseries#2}}
  \\
  \rule{\linewidth}{1pt}%
  \vspace{0.1em}%
}







