class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout "user"
  before_action :set_categories, :set_shoes, :authenticate_user!

  def set_categories
    @categories = Category.all
  end

  def set_shoes
  	@shoes_v = Shoe.all.order("count_view DESC").first(3)
  end
end
