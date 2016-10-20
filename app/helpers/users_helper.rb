module UsersHelper

   def admin
     self.role == admin ? true : false
   end
end
