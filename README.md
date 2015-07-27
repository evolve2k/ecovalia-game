Ecovalia - The National Parks Card Game
=======================================

Ecovalia is a print-and-play card game first conceived at GovHack Unleashed 2015 by a team of students at [@TorrensUni](http://twitter.com/torrensuni) going by the name Torrange Juice.

You can watch our GovHack submission video explaining the concept here:
[Link to Youtube Video Coming]

Objective
---------

You are a Park, in fact a few parks.
Your goal is to grow your parks and maintain their health.
Along the way you will learn of a number of plants and animals.

Games take 20-30 minutes to play.

Check out ABOUT.md for more details on the game and how it is played.

Generating the Deck from the code
---------------------------------

  1. Ensure ruby is installed (open a github issue if you have problems)
  2. $ bundle install      # install the required gem packages
  3. $ ruby deck.rb        # generates new cards into '_OUTPUT' folder

Modifying the Deck
-------------------

  1. Currently we develop the cards in a Google Spreadsheet
  2. Export the spreadsheet to .csv format
  3. Overwrite/update one of the spreadsheets in '/data' folder.
  4. Regenerate the deck eg. $ ruby deck.rb

Credit to
---------
The whole of the Ecovalia Team for their great efforts on this game.