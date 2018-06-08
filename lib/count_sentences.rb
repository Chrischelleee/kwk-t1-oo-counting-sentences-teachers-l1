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
      per = period.count
    else
      per = period.count - 1
    end
    if question?
      que = question.count
    else
      que = question.count - 1
    end
    if exclamation?
      exc = exclaim.count
    else
      exc = exclaim.count - 1
    end
    sum = per + que + exc
    if sum == -3
      return 0
    else
      sum
    end
  end
end
