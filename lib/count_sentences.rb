require 'pry'

class String

  def sentence?
    self.end_with?(".")
    
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    
    sentence = self.split(" ")
    sentence.map do |words|
      words.delete "."
      words.delete "?"
      words.delete "!"
      binding.pry
    end
    sentence.length
  end


end