class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def get_subtypes
  	subtypes = SubType.select(:id,:name).where("type_of_article_id = ?", params[:id])
  	respond_to do |format|
		format.json { render :json => subtypes }
	end
  end
end
