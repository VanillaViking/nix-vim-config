{
  config = {
    extraConfigVim = ''
	function! GitBranch()
	  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
	endfunction

	function! StatuslineGit()
	  let l:branchname = GitBranch()
	  return strlen(l:branchname) > 0?'  '.l:branchname.' ':'''
	endfunction

	let g:word_count=wordcount().words
	function WordCount()
	    if has_key(wordcount(),'visual_words')
		let g:word_count=wordcount().visual_words."/".wordcount().words " count selected words
	    else
		let g:word_count=wordcount().cursor_words."/".wordcount().words " or shows words 'so far'
	    endif
	    return g:word_count
	endfunction


	set statusline=%{StatuslineGit()}
	set statusline+=\ %f%m
	set statusline+=\ %=col:%c
	set statusline+=\ wc:%{WordCount()}
      '';
  };
}
