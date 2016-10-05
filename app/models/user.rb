class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password

  enum role: [:user, :admin]

  def mood
    if  happiness > nausea
      return "happy"
    else
      return "sad"
    end
  end

end
