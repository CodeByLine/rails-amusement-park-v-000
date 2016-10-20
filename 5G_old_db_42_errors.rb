// ♥ rspec

Feature Test: User Signup
  successfully signs up as non-admin (FAILED - 1)
  on sign up, successfully adds a session hash (FAILED - 2)
  successfully logs in as non-admin (FAILED - 3)
  on log in, successfully adds a session hash
  prevents user from viewing user show page and redirects to home page if not logged in
  successfully signs up as admin (FAILED - 4)
  on sign up for admin, successfully adds a session hash (FAILED - 5)
  successfully logs in as admin (FAILED - 6)
  on log in, successfully adds a session hash to admins (FAILED - 7)

Feature Test: User Signout
  has a link to log out from the users/show page (FAILED - 8)
  redirects to home page after logging out (FAILED - 9)
  successfully destroys session hash when 'Log Out' is clicked (FAILED - 10)
  has a link to log out from the users/show page when user is an admin (FAILED - 11)
  redirects to home page after admin logs out when user is an admin (FAILED - 12)
  successfully destroys session hash when 'Log Out' is clicked as admin (FAILED - 13)

Feature Test: Go on a Ride
  has a link from the user show page to the attractions index page (FAILED - 14)
  links from the user show page to the attractions index page (FAILED - 15)
  prevents users from editing/deleting/adding rides on the index page (FAILED - 16)
  has titles of the rides on the attractions index page (FAILED - 17)
  has links on the attractions index page to the attractions' show pages (FAILED - 18)
  links from the attractions index page to the attractions' show pages (FAILED - 19)
  prevents users from editing/deleting a ride on the show page (FAILED - 20)
  has a button from the attraction show page to go on the ride (FAILED - 21)
  clicking on 'Go on this ride' redirects to user show page (FAILED - 22)
  clicking on 'Go on this ride' updates the users ticket number (FAILED - 23)
  clicking on 'Go on this ride' updates the users mood (FAILED - 24)
  when the user is tall enough and has enough tickets, clicking on 'Go on this ride' displays a thank you message (FAILED - 25)
  when the user is too short, clicking on 'Go on this ride' displays a sorry message (FAILED - 26)
  when the user doesn't have enough tickets, clicking on 'Go on this ride' displays a sorry message (FAILED - 27)
  when the user is too short and doesn't have enough tickets, clicking on 'Go on this ride' displays a detailed sorry message (FAILED - 28)

Feature Test: Admin Flow
  displays admin when logged in as an admin on user show page (FAILED - 29)
  links to the attractions from the users show page when logged in as a admin (FAILED - 30)
  has a link from the user show page to the attractions index page when in admin mode (FAILED - 31)
  allows admins to add an attraction from the index page (FAILED - 32)
  allows admins to add an attraction (FAILED - 33)
  has link to attraction/show from attraction/index page for admins (FAILED - 34)
  does not suggest that admins go on a ride (FAILED - 35)
  links to attractions/show page from attractions/index (FAILED - 36)
  does not suggest that an admin go on a ride from attractions/show page (FAILED - 37)
  has a link for admin to edit attraction from the attractions/show page (FAILED - 38)
  links to attraction/edit page from attraction/show page when logged in as an admin (FAILED - 39)
  updates an attraction when an admin edits it (FAILED - 40)

Attraction
  is valid with a name, min_height, nausea_rating, happiness_rating, and ticket number
  has many rides
  has many users through rides

Ride
  is valid with a user_id and a attraction_id
  belongs to one attraction
  belongs to one user
  has a method 'take_ride' that accounts for the user not having enough tickets
  has a method 'take_ride' that accounts for the user not being tall enough
  has a method 'take_ride' that accounts for the user not being tall enough and not having enough tickets
  has a method 'take_ride' that updates ticket number
  has a method 'take_ride' that updates the user's nausea
  has a method 'take_ride' that updates the user's happiness

User
  is valid with a name, password, happiness, nausea, height, and tickets
  is not valid without a password
  is valid with an admin boolean (FAILED - 41)
  defaults to admin => false (FAILED - 42)
  has many rides
  has many attractions through rides
  has a method 'mood' that returns 'sad' when the user is more nauseous than happy
  has a method 'mood' that returns 'happy' when the user is more happy than nauseous

