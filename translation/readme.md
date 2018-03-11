# Translation Tool

This simple tool is used to translate the LibreOffice extension for LilyPond in other languages. Currently, French and German are the only available translations.


## Requirements

The tool requires *Python 3* including these packages: *glob*, *shutil* and *yaml*.


## Usage

The translation tool is run from the root directory. A [language code] *lang* must be provided as argument:

    translation/translate.py <lang>

For example:

    translation/translate.py de

It uses the translation given in the file *lang*.yaml in the [yaml] format. For the translation purposes this format is simply:

    original English text: translated text

After running the script, the translated version of the extension code will be located at the translation/extension-*lang* subdirectory. It can be zipped to build a translated extension just like the original extenion.

The whole process is automated in the [Makefile]:

    make de

## Adding new languages

For new translations, just copy [de.yaml] to *language-code*.yaml and replace the German translations after the colon by the correct translation in this language.

[language code]: https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
[yaml]: https://en.wikipedia.org/wiki/YAML
[Makefile]: ../Makefile
[de.yaml]: de.yaml
