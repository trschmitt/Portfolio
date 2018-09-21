class ApplicationController < ActionController::Base

  ## Used to call the Concern Controllers
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

end
