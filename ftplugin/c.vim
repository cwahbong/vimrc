if exists("b:did_ftplugin") || (&filetype != "c" && &filetype != "cpp")
	finish
endif

setlocal textwidth=72

setlocal cinoptions=g0,l1,m1,N-s,U1,W2s,:0,(0
setlocal cinkeys+=*<CR>
