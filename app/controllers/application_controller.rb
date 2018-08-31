class ApplicationController < ActionController::Base

  ## Used to call the Concern Controllers
  include DeviseWhitelist
  include SetSource

end
