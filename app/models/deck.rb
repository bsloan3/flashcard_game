class Deck < ActiveRecord::Base
  has_many :cards
  has_many :rounds, class_name: "Round", foreign_key: "deck_id"
  has_many :users, through: :rounds, source: :user

end
