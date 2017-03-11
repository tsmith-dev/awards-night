class BallotsController < ApplicationController
  before_action :set_ballot, only: [:show, :edit, :update, :destroy]

  # GET /ballots
  # GET /ballots.json
  def index
    @ballots = Ballot.all
  end

  # GET /ballots/1
  # GET /ballots/1.json
  def show
  end

  # GET /ballots/new
  def new
    @ballot = Ballot.new
    @awards = @current_game.awards
  end

  # GET /ballots/1/edit
  def edit
  end

  # POST /ballots
  # POST /ballots.json
  def create
    @ballot = Ballot.new(ballot_params)

    if @ballot.save
      redirect_to @ballot, notice: 'You have cast your ballot.' 
    else
      render :new
    end
  end

  def update
    if @ballot.update(ballot_params)
      redirect_to @ballot, notice: 'Ballot updated.'
    else
      render :edit
    end
  end

  # DELETE /ballots/1
  # DELETE /ballots/1.json
  def destroy
    @ballot.destroy
    respond_to do |format|
      format.html { redirect_to ballots_url, notice: 'Ballot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ballot
      @ballot = Ballot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ballot_params
      params.require(:ballot).permit(:game_id, :user_id, picks_attributes: [:id, :award_id, :first_pick, :second_pick, :third_pick])
    end
    
end
