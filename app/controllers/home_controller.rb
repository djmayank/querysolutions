class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
  	
  	@question = Question.new
  	@question_feed = Question.all.order(created_at: :desc); 
  end
end
