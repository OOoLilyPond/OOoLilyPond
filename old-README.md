This file is a more or less raw copy of the old introductory web page on
http://ooolilypond.sourceforge.net/


# Installation
## Installing under Windows and Linux

Make sure that the following software is installed:
- LilyPond 2.10 or newer (older versions may also work)
- OpenOffice.org 2.4 or newer

Download the newest OOoLilyPond extension (OOoLilyPond-0.x.x.oxt).

Start OpenOffice.org
Open the extension manager. You find it in the menu “Tools”.

Click “Add...” and select the downloaded package and install it.

Open a new Writer, Draw or Impress Document, the OOoLilyPond toolbar appears (at
the moment the only button is “OLy”).

## Installing on Mac OS X

The current release of OOoLilyPond hat not been tested on Mac OS X but it should
work as it works on Linux machines. OLy can also be used in NeoOffice.

Follow the installation procedures given for Windows or Linux.

Mac-specific instructions:
- Start OpenOffice.org / NeoOffice - Click the “OLy”-button to bring up the OOoLilyPond window.
- Click the Config button.
- In the field “LilyPond Executable” type “/Applications/LilyPond.app/Contents/Resources/bin/lilypond”.
- Click “OK”.

# First Steps

Place the cursor in a Writer document. Click the “OLy”-button in the tool bar to
open the OOoLilyPond Editor.

Select a template (you can also keep the default).

Select the Staff Size you like.

Adjust the line width to the value that corresponds to your Writer document. The default should be OK for A4.

Click the “LilyPond”-button. This translates the example of the template and
inserts it into the Writer document.

Select the newly created musical notation object and click the “OLy”-button again.

The OOoLilyPond editor window opens again with all the settings from last time.
In the large input field, you can change the notes (may be you need to scroll
down to see the code for the notes). For learning the syntax of the LilyPond
language read the LilyPond documentation. I recommend to start with the chapter
Simple notation. Getting Help

For getting help on how to use or install OOoLilyPond visit the forums .

For learning the syntax of the LilyPond language read the LilyPond
documentation. Best starting point is the chapter Simple notation. Known Issues

Using the eps format on Windows does not to work.

OLy objects copied from Writer into Impress or Draw are not recognized anymore
as OLy objects. The copied objects cannot be edited further. As a work around
open the object to copy in Writer with OLy and select all the code (CTRL-A).
Create a new OLy object in Impress or Draw and paste the copied Code.

When printing documents containing OOoLilyPond objects in eps format
OpenOffice.org asks if the transperency should be reduced. The right option to
get high quality results is "yes".

When using OOoLilyPond with the window manager Compiz (default in gnome when
using desktop effects) the OOoLilyPond Window and appear too small. To get
OOoLilyPond working properly switch to the Metacity window manager. You can do
this temporarily with the following command:

$ metacity --replace

When using OOoLilyPond you loose the clipbaord contents. This is because
OOoLilyPond uses the clipboard to insert the image. Hopefully this can be
avoided in future versions.

# FAQ

When Compiling the code I get the following error:
lilypond: /usr/lib/openoffice/program/libstdc++.so.6: version
'CXXABI_1.3.1' not found (required by lilypond)

Edit the lilpond macro code as described in the following:

In OpenOffice.org from the Menu choose:
Tools --> Marcros --> Organise Macros --> OpenOffice.org Basic
Select under "Macro from": My Macros --> OOoLilyPond --> Subs
Select the Macro "CallLilyPond"
Click Edit

find the Line:
& Chr(34) & sLilyPondExecutable & Chr(34)

change it to:
& "env LD_LIBRARY_PATH= " & Chr(34) & sLilyPondExecutable & Chr(34)

Switch back to OpenOffice.org Writer, start the macro.
Credits

OOoLilyPond would not exist without the two great softwares LilyPond and
OpenOffice.org. Therefore I like to thank all the developers of OpenOffice.org
and LilyPond. Many thanks also to Geoffroy Piroux who has written the macro
OOoLaTeX.  from which OOoLilyPond has been derived. Thanks also to Andy May for
the installation instructions for Mac OS X, to Goran Rakic for providing the
OpenOffice.org extension package and to Hugo Ribeiro, Francisco Villa and Daniel
Cartron for translating the web page into portuguese, spanish and french.
