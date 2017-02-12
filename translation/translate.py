#!/usr/bin/env python3
"""

Usage: translate.py language
Example: translate.py de
"""

import sys
import re
import os
import yaml


patterns = ['dlg:value="%s"', 'dlg:value="%s:"', 'dlg:help-text="%s"']
filenames = ["OOoLilyPond/GUI_Editor.xdl", "OOoLilyPond/GUI_Config.xdl"]
language = sys.argv[1]

def translatefile(filename, language):
    # reset to original file
    orig = filename + '.orig'
    if os.path.exists(orig):
        os.rename(orig, filename)
    else:
        print("File %s does not exist. Please use git checkout." % orig)

    if language == 'en':
        exit(0)

    with open(language + '.yaml') as f:
        dictionary = yaml.load(f)

    with open(filename) as f:
        text = f.read()
    with open(orig, 'w') as f:
        f.write(text)

    for original, translation in dictionary.items():
        for pattern in patterns:
            text = text.replace(pattern % original, pattern % translation)

    with open(filename, 'w') as f:
        f.write(text)

for filename in filenames:
    translatefile(filename, language)
