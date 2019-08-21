require_relative '../config/environment'
require 'tty-prompt'
require 'artii'
ActiveRecord::Base.logger = nil
prompt = TTY::Prompt.new
a = Artii::Base.new :font => 'slant'
a.asciify('Welcome To AnimeOnline!!!')




users_response = prompt.select("What do you you want?",[
    "Purchase A New Subscription",
    "Cancel Subscription",
    "Collections",
    "View Review",
    "Submit Review",
    "Delete Review"
])

if users_response == "Purchase A New Subscription"
prompt.select("Which Subscription Would You Like To Buy Today?")
end


if users_response == "Purchase Subscription"
puts "Are you sure you want to purchase a new subscription?"
user_name = gets.chomp
puts "Which anime would you like to purchase?"
anime_name = gets.chomp
puts "Please enter the amount:"
price = gets.chomp
puts "Last chance to back away from the computer!!!"
puts "Are you certain you would be happy with this purchase?"

Subscription.create({
    user:  user_name,
    anime: anime_name,
    price: price
})
end