girl_names = ["Olivia", "Emma", "Ava", "Sophia", "Isabella", "Charlotte", "Amelia", "Mia", "Harper", "Evelyn"]
    boy_names = ["Liam", "Noah", "Oliver", "William", "James", "Benjamin", "Lucas"]
    unisex_names = ["Cameron", "Billie", "Kit", "Kai", "Riley", "Baily", "Charlie", "Drew"]
    traits = ["hates music", "loves Naruto", "loves sport", "loves cats", "loves dogs", "loves exercise", "loves to party", "loves space", "loves cooking", "loves rick and Morty"]
    


puts "Would you like to meet a boy, girl or unsaid/unisex?"
gender = gets.chomp.downcase

case gender
    when "boy"
        date_name = boy_names.sample
    when "girl" 
        date_name = girl_names.sample
    when "unsaid", "unisex"
        date_name = unisex_names.sample
        gender = "unisex"
    else 
        puts "you gave me '#{gender}' which is an invalid option, so i'm just going to pick a unisex name for you"
        date_name = unisex_names.sample
        gender = "unisex"
end


class Person
    
    def initialize(gender, name, traits)
        @gender = gender,
        @name = name,
        @trait = traits,
        @flirt_score = 0
    end 

    question2 = {question: "Do you come here often?", options: [
        {
            selection: "a",
            output: "All the time, I love to party",
            trait: "loves to party",
            score: 3,
            # special_score: 10, 
            response: "oh that's cool",
            # special_response: “Omg I love to party too, that’s so cool”,
            },
        {
            selection: "b",
            output: "Nah",
            response: "Oh ok",
            score: 0,
        },
        {   selection: "c",
            output: "I own the place (lie) (requires Charisma 10)",
            score: 10,
            response: "WOW that is super impressive!",
            # failed_score: -5,
            # failed_response: “Urgh why do you feel the need to lie to me”,
        },
        {   selection: "d",
            output: "Only for special occasions",
            score: 3,
            response: "I guess I am special then hehe",
        }
        ]
        }
end 

date = Person.new(gender, traits.sample(2), date_name)

puts question2[:question]
    
response = gets.chomp.upcase.to_sym
puts @@question2[:options][response][:output]
@flirt_score += @@question2[:options][response][:score]
