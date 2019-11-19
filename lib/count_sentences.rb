require 'pry'

class String
  def sentence?
    if self[-1] == "."
      return TRUE
    else
      return FALSE
    end
  end

  def question?
    if self[-1] == "?"
      return TRUE
    else
      return FALSE
    end
  end

  def exclamation?
    if self[-1] == "!"
      return TRUE
    else
      return FALSE
    end
  end

  def count_sentences
    count = self.count(",")
    self.split(/[[:punct:]]\s/).length-count
  end
end