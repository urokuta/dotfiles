# Run command file for percol

##########################################c
percol.import_keymap({
    "C-g" : lambda percol: percol.cancel(),
    "C-j" : lambda percol: percol.command.select_next(),
    "C-k" : lambda percol: percol.command.select_previous(),
    "C-n" : lambda percol: percol.command.select_next(),
    "C-p" : lambda percol: percol.command.select_previous(),
    "C-f" : lambda percol: percol.command.select_next_page(),
    "C-b" : lambda percol: percol.command.select_previous_page(),
})
