class EntriesController < ApplicationController

  def index
    @entries = Entry.where(user_id: current_user.id)
  end

  def new
    @entry_types = EntryType.all
    @entry_types = @entry_types.map do |entry_type|
      [entry_type.name, entry_type.id]
    end
    @entry_types
  end

  def create
    p params
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
