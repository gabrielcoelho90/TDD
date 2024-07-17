require './king.rb'
require './castle.rb'
require './butler.rb'


aladdin_castle = Castle.new("The magical Sultan palace", 'Aladdin')
aladdin_castle.ownership_details # => "The magical Sultan palace is ruled by Aladdin"
aladdin_castle.butler.clean_castle # => "The magical Sultan palace is cleaned!"
