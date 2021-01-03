for f in split(glob('~/.config/nvim/config/0*.vim'), '\n')
    exe 'source' f
endfor
