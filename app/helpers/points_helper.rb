module PointsHelper
  
  def users_answer(question_id)
    user_answer = Question.find(question_id)
  end
  
  def correct_answer(id)
    correct_answer = Question.find(id)
  end
  
end
