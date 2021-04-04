flirt_score = 0 
give_number = false
date_name = nil
traits = ["loves Naruto", "loves sport", "loves cats", "loves dogs", "loves exercise", "loves to party", "loves space", "loves cooking", "loves rick and Morty"]
girl_names = ["Olivia", "Emma", "Ava", "Sophia", "Isabella", "Charlotte", "Amelia", "Mia", "Harper", "Evelyn"]
boy_names = ["Liam", "Noah", "Oliver", "William", "James", "Benjamin", "Lucas"]
unisex_names = ["Cameron", "Billie", "Kit", "Kai", "Riley", "Baily", "Charlie", "Drew"]
game_traits = traits.sample(2)

puts "Please enter your name"
player_name = gets.chomp 

puts "Would you like to meet a boy, girl or unsaid/unisex?"
choice = gets.chomp.downcase

case choice 
    when "boy"
        date_name = boy_names.sample
    when "girl" 
        date_name = girl_names.sample
    when "unsaid" or "unisex"
        date_name = unisex_names.sample
end


puts "your date for tonight is named #{date_name}"
puts "their intersts are #{game_traits[0]} and #{game_traits[1]}"
puts "You are at the 'nightquarters' the coolest club in town. Your goal is to leave with the number of your date. To do this... ask them for their number. But! Be careful as you will get only one chance then they may be gone for ever."
puts "Engage your date in coversation and try to warm them up to the idea of giving you their number. Keep their interests in mind and try not to make a fool of yourself"
puts "Pick your dialoge options by selecting the number the corrosponds with the answer you want"
puts "Now pick your skills for the night, you have 20 points to allocated for a maximum of 10 points per attribute"
puts "The skill are Strength, Intelligence, Charisma"
puts "How much Stregnth would you like?"
strength = gets.chomp.to_i
# make sure strength is less than 10
puts "How much Intelligence would you like?"
intelligence = gets.chomp.to_i
# make sure intelligence is less than 10
puts "How much Charisma would you like?"
charisma = gets.chomp.to_i
# make sure charisma is less than 10
# make sure all of these traits are less than 20



# puts "Pick your opening line "
# puts ""


