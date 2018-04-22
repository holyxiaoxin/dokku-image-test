class LowScoresController < ApplicationController
  before_action :set_low_score, only: [:show, :edit, :update, :destroy]

  # GET /low_scores
  # GET /low_scores.json
  def index
    @low_scores = LowScore.all
  end

  # GET /low_scores/1
  # GET /low_scores/1.json
  def show
  end

  # GET /low_scores/new
  def new
    @low_score = LowScore.new
  end

  # GET /low_scores/1/edit
  def edit
  end

  # POST /low_scores
  # POST /low_scores.json
  def create
    @low_score = LowScore.new(low_score_params)

    respond_to do |format|
      if @low_score.save
        format.html { redirect_to @low_score, notice: 'Low score was successfully created.' }
        format.json { render :show, status: :created, location: @low_score }
      else
        format.html { render :new }
        format.json { render json: @low_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /low_scores/1
  # PATCH/PUT /low_scores/1.json
  def update
    respond_to do |format|
      if @low_score.update(low_score_params)
        format.html { redirect_to @low_score, notice: 'Low score was successfully updated.' }
        format.json { render :show, status: :ok, location: @low_score }
      else
        format.html { render :edit }
        format.json { render json: @low_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /low_scores/1
  # DELETE /low_scores/1.json
  def destroy
    @low_score.destroy
    respond_to do |format|
      format.html { redirect_to low_scores_url, notice: 'Low score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_low_score
      @low_score = LowScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def low_score_params
      params.require(:low_score).permit(:game, :score)
    end
end
