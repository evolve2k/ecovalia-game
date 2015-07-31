Ecovalia - The National Parks Card Game
=======================================

Ecovalia is a print-and-play card game first conceived at GovHack Unleashed 2015 by a team of students at [@TorrensUni](http://twitter.com/torrensuni) going by the name Torrange Juice.

Objective
---------

You are a Park, in fact a few parks.
Your goal is to grow your parks and maintain their health.
Along the way you will learn of a number of plants and animals.

Games usually take 30-40 minutes to play.

Check out ABOUT.md for more details on the game and how it is played.

Find us online
--------------

[ecovaliagame.com](http://ecovaliagame.com)

[facebook.com/ecovaliagame](http://facebook.com/ecovaliagame)

[twitter.com/ecovaliagame](http://twitter.com/ecovaliagame)

You can watch our GovHack submission video explaining the concept here:

[youtube.com/watch?v=nxVwKvEBytA](https://www.youtube.com/watch?v=nxVwKvEBytA)


Developer Notes
===============

These instructions are for if you want to enhance the game and 
need to regenerate a deck.

Please note Park boards were created outside of this code base.

1. Install required fonts
----------------------
Ecovalia uses the free open source ["Fira Sans" font created by Mozilla](https://www.mozilla.org/en-US/styleguide/products/firefox-os/typeface).

You will need to install the font into your system for it to run.
Fira Sans is identifiable by it's unique 'K' which looks like a arrow leaning against an 'l'.

For ease, we've copied the necessary fonts into /assets/fonts.

On most operating systems it works to, open /assets/fonts, and click on each font to
open a window asking you to save it into your system fonts.

2. Generating the Deck from the code
---------------------------------

  1. Ensure ruby is installed (open a github issue if you have problems)
  2. Install ruby gems

      $ bundle install      # install the required gem packages

      You may also need to do some brewing and the do the bundle install again.

      $ brew install (whatever brew plugin is missing)

  3. Regenerate the deck

      $ ruby deck.rb        # generates new cards into '_OUTPUT' folder

Modifying the Deck
-------------------

  1. Currently we develop the cards in a Google Spreadsheet
  2. Export the spreadsheet to .xlsx format
  3. Overwrite/update spreadsheets in '/data' folder.
  4. Regenerate the deck eg. $ ruby deck.rb

Credit to
---------
The whole of the Ecovalia Team for their great efforts on this game.