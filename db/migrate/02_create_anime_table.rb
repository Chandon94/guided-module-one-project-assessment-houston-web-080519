class CreateAnimeTable < ActiveRecord::Migration[5.2]
    def change
      create_table :animes do |table| 
        table.string :name
        table.string :genre
        table.string :writer 
        table.integer :established
      end
  
    end
  
  end
