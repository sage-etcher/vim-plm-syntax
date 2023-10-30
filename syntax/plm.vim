" Vim syntax file
" Language: (PL/M) Programming Language for Micro-Proccessers
" Maintainer: Sage Hendricks
" Latest Revision: 26 September 2023

if exists ("b:current_syntax")
	finish
endif

" Keywords
syn keyword syntaxReservedWords IF THEN ELSE DO PROCEDURE END DECLARE BYTE ADDRESS LABEL INTITIAL DATA LITERALLY BASED GO TO BY GOTO CASE WHILE CALL RETURN HALT OR AND XOR NOT MOD PLUS MINUS EOF

" Matches
syn match syntaxReservedSymbols '\(\$\|=\|:=\|\.\|\/\|(\|)\|\%x2b\|-\|\'\|\*\|<\|>\|<=\|>=\|<>\|:\|;\)'

syn match syntaxNumberMatch '\(0x\)\=\d\+\(H\|h\|O\|o\|Q\|q\|D\|d\)\='
syn match syntaxStringMatch1 '\'\(\\\'\|[^\']\)*\''
" syn match syntaxStringMatch2 '\"\(\\\"\|[^\"]\)*\"'
syn match syntaxCommentMatch '\/\*\_.\{-}\*\/'

" Regions
" syn region syntaxElementRegion start='x' end='y'


let b:current_syntax = "plm"
hi def link syntaxReservedWords                  Identifier
hi def link syntaxReservedSymbols                Operator

hi def link syntaxNumberMatch                    Number 
hi def link syntaxStringMatch1                   String
" hi def link syntaxStringMatch2                   syntaxStringMatch1

hi def link syntaxCommentMatch                   Comment
