require 'date'

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
    # Make some type of helper method for the controller
    @entry_types = EntryType.all
    @entry_types = @entry_types.map do |entry_type|
      [entry_type.name, entry_type.id]
    end
    # entry_params[:user_id] = current_user.id
    # p "*" * 20
    # p entry_params
    # p "*" * 20
    @entry = Entry.new(entry_params)
    @entry.user_id = current_user.id
      if @entry.save
        redirect_to action: "index"
      else
        @error = "Entry creation was unsuccessful"
        render new_entry_path
      end
    p @entry
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :entry_type_id, :date)
  end

end
