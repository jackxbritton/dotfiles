_jack_connect_completion() {

	local cur="${COMP_WORDS[COMP_CWORD]}"
	_get_comp_words_by_ref -n : cur

	COMPREPLY=($(
		compgen -W "$(jack_lsp | paste -sd ' ' -)" -- "$cur"
	))
	__ltrim_colon_completions "$cur"

}

complete -F _jack_connect_completion jack_connect

