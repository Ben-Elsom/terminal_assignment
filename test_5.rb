require "tty-prompt"

prompt = TTY::Prompt.new



girl_names = ["Olivia", "Emma", "Ava", "Sophia", "Isabella", "Charlotte", "Amelia", "Mia", "Chelsey", "Evelyn"]
boy_names = ["Liam", "Noah", "Oliver", "William", "James", "Benjamin", "Lucas"]
unisex_names = ["Cameron", "Billie", "Kit", "Kai", "Riley", "Baily", "Charlie", "Drew"]
traits = ["Naruto", "Sport/exercise", "Cats", "Dogs", "Partying", "Outer-Space", "Cooking", "Rick and Morty"]
    
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
                prompt: ["'Do you come here often?'", 
                    "'Do you work out?'",
                    "'What do you do for a living?'",
                    "'Do you watch anime?'",
                    "'Do you do any sports?'"],
                A: {
                    output: ["'All the time, I love to party'", 
                            "'All the time, I love exercise'",
                            "'I’m a student at Coder academy'", 
                            "'Eww no!'", 
                            "'Yeah I like a lot of sports'"],
                    trait: ["Partying", "Sport/exercise","~","Naruto","sport/exercise" ],
                    score: [3, 3, 3, -1, 3],
                    ht_score: [10, 5, 0, -3, 5],
                    failed_score: [0, 0, -1, 0],
                    response: ["'Date: 'oh that's cool'","'I can tell'","", "Wow that was dramatic"],
                    has_trait_response: ["'Omg I love to party too! that’s so cool'", "that’s awesome! I love exercise too!", "", "Oh Damn ok" ],
                    passed_response: ["","","'Wow, you must be really smart'","",""],
                    failed_response: ["","", "as if","",""],
                    req_strength: [0,0,0,0,0],
                    req_intelligence: [0,0,5,0,0],
                    req_charisma: [0,0,0,0,0],
                    requires: ["","", "(10 Intelligence)", ""]
                    },
                    
                B:  {
                    output: ["'Nah'",
                            "'No'",
                            "I'm a hedgefund manager",
                            "'SASSKUUUEEEE'",
                            "'Does it look like am the type to like sports?'"],
                    trait: ["~", "Sports/Exercise", "~", "Naruto", "Sports/Exercise"],
                    score: [-3, -1, -7, -3, -3],
                    ht_score: [0, -3, 0, 10, -3],
                    failed_score: [0,0,-5,0,0],
                    response: ["'Oh ok, well it's nice here'","'Ok then'", "Wow that's super impressive", "'What the hell dude?'", "'nevermind then'"],
                    has_trait_response: ["", "", "", "NARRRUUTOOOO", ""],
                    failed_response: ["","","urgh why do you feel the need to lie to me, anyway...","",""],
                    req_strength: [0,0,0,0,0],
                    req_intelligence: [0,0,7,0,0],
                    req_charisma: [0,0,0,0,0],
                    requires: ["","","(Requires 7 Intelligence)","",""]
                },
                C:  {  
                    output: ["'I own the place'",
                            "*Flexs*", 
                            "'I'd rather not say...'",
                            "'Does Rick and Morty count?'",
                            "Watch this *does backflip*"
                        ],
                    trait: ["~", "~", "~", "Rick and Morty", "~"],
                    score: [3, 3, -3, 1, 10 ],
                    ht_score: [10, 7, 0, 7, 0] ,
                    failed_score: [-5,-5, 0, 0, -5],
                    response: ["Date: 'oh that's cool'" "Wow, Nice!", "'Oh... ok?'", "'Hahahaha not really :P'", "'WOW! You're amazing'"],
                    has_trait_response: ["Omg I love to party too! that’s so cool", "", "", "wubbadubba dub dub", ""],
                    failed_response: ["Urgh why do you feel the need to lie to me", "'urgh nice dude...'", "", "", "'OH no! are you ok? I think you ripped your pant'"],
                    req_strength: [0, 5, 0, 0, 10],
                    req_intelligence: [0,0,0,0, 0],
                    req_charisma: [10,0,0,0, 0],
                    requires: ["(Requires 10 Charisma)", "(Requires 5 strength)", "", "", "(Requires 10 strength"]
                },
                D:  { 
                    output: ["'Only for special occasions'",
                            "'Yeah I enjoy it but it can be a bit boring by myself'",
                            "'I'm an athlete'",
                            "not much",
                            "only the big games"
                    ],
                    trait: ["~", "~", "sports/exercise", "~", "~"],
                    score: [3, 3, 5, 0, 1],
                    ht_score: [0, 0, 10, -1 , 0],
                    failed_score: [0, 0, -5, 0, 0 ],
                    response: ["Date: 'oh that's cool'", "'well maybe I could join you one day'", "'wow that’s pretty cool'", "oh ok", "cool" ],
                    has_trait_response: ["", "", "'“WOW! That’s super damn impressive! I’d love to see you compete some time'", "'oh ok. well I like it'", "" ],
                    failed_response: ["","", "'why do you feel the need to lie to me?'", "", ],
                    req_strength: [0, 0, 6, 0,0],
                    req_intelligence: [0,0, 6, 0, 0],
                    req_charisma: [0, 0, 6, 0, 0],
                    requires: ["","", "(Requires 6 strength)", "", ""]
                }
            },
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