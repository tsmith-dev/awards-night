class PicksController < ApplicationController
  before_action :set_pick, only: [:show, :destroy]

  # GET /picks
  # GET /picks.json
  def index
    @picks = Pick.all
  end

  # GET /picks/1
  # GET /picks/1.json
  def show
  end

  # GET /picks/new
  def new
    if @current_user.picks.any?
      redirect_to edit_picks_url
    end
    @pick = Pick.new
    @show = Show.first
    @awards = @show.awards
    @picks = []
    @awards.count.times do
      @picks << Pick.new
    end
  end

  # GET /picks/1/edit
  def edit
    @picks = @current_user.picks
  end

  # POST /picks
  # POST /picks.json
  def create
    params["picks"].each do |pick|
      Pick.create(pick_params(pick))
    end
  end

  def update
    params['picks'].keys.each do |id|
      @pick = Pick.find(id.to_i)
      @pick.update(pick_params)
    end
    redirect_to dashboard_url
  end

  # DELETE /picks/1
  # DELETE /picks/1.json
  def destroy
    @pick.destroy
    respond_to do |format|
      format.html { redirect_to picks_url, notice: 'Pick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pick
      @pick = Pick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pick_params
      params['picks'].permit(pick_attributes: [:game_id, :user_id, :award_id, :first_pick, :second_pick, :third_pick])
    end

end
