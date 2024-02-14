supafly() {
	cd `dirs -v | cut -f2 -d$'\t' | sed "s,\~,$HOME,g" | awk '!x[\$0]++' | fzf`
}

setopt autopushd
# this prevents us from ordering results based on last visit
# setopt pushdignoredups
export DIRSTACKSIZE=100
alias j=supafly
