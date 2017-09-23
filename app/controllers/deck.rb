# post '/deck/:id' do
#   @deck = Deck.find_by(category: params[:user])
#   @all_cards = Deck.find(:id).cards

#   redirect "/decks/#{@deck.id}"

#   erb :'user/index'
# end

get '/deck/:id' do
  @deck = Deck.find_by(id: params[:id])

  erb :'decks/index'
end

post '/deck/:id' do
  @deck = Deck.find_by(id: params[:id])

  erb :'decks/index'
end
