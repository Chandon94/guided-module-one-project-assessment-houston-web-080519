class CreateSubscriptionTable < ActiveRecord::Migration[5.2]
    def change
      create_table :subscriptions do |table| 
        table.string :user_id
        table.string :anime_id
        table.integer :price
      end
  
    end
  
  end









  