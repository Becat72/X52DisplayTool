# X52DisplayTool
Front-end gui for HotasCtrl for OS X

X52DisplayTool:

I created this program as a front-end gui for webbasan's exellent HotasCtrl tool for controling the MFD and LED's of a Saitek X52 and X52Pro Hotas Flight Stick.

I use it primarely for updating information on the MFD in Elite: Dangerous, but you can ofcourse use it any way you like :-)

Prerequisites:

- Because this is only a front-end, You must still have java runtime installed, take a look at webbasan's guide for more info.
- You must obviously also have HotasCtrl.jar. You don't need the source code, just the .jar 

Credits/Links:

- Thanks to Webbasan for his exellent HotasCtrl java tool. Check it out on github at: https://github.com/webbasan/HotasCtrl
- The SaitekX52pro class that webbasan uses was created by Antony T. Curtis in the "Mac Elite: Dangerous" forum. Many thanks to Anthony for this. Check it out on github at: https://github.com/atcurtis/saitekx52pro

Changlelog:

v1.2

- Fixed a problem where the progam wouldn't fuction on OS X Sierra. You now hate to put in the entire path and executable in the preferences.

v1.1

- Changed the LED buttons so you can check/uncheck multiple LED's in one go.
- Some clean-up of the code.
- This version is compatible with OS X 10.10 and 10.11.

v1.0

- Implemented 'Preferences' menu item.
- Some minor bugfixes.

Known issues
- The value for the HotasCtrl.jar location does not get set when the application is initially run. This has to be set manually.

v0.2

Initial release.
