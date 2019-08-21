require_relative '../config/environment'
require 'tty-prompt'
require 'artii'
ActiveRecord::Base.logger = nil
prompt = TTY::Prompt.new
a = Artii::Base.new :font => 'slant'
puts a.asciify('Welcome To AnimeOnline!!!')
















current_user = nil
while current_user == nil
    puts "Welcome to Hell!"

    users_response = prompt.select("Choose your path:", [
        "Sign Up",
        "Login"
    ])
    if users_response == "Sign Up"
        name = prompt.ask("What would you like your name to be?")
        password =  prompt.ask("What is your password?")
        current_user = User.create({
            name: name,
            password: password
     })
    end
    if( users_response == "Login")
        current_user = User.where({
           name: prompt.ask("Enter your name:"),
          password: prompt.mask("Enter password?")
        }).first 
    end
end

    

while true
        users_response = prompt.select("What do you want?",[
            "Purchase A New Subscription",
            "Cancel Subscription",
            "Collections",
            "View Review",
            "Submit Review",
            "Delete Review",
            "Quit"
        ])
    



    if users_response == "Quit"
        break
    end


    if users_response == "Purchase A New Subscription"
    subscriptions = []
        Subscription.all.each do |subscription|
            subscriptions.push(subscription) 
        end

        sub_animes = Subscription.all.map {|sub| sub.anime_id }
        anime_names = Anime.all.select{|ani| sub_animes.include?(ani.id)}.map {|a| a.name}
        # binding.pry
        prompt.select("Which subscription would you like to purchase?", anime_names)
        puts "will it blend?"
    end

    # sub_animes = Subscription.all.map {|sub| sub.anime_id }
    # anime_names = Anime.all.select{|ani| sub_animes.include?(ani.id)}.map {|a| a.name}
    # subscription = prompt.select("Which subscription would you like to purchase?", anime_names)
    # puts "will it blend?"
    # Subscription.create({
    #     subscription_id: subscription,
    #     user_id: current_user.id,
    #     anime_id: anime_id,
    #     price: price_id }) 

    

    if users_response == "Collections"
        prompt.say("Here's your subscriptions")
        current_user.subscription.each do |subscription|
            prompt.say(subscription)
        end
    
    end
end

