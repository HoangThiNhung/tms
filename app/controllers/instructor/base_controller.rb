class Instructor::BaseController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  authorize_resource class: false
end
