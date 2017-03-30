function fish_user_key_bindings
	# 'default' mode
	bind \ce forward-char

	bind -M insert \ce forward-char

	# Unbind Backspace
	bind -e -M insert \x7F

	# Ctrl-P and Ctrl-N previous / next command in History
	bind -M insert \cp history-search-backward
	bind -M insert \cn history-search-forward
	bind \cp history-search-backward
	bind \cn history-search-forward

	# Unbind navigation keys

	# Right key
	bind \e\[C true
	bind -M insert \e\[C true
	# Left key
	bind \e\[D true
	bind -M insert \e\[D true
	# Up key
	bind \e\[A true
	bind -M insert \e\[A true
	# Down key
	bind \e\[B true
	bind -M insert \e\[B true

	# Page up (ppage)
	bind \e\[5~ true
	bind -M insert \e\[5~ true
	# Page down (npage)
	bind \e\[6~ true
	bind -M insert \e\[6~ true

	# Home key
	bind \e\[7~ true
	bind -M insert \e\[7~ true
	# End key
	bind \e\[8~ true
	bind -M insert \e\[8~ true

	# Delete key (dc)
	bind \e\[3~ true
	bind -M insert \e\[3~ true
	# Insert key (ic)
	bind \e\[2~ true
	bind -M insert \e\[2~ true
end
