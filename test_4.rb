require "tty-prompt"

prompt = TTY::Prompt.new



girl_names = ["Olivia", "Emma", "Ava", "Sophia", "Isabella", "Charlotte", "Amelia", "Mia", "Chelsey", "Evelyn"]
boy_names = ["Liam", "Noah", "Oliver", "William", "James", "Benjamin", "Lucas"]
unisex_names = ["Cameron", "Billie", "Kit", "Kai", "Riley", "Baily", "Charlie", "Drew"]
traits = ["Dogs", "Partying"]


# traits = ["Naruto", "Sport/exercise", "Cats", "Dogs", "Partying", "Outer-Space", "Cooking", "Rick and Morty"]
    
puts "Please enter your name"
user_name = gets.chomp.capitalize

gender = prompt.select("Ok #{user_name}, Which gender would you like to meet this evening", ["Boy", "Girl", "Undefined"])


case gender
    when "Boy"
        date_name = boy_names.sample
    when "Girl" 
        date_name = girl_names.sample
    when "Undefined"
        date_name = unisex_names.sample
end


class Person
    attr_accessor :flirt_score, :strength, :intelligence, :charisma
    attr_reader :name, :trait, :questions

    def initialize(gender, date_name, traits)
        @gender = gender
        @name = date_name
        @trait = traits
        @flirt_score = 0
        @strength = 0
        @intelligence = 0
        @charisma = 0
        @questions = {
            question1: {
                prompt: "'Do you come here often?'",
                A: {
                    output: "'All the time, I love to party'",
                    trait: "Partying",
                    score: 3,
                    special_score: 10, 
                    response: "Date: 'oh that's cool'",
                    special_response: "Omg I love to party too! that’s so cool",
                    req_strength: 0,
                    req_intelligence: 0,
                    req_charisma: 0,
                    },
                B:  {
                    output: "'Nah'",
                    response: "'Oh ok'",
                    score: 0,
                    req_strength: 0,
                    req_intelligence: 0,
                    req_charisma: 0,
                },
                C:  {  
                    output: "'I own the place'",
                    score: 10,
                    response: "WOW that is super impressive!",
                    req_strength: 0,
                    req_intelligence: 0,
                    req_charisma: 10,
                    failed_score: -5,
                    failed_response: "Urgh why do you feel the need to lie to me",
                },
                D:  { 
                    output: "'Only for special occasions'",
                    score: 3,
                    response: "I guess I am special then hehe",
                    req_strength: 0,
                    req_intelligence: 0,
                    req_charisma: 0,
                }
            },
        question2: {
                    prompt: "'Do you work out at all?'",
                    A: {
                        output: "'All the time, I love exercise'",
                        trait: "Sport/exercise",
                        score: 3,
                        special_score: 10, 
                        response: "'I can tell'",
                        special_response: "'that’s awesome! I love exercise too!'",
                        req_strength: 0,
                        req_intelligence: 0,
                        req_charisma: 0
                        },
                    B:  {
                        output: "'No'",
                        response: "Oh ok",
                        score: -3,
                        req_strength: 0,
                        req_intelligence: 0,
                        req_charisma: 0
                    },
                    C:  {  
                        output: "*Flexs* (req strength 5)",
                        score: 5,
                        response: "wow nice!",
                        req_strength: 5,
                        req_intelligence: 0,
                        req_charisma: 0,
                        failed_score: -5,
                        failed_response: "Urgh why do you feel the need to lie to me",
                    },
                    D:  { 
                        output: "'Yeah a bit, but it can be a bit boring by myself.'",
                        score: 3,
                        response: "'Well maybe I could join you one day'",
                        req_strength: 0,
                        req_intelligence: 0,
                        req_charisma: 0,
                    }
                }
            }   
    end
# end of initalize

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


date = Person.new(gender, date_name, traits.sample(2) )
puts "\nYour date for this evening is #{date.name}. #{date.name} is interested in #{date.trait[0]} and #{date.trait[1]} \n"


valid_input = false
until valid_input 
    puts "Please choose your skills for this evening (max 20)"
    date.strength = prompt.ask("How much Strength would you like: 0-10?") { |q| q.in("0-10") }.to_i
    date.intelligence = prompt.ask("How much Intelligence would you like: 0-10?") { |q| q.in("0-10") }.to_i
    date.charisma = prompt.ask("How much Charisma would you like: 0-10?") { |q| q.in("0-10") }.to_i

    if date.strength + date.intelligence + date.charisma > 20 
        puts "you have entered in too many skill points. Please try again"
    else 
        valid_input = true
    end
end

puts "\n"

    date.questions.each do |current_question, values|
        selection = prompt.select("#{date.name}: #{values[:prompt]}\n", ["#{values[:A][:output]}", "#{values[:B][:output]}", "#{values[:C][:output]}", "#{values[:D][:output]}", "*ask for number*"])

        case selection
        when "#{values[:A][:output]}"
            selection = :A
        when "#{values[:B][:output]}"
            selection = :B
        when "#{values[:C][:output]}"
            selection = :C
        when "#{values[:D][:output]}"
            selection = :D
        when "*ask for number*"
            selection = :E
        end

        if selection == :E
            date.ask_number
        else
            if date.strength < values[selection][:req_strength] 
                puts "#{date.name}: #{values[selection][:failed_response]}"
                date.update_flirt(values[selection][:failed_score])
            elsif date.intelligence < values[selection][:req_intelligence]
                puts "#{date.name}: #{values[selection][:failed_response]}"
                date.update_flirt(values[selection][:failed_score])
            elsif date.charisma < values[selection][:req_charisma]
                puts "#{date.name}: #{values[selection][:failed_response]}"
                date.update_flirt(values[selection][:failed_score])
            else
                if date.trait.include?(values[selection][:trait])
                    puts "#{date.name}: #{values[selection][:special_response]}"
                    date.update_flirt(values[selection][:special_score])
                    puts date.flirt_score
                else
                    puts "#{date.name}: #{values[selection][:response]}"
                    date.update_flirt(values[selection][:score])
                    puts date.flirt_score
                end
            end
        end
    end