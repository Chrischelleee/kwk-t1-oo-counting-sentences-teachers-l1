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
    period = self.split(".")
    period.delete("")
    if sentence?
      dot = period.count
    else
      dot = period.count - 1
    end
    question = self.split("?")
    question.delete("")
    if question?
      ques = question.count
    else
      ques = question.count - 1
    end
    exclaim = self.split("!")
    exclaim.delete("")
    if exclamation?
      excla = exclaim.count
    else
      excla = exclaim.count - 1
    end
    total = dot + ques + excla
    if total == -3
      return 0
    else
      total 
    end
  end
end
