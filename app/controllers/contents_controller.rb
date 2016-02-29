class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  # GET /contents
  # GET /contents.json
  def index
    @contents = Content.all
    @users = User.all
  end

  # GET /contents/1
  # GET /contents/1.json
  def show
    @contents = Content.all
    @users = User.all
    @teams = Team.all
  end

  # GET /contents/new
  def new
    @content = Content.new
  end

  # GET /contents/1/edit
  def edit
  end

  # POST /contents
  # POST /contents.json
  def create
    @users = User.all
    @content = Content.new(content_params)
    @content.user_id = current_user.id
    @content.team_id = @users.find(@content.user_id).team_id rescue "Kein Team"

    respond_to do |format|
      if @content.save
        UserMailer.new_manager_content(@content.team_id).deliver
        format.html { redirect_to @content, notice: 'Content wurde erfolgreich erstellt.' }
        format.json { render :show, status: :created, location: @content }
      else
        format.html { render :new }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contents/1
  # PATCH/PUT /contents/1.json
  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to @content, notice: 'Content wurde aktualisiert.' }
        format.json { render :show, status: :ok, location: @content }
      else
        format.html { render :edit }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to contents_url, notice: 'Content wurde gelöscht.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_params
      params.require(:content).permit(:content, :title, :user_id, :team_id, :image, :image_cache, :link)
    end
end
