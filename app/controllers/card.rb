get '/card/:deck_id/:id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @cards = @deck.cards

  erb :'cards/index'
end

post '/card/:id' do

  @card = Card.find_by(id: :id)

  erb :'cards/index'
end