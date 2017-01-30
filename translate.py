#!/usr/bin/env python3
"""

Usage: translate.py language
Example: translate.py de
"""

import sys
import re
import os
import yaml


pattern1 = 'dlg:value="%s"'
pattern2 = 'dlg:value="%s:"'
filename = "OOoLilyPond/GUI_Editor.xdl"
fileorig = filename + '.orig'
language = sys.argv[1]
if language == 'en':
    if os.path.exists(fileorig):
        os.rename(fileorig, filename)
    else:
        print("File %s does not exist. Please use git checkout." % fileorig)
    exit(0)

with open(language + '.yaml') as f:
    dictionary = yaml.load(f)

with open(filename) as f:
    text = f.read()
with open(fileorig, 'w') as f:
    f.write(text)

for original, translation in dictionary.items():
    text = text.replace(pattern1 % original, pattern1 % translation)
    text = text.replace(pattern2 % original, pattern2 % translation)

with open(filename, 'w') as f:
    f.write(text)
