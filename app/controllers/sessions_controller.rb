class SessionsController < ApplicationController
  def new
  end

  def create
    p "*" * 20
    p params
  end
end
