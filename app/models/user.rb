class User < ActiveRecord::Base
  validates :username, :email, { presence: true, uniqueness: true, length: { maximum: 64 } }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  has_many :rounds
  has_many :guesses, through: :rounds, source: :guesses
  has_many :decks, through: :rounds, source: :deck

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    return nil unless user

    if user.password == password
      return user
    else
      return nil
    end
  end

end
