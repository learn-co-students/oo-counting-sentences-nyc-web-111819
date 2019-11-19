require 'pry'

class String

  def sentence?
    !!self.end_with?('.')
  end

  def question?
    !!self.end_with?('?')
  end

  def exclamation?
    !!self.end_with?('!')
  end

  def count_sentences
    # binding.pry
    sentences = self.split
    counter = 0
    sentences.each do |sen|
      if sen.end_with?('.', '?', '!')
        counter += 1
      end
    end
    return counter
  end
end