class EntriesController < ApplicationController

  def index
    @entries = Entry.where(user_id: current_user.id)
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def delete
  end

end
