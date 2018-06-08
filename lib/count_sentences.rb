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
    question = self.split("?")
    question.delete("")
    exclaim = self.split("!")
    exclaim.delete("")
    if sentence?
      dot = period.count
    else
      dot = period.count - 1
    end
    if question?
      ques = question.count
    else
      ques = question.count - 1
    end
    if exclamation?
      excla = exclaim.count
    else
      excla = exclaim.count - 1
    end
    sum = dot + ques + excla
    if sum == -3
      return 0
    else
      sum
    end
  end
end
