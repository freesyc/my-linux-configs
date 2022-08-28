#!/bin/env bash

if [[ $# -gt 0  ]]; then
    if [[ $1 = "add" && -n $2 ]]; then
        convert ./$2 -resize 16x16 aig$2
        mv ./aig$2 ~/.local/share/icons/hicolor/16x16/apps/$2
        convert ./$2 -resize 24x24 aig$2
        mv ./aig$2 ~/.local/share/icons/hicolor/24x24/apps/$2
        convert ./$2 -resize 32x32 aig$2
        mv ./aig$2 ~/.local/share/icons/hicolor/32x32/apps/$2
        convert ./$2 -resize 64x64 aig$2
        mv ./aig$2 ~/.local/share/icons/hicolor/64x64/apps/$2
        convert ./$2 -resize 96x96 aig$2
        mv ./aig$2 ~/.local/share/icons/hicolor/96x96/apps/$2
        convert ./$2 -resize 128x128 aig$2
        mv ./aig$2 ~/.local/share/icons/hicolor/128x128/apps/$2
        convert ./$2 -resize 256x256 aig$2
        mv ./aig$2 ~/.local/share/icons/hicolor/256x256/apps/$2
        echo "concluido com sucesso!"
    else
        echo "passe uma imagem como argumento"
    fi
else
    echo "use: add <imagem>"
fi


