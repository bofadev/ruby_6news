class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #Include our helpers like this.
  helper :carousel, :news
end
