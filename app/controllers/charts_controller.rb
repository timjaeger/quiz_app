class ChartsController < ApplicationController
  
  def index
     @users = Point.all(:select => "*, COUNT(user_id) as count", :conditions => { :correct => 'yes' }, :group => :user_id, :order => 'count desc')
  end
  
end
