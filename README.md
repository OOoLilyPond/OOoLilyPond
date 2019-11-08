# OOoLilyPond

OOoLilyPond (OLy) is a LibreOffice/OpenOffice extension to include LilyPond music fragments in text documents.

<a href="http://lilypondblog.org/wp-content/uploads/2017/03/OLy-Editor-Window-02-1.gif"><img class="aligncenter wp-image-4674 size-medium" src="http://lilypondblog.org/wp-content/uploads/2017/03/OLy-Editor-Window-02-1-300x276.gif" width="300" height="276" /></a>

## Installation

Being a [LibreOffice]/[OpenOffice] extension, you need a version of LibreOffice / OpenOffice installed on your computer, first.  
  Second, the music engraving software [LilyPond] must be installed on your system.  
  Then just download the latest OLy release from the [download] page.  
  The extension can be installed either by opening it with LibreOffice or by following these steps in the menu:

*Extras > Extension Manager… > Add…*

and then choosing the downloaded extension file (.oxt).

Your toolbars in Writer, Impress and Draw should now have a new "OLy" button which launches the extension.

**You can find a detailed documentation [here in the wiki](https://github.com/openlilylib/LO-ly/wiki/Installation#installation).**

## Usage

[LilyPond] is a powerful musical typesetting software that compiles given source code into graphical output, just like LaTeX does with mathematical formulas. 

OOoLilyPond enables you to enter LilyPond code from within your Office document.  
  Both the resulting image and its source code will be embedded within the document.  
  No need to keep any additional files other than the Writer/Draw/Impress document itself.

To create a new OLy object, just click the "OLy" button and an editor window will open. Enter some LilyPond code and click the "LilyPond" button. After successful compiling, the editor window will close and the resulting image will be visible in your document. 

To edit an existing object, select it first and then click the "OLy" button. In the editor window you will have access to your code again.

If you want to get to know LilyPond, a good place to start is the [introduction] into LilyPond.

### Compatibility 

OOoLilyPond (OLy) works with recent versions of LibreOffice and OpenOffice. Older versions should work as well. It has even been tested with OpenOffice 2.4 without issues. 

Update: Some partial incompatibilities have occured in LibreOffice 6.1.0 to 6.1.4 - see [Issue 22].

Any content (LilyPond code, templates, OLy configuration files) created with/for OLy 0.4.x will work with OLy 0.5.x - and vice versa. (Fully compatible, forward and backward.)
Older snippets created with OLy 0.3.x will also work with 0.4.x and 0.5.x, but not (necessarily) vice versa.


[LibreOffice]: http://libreoffice.org/
[OpenOffice]: http://www.openoffice.org/
[LilyPond]: http://lilypond.org
[download]: https://github.com/openlilylib/LO-ly/wiki/Downloads
[introduction]: http://lilypond.org/introduction.html
[Introduction into OOoLilyPond]: http://lilypondblog.org/2017/04/ooolilypond-creating-musical-snippets-in-libreoffice-documents/
[Scores of Beauty]: http://lilypondblog.org/
[Issue 22]: https://github.com/openlilylib/LO-ly/issues/22#issuecomment-462500338

## Authors

Copyright © 2005 Geoffroy Piroux  
Copyright © 2009 Samuel Hartmann  
Copyright © 2017 Klaus Blum

## License

This program is free software. It is licensed under the [GPL3].

[GPL3]: https://www.gnu.org/licenses/gpl.html "GPL3"
