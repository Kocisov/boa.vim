syn keyword pythonSelf self cls
syn match pythonExtraOperator "\%([~!^&|/%+-]\|\%(class\s*\)\@<!<<\|<=>\|<=\|\%(<\|\<class\s\+\u\w*\s*\)\@<!<[^<]\@=\|===\|==\|=\~\|>>\|>=\|=\@<!>\|\.\.\.\|\.\.\|::\)"
syn match pythonExtraPseudoOperator "\%(-=\|/=\|\*\*=\|\*=\|&&=\|&=\|&&\|||=\||=\|||\|%=\|+=\|!\~\|!=\)"
syn match pythonExtraOperator "\%(=\)"
syn match pythonExtraOperator "\%(\*\|\*\*\)"
syn keyword pythonAsNone as nonlocal None

hi link pythonSelf Identifier
hi link pythonExtraOperator Operator
hi link pythonExtraPseudoOperator Operator
hi link pythonAsNone Repeat