Failures:

  1) Feature Test: User Signup successfully signs up as non-admin
     Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

     Capybara::ElementNotFound:
       Unable to find field "user[name]"
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
     # ./spec/support/login_helper.rb:9:in `user_signup'
     # ./spec/features/user_features_spec.rb:10:in `block (2 levels) in <top (required)>'

  2) Feature Test: User Signup on sign up, successfully adds a session hash
     Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

     Capybara::ElementNotFound:
       Unable to find field "user[name]"
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
     # ./spec/support/login_helper.rb:9:in `user_signup'
     # ./spec/features/user_features_spec.rb:21:in `block (2 levels) in <top (required)>'

  3) Feature Test: User Signup successfully logs in as non-admin
     Failure/Error: expect(current_path).to eq('/users/1')

       expected: "/users/1"
            got: "/users/2"

       (compared using ==)
     # ./spec/features/user_features_spec.rb:29:in `block (2 levels) in <top (required)>'

  4) Feature Test: User Signup successfully signs up as admin
     Failure/Error: fill_in("user[name]", :with => "Walt Disney")

     Capybara::ElementNotFound:
       Unable to find field "user[name]"
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
     # ./spec/support/login_helper.rb:38:in `admin_signup'
     # ./spec/features/user_features_spec.rb:60:in `block (2 levels) in <top (required)>'

  5) Feature Test: User Signup on sign up for admin, successfully adds a session hash
     Failure/Error: fill_in("user[name]", :with => "Walt Disney")

     Capybara::ElementNotFound:
       Unable to find field "user[name]"
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
     # ./spec/support/login_helper.rb:38:in `admin_signup'
     # ./spec/features/user_features_spec.rb:68:in `block (2 levels) in <top (required)>'

  6) Feature Test: User Signup successfully logs in as admin
     Failure/Error:
       @walt = User.create(
         name: "Walt Disney",
         password: "password",
         admin: true
       )

     ActiveRecord::UnknownAttributeError:
       unknown attribute 'admin' for User.
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:59:in `rescue in _assign_attribute'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:54:in `_assign_attribute'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:41:in `block in assign_attributes'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:35:in `each'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:35:in `assign_attributes'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/core.rb:557:in `init_attributes'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/core.rb:280:in `initialize'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/inheritance.rb:61:in `new'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/inheritance.rb:61:in `new'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/persistence.rb:33:in `create'
     # ./spec/support/login_helper.rb:53:in `admin_login'
     # ./spec/features/user_features_spec.rb:75:in `block (2 levels) in <top (required)>'
     # ------------------
     # --- Caused by: ---
     # NoMethodError:
     #   undefined method `admin=' for #<User:0x007fa67354a6e8>
     #   Did you mean?  admin!
     #                  admin?
     #   /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activemodel-4.2.0/lib/active_model/attribute_methods.rb:433:in `method_missing'

  7) Feature Test: User Signup on log in, successfully adds a session hash to admins
     Failure/Error:
       @walt = User.create(
         name: "Walt Disney",
         password: "password",
         admin: true
       )

     ActiveRecord::UnknownAttributeError:
       unknown attribute 'admin' for User.
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:59:in `rescue in _assign_attribute'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:54:in `_assign_attribute'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:41:in `block in assign_attributes'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:35:in `each'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:35:in `assign_attributes'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/core.rb:557:in `init_attributes'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/core.rb:280:in `initialize'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/inheritance.rb:61:in `new'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/inheritance.rb:61:in `new'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/persistence.rb:33:in `create'
     # ./spec/support/login_helper.rb:53:in `admin_login'
     # ./spec/features/user_features_spec.rb:83:in `block (2 levels) in <top (required)>'
     # ------------------
     # --- Caused by: ---
     # NoMethodError:
     #   undefined method `admin=' for #<User:0x007fa67344ba08>
     #   Did you mean?  admin!
     #                  admin?
     #   /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activemodel-4.2.0/lib/active_model/attribute_methods.rb:433:in `method_missing'

  8) Feature Test: User Signout has a link to log out from the users/show page
     Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

     Capybara::ElementNotFound:
       Unable to find field "user[name]"
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
     # ./spec/support/login_helper.rb:9:in `user_signup'
     # ./spec/features/user_features_spec.rb:93:in `block (2 levels) in <top (required)>'

  9) Feature Test: User Signout redirects to home page after logging out
     Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

     Capybara::ElementNotFound:
       Unable to find field "user[name]"
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
     # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
     # ./spec/support/login_helper.rb:9:in `user_signup'
     # ./spec/features/user_features_spec.rb:99:in `block (2 levels) in <top (required)>'

  10) Feature Test: User Signout successfully destroys session hash when 'Log Out' is clicked
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:106:in `block (2 levels) in <top (required)>'

  11) Feature Test: User Signout has a link to log out from the users/show page when user is an admin
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:113:in `block (2 levels) in <top (required)>'

  12) Feature Test: User Signout redirects to home page after admin logs out when user is an admin
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:119:in `block (2 levels) in <top (required)>'

  13) Feature Test: User Signout successfully destroys session hash when 'Log Out' is clicked as admin
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:126:in `block (2 levels) in <top (required)>'

  14) Feature Test: Go on a Ride has a link from the user show page to the attractions index page
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  15) Feature Test: Go on a Ride links from the user show page to the attractions index page
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  16) Feature Test: Go on a Ride prevents users from editing/deleting/adding rides on the index page
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  17) Feature Test: Go on a Ride has titles of the rides on the attractions index page
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  18) Feature Test: Go on a Ride has links on the attractions index page to the attractions' show pages
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  19) Feature Test: Go on a Ride links from the attractions index page to the attractions' show pages
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  20) Feature Test: Go on a Ride prevents users from editing/deleting a ride on the show page
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  21) Feature Test: Go on a Ride has a button from the attraction show page to go on the ride
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  22) Feature Test: Go on a Ride clicking on 'Go on this ride' redirects to user show page
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  23) Feature Test: Go on a Ride clicking on 'Go on this ride' updates the users ticket number
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  24) Feature Test: Go on a Ride clicking on 'Go on this ride' updates the users mood
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  25) Feature Test: Go on a Ride when the user is tall enough and has enough tickets, clicking on 'Go on this ride' displays a thank you message
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  26) Feature Test: Go on a Ride when the user is too short, clicking on 'Go on this ride' displays a sorry message
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  27) Feature Test: Go on a Ride when the user doesn't have enough tickets, clicking on 'Go on this ride' displays a sorry message
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  28) Feature Test: Go on a Ride when the user is too short and doesn't have enough tickets, clicking on 'Go on this ride' displays a detailed sorry message
      Failure/Error: fill_in("user[name]", :with => "Amy Poehler")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:9:in `user_signup'
      # ./spec/features/user_features_spec.rb:157:in `block (2 levels) in <top (required)>'

  29) Feature Test: Admin Flow displays admin when logged in as an admin on user show page
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:295:in `block (2 levels) in <top (required)>'

  30) Feature Test: Admin Flow links to the attractions from the users show page when logged in as a admin
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:295:in `block (2 levels) in <top (required)>'

  31) Feature Test: Admin Flow has a link from the user show page to the attractions index page when in admin mode
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:295:in `block (2 levels) in <top (required)>'

  32) Feature Test: Admin Flow allows admins to add an attraction from the index page
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:295:in `block (2 levels) in <top (required)>'

  33) Feature Test: Admin Flow allows admins to add an attraction
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:295:in `block (2 levels) in <top (required)>'

  34) Feature Test: Admin Flow has link to attraction/show from attraction/index page for admins
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:295:in `block (2 levels) in <top (required)>'

  35) Feature Test: Admin Flow does not suggest that admins go on a ride
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:295:in `block (2 levels) in <top (required)>'

  36) Feature Test: Admin Flow links to attractions/show page from attractions/index
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:295:in `block (2 levels) in <top (required)>'

  37) Feature Test: Admin Flow does not suggest that an admin go on a ride from attractions/show page
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:295:in `block (2 levels) in <top (required)>'

  38) Feature Test: Admin Flow has a link for admin to edit attraction from the attractions/show page
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:295:in `block (2 levels) in <top (required)>'

  39) Feature Test: Admin Flow links to attraction/edit page from attraction/show page when logged in as an admin
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:295:in `block (2 levels) in <top (required)>'

  40) Feature Test: Admin Flow updates an attraction when an admin edits it
      Failure/Error: fill_in("user[name]", :with => "Walt Disney")

      Capybara::ElementNotFound:
        Unable to find field "user[name]"
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:44:in `block in find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/base.rb:85:in `synchronize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/finders.rb:33:in `find'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/node/actions.rb:59:in `fill_in'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/session.rb:699:in `block (2 levels) in <class:Session>'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/capybara-2.7.1/lib/capybara/dsl.rb:52:in `block (2 levels) in <module:DSL>'
      # ./spec/support/login_helper.rb:38:in `admin_signup'
      # ./spec/features/user_features_spec.rb:295:in `block (2 levels) in <top (required)>'

  41) User is valid with an admin boolean
      Failure/Error:
        User.create(
          :name => "Walt",
          :password => "password",
          :nausea => 5,
          :happiness => 3,
          :tickets => 4,
          :height => 34,
          :admin => true
        )

      ActiveRecord::UnknownAttributeError:
        unknown attribute 'admin' for User.
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:59:in `rescue in _assign_attribute'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:54:in `_assign_attribute'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:41:in `block in assign_attributes'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:35:in `each'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/attribute_assignment.rb:35:in `assign_attributes'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/core.rb:557:in `init_attributes'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/core.rb:280:in `initialize'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/inheritance.rb:61:in `new'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/inheritance.rb:61:in `new'
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activerecord-4.2.0/lib/active_record/persistence.rb:33:in `create'
      # ./spec/models/user_spec.rb:16:in `block (2 levels) in <top (required)>'
      # ./spec/models/user_spec.rb:56:in `block (2 levels) in <top (required)>'
      # ------------------
      # --- Caused by: ---
      # NoMethodError:
      #   undefined method `admin=' for #<User:0x007fa675ab83d0>
      #   Did you mean?  admin!
      #                  admin?
      #   /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activemodel-4.2.0/lib/active_model/attribute_methods.rb:433:in `method_missing'

  42) User defaults to admin => false
      Failure/Error: expect(user.admin).to eq(false)

      NoMethodError:
        undefined method `admin' for #<User:0x007fa675a81c90>
        Did you mean?  admin!
                       admin?
      # /Users/Yumei/.rvm/gems/ruby-2.3.1/gems/activemodel-4.2.0/lib/active_model/attribute_methods.rb:433:in `method_missing'
      # ./spec/models/user_spec.rb:60:in `block (2 levels) in <top (required)>'

