class UsersController < ApplicationController
  def index
    @hello = 'Hello, World!(変数)'

    render template: 'users/index'
  end
end
