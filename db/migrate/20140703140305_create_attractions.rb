class CreateAttractions < ActiveRecord::Migration
 # Write your migrations here

   def change
     create_table :attractins do |t|
       t.string  :name
       t.integer :user_id
       t.integer :ride_id
       t.integer :height
       t.integer :nausea_rating
       t.integer :happiness_rating
       t.integer :tickets

       t.timestamps null: false
     end
   end
end
