# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

def pig_latin(word)
  if word.chr =~ /[aeiou]/
     word + "way"

  # if word[2..-2] = 'qu'
  #   word = "#{word[2..-2]}#{word[0..0]}"
  #   word + "ay"

  else while word =~ /\A[^aeiou]/
    word =  "#{word[1..-1]}#{word[0..0]}"
    if word.chr =~ /[aeiou]/
    end
    if word[2..-2] = 'qu'
      word = "#{word[2..-2]}#{word[0..0]}"
      word + "ay"
  end
    word + "ay"
end
end
end
puts pig_latin("sprinkle")
puts pig_latin("up")
puts pig_latin('quilt')

## Tests:

# require_relative './helpers/assert_equal'
# assert_equal(pig_latin('quick'), 'ickquay')
# assert_equal(pig_latin('quilt'), 'iltquay')
# assert_equal(pig_latin('qat'), 'atqay')
