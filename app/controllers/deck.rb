# post '/deck/:id' do
#   @deck = Deck.find_by(category: params[:user])
#   @all_cards = Deck.find(:id).cards

#   redirect "/decks/#{@deck.id}"

#   erb :'user/index'
# end

get '/deck/:id' do
  @deck = Deck.find_by(id: params[:id])
  @cards = @deck.cards
  @round = Round.create(deck_id: params[:id], user_id: current_user.id)
  session[:cards]  = @cards.map {|card| card.id}

  erb :'decks/index'
end
