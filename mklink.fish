#!/usr/bin/env fish

function lns
    echo ln -sf $argv[1] (basename $argv[1])
    ln -sf $argv[1] (basename $argv[1])
end

function link
    for f in (ls $argv/*.yaml);
        # echo ln -s $argv/$f $f
        lns $f
    end

    for f in (ls -d $argv/*/);
        # echo ln -s $argv/$f $f
        lns $f
    end
end

link rime-melt
