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

  def update
  end

  def edit
  end

  def destroy
  end

end
