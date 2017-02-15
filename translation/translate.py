#!/usr/bin/env python3
"""
Translation tool for the LilyPond LibreOffice extension

Usage:   translation/translate.py <language>
Example: translation/translate.py de
"""

import glob
import re
import shutil
import sys
import yaml


def translate(language):
    """translate the current extension code to the given language"""
    # create a copy of the extension folder for the given language
    langdir = 'translation/extension-%s' % language
    shutil.rmtree(langdir, ignore_errors=True)
    shutil.copytree('extension', langdir)

    # replace english strings with translated strings in this copy
    for filename in glob.glob('%s/OOoLilyPond/*.x??' % langdir):
        translatefile(filename, language)
    translatedescription('%s/pkg-desc/pkg-description.txt' % langdir, language)


def translatefile(filename, language):
    """translate a file using the dictionary in <language>.yaml"""
    patterns = ['dlg:value="%s"', 'dlg:value="%s:"', 'dlg:help-text="%s"',
        '&quot;%s&quot;', '&quot;%s &quot;', '&quot; %s&quot;', '&quot; %s &quot;',
        '&quot;%s:&quot;','&quot;%s: &quot;']

    with open('translation/%s.yaml' % language) as f:
        dictionary = yaml.load(f)

    with open(filename) as f:
        text = f.read()

    for original, translation in dictionary.items():
        if not isinstance(original, str):
            print("Warning: bad type %r for entry: %s" % (type(original), original))
        for pattern in patterns:
            text = text.replace(pattern % original, pattern % translation)

    with open(filename, 'w') as f:
        f.write(text)


def translatedescription(filename, language):
    """Translate description file"""
    with open('translation/%s.yaml' % language) as f:
        dictionary = yaml.load(f)

    with open(filename, 'w') as f:
        f.write(dictionary['description'])

translate(language=sys.argv[1])
