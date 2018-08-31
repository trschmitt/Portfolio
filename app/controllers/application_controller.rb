class ApplicationController < ActionController::Base

  # Used to call the Devise Whitelist Concern Controller
  include DeviseWhitelist

  before_action :set_source

  def set_source
    session[:source] = params[:q] if params[:q]
  end
end
