User.destroy_all
Anime.destroy_all
Subscription.destroy_all



chandon = User.create({
    name: 'Chandon',
    age: 24,
    email: 'porterchandon@gmail.com'
})

scott = User.create({
    name: 'Scott',
    age: 88,
    email: 'Scott@AOL.com'
})

kevin = User.create({
    name: 'Kevin',
    age: 18,
    email: 'Kevin@itsyaboi.com'
})

josh = User.create({
    name: 'Josh',
    age: 120,
    email: 'HowAreYouAlive@omg.com'
})
######################Anime###################################
dragon_ball = Anime.create({
    name: 'DragonBall Super',
    genre: 'Action',
    writer: 'TBA',
    established: 1996
})

black_clover = Anime.create({
    name: 'Black Clover',
    genre: 'Fantasy',
    writer: 'TBA',
    established: 2019
})

sword_art_online = Anime.create({
    name: 'Sword Art Online',
    genre: 'Adventure',
    writer: 'TBA',
    established: 2014
})

one_punch_man = Anime.create({
    name: 'One Punch Man',
    genre: 'Super Natural',
    writer: 'TBA',
    established: 2013
})
#####################Subscrtiption###################################
subscription_1 = Subscription.create({
    user_id: chandon.id, 
    anime_id: dragon_ball.id,
    price: $25
})

subscription_2 = Subscription.create({
    user_id: scott.id, 
    anime_id: black_clover.id,
    price: $350
})

subscription_3 = Subscription.create({
    user_id: kevin.id, 
    anime_id: sword_art_online.id,
    price: $10
})

subscription_4 = Subscription.create({
    user_id: josh.id, 
    anime_id: one_punch_man.id,
    price: $25
})

