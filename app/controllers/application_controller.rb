class ApplicationController < ActionController::Base
# this code is wriiten by ajay and santhosh
  protect_from_forgery with: :exception
    before_action :authenticate_user!
end
