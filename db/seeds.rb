# create HEROES
4.times do 
    hero_name =Faker::Games::Heroes.name
    hero_super_name =Faker::Superhero.name
    Hero.create!(name:hero_name, super_name:hero_super_name)
end

#create Powers
3.times do 
    power_name =Faker::Superhero.power
    power_description = Faker::Movies::StarWars.wookiee_sentence
    Power.create!(name:power_name,description:power_description)
end

#create hero_powers
HeroPower.create!(strength:"Strong",hero_id:1,power_id:1)
HeroPower.create!(strength:"Weak",hero_id:1,power_id:2)
HeroPower.create!(strength:"Average",hero_id:1,power_id:3)
HeroPower.create!(strength:"Strong",hero_id:2,power_id:2)
HeroPower.create!(strength:"Weak",hero_id:2,power_id:1)
HeroPower.create!(strength:"Average",hero_id:2,power_id:3)
HeroPower.create!(strength:"Strong",hero_id:3,power_id:3)
HeroPower.create!(strength:"Weak",hero_id:3,power_id:2)
HeroPower.create!(strength:"Average",hero_id:3,power_id:1)
HeroPower.create!(strength:"Strong",hero_id:4,power_id:1)
HeroPower.create!(strength:"Weak",hero_id:4,power_id:2)
HeroPower.create!(strength:"Average",hero_id:4,power_id:3)

