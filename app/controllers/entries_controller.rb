require 'date'

class EntriesController < ApplicationController

  def index
    @entries = Entry.where(user_id: current_user.id)
    p @entries
  end

  def new
    @entry_types = EntryType.all
    @entry_types = @entry_types.map do |entry_type|
      [entry_type.name, entry_type.id]
    end
  end

  def create
    # Make some type of helper method for the controller
    @entry_types = EntryType.all
    @entry_types = @entry_types.map do |entry_type|
      [entry_type.name, entry_type.id]
    end
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
    @entry = Entry.find_by_id(params[:id])
    @entry_type = @entry.entry_type
  end

  def edit
    # Break into another helper method
    @entry_types = EntryType.all
    @entry_types = @entry_types.map do |entry_type|
      [entry_type.name, entry_type.id]
    end
    @entry = Entry.find_by_id(params[:id])
  end

  def update
    # Make some type of helper method for the controller
    @entry_types = EntryType.all
    @entry_types = @entry_types.map do |entry_type|
      [entry_type.name, entry_type.id]
    end
    @entry = Entry.find_by_id(params[:id])
    @entry.assign_attributes(entry_params)
      if @entry.save
        redirect_to action: "index"
      else
        @error = "Entry creation was unsuccessful"
        render new_entry_path
      end
    p @entry
  end

  def destroy
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :entry_type_id, :date)
  end

end
