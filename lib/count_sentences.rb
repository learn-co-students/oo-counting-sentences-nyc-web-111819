require 'pry'

class String

  def sentence?
    if self[-1] == "."
      true
    else 
      false
    end 
  end

  def question?
    if self[-1] == "?"
      true
    else 
      false
    end 
  end

  def exclamation?
    if self.end_with?("!")
      true 
    else
      false
    end 
  end

  def count_sentences
    new_sentence = self.split(".").map do |sentence|
      sentence.split("!").map do |sentence|
        sentence.split("?")
      end 
    end 
    new_sentence.flatten.length
  end
end