Finished in 5.45 seconds (files took 5.64 seconds to load)
62 examples, 42 failures

Failed examples:

rspec ./spec/features/user_features_spec.rb:6 # Feature Test: User Signup successfully signs up as non-admin
rspec ./spec/features/user_features_spec.rb:19 # Feature Test: User Signup on sign up, successfully adds a session hash
rspec ./spec/features/user_features_spec.rb:25 # Feature Test: User Signup successfully logs in as non-admin
rspec ./spec/features/user_features_spec.rb:57 # Feature Test: User Signup successfully signs up as admin
rspec ./spec/features/user_features_spec.rb:66 # Feature Test: User Signup on sign up for admin, successfully adds a session hash
rspec ./spec/features/user_features_spec.rb:72 # Feature Test: User Signup successfully logs in as admin
rspec ./spec/features/user_features_spec.rb:81 # Feature Test: User Signup on log in, successfully adds a session hash to admins
rspec ./spec/features/user_features_spec.rb:91 # Feature Test: User Signout has a link to log out from the users/show page
rspec ./spec/features/user_features_spec.rb:97 # Feature Test: User Signout redirects to home page after logging out
rspec ./spec/features/user_features_spec.rb:104 # Feature Test: User Signout successfully destroys session hash when 'Log Out' is clicked
rspec ./spec/features/user_features_spec.rb:111 # Feature Test: User Signout has a link to log out from the users/show page when user is an admin
rspec ./spec/features/user_features_spec.rb:117 # Feature Test: User Signout redirects to home page after admin logs out when user is an admin
rspec ./spec/features/user_features_spec.rb:124 # Feature Test: User Signout successfully destroys session hash when 'Log Out' is clicked as admin
rspec ./spec/features/user_features_spec.rb:160 # Feature Test: Go on a Ride has a link from the user show page to the attractions index page
rspec ./spec/features/user_features_spec.rb:165 # Feature Test: Go on a Ride links from the user show page to the attractions index page
rspec ./spec/features/user_features_spec.rb:170 # Feature Test: Go on a Ride prevents users from editing/deleting/adding rides on the index page
rspec ./spec/features/user_features_spec.rb:178 # Feature Test: Go on a Ride has titles of the rides on the attractions index page
rspec ./spec/features/user_features_spec.rb:184 # Feature Test: Go on a Ride has links on the attractions index page to the attractions' show pages
rspec ./spec/features/user_features_spec.rb:190 # Feature Test: Go on a Ride links from the attractions index page to the attractions' show pages
rspec ./spec/features/user_features_spec.rb:196 # Feature Test: Go on a Ride prevents users from editing/deleting a ride on the show page
rspec ./spec/features/user_features_spec.rb:203 # Feature Test: Go on a Ride has a button from the attraction show page to go on the ride
rspec ./spec/features/user_features_spec.rb:210 # Feature Test: Go on a Ride clicking on 'Go on this ride' redirects to user show page
rspec ./spec/features/user_features_spec.rb:217 # Feature Test: Go on a Ride clicking on 'Go on this ride' updates the users ticket number
rspec ./spec/features/user_features_spec.rb:224 # Feature Test: Go on a Ride clicking on 'Go on this ride' updates the users mood
rspec ./spec/features/user_features_spec.rb:231 # Feature Test: Go on a Ride when the user is tall enough and has enough tickets, clicking on 'Go on this ride' displays a thank you message
rspec ./spec/features/user_features_spec.rb:238 # Feature Test: Go on a Ride when the user is too short, clicking on 'Go on this ride' displays a sorry message
rspec ./spec/features/user_features_spec.rb:248 # Feature Test: Go on a Ride when the user doesn't have enough tickets, clicking on 'Go on this ride' displays a sorry message
rspec ./spec/features/user_features_spec.rb:258 # Feature Test: Go on a Ride when the user is too short and doesn't have enough tickets, clicking on 'Go on this ride' displays a detailed sorry message
rspec ./spec/features/user_features_spec.rb:298 # Feature Test: Admin Flow displays admin when logged in as an admin on user show page
rspec ./spec/features/user_features_spec.rb:302 # Feature Test: Admin Flow links to the attractions from the users show page when logged in as a admin
rspec ./spec/features/user_features_spec.rb:306 # Feature Test: Admin Flow has a link from the user show page to the attractions index page when in admin mode
rspec ./spec/features/user_features_spec.rb:313 # Feature Test: Admin Flow allows admins to add an attraction from the index page
rspec ./spec/features/user_features_spec.rb:318 # Feature Test: Admin Flow allows admins to add an attraction
rspec ./spec/features/user_features_spec.rb:332 # Feature Test: Admin Flow has link to attraction/show from attraction/index page for admins
rspec ./spec/features/user_features_spec.rb:337 # Feature Test: Admin Flow does not suggest that admins go on a ride
rspec ./spec/features/user_features_spec.rb:342 # Feature Test: Admin Flow links to attractions/show page from attractions/index
rspec ./spec/features/user_features_spec.rb:348 # Feature Test: Admin Flow does not suggest that an admin go on a ride from attractions/show page
rspec ./spec/features/user_features_spec.rb:354 # Feature Test: Admin Flow has a link for admin to edit attraction from the attractions/show page
rspec ./spec/features/user_features_spec.rb:360 # Feature Test: Admin Flow links to attraction/edit page from attraction/show page when logged in as an admin
rspec ./spec/features/user_features_spec.rb:367 # Feature Test: Admin Flow updates an attraction when an admin edits it
rspec ./spec/models/user_spec.rb:55 # User is valid with an admin boolean
rspec ./spec/models/user_spec.rb:59 # User defaults to admin => false

[16:17:31] (5G_old_db) rails-amusement-park-v-000
// ♥
