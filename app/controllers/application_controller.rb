class ApplicationController < ActionController::Base
  protect_from_forgery
  include Hobo::Controller::AuthenticationSupport
  before_filter :except => :login do
     login_required unless User.count == 0
  end
end
