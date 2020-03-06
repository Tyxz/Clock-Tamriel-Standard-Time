[CENTER]
[FONT=Arial Black][SIZE=7][COLOR=Orange]Clock[/COLOR][/SIZE][/FONT]
[FONT=Lucida Console]
[SIZE=6]Tamriel Standard Time[/SIZE]
[SIZE=5]by [COLOR=5175ea]@Tyx[/COLOR][/SIZE]
[/FONT]
[FONT=Arial Black][SIZE=5][COLOR=Orange][B]Version 2.2[/B][/COLOR][/SIZE][/FONT]
[SIZE=4]

This is a completely rewritten version of [URL="https://www.esoui.com/downloads/info241-Clock-TamrielStandardTime.html"][COLOR=Orange]Clock - Tamriel Standard Time[/COLOR][/URL]. It will show you the time and date in Tamriel and in the real world together with the current moon phase in Tamriel, as a pretty and fully customizable interface.
[/SIZE][/CENTER]




[SIZE=4][RIGHT][quote]
[SIZE=5][B][COLOR=Red]Dependencies[/COLOR][/B][/SIZE]
[SIZE=4][LIST]
[*][URL="https://www.esoui.com/downloads/info2533-LibClockTST.html"][COLOR=DarkOrange]LibClockTST[/COLOR][/URL]
[*][URL="https://www.esoui.com/downloads/info7-LibAddonMenu.html"][COLOR=DarkOrange]LibAddonMenu-2.0[/COLOR][/URL]
[*][URL="https://www.esoui.com/downloads/info2079-LibFeedback.html"][COLOR=YellowGreen]LibFeedback[/COLOR][/URL][/LIST][/SIZE][/quote][/RIGHT]
[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_1.jpg[/IMG]
I was recently in the mood to update my old [URL="https://www.esoui.com/downloads/info241-Clock-TamrielStandardTime.html"][COLOR=Orange]Clock - Tamriel Standard Time[/COLOR][/URL] addon, but I didn't like the code I wrote six years ago. (Such a long time feels much shorter) Especially the user interface hasn't aged very well. So while I tried to fix a few things, I decided to just rewrite it. :D
I've split the logic (calculation of time, date and moon phase) into a new Library: [URL="https://www.esoui.com/downloads/info2533-LibClockTST.html"][COLOR=Orange]LibClockTST[/COLOR][/URL]the UI part in this one.

I decided to upload it as a new addon, because it will break all old settings and is not yet tested by anyone except myself. (I wrote nice unit tests though :cool:)
The old Clock will stay as a legacy code, but will not get any further updates from me.


[FONT=Arial Black][SIZE=5][COLOR=Orange][B]Custom Textures[/B][/COLOR][/SIZE][/FONT]

I created new textures for moons and Clock which are released under [URL="https://github.com/Tyxz/Clock-Tamriel-Standard-Time/blob/master/LICENSE"][COLOR=Orange]GPL-3[/COLOR][/URL], as is this entire addon. You are free to use any of my code and textures for your own projects as long as you use the same license and it stays Open Source.

[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_6.jpg[/IMG]
[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_3.jpg[/IMG]


[FONT=Arial Black][SIZE=5][COLOR=Orange][B]Various Styles[/B][/COLOR][/SIZE][/FONT]

You can adjust the style of the clock completely. Not just chose from some predefined colours and fonts with their sizes, but you are able to chose any RGBA colour, out of 10 fonts with 6 different styles. The size of the moon and the clock is dynamically adjustable by scrolling with the mouse wheel.

[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_4.jpg[/IMG]
[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_5.jpg[/IMG]


[FONT=Arial Black][SIZE=5][COLOR=Orange][B]Visual Helper[/B][/COLOR][/SIZE][/FONT]

If you hover over the Clock or Moon object, a tooltip will apear giving you further information about the time, date and moon phase. Especially the moon tooltip is quite usful, as it shows you how many days (in Tamriel) and hours (in real time) it will take, until the moon is full again.

[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_10.jpg[/IMG]


[FONT=Arial Black][SIZE=5][COLOR=Orange][B]Fully Customizable[/B][/COLOR][/SIZE][/FONT]

Clock uses the [URL="https://www.esoui.com/downloads/info7-LibAddonMenu.html"][COLOR=Orange]LibAddonMenu-2.0[/COLOR][/URL] to give you a lot of options to customize the Clock to your liking.
For instance, you are now able to just write whatever you want in the Clock label with special variables which will be automatically replaced with their respective value.

[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_7.jpg[/IMG]
[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_8.jpg[/IMG]
[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_2.jpg[/IMG]
[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_9.jpg[/IMG]


[FONT=Arial Black][SIZE=5][COLOR=Orange][B]Manage Settings In Presets[/B][/COLOR][/SIZE][/FONT]
Change the look and feel to one of the default presets or create your own, to quickly change between various settings.

[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_11.jpg[/IMG]
[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_13.jpg[/IMG]
[IMG]https://raw.githubusercontent.com/Tyxz/Clock-Tamriel-Standard-Time/master/dev/Assets/Screenshots/screenshot_12.jpg[/IMG]

[FONT=Arial Black][SIZE=5][COLOR=Orange][B]Modable[/B][/COLOR][/SIZE][/FONT]

I tried to create Clock 2.0 in a way to make it easily possible to create patches and addons for it. For instance, if you want to create your own background texture, you only need [URL="https://www.getpaint.net/"][COLOR=Orange]Paint.net[/COLOR][/URL], create an image with transparent background, save in your patch/mod addon somewhere as an dds image with Linear DX5 format.
Finally, you have to overload the function: [code]Clock_TST.CONSTANTS[/code]Don't worry, it is quite simple:

[highlight="Lua"]
local const = Clock_TST.CONSTANTS()
table.insert(const.Menu.time.BACKGROUND, "MyTextureName")

local myData = {
  path = "PathToMyFileFolder",
  background = "nameOfMyFile.dds",
  hover = "nameOfMyHoverFile.dds" -- optional
}
const.UI.BACKGROUND["MyTextureName"] = myData

Clock_TST.CONSTANTS = function() return const end
[/highlight]

Did not test it though :p


[CENTER][B] [URL="https://tyxz.github.io/Clock-Tamriel-Standard-Time/"][COLOR=Orange]You can find the documentation here.[/COLOR][/URL][/B][/CENTER]

[/SIZE]