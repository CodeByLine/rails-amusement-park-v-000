class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password

  validates :name, :presence => true, :uniqueness => true #,:length => { :in => 6..12 }
  # validates :password, :confirmation => true
  # validates_length_of :password, :in => 6..12, :on => :create
  enum role: [:user, :admin]

  def mood
    if  happiness > nausea
      return "happy"
    else
      return "sad"
    end
  end

end
