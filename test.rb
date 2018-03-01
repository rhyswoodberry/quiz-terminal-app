require_relative "quiz"

def expect actual, message, expected
    if actual == expected then
        puts "PASS #{message}"
    else
        puts "FAIL #{message}"
    end
end
##### ----------------------------------unfinished------------------------------------------------------ #####
# didn't work out how to get this working.
def test_for_correct_answer
    question = content[x][:question]
    answer = content[x][:answer]
    
end

