girl_names = ["Olivia", "Emma", "Ava", "Sophia", "Isabella", "Charlotte", "Amelia", "Mia", "Harper", "Evelyn"]
boy_names = ["Liam", "Noah", "Oliver", "William", "James", "Benjamin", "Lucas"]
unisex_names = ["Cameron", "Billie", "Kit", "Kai", "Riley", "Baily", "Charlie", "Drew"]
traits = ["Dogs", "Partying"]


# traits = ["Naruto", "Sport/exercise", "Cats", "Dogs", "Partying", "Outer-Space", "Cooking", "Rick and Morty"]
    


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
        puts "\nYou gave me '#{gender}' which is an invalid option, so i'm just going to pick a unisex name for you"
        date_name = unisex_names.sample
        gender = "unisex"
end


class Person
    attr_accessor :flirt_score
    attr_reader :name, :trait,:question2, :question3

    def initialize(gender, name, traits)
        @gender = gender
        @name = name
        @trait = traits
        @flirt_score = 0
        @question2 = {
            options: {
                A: {
                    output: "You: 'All the time, I love to party'",
                    trait: "Partying",
                    score: 3,
                    special_score: 10, 
                    response: "Date: 'oh that's cool'",
                    special_response: "Omg I love to party too! that’s so cool",
                    },
                B:  {
                    output: "Nah",
                    response: "Oh ok",
                    score: 0,
                },
                C:  {  
                    output: "I own the place (lie) (requires Charisma 10)",
                    score: 10,
                    response: "WOW that is super impressive!",
                    # failed_score: -5,
                    # failed_response: “Urgh why do you feel the need to lie to me”,
                },
                D:  { 
                    output: "Only for special occasions",
                    score: 3,
                    response: "I guess I am special then hehe",
                }
            }
        }
        @question3 = {
                options: {
                    A: {
                        output: "All the time, I love exercise",
                        # trait: "loves to party",
                        score: 3,
                        # special_score: 10, 
                        response: "'I can tell'"
                        # special_response: “Omg I love to party too, that’s so cool”,
                        },
                    B:  {
                        output: "'No'",
                        response: "Oh ok",
                        score: -3,
                    },
                    C:  {  
                        output: "*Flexs* (req strength 5)",
                        score: 5,
                        response: "wow nice!"
                        # failed_score: -5,
                        # failed_response: “Urgh why do you feel the need to lie to me”,
                    },
                    D:  { 
                        output: "Yeah I enjoy it but it can be a bit boring by myself.",
                        score: 3,
                        response: "'Well maybe I could join you one day'",
                    }
                }
            }
    end

    def mood
        case @flirt_score
        when 41..50 
            puts "\nI think I can ask them for their number now"
        when 31..40 
            puts "\nThey look like they are having a fantastic time"
        when 21..30 
            puts "\nThey look like they're having fun"
        when 11..20 
            puts "\nThey look like they're having a good enough time"
        when 0..10
            puts "\nThey look like they'd rather be somewhere else, but I guess I'll keep trying"
        end 
    end 

    def ask_number
    if @flirt_score >= 50
        puts "Yeah ok, I'll give you my number. One final question though. \nWhat's my name?"
        name_guess = gets.chomp.capitalize
        if name_guess == @name
            puts "'Ok, yeah you can have my number. Here you go' *give number*"
            puts "YOU WIN!"
            exit
        else 
            puts "my name is #{@name}"
            puts "I can't believe I was going to give you my number. Get lost"
            puts "YOU LOSE!"
            exit
        end
    else 
    puts "Ha! as if. Get lost"
    puts "YOU LOSE!"
    exit
    end
end


    def update_flirt(score)
        @flirt_score += score
    end

end 

date = Person.new(gender, date_name, traits.sample(2))
puts "\nYour date for this evening is #{date.name}. #{date.name} is interested in #{date.trait[0]} and #{date.trait[1]}"

puts "Do you come here often?"

puts "A= 'All the time, I love to party'"
puts "B= 'Nah'"
puts "C= 'I own the place' (lie) (requires Charisma 10)"
puts "D= 'Only for special occasions'"
puts "E= *ask for number*"

selection = gets.chomp.upcase.to_sym

if selection == :E
    date.ask_number
else
    puts "You: #{date.question2[:options][selection][:output]}"

    if date.trait.include?(date.question2[:options][selection][:trait])
        puts "Date: #{date.question2[:options][selection][:special_response]}"
        date.update_flirt(date.question2[:options][selection][:special_score])
        puts date.flirt_score
    else
    puts "Date: #{date.question2[:options][selection][:response]}"
    date.update_flirt(date.question2[:options][selection][:score])
    date.flirt_score
    end
    
end


# Question 2

puts "'Do you work out?'"

puts "A= 'All the time, I love exercise'(req strength 4)"
puts "B= 'No'"
puts "C= *Flexs* (req strength 6)"
puts "D= 'yeah I enjoy it but it can be a bit boring by myself'"

selection = gets.chomp.upcase.to_sym

puts date.question3[:options][selection][:output]
puts date.question3[:options][selection][:response]
date.update_flirt(date.question3[:options][selection][:score])

date.mood



