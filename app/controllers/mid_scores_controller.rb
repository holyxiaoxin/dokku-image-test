class MidScoresController < ApplicationController
  before_action :set_mid_score, only: [:show, :edit, :update, :destroy]

  # GET /mid_scores
  # GET /mid_scores.json
  def index
    @mid_scores = MidScore.all
  end

  # GET /mid_scores/1
  # GET /mid_scores/1.json
  def show
  end

  # GET /mid_scores/new
  def new
    @mid_score = MidScore.new
  end

  # GET /mid_scores/1/edit
  def edit
  end

  # POST /mid_scores
  # POST /mid_scores.json
  def create
    @mid_score = MidScore.new(mid_score_params)

    respond_to do |format|
      if @mid_score.save
        format.html { redirect_to @mid_score, notice: 'Mid score was successfully created.' }
        format.json { render :show, status: :created, location: @mid_score }
      else
        format.html { render :new }
        format.json { render json: @mid_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mid_scores/1
  # PATCH/PUT /mid_scores/1.json
  def update
    respond_to do |format|
      if @mid_score.update(mid_score_params)
        format.html { redirect_to @mid_score, notice: 'Mid score was successfully updated.' }
        format.json { render :show, status: :ok, location: @mid_score }
      else
        format.html { render :edit }
        format.json { render json: @mid_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mid_scores/1
  # DELETE /mid_scores/1.json
  def destroy
    @mid_score.destroy
    respond_to do |format|
      format.html { redirect_to mid_scores_url, notice: 'Mid score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mid_score
      @mid_score = MidScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mid_score_params
      params.require(:mid_score).permit(:game, :score)
    end
end
