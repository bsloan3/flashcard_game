class Round < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :deck
  has_many :guesses, class_name: "Guess", foreign_key: "round_id"

end
