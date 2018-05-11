@include "anm3.awk"

/+1$/ {
	magic_key("Home")
}

/+2$/ && W_COMMAND !~ /Discord/ {
	magic_key("End")
}

/+2$/ && W_COMMAND ~ /Discord/ {
	key("Escape") # Go to newest message and mark unread.
}

/+2$/ && W_TITLE ~ /Minecraft/ {
	key("F5 F5") # Look behind character.
}

/-2$/ && W_TITLE ~ /Minecraft/ {
	key("F5")
}

/-3$/ && W_COMMAND ~ /Discord/ {
	key("Shift+Prior")
}

/+4$/ {
	MINIMIZE_WIN = W_TITLE " " W_COMMAND
}

/-4$/ {
	if (MINIMIZE_WIN == W_TITLE " " W_COMMAND) {
		xdo("getactivewindow windowminimize") # Iconify window.
	}	
}

/-7$/ && W_COMMAND ~ /firefox|chrom/ {
	key("Ctrl+Shift+t")
}

/+10$/ && W_COMMAND ~ /firefox|chrom/ { # Works for firefox, chrome, and chromium
	key("Ctrl+w") # Close Tab
}

/+10$/ && W_COMMAND ~ /Discord/ {
	if (W_TITLE ~ /^Discord$/) {
		# xdo("getactivewindow windowclose") # Discord can't be reopened?
	} else {
		key("Ctrl+1 Ctrl+1") # Switch to start screen
	}
}

/+10$/ && W_TITLE ~ /Terminal - man/ {
	key("q") # quit man
}

/+10$/ && W_TITLE ~ /Terminal - (fish|.*@grant-arch-desk-1:)/ {
	xdo("getactivewindow windowclose") # close window
}

/+10$/ && W_COMMAND ~ /mirage/ {
	xdo("getactivewindow windowclose") # close window
}

/+10$/ && W_COMMAND ~ /pcmanfm/ {
	key("Ctrl+w")
}

/+10$/ && W_TITLE ~ /^Terminal - .* - VIM$/ {
	key("Escape")
	type(":q")
	key("Return")
}

/+11$/ {
	magic_key("XF86Back")
}

/+12$/ {
	magic_key("XF86Forward")
}

