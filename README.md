![ClockTST](dev/clock.jpg)

[![Website](https://img.shields.io/website-up-down-green-red/http/shields.io.svg?maxAge=2592000)](http://www.esoui.com/downloads/info241-Clock-TamrielStandardTime.html)
[![Twitter URL](https://img.shields.io/twitter/url/http/shields.io.svg?style=social&maxAge=2592000?style=flat)](https://twitter.com/Tyxzs)

Clock - Tamriel Standard Time
======
Updates
----------
**Clock - TST** comes with a **Date System and is localized in English and German** since Version 0.5.4

'You may have to reset [* /cl reset* ] your Clock to work proper and to use the new improved times.
All custom changes will be changed back to default values if you do so!'

Version 0.5.0 brings moon phase support to **Clock - TST**
You can adjust it like the time in the settings.

The moon phase addition is still a beta. You may have to adjust the time of the moon cycle in your settings.

With Version 0.5.1 the current moon phase (still only a empty value since real data to the start of a moon phase is lacking) is now shown to you as a icon at the left side of your clock. The time value, in real time hours, until the next phase is printed on top of it.

Thank you Munkry for the suggestion.

Version 0.5.2 lets you activate a realtime and date info.
The moon cycle got updated but is far from accurate. I am sorry for that.

Thank you Saftsuse for the suggestion.

Version 0.5.3 lets you reset the look of your clock without resetting your own sync. 
/cl resetUI

Thank you Friiar for the suggestion.

The moon cycle is still far from perfect.

Please have patience until I have more time to work on it - or try to sync it yourself.
If you got a working moon cycle, please tell me your times (or send me the Clock.lua in your Document/ese/saved variables folder). It would help me and the other Clock user a lot 

Version 0.5.4 brings some major Updates with it.

First of all: I rewrote the settings panel (do to the update of Seerahs LibAddonMenu to 2.0)

The panel can be called with writing the command /clsettings in the chat.

Thank you Sephiroth018 for the notice.

You can access the new panel over the "Esc" menu -> Addons -> Clock.

With this version comes a second supported language : German.
The localization is not completed yet, but you can still change the language in the settings panel now.

You have to write the command /reloadui to change the language of the settings panel.

There are a few new toggle options in the settings panel:
[Moveable] The Clock can now become set on one location, so you don't accidentally move it during a fight.

Thanks fosley for the explanation how to do so.

[Add Zeros] You can delete the zero added to a single number: 01:12 -> 1:12

Thanks for the request LegoManIAm94

A lore date system was added to the Clock.
You can toggle it on over the command line or the settings menu
[Show lore Date] /cl ldate Will place the real Tamriel date in front of Time
[Show fake lore Date] /cl fldate Will place a fake Tamriel date in front of Time

The fake date does only count days like the real one and sync the month and the year with the current time.
The real date will calculate the date based on the set daylength and starts calculating at 00:00:00 4.4.2014 or Tamriel Time 00:00:00 4.4. 2E 582

Settings to change the format the dates are shown will maybe come with the next version.

And one last small thing comes with this Update:
The Clock Addon now uses only one global variable (instead of... 5 or so) "cl", which will prevent possible conflicts with other Addons alot.


Version 0.5.5 introduce more customizations:

You can now select to hide the lore time (and only see the lore date, moon phase, real time or real date).
In the settings panel you can also change the format the Clock shows you the date/time:

Use '_' before a variable

Year: 
_Y = 582 (14)
_YY = 2E 582 (2014)
Month: 
_M = 4
_MM = 04
_MMM = First Seed (April)
Day: 
_D = 4
_DD = 04
_DDD = Fredas (Friday)

Hour: 
_h = 9
_hh = 09
Minute:
_m = 9
_mm = 09
Second: 
_s = 9
_ss = 09

Example
_DDD, _D day of _MMM _YY _hh:_mm:_ss

Fredas, 4th day of First Seed 2E 582
Friday, 4th day of April 2014


If you want a new feature to be added too, feel free to suggest it here.


Features
-------------

This AddOn will show you the current time in Tamriel.
It is displayed on the Interface wherever you want it to be - completely movable.
You are also able to set the size, font and style of the clock to your liking.

The time in Tamriel is not a fact.

There is not function in the API which gets us the length back.
Many people right now are trying to figure out how long a day is.
Zenimax Online stated in their FAQ that the time is a bit less than 5h, but after many tests I think it is more like 5.5 - 6h.
If you agree with me or not is up to you.
You are able to customize the length of the day easily in the Clock - TST settings.
This can be done to a precision of seconds.

The time could be off after a maintenance or something else.
With the settings menu or commands you can choose one out of four times to synchronize the clock.
For example you see the sun right under your South needle of the compass. 
You are sure that it is noon right now. 
No problem: Just write /cl noon in the chat or use the "Noon is now!" button in the settings to sync your clock.

The best way to sync your Clock is to set the clock to noon at noon and wait a day or more (ingame).
Then set your time (at noon again) so that your clock shows exactly 12:00.
When this is done you should have a perfectly synced clock
Noon is best because you can see the sun and you have a compass 
So just wait until the sun is right under you South sign at you compass.

If you are from the US or any other country which uses a 12-hour clock, you are able to change the clock to that format too. You can even hide the am/pm signs.
Of course you can use the formats: 12h or 24h wherever you are from.

I personaly love to see the seconds pass by. It is fun to see if they reach the zero or step over it (because of the game to real time ratio). It is like the screensaver of a DVD player... you have to watch for some reason.
If they distract you to much - like me - or you just don't want to see them, just disable them.
You can disable to show seconds in the settings menu.

You can let the Clock AddOn show you the current moon phase and the time to the next one.
This feature is like the time not based on a fact but on a adjustable algorithm.
You can customize the length of a moon phase at the settings menu.


Settings
-----------

You can easily change all settings in the menu.
To open it press "esc" -> choose "settings" and look for "Clock - Tamriel Standard Time".


Commands
---------------
If it is to much of a hassle for you, there are also chat commands.
The meta command is /cl
/cl active toggle the clock on or off
/cl date toggle the date on or off
/cl help will give all available commands
/cl moon toggle the lines for the moon phase under your clock on or off
/cl rt toggle the Real Time on or off
/cl reset resets the clock to the default values (all saved values will be lost)
/cl resetUI resets the changes only to the clock look
/cl sec toggle to show seconds on or off
/cl show shows the length of a day and the upcoming times in real world time

Synchronize the Clock
/cl midnight will save the current time as midnight
/cl sunrise will save the current time as sunrise
/cl noon will save the current time as noon
/cl sunset will save the current time as sunset

/cl us Toggle am/pm format on or off


Bugs
---------

Clock will "jump" around if you activate or deactivate the date functions

The settings panel does not refresh automatically after a language change
If you notice one please use this link to report it.
It will help me a lot.



ToDo
-----------
0.5 Create moon cycle database
0.6 Display for moon cycle
0.7 Make clock visible at the map
0.8 Animate clock
0.9 Animate clock objects
1.0 Add moon cycle to the clock (animated)
