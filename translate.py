#!/usr/bin/env python3
"""

Usage: translate.py de
"""
import sys
import re
import yaml

pattern1 = 'dlg:value="%s"'
pattern2 = 'dlg:value="%s"'

with open(sys.argv[1] + '.yaml') as f:
    dictionary = yaml.load(f)

with open("OOoLilyPond/GUI_Editor.xdl") as f:
    text = f.read()

for original, translation in dictionary.items():
    text = text.replace(pattern1 % original, pattern1 % translation)
    text = text.replace(pattern2 % original, pattern2 % translation)

with open("OOoLilyPond/GUI_Editor.xdl.de", 'w') as f:
    f.write(text)

#dlg:value="Ly Output"
