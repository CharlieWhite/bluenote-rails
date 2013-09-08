class Api::NotesController < Api::ApiController

	def index
		@notes = Note.all#current_user.private_feed
		respond_with @notes
	end

	def show
		@note = Note.find(params[:id])
	end

	def create
		@note = Note.create(note_params)
		respond_with(@note)
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params[:note].permit(:message, :user_id, :from_user_id)
    end
end
