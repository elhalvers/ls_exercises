=begin
problem:
We started working on a card game but got stuck. 
Check out why the code below raises a TypeError.

Once you get the program to run and produce a sum,
you might notice that the sum is off: It's lower than it should be.
Why is that?

=end

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards
         }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit
cards = nil

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

p cars



#sum = deck.reduce(0) do | sum, (_, remaining_cards) |
#        remaining_cards.map do |card|
#          score(card).to_i
#        end
#
#        sum += remaining_cards.sum
#      end

#puts sum
