require 'squib'

light = '#F3EFE3'
dark = '#230602'

Squib::Deck.new(cards: 4, layout: %w(hand.yml layout.yml)) do
  background color: dark
  deck = xlsx(file: 'data/deck.xlsx')
  # svg file: deck['Art'], layout: Fauna

  %w(Title Description Snark).each do |key|
    text str: deck[key], layout: key
  end

  %w(Defend Health).each do |key|
    svg file: "assets/icons/#{key.downcase}.svg", layout: "#{key}Icon"
    text str: deck[key], layout: key
  end

  save_png prefix: 'even_bigger_'
  showcase file: 'showcase.png', fill_color: '#0000'
  hand file: 'hand.png', trim: 37.5, trim_radius: 25, fill_color: '#0000'
end