require 'squib'

light = '#F3EFE3'
dark = '#230602'

# Fauna
Squib::Deck.new(cards: 4, layout: %w(hand.yml layout.yml)) do
  deck = xlsx(file: 'data/fauna.xlsx')
  svg file: deck['Art'], layout: 'Art'
  background color: 'brown'
  %w(Title Category Instructions Facts).each do |key|
    text str: deck[key], layout: key
  end
  save_png prefix: 'fauna_'
  showcase file: 'fauna_showcase.png', fill_color: '#0000'
  hand file: 'fauna_hand.png', trim: 37.5, trim_radius: 25, fill_color: '#0000'
end

# Facilities

Squib::Deck.new(cards: 4, layout: %w(hand.yml layout.yml)) do
  deck = xlsx(file: 'data/facilities.xlsx')
  svg file: deck['Art'], layout: 'Art'
  background color: 'purple'
  %w(Title Category Instructions Facts).each do |key|
    text str: deck[key], layout: key
  end
  save_png prefix: 'facilities_'
  showcase file: 'showcase.png', fill_color: '#0000'
  hand file: 'hand.png', trim: 37.5, trim_radius: 25, fill_color: '#0000'
end

# Emergency

Squib::Deck.new(cards: 4, layout: %w(hand.yml layout.yml)) do
  deck = xlsx(file: 'data/emergency.xlsx')
  svg file: deck['Art'], layout: 'Art'
  background color: 'red'
  %w(Title Category Instructions Facts).each do |key|
    text str: deck[key], layout: key
  end
  save_png prefix: 'emergency_'
  showcase file: 'showcase.png', fill_color: '#0000'
  hand file: 'hand.png', trim: 37.5, trim_radius: 25, fill_color: '#0000'
end
