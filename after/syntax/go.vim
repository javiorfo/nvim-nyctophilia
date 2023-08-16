syn match goBraces	 '[\[\]{}=]'
syn region goSingleImport start=+"+ end=+"+ contains=@goImport
