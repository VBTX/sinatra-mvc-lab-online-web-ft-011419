
class PigLatinizer
  def piglatinize(text)
    @array = text.split(" ")
    new_arr = []
    @array.each do |word|
    new_word = word + word[0]
    new_word[0] = ''
    if new_word.size == 1
    new_word = new_word + "way"
    elsif new_word[/\A[bcdfghjklmnpqrstvwxyz]*/i]
    new_word = word + word[0]
    
    new_word[0] = ''
    new_word = word + word[1]
    new_word
    binding.pry
    new_word = new_word + "ay"
    else
    new_word = new_word + "ay"
  end
  new_arr << new_word
  end
  new_string = new_arr.join(" ")
  new_string
  end

end
