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
    translatedescription('%s/pkg-desc/pkg-description.txt' % langdir, language)
    notfound = None
    for filename in glob.glob('%s/OOoLilyPond/*.x??' % langdir):
        notfound = translatefile(filename, language, notfound)

    # show replacement strings which were not found
    notfound.remove('description')
    if notfound:
        print("Warning: These strings were not found:")
        for line in notfound:
            print("  %r" % line)

def translatefile(filename, language, notfound):
    """translate a file using the dictionary in <language>.yaml"""
    patterns = ['dlg:value="%s"', 'dlg:value="%s:"', 'dlg:help-text="%s"',
        '&quot;%s&quot;', '&quot;%s &quot;', '&quot; %s&quot;', '&quot; %s &quot;',
        '&quot;%s:&quot;','&quot;%s: &quot;']

    with open('translation/%s.yaml' % language) as f:
        dictionary = yaml.load(f)

    if notfound is None:
        notfound = list(dictionary.keys())
    with open(filename) as f:
        text = f.read()

    for original, translation in dictionary.items():
        if not isinstance(original, str):
            print("Warning: bad type %r for entry: %s" % (type(original), original))
        for pattern in patterns:
            if (pattern % original) in text and original in notfound:
                notfound.remove(original)
            text = text.replace(pattern % original, pattern % translation)

    with open(filename, 'w') as f:
        f.write(text)
    return notfound

def translatedescription(filename, language):
    """Translate description file"""
    with open('translation/%s.yaml' % language) as f:
        dictionary = yaml.load(f)

    with open(filename, 'w') as f:
        f.write(dictionary['description'])

translate(language=sys.argv[1])
