"
"  Copyright 2023 Sage I. Hendricks  
"
"  Licensed under the Apache License, Version 2.0 (the "License");  
"  you may not use this file except in compliance with the License.  
"  You may obtain a copy of the License at  
"
"      http://www.apache.org/licenses/LICENSE-2.0  
"
"  Unless required by applicable law or agreed to in writing, software  
"  distributed under the License is distributed on an "AS IS" BASIS,  
"  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
"  See the License for the specific language governing permissions and  
"  limitations under the License.  
"


" Vim syntax file
" Language: (PL/M) Programming Language for Micro-Proccessors
" Maintainer: Sage Hendricks
" Latest Revision: 30 October 2023

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
