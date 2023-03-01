%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_STACK_SIZE 100

int tag_stack[MAX_STACK_SIZE];
int top = -1;

void push(int tag) {
    if (top < MAX_STACK_SIZE - 1) {
        top++;
        tag_stack[top] = tag;
    } else {
        printf("Erro: estouro de pilha.\n");
        exit(1);
    }
}

int pop() {
    if (top >= 0) {
        int tag = tag_stack[top];
        top--;
        return tag;
    } else {
        printf("Erro: pilha vazia.\n");
        exit(1);
    }
}

%}

%token TAG_HTML TAG_HTML_FIM TAG_BODY TAG_BODY_FIM TAG_H1 TAG_H1_FIM TAG_H2 TAG_H2_FIM TAG_H3 TAG_H3_FIM
%token TAG_H4 TAG_H4_FIM TAG_H5 TAG_H5_FIM TAG_H6 TAG_H6_FIM TAG_P TAG_P_FIM TAG_DOCTYPE TAG_HEAD TAG_HEAD_FIM TAG_TITLE TAG_TITLE_FIM OUTRO

%start input

%%

input:
    | input tag 
;

tag:
TAG_HTML { push(TAG_HTML); } |
TAG_HTML_FIM { if (pop() != TAG_HTML) printf("Erro: tag HTML nao fechada.\n"); } |
TAG_BODY { push(TAG_BODY); } |
TAG_BODY_FIM { if (pop() != TAG_BODY) printf("Erro: tag BODY nao fechada.\n"); } |
TAG_H1 { push(TAG_H1); } |
TAG_H1_FIM { if (pop() != TAG_H1) printf("Erro: tag H1 nao fechada.\n"); } |
TAG_H2 { push(TAG_H2); } |
TAG_H2_FIM { if (pop() != TAG_H2) printf("Erro: tag H2 nao fechada.\n"); } |
TAG_H3 { push(TAG_H3); } |
TAG_H3_FIM { if (pop() != TAG_H3) printf("Erro: tag H3 nao fechada.\n"); } |
TAG_H4 { push(TAG_H4); } |
TAG_H4_FIM { if (pop() != TAG_H4) printf("Erro: tag H4 nao fechada.\n"); } |
TAG_H5 { push(TAG_H5); } |
TAG_H5_FIM { if (pop() != TAG_H5) printf("Erro: tag H5 nao fechada.\n"); } |
TAG_H6 { push(TAG_H6); } |
TAG_H6_FIM { if (pop() != TAG_H6) printf("Erro: tag H6 nao fechada.\n"); } |
TAG_P { push(TAG_P); } |
TAG_P_FIM { if (pop() != TAG_P) printf("Erro: tag P nao fechada.\n"); } |
TAG_DOCTYPE |
TAG_HEAD { push(TAG_HEAD); } |
TAG_HEAD_FIM { if (pop() != TAG_HEAD) printf("Erro: tag HEAD nao fechada.\n"); } |
TAG_TITLE { push(TAG_TITLE); } |
TAG_TITLE_FIM { if (pop() != TAG_TITLE) printf("Erro: tag TITLE nao fechada.\n"); }
;

%%

int main(int argc, char** argv) {
FILE *f;
extern FILE *yyin;

if (argc < 2) {
    printf("Informe o nome do arquivo.\n");
    return 1;
}

f = fopen(argv[1], "r");
if (f == NULL) {
    printf("Erro: arquivo nao encontrado.\n");
    return 1;
}

yyin = f;
yyparse();

fclose(f);

if (top >= 0) {
    printf("Erro: tag nao fechada.\n");
    exit(1);
}

printf("Arquivo analisado com sucesso.\n");

return 0;
}

int yyerror(char *s) {
printf("Erro: %s\n", s);
}