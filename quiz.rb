require 'rainbow'

content = [
    {  
        question: "How many legs does a doggo have?",
        choices: [2, 3, 4],
        answer: 4,
        score: 0 
    },

    { 
        question: "Which of these doggos are used by hunters to track prey?", 
        choices: ["Pomeranian", "Beagle", "Bulldog"],
        answer: "Beagle",
        score: 0 
    },

    {
        question: "Which is bigger?",
        choices: ["Doggo", "Pupper"],
        answer: "Doggo",
        score: 0,
    }

]

#Welcome Screen
while quiz_active = true

    puts Rainbow("Welcome to Doggo Quiz!").purple.underline
    puts "----------------------------------------------"
    puts "Please type 'doggo' to begin."
    user_start = gets.chomp
    start_word = "doggo"
    if user_start.include? start_word || start_word.upcase
        puts Rainbow("BEGIN!").green
        break
    else
        puts Rainbow("You don't like instructions, do you?" + "\n" + "Try again!").red
            quiz_active = false
    end
    puts "----------------------------------------------"
    puts "\n"
end

# Question 1

puts Rainbow("Question: 1 - " + content[0][:question]).blue.bright
puts "\n"
puts "----------------------------------------------"
puts content[0][:choices]
puts "----------------------------------------------"

user_input = gets.chomp
correct_answer = content[0][:answer].to_s
if user_input.include? correct_answer then
    puts Rainbow("You are correct! The answer is #{content[0][:answer]}!").green
    content[0][:score] += 5
else
    puts Rainbow("Sorry, that is incorrect. Maybe Google doggos?").red
    content[0][:score] -= 5
end
puts "----------------------------------------------"
puts "\n"

# Question 2

puts Rainbow("Question: 2 - " + content[1][:question]).blue.bright
puts "\n"
puts "----------------------------------------------"
puts content[1][:choices]
puts "----------------------------------------------"

user_input = gets.chomp
correct_answer = content[1][:answer].to_s
if user_input.include? correct_answer then
    puts Rainbow("You are correct! The answer is #{content[1][:answer]}!").green
    content[1][:score] += 5
else
    puts Rainbow("Sorry, that is incorrect. Maybe Google doggos?").red
    content[1][:score] -= 5
end
puts "----------------------------------------------"
puts "\n"

# Question 3

puts Rainbow("Question: 3 - " + content[2][:question]).blue.bright
puts "\n"
puts "----------------------------------------------"
puts content[2][:choices]
puts "----------------------------------------------"

user_input = gets.chomp
correct_answer = content[2][:answer].to_s
if user_input.include? correct_answer then
    puts Rainbow("You are correct! The answer is #{content[2][:answer]}!").green
    content[2][:score] += 5
else
    puts Rainbow("Sorry, that is incorrect. Maybe Google doggos?").red
    content[2][:score] -= 5
end
puts "----------------------------------------------"
puts "\n"

# Results Screen

puts Rainbow("Yay! You made it to the end of the quiz!").purple.bright
puts Rainbow("Lets see how you did...").purple.bright
puts "\n"
puts "----------------------------------------------"
results = content[0][:score] + content[1][:score] + content[2][:score]
puts Rainbow("Your final score is: " + results.to_s).bright
puts "----------------------------------------------"















# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# These are old bits of code that we tried but didn't work properly.
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# def quiz_iterator(qanda)
#     qanda.shuffle
# end

# def quiz_unpacker(group)
#     question_string = group[:question]
#     answer_string = group[:choices]
#     score_integer = group[:score]

#     puts question_string 
#     puts "Type in your answer"
#     puts "--------------------"
#     user_input = gets.chomp 
# end

# puts quiz_iterator(content)


# def ask
#     random_ques_index = 0
#     random_ques_index = rand(0..(content.length - 1))
    
#         puts content[random_ques_index][:question]      
#         if content[random_ques_index][:kind] == "one"
#             random_ques_index
#         elsif content[random_ques_index][:kind] == "two"
#             puts "Select either one or more options:"
#             puts "\t" + content[random_ques_index][:choices].join(", ")
#             random_ques_index
#         else
#             puts content[random_ques_index][:kind] == "three"
#             puts "Select either one or more options:"
#             puts "\t" + content[random_ques_index][:choices].join(", ")
#             random_ques_index
#         end
# end

# { 
#         kind: "three", 
#         question: "Which of these are considered ‘toy dogs’?",
#         choices: ["A) Yorkshire Terrier", "B) Shih Tzu", "C) Shiba Inu", "D) Papillon"],
#         answer: ["ABD"],
#         score: 0
#     },