class ConfigController < ApplicationController
  before_filter :verify_user_admin

  def index
  end
end
