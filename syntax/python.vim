syn keyword pythonSelf self cls
syn match pythonExtraOperator "\%([~!^&|/%+-]\|\%(class\s*\)\@<!<<\|<=>\|<=\|\%(<\|\<class\s\+\u\w*\s*\)\@<!<[^<]\@=\|===\|==\|=\~\|>>\|>=\|=\@<!>\|\.\.\.\|\.\.\|::\)"
syn match pythonExtraPseudoOperator "\%(-=\|/=\|\*\*=\|\*=\|&&=\|&=\|&&\|||=\||=\|||\|%=\|+=\|!\~\|!=\)"
syn match pythonExtraOperator "\%(=\)"
syn match pythonExtraOperator "\%(\*\|\*\*\)"
syn keyword pythonAsNone as nonlocal None

if exists('g:python_highlight_docparameters')
    syn match pythonDocParam   "^\s*:\zsparam\s"me=e-1 containedin=pythonString display
    syn match pythonDocParam   "^\s*:\zsreturns:"me=e-1 containedin=pythonString display
endif

hi link pythonExtraOperator Operator
hi link pythonExtraPseudoOperator Operator
hi link pythonAsNone Repeat
