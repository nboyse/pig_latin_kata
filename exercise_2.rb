# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.

def pig_latin(word)
  if word.chr =~ /[aeiou]/
     word + "way"

  else while word =~ /\A[^aeiou]/
    word =  "#{word[1..-1]}#{word[0..0]}"
    if word.chr =~ /[aeiou]/
    end
  end
    word + "ay"
end
end

puts pig_latin("sprinkle")
puts pig_latin("up")

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('cram'), 'amcray')
assert_equal(pig_latin('sprinkle'), 'inklespray')
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
