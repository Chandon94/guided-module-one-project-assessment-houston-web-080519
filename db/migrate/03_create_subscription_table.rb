class CreateSubscriptionTable < ActiveRecord::Migration[5.2]
    def change
      create_table :subscriptions do |table| 
        table.integer :user_id
        table.integer :anime_id
        table.integer :price
      end
  
    end
  
  end









  