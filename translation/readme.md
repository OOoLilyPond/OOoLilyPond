# Translation Tool

This simple tool is used to translate the LibreOffice extension for LilyPond in other languages. Currently, German is the only available translation.


## Requirements

The tool requires *Python 3* including these packages: *glob*, *shutil* and *yaml*.


## Usage

The translation tool is run from the root directory. A language code must be provided as argument:

    translation/translate.py <language-code>

For example:

    translation/translate.py de

It uses the translation given in the file *language-code*.yaml in the [yaml] format. For the translation purposes this format is simply:
[yaml]: https://en.wikipedia.org/wiki/YAML

    original English text: translated text

After running the script, the translated version of the extension code will be located at the translation/extension-*language* subdirectory. It can be zipped to build a translated extension just like the original extenion.
