class ChartsController < ApplicationController
  
  def index
     @users = Point.all(:select => "*, COUNT(user_id) as count", :conditions => { :correct => 'yes' }, :group => :user_id, :order => 'count desc')
     
     @questions = Point.all(:select => "*, COUNT(question_id) as count",:group => :question_id, :order => 'question_id asc')
     
  end
  
end
