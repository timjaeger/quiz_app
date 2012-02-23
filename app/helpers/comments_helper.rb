module CommentsHelper
  
  def get_username(user_id)
    user_name = User.find(user_id)
  end
  
end
