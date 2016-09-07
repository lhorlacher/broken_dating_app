class HomeController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	if params[:search]
  		@matches = Profile.search_hobbies(params[:search])
  	end
  end

  def picks
  	@picks = current_user.picks_list
  end

end
