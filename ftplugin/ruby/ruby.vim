
nmap ,r :let @b=expand("<cWORD>")<CR>orender :text => <ESC>"bpA.inspect<ESC>
"nmap ,r :let @b=expand("<cWORD>")<CR>oputs <ESC>"bpA.inspect<ESC>
nmap ,R :let @b=expand("<cWORD>")<CR>o<%= <ESC>"bpA.inspect %><ESC>
