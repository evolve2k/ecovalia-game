require 'squib'

fauna_color 		 = 'brown'  # brown
flora_color 		 = 'green'  # green
facilities_color = 'blue'   # blue
goodnews_color   = 'yellow' # yellow
emergency_color  = 'red'    # red


##### Fauna Cards ########################################################

Squib::Deck.new(cards: 18, layout: %w(hand.yml layout.yml)) do
	deck_name = "fauna"
	background color: fauna_color

  deck = xlsx(file: "data/#{deck_name}.xlsx")
  svg file: deck['Art'], layout: 'Art'
  %w(Title Category Instructions Facts).each do |key|
    text str: deck[key], layout: key
  end

  save_pdf file: "#{deck_name}-cards.pdf",
			 width: "8.27in", height: "11.69in", 
			 margin: 75, gap: 5, trim: 37
end

##### Flora Cards ########################################################

Squib::Deck.new(cards: 18, layout: %w(hand.yml layout.yml)) do
	deck_name = "flora"
	background color: flora_color

  deck = xlsx(file: "data/#{deck_name}.xlsx")
  svg file: deck['Art'], layout: 'Art'
  %w(Title Category Instructions Facts).each do |key|
    text str: deck[key], layout: key
  end

  save_pdf file: "#{deck_name}-cards.pdf",
			 width: "8.27in", height: "11.69in", 
			 margin: 75, gap: 5, trim: 37
end


##### Facilities Cards ####################################################

Squib::Deck.new(cards: 18, layout: %w(hand.yml layout.yml)) do
	
	deck_name = "facilities"
	background color: facilities_color

  deck = xlsx(file: "data/#{deck_name}.xlsx")
  svg file: deck['Art'], layout: 'Art'
  %w(Title Category Instructions Facts).each do |key|
    text str: deck[key], layout: key
  end

  save_pdf file: "#{deck_name}-cards.pdf",
			 width: "8.27in", height: "11.69in", 
			 margin: 75, gap: 5, trim: 37
end

##### Emergency Cards #####################################################

Squib::Deck.new(cards: 9, layout: %w(hand.yml layout.yml)) do
	deck_name = "emergency"
	background color: emergency_color

  deck = xlsx(file: "data/#{deck_name}.xlsx")
  svg file: deck['Art'], layout: 'Art'
  %w(Title Category Instructions Facts).each do |key|
    text str: deck[key], layout: key
  end

  save_pdf file: "#{deck_name}-cards.pdf",
			 width: "8.27in", height: "11.69in", 
			 margin: 75, gap: 5, trim: 37
end

##### Good News Cards #####################################################

Squib::Deck.new(cards: 9, layout: %w(hand.yml layout.yml)) do
	deck_name = "goodnews"
	background color: goodnews_color

  deck = xlsx(file: "data/#{deck_name}.xlsx")
  svg file: deck['Art'], layout: 'Art'
  %w(Title Category Instructions Facts).each do |key|
    text str: deck[key], layout: key
  end

  save_pdf file: "#{deck_name}-cards.pdf",
			 width: "8.27in", height: "11.69in", 
			 margin: 75, gap: 5, trim: 37
end