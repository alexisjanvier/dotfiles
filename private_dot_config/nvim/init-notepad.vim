for f in split(glob('~/.config/nvim/config-notepad/0*.vim'), '\n')
    exe 'source' f
endfor
