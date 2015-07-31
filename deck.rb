require 'squib'

fauna_color 		 = '#74002f'  # maroon
flora_color 		 = '#387228'  # green
facilities_color = '#006a7e'  # teal
goodnews_color   = '#f0c600'  # yellow
emergency_color  = '#db5800'  # orange
management_color = '#005077'  # blue

##### Fauna Cards ########################################################

Squib::Deck.new(cards: 18, layout: %w(hand.yml layout.yml)) do
	deck_name = "fauna"
	background color: fauna_color

  deck = xlsx(file: "data/#{deck_name}.xlsx")
  svg file: deck['Art'], layout: 'Art'
  text str: deck["Category"], layout: "Category", font: 'Fira Sans Heavy 72'
  text str: deck["Title"], layout: "Title", font: 'Fira Sans 36'
  text str: deck["Instructions"], layout: "Instructions", font: 'Fira Sans 24'
  text str: deck["Facts"], layout: "Facts", font: 'Fira Sans 18'

  save_pdf file: "#{deck_name}-cards.pdf",
			 width: "8.27in", height: "11.69in", 
			 margin: 75, gap: 1, trim: 37
end

##### Flora Cards ########################################################

Squib::Deck.new(cards: 18, layout: %w(hand.yml layout.yml)) do
	deck_name = "flora"
	background color: flora_color

  deck = xlsx(file: "data/#{deck_name}.xlsx")
  svg file: deck['Art'], layout: 'Art'
  text str: deck["Category"], layout: "Category", font: 'Fira Sans Heavy 72'
  text str: deck["Title"], layout: "Title", font: 'Fira Sans 36'
  text str: deck["Instructions"], layout: "Instructions", font: 'Fira Sans 24'
  text str: deck["Facts"], layout: "Facts", font: 'Fira Sans 18'

  save_pdf file: "#{deck_name}-cards.pdf",
			 width: "8.27in", height: "11.69in", 
			 margin: 75, gap: 1, trim: 37
end


##### Facilities Cards ####################################################

Squib::Deck.new(cards: 9, layout: %w(hand.yml layout.yml)) do
	
	deck_name = "facilities"
	background color: facilities_color

  deck = xlsx(file: "data/#{deck_name}.xlsx")
  svg file: deck['Art'], layout: 'Art'
  text str: deck["Category"], layout: "Category", font: 'Fira Sans Heavy 72'
  text str: deck["Title"], layout: "Title", font: 'Fira Sans 36'
  text str: deck["Instructions"], layout: "Instructions", font: 'Fira Sans 24'
  text str: deck["Facts"], layout: "Facts", font: 'Fira Sans 18'

  save_pdf file: "#{deck_name}-cards.pdf",
			 width: "8.27in", height: "11.69in", 
			 margin: 75, gap: 1, trim: 37
end

##### Emergency Cards #####################################################

Squib::Deck.new(cards: 9, layout: %w(hand.yml layout.yml)) do
	deck_name = "emergency"
	background color: emergency_color

  deck = xlsx(file: "data/#{deck_name}.xlsx")
  svg file: deck['Art'], layout: 'Art'
  text str: deck["Category"], layout: "Category", font: 'Fira Sans Heavy 72'
  text str: deck["Title"], layout: "Title", font: 'Fira Sans 36'
  text str: deck["Instructions"], layout: "Instructions", font: 'Fira Sans 24'
  text str: deck["Facts"], layout: "Facts", font: 'Fira Sans 18'

  save_pdf file: "#{deck_name}-cards.pdf",
			 width: "8.27in", height: "11.69in", 
			 margin: 75, gap: 1, trim: 37
end

##### Good News Cards #####################################################

Squib::Deck.new(cards: 9, layout: %w(hand.yml layout.yml)) do
	deck_name = "goodnews"
	background color: goodnews_color

  deck = xlsx(file: "data/#{deck_name}.xlsx")
  svg file: deck['Art'], layout: 'Art'
  text str: deck["Category"], layout: "Category", font: 'Fira Sans Heavy 72'
  text str: deck["Title"], layout: "Title", font: 'Fira Sans 36'
  text str: deck["Instructions"], layout: "Instructions", font: 'Fira Sans 24'
  text str: deck["Facts"], layout: "Facts", font: 'Fira Sans 18'

  save_pdf file: "#{deck_name}-cards.pdf",
			 width: "8.27in", height: "11.69in", 
			 margin: 75, gap: 1, trim: 37
end

##### Management Cards #####################################################

Squib::Deck.new(cards: 9, layout: %w(hand.yml layout.yml)) do
  deck_name = "management"
  background color: management_color

  deck = xlsx(file: "data/#{deck_name}.xlsx")
  svg file: deck['Art'], layout: 'Art'
  text str: deck["Category"], layout: "Category", font: 'Fira Sans Heavy 72'
  text str: deck["Title"], layout: "Title", font: 'Fira Sans 36'
  text str: deck["Instructions"], layout: "Instructions", font: 'Fira Sans 24'
  text str: deck["Facts"], layout: "Facts", font: 'Fira Sans 18'

  save_pdf file: "#{deck_name}-cards.pdf",
       width: "8.27in", height: "11.69in", 
       margin: 75, gap: 1, trim: 37
end