syn keyword pythonSelf self cls
syn match pythonExtraOperator "\%([~!^&|/%+-]\|\%(class\s*\)\@<!<<\|<=>\|<=\|\%(<\|\<class\s\+\u\w*\s*\)\@<!<[^<]\@=\|===\|==\|=\~\|>>\|>=\|=\@<!>\|\.\.\.\|\.\.\|::\)"
syn match pythonExtraPseudoOperator "\%(-=\|/=\|\*\*=\|\*=\|&&=\|&=\|&&\|||=\||=\|||\|%=\|+=\|!\~\|!=\)"
syn match pythonExtraOperator "\%(=\)"
syn match pythonExtraOperator "\%(\*\|\*\*\)"
syn keyword pythonAsNone as nonlocal None

if exists('g:python_rehighlight_docstrings')
    syn region pythonDocString   start=+^"""+ end=+"""+ keepend containedin=TOP contains=pythonDocTest2,pythonSpaceError,@Spell
    syn region pythonDocString   start=+^'''+ end=+'''+ keepend containedin=TOP contains=pythonDocTest,pythonSpaceError,@Spell
    syn region pythonDocString   start=+\():\_s*\)\@40<="""+ end=+"""+ keepend containedin=TOP contains=pythonDocTest2,pythonSpaceError,@Spell
    syn match pythonDocParam   "^\s*:\zsparam\s"me=e-1 containedin=pythonDocString display
    syn match pythonDocParam   "^\s*:\zsreturns:"me=e-1 containedin=pythonDocString display
endif

hi link pythonExtraOperator Operator
hi link pythonExtraPseudoOperator Operator
hi link pythonAsNone Repeat
