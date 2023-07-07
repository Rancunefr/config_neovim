
" Ceci va faire en sorte que le correcteur orthographique ne s'interresse pas
" à l'entête Jekyll ni aux formules en Latex.
"
" Par contre, on souhaite que le teaser de l'article soit analysé

syn region JekyllHeader start='\%^\-\-\-' end='\-\-\-' contains=JekyllTeaser,@nospell
syn region JekyllTeaser start='teaser\: *\"' end='\"' contains=@spell 
syn region JekyllLatex  start='\$\$' end='\$\$' contains=@nospell
syn region JekyllImage  start='{\:' end='}' contains=@nospell

