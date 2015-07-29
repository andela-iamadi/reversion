class UsersController < ApplicationController
  def new
  end

  def show
    User.find_by(email: params["id"])
  end

end
