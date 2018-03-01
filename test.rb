require_relative "quiz"

# unfinished.
# need to put our quiz file into module and methods.
def test_for_correct_answer (x, y)
    if x == y
        puts "PASS"
    else
        puts "FAIL"
    end

end

test_for_correct_answer(correct_answer, content[0][:answer].to_s)
