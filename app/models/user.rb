class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password

  enum role: [:user, :admin]

   def mood
     if self.happiness && self.nausea
       mood = self.happiness - self.nausea
       mood > 0 ? "happy" : "sad"
     end
   end

   def num_of_rides
     self.attractions.count
   end

  #  def admin
  #    self.role == admin ? true : false
  #  end

end
