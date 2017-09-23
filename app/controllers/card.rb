get '/card/:deck_id/:id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @cards = @deck.cards
  @card = @cards.find_by(id: params[:id])
  @current_card = session[:cards].sample
  @question = Card.find_by(id: @current_card).question
  p session

  erb :'cards/index'
end



post '/card/:deck_id/:id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @cards = @deck.cards
  @card = @cards.find_by(id: params[:id])
  @round = Round.last
  @answer = Card.find_by(id: params[:id]).answer
  if params[:guess][:user_guess] == @card.answer
    Guess.create(user_guess: params[:guess][:user_guess], guess: true, round_id: @round.id, card_id: @card.id)
    session[:cards] = session[:cards].reject { |card| card == @card.id}
    if session[:cards].empty?
      redirect "/profile/#{current_user.id}"
    else
      redirect "/card/#{params[:deck_id]}/#{session[:cards].sample}"
    end
  else
    Guess.create(user_guess: params[:guess][:user_guess], guess: false, round_id: @round.id, card_id: @card.id)
    redirect "/card/#{params[:deck_id]}/:id"
  end

  erb :'cards/index'
end
