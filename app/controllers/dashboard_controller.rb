class DashboardController < ApplicationController

  def index
    
    #@users = Point.find(:all, 
     #                   :group => 'user_id',
      #                  :order => 'correct DESC', :conditions => { :correct => "yes"})
       
       #@users = Point.count(:group => :user_id, :conditions => { :correct => "yes"})
       @users = Point.all(:select => "*, COUNT(user_id) as count", :conditions => { :correct => 'yes' }, :group => :user_id, :order => 'count desc')
       
       #@users = Point.all(:select => 'user_id, count(id) as point_count', :group => :user_id, :conditions => { :correct => 'yes' }, :order => 'point_count desc', :limit => 10)
       
                                         
       @question = Question.find(2)
  end

end
