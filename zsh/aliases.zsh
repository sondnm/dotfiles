[[ -d ~/check50 ]] && alias check50='/usr/bin/node ~/check50/SOURCES/opt/check50/bin/'
alias make50='make CC=clang CFLAGS="-ggdb3 -O0 -std=c99 -Wall -Werror" LDLIBS="-lcs50 -lm"'
