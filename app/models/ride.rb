class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :attraction
  belongs_to :user

  def take_ride
    # if user.height < attraction.min_height
    #   return "Sorry. You are not tall enough to ride the #{attraction.name}."
    # elsif user.tickets < attraction.tickets
    #   return "Sorry. You do not have enough tickets to the #{attraction.name}."
    # elseif
      if user.height < attraction.min_height && user.tickets < attraction.tickets
        return "Sorry. You do not have enough tickets the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
      elsif user.height < attraction.min_height
          return "Sorry. You are not tall enough to ride the #{attraction.name}."
      elsif user.tickets < attraction.tickets
          return "Sorry. You do not have enough tickets the #{attraction.name}."
      end

      tickets_remaining =  user.tickets - attraction.tickets
      nausea_stats =   user.nausea + attraction.nausea_rating
      happiness_stats = user.happiness + attraction.happiness_rating
      user.update(:tickets => tickets_remaining, :nausea => nausea_stats, :happiness => happiness_stats)
  end

  def tickets?
      tickets_remaining =
      user.update
  end

end
