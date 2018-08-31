class ApplicationController < ActionController::Base

  # Used to call the Devise Whitelist Concern Controller
  include DeviseWhitelist

end
