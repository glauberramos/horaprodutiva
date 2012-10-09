class ApplicationController < ActionController::Base
  before_filter :authenticate
   
  protect_from_forgery

  private
   def authenticate
   	  if Rails.env.production?
	    authenticate_or_request_with_http_basic do |id, password| 
	      id == 'horaproduser' && password == 'horaprodpass'
	    end
  	  end
   end
end
