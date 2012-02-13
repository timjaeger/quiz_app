class DashboardController < ApplicationController

  def index
    @users = Point.find(:all, 
                        :group => 'user_id',
                        :order => 'user_id DESC', :conditions => { :correct => "yes"})
  end

end
