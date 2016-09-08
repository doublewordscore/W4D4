class NotesController < ApplicationController

  def new
    render :new
  end

  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    if @note.save
      redirect_to track_url(@note.track_id)
    else
      flash[:errors] = ["Error! No error created!"]
      redirect_to track_url(@note.track_id)
    end
  end

  private
  def note_params
    params.require(:note).permit(:track_id, :body)
  end

end
