for f in split(glob('~/.config/nvim/config-notes/0*.vim'), '\n')
    exe 'source' f
endfor
