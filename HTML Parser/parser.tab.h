/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    TAG_HTML = 258,                /* TAG_HTML  */
    TAG_HTML_FIM = 259,            /* TAG_HTML_FIM  */
    TAG_BODY = 260,                /* TAG_BODY  */
    TAG_BODY_FIM = 261,            /* TAG_BODY_FIM  */
    TAG_H1 = 262,                  /* TAG_H1  */
    TAG_H1_FIM = 263,              /* TAG_H1_FIM  */
    TAG_H2 = 264,                  /* TAG_H2  */
    TAG_H2_FIM = 265,              /* TAG_H2_FIM  */
    TAG_H3 = 266,                  /* TAG_H3  */
    TAG_H3_FIM = 267,              /* TAG_H3_FIM  */
    TAG_H4 = 268,                  /* TAG_H4  */
    TAG_H4_FIM = 269,              /* TAG_H4_FIM  */
    TAG_H5 = 270,                  /* TAG_H5  */
    TAG_H5_FIM = 271,              /* TAG_H5_FIM  */
    TAG_H6 = 272,                  /* TAG_H6  */
    TAG_H6_FIM = 273,              /* TAG_H6_FIM  */
    TAG_P = 274,                   /* TAG_P  */
    TAG_P_FIM = 275,               /* TAG_P_FIM  */
    TAG_DOCTYPE = 276,             /* TAG_DOCTYPE  */
    TAG_HEAD = 277,                /* TAG_HEAD  */
    TAG_HEAD_FIM = 278,            /* TAG_HEAD_FIM  */
    TAG_TITLE = 279,               /* TAG_TITLE  */
    TAG_TITLE_FIM = 280,           /* TAG_TITLE_FIM  */
    OUTRO = 281                    /* OUTRO  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
