%option noyywrap

%{
#include <stdio.h>
#include "parser.tab.h"
%}

%%

"<html>"                    { return TAG_HTML; }
"</html>"                   { return TAG_HTML_FIM; }
"<body>"                    { return TAG_BODY; }
"</body>"                   { return TAG_BODY_FIM; }
"<h1>"                      { return TAG_H1; }
"</h1>"                     { return TAG_H1_FIM; }
"<h2>"                      { return TAG_H2; }
"</h2>"                     { return TAG_H2_FIM; }
"<h3>"                      { return TAG_H3; }
"</h3>"                     { return TAG_H3_FIM; }
"<h4>"                      { return TAG_H4; }
"</h4>"                     { return TAG_H4_FIM; }
"<h5>"                      { return TAG_H5; }
"</h5>"                     { return TAG_H5_FIM; }
"<h6>"                      { return TAG_H6; }
"</h6>"                     { return TAG_H6_FIM; }
"<p>"                       { return TAG_P; }
"</p>"                      { return TAG_P_FIM; }
"<!DOCTYPE"                 { return TAG_DOCTYPE; }
"<head>"                    { return TAG_HEAD; }
"</head>"                   { return TAG_HEAD_FIM; }
"<title>"                   { return TAG_TITLE; }
"</title>"                  { return TAG_TITLE_FIM; }

[[:space:]]+                ;
.                           { return OUTRO; }

%%

