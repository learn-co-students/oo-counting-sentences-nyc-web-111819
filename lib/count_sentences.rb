require 'pry'

class String

  def sentence?
    self.end_with?(".")
    # if self.end_with?(".")
    #   return true
    # else 
    #   return false
    # end
  end

  def question?
    self.end_with?("?")
  #     true 
  #   else
  #     false
  #   end
  end

  def exclamation?
    self.end_with?("!")
    #   true
    # else
    #   false
    # end
  end

  def count_sentences
    self.split(/[.!?]/).reject{|str|
    str.empty?
    }.count
  # binding.pry
  end
end