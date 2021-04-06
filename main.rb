class Person
    @@girl_names = ["Olivia", "Emma", "Ava", "Sophia", "Isabella", "Charlotte", "Amelia", "Mia", "Harper", "Evelyn"]
    @@boy_names = ["Liam", "Noah", "Oliver", "William", "James", "Benjamin", "Lucas"]
    @@traits = ["hates music", "loves Naruto", "loves sport", "loves cats", "loves dogs", "loves exercise", "loves to party", "loves space", "loves cooking", "loves rick and Morty"]
    
    def initialize()
        rand = random.new
        @gender = rand.rand(2) == 0 ? "boy" : "girl"
        if gender == "boy"
            @name = @@boy_names.sample
        else
            @name = @@girl_names.sample
        end
        @trait = @@traits.sample(2)
        @flirt_score = 0 
    end 

    def ask_question 
        question = {question: "What music do you listen to?", options: [
            A: {
                output: "Tekashi 69",
                trait: "loves to party",
                score: -3,
                special_score: 10, 
                response: ""
            },

            B: "I hate music",
            # C: "Depends on my mood",
            # D: "I love a lot of music honestly"
        ]}

        puts question[:question]
        puts question[:options][:A][:output]
        puts question[:options][:B][:output]
        puts question[:options][:C][:output]
        puts question[:options][:D][:output]
        # puts "What music do you listen to?"

        # puts "1. Teceshy 69"
        # puts "2. I hate music"
        # puts "3. Depends on my mood" 
        # puts "4. I love a lot of music honestly"
        response = gets.chomp.to_sym
        if @traits.include?(question[:options][response][:trait]) 
            @flirt_score += question[:options][response][:special_score]
        else 
            @flirt_score += question[:options][response][:score]
        end

    question2 = {question: "Do you come here often?". options: [
        A: {
            output: "All the time, I love to party",
            trait: "loves to party",
            score: 3,
            # special_score: 10, 
            response: “oh thats cool”,
            # special_response: “Omg I love to party too, that’s so cool”,
            }
        B: {
            output: "Nah"
            response: "Oh ok"
            score: 0,
        }
        C: {
            output: "I own the place (lie) (requires Charisma 10)"
            score: 10,
            response: "WOW that is super impressive!",
            # failed_score: -5,
            # failed_response: “Urgh why do you feel the need to lie to me”,
        }
        D: {
            output: "Only for special occasions"
            score: 3,
            response: “I guess I am special then hehe”
        }
    ]}
    end 
end 

person = Person.new

# flirt_score = 0 
# give_number = false
# date_name = nil
# traits = ["loves Naruto", "loves sport", "loves cats", "loves dogs", "loves exercise", "loves to party", "loves space", "loves cooking", "loves rick and Morty"]
# girl_names = ["Olivia", "Emma", "Ava", "Sophia", "Isabella", "Charlotte", "Amelia", "Mia", "Harper", "Evelyn"]
# boy_names = ["Liam", "Noah", "Oliver", "William", "James", "Benjamin", "Lucas"]
# unisex_names = ["Cameron", "Billie", "Kit", "Kai", "Riley", "Baily", "Charlie", "Drew"]
# game_traits = traits.sample(2)

# puts "Please enter your name"
# player_name = gets.chomp 

# puts "Would you like to meet a boy, girl or unsaid/unisex?"
# choice = gets.chomp.downcase

# case choice 
#     when "boy"
#         date_name = boy_names.sample
#     when "girl" 
#         date_name = girl_names.sample
#     when "unsaid" or "unisex"
#         date_name = unisex_names.sample
#     else 
#         puts "you gave me #{choice} which is an invalid option, so i'm just going to pick a unisex name for you"
#         date_name = unisex_names.sample
# end


# puts "your date for tonight is named #{date_name}"
# puts "their intersts are #{game_traits[0]} and #{game_traits[1]}"
# puts "You are at the 'nightquarters' the coolest club in town. Your goal is to leave with the number of your date. To do this... ask them for their number. But! Be careful as you will get only one chance then they may be gone for ever."
# puts "Engage your date in coversation and try to warm them up to the idea of giving you their number. Keep their interests in mind and try not to make a fool of yourself"
# puts "Pick your dialoge options by selecting the number the corrosponds with the answer you want"
# puts "Now pick your skills for the night, you have 20 points to allocated for a maximum of 10 points per attribute"
# puts "The skill are Strength, Intelligence, Charisma"
# puts "How much Stregnth would you like?"
# strength = gets.chomp.to_i
# # make sure strength is less than 10
# puts "How much Intelligence would you like?"
# intelligence = gets.chomp.to_i
# # make sure intelligence is less than 10
# puts "How much Charisma would you like?"
# charisma = gets.chomp.to_i
# # make sure charisma is less than 10
# # make sure all of these traits are less than 20


# puts "choose your opening line"
# puts "1. 'You look stunning' "
# puts "2. 'Oh, you looked better in your pictures' "
# puts "3. *Go in for the kiss* (req Charisma 10)"
# puts "4. 'Hey, nice to meet you'"
# ask_for_number
# response = gets.chomp.to_i

# case response
# when 1 
#     flirt_score += 3
#     puts "hehehe thank you, you look pretty good yourself"
# when 2
#     flirt_score -= 3
#     puts " 'damn ok dude' "
# when 3 
#     # make chance that will fail
#     flirt_score += 10
#     puts "*kisses* 'wow that was nice'"
# when 4 
#     flirt_score += 1 
#     puts "nice to meet you too"
# # error handling 
# when 5 
#     ask_number
# end 

# puts "Pick your opening line "
# puts ""


