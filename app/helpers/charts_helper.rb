module ChartsHelper
  
  def get_question(question_id)
    question_name = Question.find(question_id)
  end
  
  def get_correct_answers(question_id)
    questions_correct = Point.find(:all, :select => 'count(correct_answer) as correct_count',:conditions => ['question_id = ? AND correct_answer = user_answer', question_id])
  end
  
end
