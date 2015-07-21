require 'squib'

Squib::Deck.new(cards: 4, layout: %w(hand.yml even-bigger.yml)) do
  background color: '#230602'
  deck = xlsx file: 'even-bigger.xlsx'
  svg file: deck['Art'], layout: 'Art'

  %w(Title Description Snark).each do |key|
    text str: deck[key], layout: key
  end

  %w(Attack Defend Health).each do |key|
    svg file: "#{key.downcase}.svg", layout: "#{key}Icon"
    text str: deck[key], layout: key
  end

  save_png prefix: 'even_bigger_'
  showcase file: 'showcase.png', fill_color: '#0000'
  hand file: 'hand.png', trim: 37.5, trim_radius: 25, fill_color: '#0000'
end