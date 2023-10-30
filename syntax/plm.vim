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
syn keyword syntaxReservedWords IF THEN ELSE DO PROCEDURE END DECLARE BYTE ADDRESS LABEL INTITIAL DATA LITERALLY BASED GO TO BY GOTO CASE WHILE CALL RETURN HALT OR AND XOR NOT MOD PLUS MINUS EOF MEMORY TIME SHR SHL ROR ROL AT

" Matches Reserved Matches
syn match syntaxReservedSymbols '\(\$\|=\|:=\|\.\|\/\|(\|)\|\%x2b\|-\|\'\|\*\|<\|>\|<=\|>=\|<>\|:\|;\)'

" Number Matches
syn match syntaxDecNum1 '\<\d\+[Dd]\=\>' contains=syntaxDecNumMatch
syn match syntaxDecNumMatch '\d\+[Dd]\=' contained

syn match syntaxHexNum1 '\<\(0\=\x\+[Hh]\|0x\x\+\)\>' contains=syntaxHexNumMatch
syn match syntaxHexNumMatch '\(0\=\x\+[Hh]\|0x\x\+\)' contained

syn match syntaxOctNum1 '\<\o\+[OoQq]\>' contains=syntaxOctNumMatch
syn match syntaxOctNumMatch '\o\+[OoQq]' contained

syn match syntaxBinNum1 '\<[01$]\+[Bb]\>' contains=syntaxBinNumMatch
syn match syntaxBinNumMatch '[01$]\+[Bb]' contained

" Label Matches
syn match syntaxNestedLabelMatch '^\s*[A-Za-z0-9$_-]\+:' contains=syntaxLabelMatch
syn match syntaxLabelMatch '[A-Za-z0-9$_-]\+:' contained

" String Matches
syn match syntaxStringMatch '\'\(\\\'\|[^\']\)*\''

" Comment Matches
syn match syntaxCommentMatch '\/\*\_.\{-}\*\/'

" Syntax Styles
let b:current_syntax = "plm"
hi def link syntaxReservedWords                  Identifier
hi def link syntaxReservedSymbols                Operator

hi def link syntaxNumberMatch                    Number 
hi def link syntaxBinNumMatch                    syntaxNumberMatch 
hi def link syntaxOctNumMatch                    syntaxNumberMatch 
hi def link syntaxDecNumMatch                    syntaxNumberMatch 
hi def link syntaxHexNumMatch                    syntaxNumberMatch 

hi def link syntaxLabelMatch                     Label

hi def link syntaxStringMatch                    String

hi def link syntaxCommentMatch                   Comment
