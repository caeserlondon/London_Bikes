# frozen_string_literal: true

def assert_equals(val1, val2)
  val1 == val2
end

def it(description, &block)
  print "#{description}: "
  the_answer = block.call
  if the_answer == true
    puts 'Yes, we can. :PASSED'
  else
    puts "No, we can't. :FAILED"
  end
end
